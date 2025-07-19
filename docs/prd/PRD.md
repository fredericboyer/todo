# Product Requirements Document

## A. Problem Statement & Goals

### Problem Statement
Consumers face information overload and struggle to manage daily tasks effectively across personal, professional, and family contexts. Existing solutions are either too simplistic (lack organisation features) or overly complex (enterprise-focused with steep learning curves). Users need a task management solution that balances power with simplicity, works seamlessly across devices, and respects their privacy.

### Goals
- **Primary Goal**: Deliver a secure, accessible, and performant task management web application that delights consumers through intuitive design and reliable functionality
- **Business Goal**: Build foundation for a freemium SaaS product with viral growth potential
- **Technical Goal**: Establish a scalable, maintainable architecture using Elixir/Phoenix that supports rapid feature iteration

## B. Personas & Key Jobs-to-Be-Done

### Primary Persona: "Busy Professional Parent"
- **Demographics**: 28-45 years, tech-comfortable, juggles work and family
- **Pain Points**: Forgets important tasks, loses track across contexts, needs quick capture
- **Jobs-to-Be-Done**:
  - Quickly capture tasks before forgetting them
  - Organise tasks by context (work/home/personal)
  - Review daily priorities at a glance
  - Share specific lists with family members

### Secondary Persona: "Digital Native Student"
- **Demographics**: 18-25 years, mobile-first, collaborative
- **Pain Points**: Deadline management, assignment tracking, group coordination
- **Jobs-to-Be-Done**:
  - Track assignments with due dates
  - Break large projects into subtasks
  - Collaborate on group project tasks
  - Get reminders before deadlines

## C. Success Metrics

### Qualitative Metrics
- User satisfaction score ≥ 4.5/5 (in-app surveys)
- Task completion rate ≥ 70% within first week
- "Would recommend" score ≥ 8/10 (NPS)

### Quantitative Metrics
- **Activation**: 60% of sign-ups create 3+ tasks in first session
- **Engagement**: Daily Active Users / Monthly Active Users ≥ 40%
- **Retention**: 30-day retention ≥ 35%
- **Performance**: p95 page load ≤ 1.5s, API response ≤ 200ms
- **Accessibility**: Zero critical WCAG violations in automated scans

## D. Feature List & Priorities

### MVP Features (Launch Critical)
1. **Authentication & Accounts**
   - Username/password registration with email verification
   - Secure login with session management
   - Password reset flow
   - Account settings (email, password change)

2. **Core Task Management**
   - Create, edit, delete tasks
   - Mark tasks complete/incomplete
   - Task titles and optional descriptions
   - Due dates with visual indicators
   - Priority levels (High, Medium, Low)
   - Soft delete with restoration

3. **Organisation Features**
   - Projects/Lists to group tasks
   - Default "Inbox" for quick capture
   - Drag-and-drop task reordering
   - Basic search (title, description)
   - Filter by status, priority, project

4. **User Experience**
   - Responsive design (mobile, tablet, desktop)
   - Dark/light theme toggle
   - Keyboard shortcuts for power users
   - Undo/redo for critical actions
   - Loading states and error handling

### Post-MVP Features (Future Releases)
- Recurring tasks with flexible patterns
- Task collaboration and sharing
- File attachments
- Tags and labels
- Calendar integration
- Mobile apps (React Native)
- OAuth providers (Google, GitHub)
- Email/push notifications
- Bulk operations
- Task templates
- Time tracking
- API for third-party integrations

## E. Non-Functional Requirements

### Accessibility (WCAG 2.1 AA)
- Semantic HTML with proper ARIA labels
- Keyboard navigation for all interactions
- Screen reader compatibility testing
- Colour contrast ratios ≥ 4.5:1
- Focus indicators on interactive elements
- Accessible form validation messages

### Security
- bcrypt password hashing (12+ rounds)
- HttpOnly, Secure, SameSite cookies
- CSRF protection on all state-changing operations
- Rate limiting (10 req/sec per IP, 100 login attempts/hour)
- SQL injection prevention via Ecto parameterised queries
- XSS protection through Phoenix HTML escaping
- TLS 1.3 enforcement
- Security headers (CSP, HSTS, X-Frame-Options)

### Performance
- Server response time p95 ≤ 200ms (1000 concurrent users)
- First Contentful Paint ≤ 1.5s
- Time to Interactive ≤ 3s
- Database query optimisation (indexes, N+1 prevention)
- Asset CDN with compression
- Connection pooling and caching strategy

### Architecture
- Phoenix contexts for domain separation
- Command Query Responsibility Segregation for complex operations
- Repository pattern for data access
- Event-driven updates via Phoenix PubSub
- Comprehensive test coverage (≥ 85%)
- Database migrations with zero-downtime strategy

### fly.io Operations
- Multi-region deployment (US-East, EU-West initially)
- Health check endpoints for load balancers
- Graceful shutdown handling
- Automated backup strategy (daily snapshots)
- Monitoring via Fly metrics and Grafana Cloud
- Log aggregation with structured logging

### Internationalisation
- Full UI localisation (English, French at launch)
- Locale detection via Accept-Language header
- User preference override in settings
- RTL-safe CSS layouts
- UTF-8 database encoding
- Timezone-aware date handling
- Translated validation messages

### CI/CD Pipeline
- GitHub Actions workflow
- Automated testing on pull requests
- Security scanning (SAST, dependency checks)
- Code quality gates (coverage, linting)
- Staging deployment for PR preview
- Production deployment with canary releases
- Automated rollback on error threshold

## F. Risks & Mitigations

### Technical Risks
- **Risk**: Elixir talent availability
  - **Mitigation**: Comprehensive documentation, pair programming, knowledge sharing sessions

- **Risk**: Database scaling challenges
  - **Mitigation**: Read replicas, connection pooling, query optimisation from day one

- **Risk**: Real-time features complexity
  - **Mitigation**: Phoenix LiveView patterns, gradual feature rollout

### Business Risks
- **Risk**: Market saturation with task apps
  - **Mitigation**: Focus on superior UX, privacy-first positioning, collaborative features

- **Risk**: Freemium conversion challenges
  - **Mitigation**: Generous free tier, compelling premium features, usage analytics

### Security Risks
- **Risk**: Data breaches impacting trust
  - **Mitigation**: Security-first development, regular audits, breach response plan

- **Risk**: DDoS attacks
  - **Mitigation**: Fly.io DDoS protection, rate limiting, CloudFlare integration