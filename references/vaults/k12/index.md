---
type: index
last_updated: 2026-W34
---

# Thrive Center K12 Knowledge Vault

This vault is the Thrive Center Incubator's internal knowledge base for the **K12 edtech
funding ecosystem**, with a deliberate weighting toward **student wellbeing and mental health**.
It tracks how federal dollars and policy flow down through state systems, district purchasing,
and the charter sector into the technology/vendor layer and the ideas/influence layer — so that
staff can see where ideas that produce positive wellbeing outcomes can take root inside the real
funding framework. It is fed once a week by the `k12-synthesis` skill, whose synthesized digest
is the raw material this vault accretes into durable, pre-synthesized knowledge. The markdown
files here are the source of truth (versioned in git) and are designed to be navigated by an AI
agent: read this file first, filter on front-matter, read entity/theme pages for synthesized
arcs, and read specific digests only when you need week-level detail.

## How to navigate

The vault has **two axes**:

1. **Chronological digests** (`digests/`) — the weekly synthesis output, append-only raw
   material. One file per ISO week (e.g. `digests/2026/2026-W26.md`). Read these for the detail
   of a specific week.
2. **Accreting entity & theme pages** (`entities/`, `themes/`) — the actual *knowledge*, built
   up over time so longitudinal questions ("what's the 18-month arc of school Medicaid funding,
   and who's positioned for it?") can be answered from a pre-synthesized page instead of
   re-derived from scratch. Each page carries a mutable **Current snapshot** and an append-only
   **Timeline**.

Read order for an agent answering a question: **this file → relevant entity/theme page(s) for
the synthesized arc → specific digest(s) only for week-level detail.** Filter on front-matter
(`layers`, `entities`, `states`, `tags`) to narrow before reading bodies.

The full operating manual — schemas, naming, provenance rules, and the weekly update procedure —
is in [CONVENTIONS.md](CONVENTIONS.md). The controlled vocabulary (six layers + canonical tags +
naming rules) is in [TAGS.md](TAGS.md). A plain-language list of the sources the weekly
digest is built from — and what they don't cover — is in [SOURCES.md](SOURCES.md).

## Active themes

Each theme links to its page in `themes/`.

- [School Mental Health Funding — State vs Federal Reliability](themes/school-mental-health-funding.md) — federal streams litigated, deregulated or terminated while Pennsylvania puts $140M on the table; which wellbeing money is actually durable.
- [Outcomes-Based Contracting — Paying Vendors for Results](themes/outcomes-based-contracting.md) — first causal evidence it works, now with a federal endorsement in ED's edtech guidance.
- [The Wellbeing Evidence Base — What Justifies the Spending](themes/wellbeing-evidence-base.md) — the research that legitimizes wellbeing budgets; the W31 retraction, thin AI-tutor benchmarks, and screening that fails on reimbursement.
- [Federal Education Restructuring — ED Downsizing & Outsourcing](themes/federal-education-restructuring.md) — IDEA administration at HHS, edtech rulemaking delegated to states, Head Start standards handed to state licensing: the federal floor coming down.
- [Classroom AI — Policy, Procurement & the Vendor Race](themes/classroom-ai.md) — ED tells districts to buy on RCT evidence the same week benchmarks show AI tutors degrade over 30 days.
- [Screen Time & Device Policy — The Free Wellbeing Intervention](themes/screen-time-device-policy.md) — now contested at three levels at once, including a possible parental screen opt-out condition on E-rate.
- [School Connectivity Funding — E-rate Under Review](themes/school-connectivity-funding.md) — the FCC asks whether to sunset schools' fifth-largest federal funding stream; comment closes October 13, 2026.
- [Local Tax Referendums — Districts Asking Voters for Student Supports](themes/local-tax-referendums.md) — Denver, Chicago and Indiana all pointing at November 3; mill levy money as the post-ESSER wellbeing channel.
- [Special Education Services Demand](themes/special-education-services-demand.md) — IDEA complaints up ~50%, a 1,600-paraprofessional shortage in NYC, and Head Start's disability structure removed.
- [Exclusionary Discipline & Where It Migrates](themes/exclusionary-discipline.md) — OCR recasts outcome review as itself a Title VI violation while Head Start's expulsion ban is proposed for removal.
- [School Choice Expansion — ESAs, Vouchers & Religious Charters](themes/school-choice-expansion.md) — Arizona's oversight measure dies; purchasing authority keeps moving from district procurement to households.
- [Enrollment Decline & District Consolidation](themes/enrollment-decline-consolidation.md) — per-pupil revenue shrinking structurally; districts now answering with local tax measures or a bet on the state.
- [Chronic Absenteeism & Re-engagement](themes/chronic-absenteeism.md) — attendance as the accountability frame for wellbeing investments; now with a charter network naming it as a spending priority.
- [School Meals & Food Security — A Funded Support Channel](themes/school-meals-food-security.md) — Colorado returned $20.2M of Summer EBT unspent; uptake, not funding, is the failure mode.
- [Social Media Settlement Money — A New Wellbeing Funding Channel](themes/social-media-settlement-funding.md) — ~1,400 districts suing the platforms; district-controlled money with an explicit wellbeing purpose.
## Tracked entities

Grouped by type; each entity links to its page in `entities/`.

### Companies

- [Anthropic](entities/companies/anthropic.md) — AI company; launched Claude for Teachers (2026-W29).
- [Educational Testing Service (ETS)](entities/companies/ets.md) — assessment giant; acquired ACT (2026-W27).
- [ACT](entities/companies/act.md) — assessment organization; acquired by ETS (2026-W27).
- [Common Sense Media](entities/companies/common-sense-media.md) — produces the teen AI survey data that defines the problem, then ships the wellbeing curriculum sold into it (2026-W34).
- [Move This World](entities/companies/move-this-world.md) — Tier 1 SEL curriculum doubling as a referral-generation layer; observed in Oceanside Unified, CA (2026-W34).
- [Riverside Insights](entities/companies/riverside-insights.md) — publisher of the DESSA; the screening, triage and progress-monitoring layer of an observed district SEL stack (2026-W34).
- [The Stepping Stones Group](entities/companies/stepping-stones-group.md) — contracted student mental health service delivery; the clinical-capacity layer referrals land on (2026-W34).

### Agencies

- [U.S. Department of Education](entities/agencies/us-department-of-education.md) — federal education funding, special education, school choice; now setting procurement and enforcement expectations by letter rather than by rule.
- [U.S. Department of Health and Human Services (HHS)](entities/agencies/hhs.md) — the second federal education agency; receiving IDEA administration while deregulating youth-health programs.
- [Federal Communications Commission (FCC)](entities/agencies/fcc.md) — controls E-rate, schools' fifth-largest federal funding stream, and is asking whether to sunset it (2026-W34).
- [SAMHSA](entities/agencies/samhsa.md) — federal behavioral/mental-health grant funder; CCBHC trio closes August 17, 2026, emptying the board.
- [HRSA](entities/agencies/hrsa.md) — federal pediatric health-access grant funder.
- [CMS](entities/agencies/cms.md) — Medicare/Medicaid payment policy; the rails for school-adjacent behavioral-health billing; narrowed a children's Medicaid/CHIP category by rule (W33).

### Programs

- [Head Start](entities/programs/head-start.md) — ~700,000 children, 1,600 grantees; the proposed rule would remove the monthly mental health consultation and the 30/45/90-day screening timelines. Comment closes October 6, 2026.
- [E-rate](entities/programs/e-rate.md) — $10.5B to districts 2021–2025; under FCC review for possible sunset, comment closes October 13, 2026 (2026-W34).
- [Teen Pregnancy Prevention Program](entities/programs/teen-pregnancy-prevention-program.md) — ~$101M/yr; all but 14 grants terminated, now landing on named New York grantees at $4.3M a year.
- [Iowa Therapeutic Classroom Incentive Grant](entities/programs/iowa-therapeutic-classroom-incentive-grant.md) — statutory state vehicle, sixth year; $2.35M to 10 districts for 2026-27.
- [Chicago Sustainable Community Schools](entities/programs/chicago-sustainable-community-schools.md) — $500K/school across 51 campuses; growth locked in by CTU contract to 2028.
- [Trauma-Informed Services in Schools](entities/programs/trauma-informed-services-in-schools.md) — SAMHSA grant (SM-26-006), closed July 16, 2026.
- [Pediatric Mental Health Care Access Program (PMHCA)](entities/programs/pediatric-mental-health-care-access-program.md) — HRSA grant, closed July 10, 2026.
- [Florida Mental Health Assistance Allocation](entities/programs/florida-mental-health-assistance-allocation.md) — state school-mental-health funding vehicle.
- [Education Freedom Tax Credit](entities/programs/education-freedom-tax-credit.md) — federal tax-credit scholarships; ~9 in 10 students eligible, launches January 1, 2027.
## Digests by week

Each week links to its file in `digests/`, newest first.

- [2026-W34](digests/2026/2026-W34.md) — Aug 13 – Aug 20, 2026: the federal government sets procurement and enforcement rules by letter, not appropriation — ED's edtech guidance pushes RCT evidence into procurement, OCR recasts discipline-outcome review as a Title VI violation, and the FCC opens comment on sunsetting E-rate; Head Start's proposed rule would delete the monthly mental health consultation; Pennsylvania makes $140M available for school safety and student mental health; Denver, Chicago and Indiana put student-support money on November ballots.
- [2026-W33](digests/2026/2026-W33.md) — Aug 6 – Aug 13, 2026: the evidence bar starts biting vendors as a major virtual tutoring provider shuts down and outcomes-based contracting spreads; LAUSD, Chicago and Miami-Dade cut into student supports; ACF's Head Start deregulation reaches the Federal Register and CMS narrows a children's Medicaid/CHIP category; screen-time policy becomes a procurement question.
- [2026-W32](digests/2026/2026-W32.md) — Jul 30 – Aug 6, 2026: a judge blocks ED's termination of the school mental-health grants through Aug 24; HHS cancels 53 of 66 teen-pregnancy-prevention grants and proposes Head Start deregulation; Chicago expands community schools while halving restorative-justice funding; first causal evidence for outcomes-based contracting.
- [2026-W31](digests/2026/2026-W31.md) — Jul 22 – Jul 29, 2026: ED asks a court's permission to cancel the $1B mental-health grants and rescinds disparate-impact rules; social-media settlements emerge as a district-controlled wellbeing channel; Astor retracts the school-shooting prevention rationale for SEL.
- [2026-W30](digests/2026/2026-W30.md) — Jul 15 – Jul 22, 2026: ED moves to terminate the $1B school mental-health grants (hearing July 24, terminations possible July 31); judge rejects "agency priorities" revocations; Texas's 86% federal dependence for school mental health; two SAMHSA NOFOs close July 27.
- [2026-W29](digests/2026/2026-W29.md) — Jul 8 – Jul 15, 2026: 15 states sue ED over ~$1B school mental-health grant terminations; Anthropic launches Claude for Teachers as NYC pauses software purchases; SAMHSA NOFOs hit close dates.
- [2026-W27](digests/2026/2026-W27.md) — Jun 24 – Jul 1, 2026: Maryland's $96M vs Maine's frozen federal funds; ETS acquires ACT; SAMHSA school-trauma grant open.
