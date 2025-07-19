# Task Index

This index provides a complete overview of all implementation tasks for the Todo application, organized in logical execution order.

| ID | Title | Type | Status |
|---|---|---|---|
| project-setup | Initial Phoenix project setup and configuration | epic | IN_PROGRESS |
| bun-migration | Migrate asset pipeline from ESBuild to Bun | task | TODO |
| cicd-epic | CI/CD pipeline implementation | epic | TODO |
| github-actions | Create GitHub Actions workflow | task | TODO |
| deployment-pipeline | Implement automated deployment pipeline | task | TODO |
| auth-epic | Authentication and authorization system | epic | TODO |
| setup-auth | Scaffold username/password authentication | task | TODO |
| email-verification | Implement email verification flow | task | TODO |
| password-reset | Build password reset functionality | task | TODO |
| account-settings | Create account management interface | task | TODO |
| database-epic | Database schema and data layer | epic | TODO |
| task-schema | Design and implement task schema | task | TODO |
| project-schema | Create project/list schema for task grouping | task | TODO |
| task-context | Build task context module with CRUD operations | task | TODO |
| ui-epic | User interface and LiveView implementation | epic | TODO |
| design-system | Establish design system and component library | task | TODO |
| task-list-live-view | Create main task list LiveView | task | TODO |
| task-crud-ui | Implement task creation and editing UI | task | TODO |
| drag-drop | Add drag-and-drop reordering | task | TODO |
| search-filter | Build search and filter functionality | task | TODO |
| i18n-epic | Internationalization implementation | epic | TODO |
| gettext-setup | Configure Gettext for translations | task | TODO |
| locale-detection | Implement locale detection and switching | task | TODO |
| security-epic | Security hardening and best practices | epic | TODO |
| rate-limiting | Implement rate limiting for API endpoints | task | TODO |
| security-headers | Configure security headers | task | TODO |
| ops-epic | fly.io deployment and operations | epic | TODO |
| fly-setup | Initial fly.io application setup | task | TODO |
| monitoring | Set up monitoring and observability | task | TODO |

## Task Dependencies

### Phase 1: Foundation
1. **project-setup** (IN_PROGRESS) - Base Phoenix application
2. **cicd-epic** - CI/CD pipeline (establish automation early!)
   - github-actions → deployment-pipeline
3. **auth-epic** - User authentication system
   - setup-auth → email-verification → password-reset → account-settings

### Phase 2: Core Features
4. **database-epic** - Data layer implementation
   - task-schema → project-schema → task-context
5. **ui-epic** - User interface
   - design-system → task-list-live-view → task-crud-ui → drag-drop → search-filter

### Phase 3: Production Readiness
6. **i18n-epic** - Internationalization
   - gettext-setup → locale-detection
7. **security-epic** - Security hardening
   - rate-limiting + security-headers (can be done in parallel)
8. **ops-epic** - Deployment setup
   - fly-setup → monitoring

## Notes
- Tasks within the same epic can often be worked on by different team members
- Some epics can be started in parallel (e.g., security-epic alongside ui-epic)
- The DONE example (project-setup) demonstrates the expected task completion state