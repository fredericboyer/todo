# fly.io Deployment Checklist

## Pre-Deployment Setup
- [ ] Create fly.io account and install flyctl
- [ ] Run `fly auth login` to authenticate
- [ ] Initialize app with `fly launch`
- [ ] Review generated fly.toml configuration
- [ ] Set app name and primary region

## Database Configuration
- [ ] Create PostgreSQL cluster via `fly postgres create`
- [ ] Attach database to app with `fly postgres attach`
- [ ] Configure connection pooling settings
- [ ] Set up automated backups schedule
- [ ] Test restore procedure documented

## Environment & Secrets
- [ ] Set SECRET_KEY_BASE via `fly secrets set`
- [ ] Configure DATABASE_URL secret
- [ ] Add PHX_HOST with production domain
- [ ] Set POOL_SIZE for connections
- [ ] Configure any API keys needed
- [ ] Verify all secrets with `fly secrets list`

## Application Configuration
- [ ] Update endpoint.ex for production
- [ ] Configure health check route
- [ ] Set release commands in fly.toml
- [ ] Enable IPv6 support
- [ ] Configure internal DNS

## Deployment Process
- [ ] Build release locally first to test
- [ ] Run database migrations via release command
- [ ] Deploy with `fly deploy`
- [ ] Monitor logs during deployment
- [ ] Verify health checks passing
- [ ] Test application endpoints

## Scaling & Performance
- [ ] Set appropriate VM size
- [ ] Configure autoscaling rules
- [ ] Set min/max instance counts
- [ ] Configure regions for deployment
- [ ] Set up Redis for sessions/cache
- [ ] Enable connection pooling

## Monitoring & Maintenance
- [ ] Configure Grafana Cloud integration
- [ ] Set up log shipping
- [ ] Create alerting rules
- [ ] Document SSH access procedure
- [ ] Schedule regular backup tests
- [ ] Plan for security updates