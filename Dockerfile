# Build stage
FROM hexpm/elixir:1.18.4-erlang-28.0-alpine-3.20.3 AS build

# Install build dependencies
RUN apk add --no-cache build-base git

# Set working directory
WORKDIR /app

# Set build-time environment variables
ENV MIX_ENV=prod

# Install hex and rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# Copy mix files
COPY mix.exs mix.lock ./
COPY config config

# Install dependencies
RUN mix deps.get --only prod && \
    mix deps.compile

# Copy application files
COPY priv priv
COPY lib lib
COPY assets assets

# Compile assets
RUN mix assets.deploy

# Build release
RUN mix compile && \
    mix release

# Runtime stage
FROM alpine:3.20.3 AS runtime

# Install runtime dependencies
RUN apk add --no-cache libstdc++ openssl ncurses-libs postgresql-client

# Create app user
RUN addgroup -g 1000 todo && \
    adduser -u 1000 -G todo -s /bin/sh -D todo

# Set working directory
WORKDIR /app

# Copy release from build stage
COPY --from=build --chown=todo:todo /app/_build/prod/rel/todo ./

# Set runtime environment variables
ENV HOME=/app
ENV PORT=4000
ENV PHX_HOST=localhost

# Switch to app user
USER todo

# Expose port
EXPOSE 4000

# Start the Phoenix server
CMD ["bin/todo", "start"]