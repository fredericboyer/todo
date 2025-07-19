# Security Checklist

## Authentication & Sessions
- [ ] Passwords hashed with bcrypt (12+ rounds)
- [ ] Session cookies use HttpOnly flag
- [ ] Session cookies use Secure flag (HTTPS)
- [ ] Session cookies use SameSite=Lax
- [ ] Session timeout implemented
- [ ] Concurrent session limits enforced

## Input Validation & Sanitization
- [ ] All user inputs validated server-side
- [ ] SQL injection prevented via parameterized queries
- [ ] XSS prevented through output encoding
- [ ] File upload types/sizes restricted
- [ ] Path traversal attacks prevented
- [ ] Command injection impossible

## Access Control
- [ ] Authorization checks on all endpoints
- [ ] User can only access own data
- [ ] Admin functions properly restricted
- [ ] Direct object references protected
- [ ] CSRF tokens on state-changing operations

## Security Headers
- [ ] Content-Security-Policy configured
- [ ] X-Frame-Options: DENY
- [ ] X-Content-Type-Options: nosniff
- [ ] Strict-Transport-Security (HSTS)
- [ ] Referrer-Policy: strict-origin-when-cross-origin
- [ ] Permissions-Policy configured

## Rate Limiting & DoS Prevention
- [ ] Login attempts rate limited
- [ ] API endpoints rate limited
- [ ] Large request bodies rejected
- [ ] Slow POST attack mitigation
- [ ] Resource-intensive operations queued

## Logging & Monitoring
- [ ] Failed login attempts logged
- [ ] Security events tracked
- [ ] Sensitive data excluded from logs
- [ ] Log injection prevented
- [ ] Anomaly detection configured

## Dependencies & Infrastructure
- [ ] Dependencies regularly updated
- [ ] Security advisories monitored
- [ ] HTTPS enforced everywhere
- [ ] Database connections encrypted
- [ ] Secrets stored securely (env vars)
- [ ] No hardcoded credentials