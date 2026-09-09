# Field Knowledge Vaults — router

Two internal Thrive Center knowledge bases are bundled here. They are the Incubator's
standing read on the funding and policy ecosystems the Studio builds into, accreted
weekly from public sources and carrying a dated citation on every claim.

| Directory | Field | Lens | Layers |
| --- | --- | --- | --- |
| `k12/` | K12 edtech funding | Federal money → state → district/charter → vendor, weighted toward **student wellbeing and mental health** | federal, state, district, charter, vendor, ideas |
| `headstart/` | Head Start ecosystem | HHS → ACF → Office of Head Start → ~1,600 local grantees (**no state pass-through**), read as **entry strategy for founders** | federal, grantadmin, state, grantee-ops, vendor, ideas, research |

Current snapshot dates and commits: [SNAPSHOT.md](SNAPSHOT.md).

## When to consult them

Consult before you start open web research whenever the venture touches:

- **K12 vault** — schools, districts, charters, students, school-based mental health,
  SEL, screening, teletherapy, counselor staffing, edtech procurement, ESSER
  successors, school Medicaid, classroom AI, E-rate/connectivity.
- **Head Start vault** — Head Start or Early Head Start, early childhood educators,
  the ECE workforce, IECMH consultation, home visiting, reflective supervision,
  child care, pre-K, ACF/OHS grantees.

Skip them when the venture sits outside both (adult behavioral health, hospital
systems, higher ed, general consumer) — say so in one line and move on. A vault
that doesn't cover the venture's field is not evidence of anything.

**These are a head start, not a substitute for research.** They tell you what the
funding and policy weather has been doing; they do not size a market, price a
competitor, or assess a specific venture. Everything they give you still needs the
usual verification against the primary source.

## Read protocol

Progressive disclosure — do not read a whole vault.

1. **`<vault>/index.md`** — the map. One-line summaries of every active theme, tracked
   entity, and weekly digest. Read this first; it is enough to decide what matters.
2. **`<vault>/themes/<slug>.md`** and **`<vault>/entities/<type>/<slug>.md`** — the
   actual knowledge, 2–4 pages typically. Each carries a mutable **Current snapshot**
   (the synthesized arc) and an append-only **Timeline** (dated, sourced entries).
   Read the snapshot; drop into the timeline for the dates and figures you need.
3. **`<vault>/digests/<year>/<year>-W<ww>.md`** — week-level raw detail. Read one only
   when a theme page points at a week you need to see in full.

Narrow with front-matter before reading bodies: `tags`, `related_entities`,
`related_states`, `layers`. The controlled vocabulary is in `<vault>/TAGS.md`.
Pages cross-link with `[[slug]]` wiki-links — follow them to the matching file.

## Citation rule — cite through the vault, never to it

The vault is an internal working file. A Stage 1 report goes to the gate committee and
must stand on public sources.

- **Never** cite a vault page, a digest, or a `[[wiki-link]]` in the brief or the report.
- Every vault timeline entry names its outlet and date and carries a `[link]`. **Cite
  that underlying source**, with its publication date, exactly as if you had found it
  yourself.
- Open the underlying link before a claim becomes load-bearing — for a market size, a
  dollar figure, a deadline, or anything the scorecard rests on. Vault entries are
  written from those sources but summarize them.
- Some entries are flagged as reaching the vault via news aggregation with underlying
  program detail unretrieved. Those are **leads, not evidence** — go to the primary
  source (Federal Register, the agency, the solicitation) or drop the claim.
- Where the vault's synthesis is genuinely the insight rather than any single source —
  a multi-week arc, a pattern across grantees — you may use it to frame the analysis,
  but the supporting facts in the text still carry their own public citations.

**A vault does not launder a source.** These are Thrive-internal files, and the
classification that matters is the one on the source underneath. Most vault entries
trace to trade press, the Federal Register or Grants.gov, which are independent. But if
an entry traces to the venture's own announcement, its parent program's marketing, or a
press release restating either, it is self-published material and stays self-published
after passing through the vault — it is a claim to verify, not evidence.

## What they feed

- **Why-now and the regulatory-dependence stress test.** This is the highest-value use.
  Both vaults track live rulemaking with comment deadlines and durability — statute vs.
  final rule vs. NPRM vs. sub-regulatory guidance — which is precisely what that test
  asks you to classify. If the venture's why-now is a mandate, check the vault for a
  live reversal signal before you treat the mandate as a foundation.
- **The funding channel map.** Which money is actually durable, which is litigated or
  terminated, and where state/local channels are outperforming federal ones.
- **Competitor and buyer sightings.** Named vendors, observed district stacks, and who
  holds which grants — a starting roster to verify and extend, not a landscape.
- **Timing.** Open comment periods, closing NOFOs, and ballot dates that make a why-now
  concrete instead of rhetorical.

## Coverage limits — read these before treating an absence as a finding

The vaults are built from free, public, no-auth sources on a weekly scan. `k12/SOURCES.md`
lists the K12 feeds and searches in full. Known blind spots, K12: state allocation
mechanics and Medicaid bulletins, district RFPs and contract awards (paid bid boards),
peer-reviewed journals, philanthropy and foundation grants, state legislative bill
tracking, practitioner voices. Higher-ed and non-US results are excluded by design.

**A venture, competitor, or program missing from a vault means it did not surface in a
weekly scan — not that it does not exist.** Never write "no competitors found" on the
strength of vault silence.

## Freshness

Digests land weekly. Check [SNAPSHOT.md](SNAPSHOT.md) for the latest digest week in each
vault, and say which weeks you were working from when field context shapes a finding.

If the snapshot is more than a week or two stale and you can run shell commands, refresh
it — it is read-only against the source repos, needs no credentials, and takes seconds:

```
./scripts/refresh-vaults.sh
```

If you cannot run commands (Claude Desktop, claude.ai) but have web access, both repos
are public and can be read directly:

- `https://raw.githubusercontent.com/thrive-incubator/k12-synthesis/main/vault/index.md`
- `https://raw.githubusercontent.com/thrive-incubator/headstart-synthesis/main/vault/index.md`

Swap the trailing path for any page — e.g. `.../vault/themes/classroom-ai.md`. Fetch the
index first to see which weeks exist beyond the bundled snapshot, then fetch only the
pages you need.

## Provenance

Maintained outside this skill, in `thrive-incubator/k12-synthesis` and
`thrive-incubator/headstart-synthesis` (both public), each fed by its own weekly
synthesis and vault-ingest skill pipeline. This skill consumes them read-only; the
bundled copies here are a snapshot and should never be edited by hand — changes belong
upstream, and `refresh-vaults.sh` overwrites `k12/`, `headstart/` and `SNAPSHOT.md`
wholesale on every run.
