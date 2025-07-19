# CI/CD Checklist

## GitHub Actions Setup
- [ ] .github/workflows directory created
- [ ] CI workflow file configured
- [ ] CD workflow file configured  
- [ ] Environment secrets added
- [ ] Branch protection rules enabled

## Continuous Integration
- [ ] Elixir/OTP version matrix defined
- [ ] Dependencies cached for speed
- [ ] Mix format check enforced
- [ ] Credo linting configured
- [ ] Dialyzer type checking enabled
- [ ] Test suite runs in parallel

## Code Quality Gates
- [ ] Minimum test coverage set (85%)
- [ ] Coverage reports uploaded
- [ ] Security scanning (Sobelow)
- [ ] Dependency audit (mix audit)
- [ ] License compliance check
- [ ] Build artifacts created

## Testing Strategy
- [ ] Unit tests run first
- [ ] Integration tests follow
- [ ] Database tests isolated
- [ ] Test results reported
- [ ] Failed test artifacts saved
- [ ] Flaky test detection

## Deployment Pipeline
- [ ] Staging deploy on main merge
- [ ] Production deploy on tag/release
- [ ] Environment variables validated
- [ ] Database migrations automated
- [ ] Health check verification
- [ ] Smoke tests post-deploy

## Release Management
- [ ] Semantic versioning enforced
- [ ] Changelog generation automated
- [ ] Release notes template
- [ ] Asset compilation verified
- [ ] Docker images tagged
- [ ] Rollback procedure tested

## Monitoring & Alerts
- [ ] Build status badges configured
- [ ] Slack/email notifications
- [ ] Deploy tracking in monitoring
- [ ] Performance regression alerts
- [ ] Security scan notifications
- [ ] Failed deploy auto-rollback