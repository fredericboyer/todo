---
id: email-verification
title: Implement email verification flow
parent: auth-epic
type: task
status: TODO
acceptance_criteria:
  - Verification token generation
  - Email sending with verification link
  - Token expiration (24 hours)
  - Resend verification option
tech_notes: |
  Use Phoenix.Token for secure tokens
  Configure Swoosh for email delivery
  Consider SendGrid or AWS SES for production
---

## Description

Add email verification to the registration process to ensure valid email addresses and enable future communication features like password reset and notifications.