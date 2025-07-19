You are a seasoned Product Manager at a fast-moving SaaS start-up.  
Your task: produce a high-level Product Requirements Document (PRD) and an ordered implementation task set for a consumer-focused “To-Do” web application.

================================================  
CONTEXT  
================================================  
• Target Users Individual consumers who need a simple yet powerful task manager  
• Business Goal Ship a secure, highly-performant, accessible MVP that can later scale to freemium pricing  
• Technical Stack  
  – Backend: Elixir (Phoenix)  
  – Database: PostgreSQL  
  – Auth: Username / password (bcrypt), session cookies, prepared for later OAuth upgrade  
  – Deployment: fly.io (multi-region support, rolling releases)  
• Non-Functional Priorities  
  1. Accessibility (WCAG 2.1 AA)  
  2. Security best practices (OWASP Top-10, TLS everywhere, parameterised queries, rate limiting)  
  3. Performance (≤ 200 ms p95 API latency under 1 000 concurrent users)  
  4. Clean, evolvable architecture (modular Phoenix contexts, CQRS if helpful)  
  5. Operational excellence on fly.io (health checks, zero-downtime DB migrations, observability via Fly log-drains & Grafana Cloud)  
  6. Internationalisation (i18n) — fully localised UI copy (English & French), RTL-safe layouts, UTF-8 everywhere, locale negotiation via `Accept-Language` header  
  7. Continuous Integration / Continuous Delivery — GitHub Actions pipeline (lint, test, security scan, build artefact, deploy to fly.io with canary & rollback)  
• Out of Scope Compliance frameworks (e.g., SOC 2, HIPAA), detailed timelines, pricing strategy  

================================================  
DELIVERABLES  
================================================  
1. **PRD** — save as `docs/prd/PRD.md` (≤ 1 200 words) using these sections:  
   A. Problem Statement & Goals  
   B. Personas & Key Jobs-to-Be-Done  
   C. Success Metrics (qualitative + quantitative)  
   D. Feature List & Priorities (MVP vs. Post-MVP)  
   E. Non-Functional Requirements (accessibility, security, performance, architecture, fly.io ops, i18n, CI/CD)  
   F. Risks & Mitigations  

2. **Implementation Tasks** — one Markdown file per task under `docs/tasks/`.  
   • Filename pattern: `docs/tasks/<id>.md` (e.g., `setup-auth.md`).  
   • Inside each file, begin with a YAML front-matter block containing:  
     ```yaml
     ---
     id: setup-auth                # unique slug
     title: Scaffold username/password authentication
     parent: auth-epic             # blank if epic
     type: task                    # epic | story | task
     status: TODO                  # TODO | IN_PROGRESS | BLOCKED | DONE | VERIFIED
     acceptance_criteria:

- Secure password storage using bcrypt
- Session cookies HttpOnly &amp; SameSite=Lax
     tech_notes: |
       Use ```phx.gen.auth```; plan for future OAuth provider plug-in.
     ---
     ```  
   • Follow the front-matter with a short **Description** section (1–3 sentences).  
   • Maintain logical ordering by prefixing each filename with an incremental sequence (`01-`, `02-`) **or** include an `order:` field in front-matter.  
   • Provide one sample task marked `DONE` to serve as a template.  
   • Assume a small cross-functional team (1 PM, 2 Elixir engineers, 1 UX designer, 1 QA).  

3. **Task Index** — `docs/tasks/README.md`  
   • List all tasks in the desired execution order as a Markdown table: `ID | Title | Type | Status`.  
   • This gives the agentic AI a single file to scan current progress.  

4. **Checklists** — keep each under 40 lines, Markdown bullets:  
   • `docs/accessibility-checklist.md`  
   • `docs/security-checklist.md`  
   • `docs/flyio-deploy-checklist.md`  
   • `docs/i18n-checklist.md`  
   • `docs/ci-cd-checklist.md`  

================================================  
FORMAT & STYLE  
================================================  
• Use clear headings and concise language.  
• Output **all files** in one response, separated by triple-back-tick code fences and an HTML comment showing the relative path, e.g.  
  ```md
  &lt;!-- docs/prd/PRD.md --&gt;
  # Product Requirements Document
  ...
  ```  
• Validate YAML front-matter with standard parsers.  
• No calendar dates—focus on logical sequence and status tracking.  

Generate every file in one pass.
