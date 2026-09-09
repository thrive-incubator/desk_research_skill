---
type: vocabulary
last_updated: 2026-W35
---

# TAGS — Controlled Vocabulary

This is the vault's controlled vocabulary. **Before creating a new tag or entity, check this
file.** If a new canonical term is genuinely needed, add it here first so the vocabulary doesn't
fragment into near-duplicates (`ccdf` vs `child-care-development-fund` vs `subsidy`).

## The seven layers

These are the canonical layer slugs. Use the **slug** everywhere in front-matter (`layers:`,
`layer:`). The full names and descriptions come from the `head-start-synthesis` skill and follow
the money through the federal-to-local structure, ending with the evidence base underneath it.

| Slug | Full name | One-line description |
| --- | --- | --- |
| `federal` | Federal Funding & Policy | OHS/ACF rules, HSPPS changes, IMs/PIs, appropriations, and adjacent agencies (USDA CACFP, SAMHSA IECMHC, HRSA MIECHV, CCDF, PDG B-5) — the top of the funnel and the existential layer for product positioning. |
| `grantadmin` | Grant Administration & Awards | Recompetitions, interim grants, supplements, monitoring policy, regional office actions, and observed money movement (USASpending 93.600) — who has budget, who's losing it, who's new. |
| `state` | State & Adjacent Systems | State pre-K, CCDF, state Head Start collaboration offices, state budgets touching early care — no state pass-through, but grantees live inside state early-care systems. |
| `grantee-ops` | Grantee Operations & Workforce | Staffing, compensation, closures, enrollment — the workforce crisis is the sector's defining operational problem and a product-opportunity map. |
| `vendor` | Technology & Vendor Layer | Products, pilots, partnerships, funding rounds, M&A across early-childhood/child-care tech — primary intel for the entry-strategy reader. |
| `ideas` | Ideas & Influence | OPRE studies, think-tank analysis, advocacy narratives, IECMH field news, and philanthropy — where legitimacy is built before money follows. *(Renamed from "Ideas & Research" 2026-07-29 when `research` was added; the slug is unchanged, and digests written before the rename use the old heading.)* |
| `research` | Research | Peer-reviewed early-childhood and developmental-science literature: efficacy trials, implementation studies, measures, evaluations. Evidence rather than events — what the literature found, as against what layer 6 argues. |

## Canonical theme tags

A short starter list. These grow over time — add new canonical tags here as themes emerge, and
prefer an existing tag over coining a near-synonym.

- `hspps` — HSPPS rulemaking (45 CFR 1301–1305): NPRMs, final rules, performance-standards changes.
- `deregulation` — the burden-reduction rulemaking program running across the ACF docket
  ("Reducing Federal Burden…", "Reducing Bureaucracy and Burden…"): rescissions, deferral to state
  law, and cadence signals for whether a pending Head Start rule gets finalized.
- `screening-assessment` — child developmental screening and assessment requirements, cadences,
  and named instruments (incl. CLASS: Pre-K in the DRS).
- `im-pi` — OHS sub-regulatory issuances: Program Instructions and Information Memorandums.
- `drs-recompetition` — Designation Renewal System triggers, recompetitions, and interim grants.
- `appropriations` — Labor-HHS appropriations and Head Start funding levels (incl. COLA vs inflation).
- `grant-process` — cross-government grantmaking/administration rules (e.g. the OMB grant overhaul).
- `financing` — funding mechanisms, blended funding, allocation and budget structure.
- `ccdf` — the Child Care and Development Fund subsidy system.
- `state-pre-k` — state pre-K programs and state early-care budgets.
- `workforce` — staffing, wages, burnout, credentialing, community-college pipelines.
- `enrollment-ersea` — enrollment, recruitment, selection, eligibility, and attendance (ERSEA).
- `change-in-scope` — the OHS Change in Scope mechanism and its review standards, especially
  requests to reduce funded enrollment under Head Start Act Sec. 640(g)(3) (see ACF-OHS-IM-26-01).
  Narrower than `enrollment-ersea`: this is the grant-administration process, not the practice.
- `outcomes-based-purchasing` — procurement that ties vendor payment to demonstrated results rather
  than compliance alignment or service delivery, and the measurability bar it imposes on products.
- `family-engagement` — family-engagement practice and products.
- `cacfp-nutrition` — USDA CACFP and child-nutrition funding (the nutrition-funding wedge).
- `iecmh` — infant & early childhood mental health (SAMHSA IECMHC and related funding).
- `home-visiting` — HRSA MIECHV and home-visiting programs.
- `tta` — Training & Technical Assistance dollars and local training plans.
- `early-literacy` — early-literacy products, research, and interventions.
- `immigration-enforcement` — enforcement-climate effects on enrollment, attendance, and families.
- `peer-reviewed` — findings from the peer-reviewed literature (layer 7), as against advocacy or
  think-tank analysis.
- `efficacy-evidence` — studies that test whether an intervention, platform, or delivery model
  actually works; the evidence a founder cites in a pilot pitch or a grantee cites back.
- `service-delivery-modality` — virtual vs. in-person delivery of home visiting, coaching,
  consultation, and intervention.
- `philanthropy` — foundation grantmaking and funder-coalition initiatives in early childhood
  (Packard, Casey, Kellogg, Perigee, Pritzker, Irving Harris, Blank). Tracked because foundation
  dollars often seed what federal dollars later scale, and because these funders reach buyers —
  counties, cities, CDFIs, employers — that never touch the OHS channel.
- `tribal` — American Indian and Alaska Native (AIAN) Head Start and Tribal-specific funding
  streams. A structurally separate slice: separately carved out of OHS
  sub-regulatory guidance (IM-26-01 addressed only non-Tribal recipients), with its own Tribal
  MIECHV competition.
- `ai-tools` — AI products, adoption guidance, and field-authored acceptance criteria in early
  childhood and IECMH practice (e.g. clinician-in-the-loop patterns, consent and access rules).

## Naming rules

- **Filenames are lowercase-hyphenated slugs.** `office-of-head-start.md`, `hspps-workforce-rule.md`.
  No spaces, no capitals, no underscores (except the `_template.md` prefix, which is reserved to
  keep templates sorted first and visibly non-real).
- **Canonical display name and any aliases go in front-matter**, not the filename
  (`name:`, `aliases:`). The slug is the stable identifier; the display name can read naturally.
- **One slug per real-world entity/theme.** Before creating a page, search existing pages and this
  file for an existing slug or alias. If it exists, update it; don't fork a near-duplicate.
- **Add new canonical terms here before first use** — a tag or entity that isn't in TAGS.md should
  be added to TAGS.md as part of the same update.
- **State codes** are two-letter US postal codes (`PA`, `DE`) in `states:` / `related_states:`.
