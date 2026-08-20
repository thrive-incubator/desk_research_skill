---
name: thrive-desk-research
description: >-
  Thrive Studio Stage 1 desk research on a venture idea. Asks scope questions, then
  writes a 1-2 page decision brief and a 5-10 page report on market size,
  competitors, risks, and studio fit — with a scored gate scorecard, a granular
  Thrive-alignment sub-score, and a 5-axis gate-rating radar chart, delivered as
  Markdown and Word.
user-invocable: true
---

# Thrive Studio — Stage 1 Desk Research

This skill runs the desk research that Thrive Studio uses to decide whether a
venture should advance toward prototyping and customer discovery. Assume the idea
has already cleared committee review — your job now is the desk research itself:
market sizing, competitive landscape, feasibility, and a clear-eyed read on
whether the venture is real.

**Read the studio context first.** Thrive Studio is a venture studio inside
Georgetown's Thrive Center, building mission-aligned ventures at the intersection
of **children's mental health and the workforce that supports it** (early
childhood educators, peer support workers, community health workers, home
visitors, and the clinicians who train and supervise them). It is **not** VC-track:
the target is a sustainable **$3–15M ARR** business, ~80% portfolio survival, 3–5x
returns, with Thrive holding equity and a continuing stake. Outcomes are **spin-out
/ spin-in / shutdown** — there is no default.

### Adopt the posture of a skeptic

Work this like a customer-development veteran who has watched a hundred founders
fall in love with a market that turned out not to exist — and who assumes this
venture is one of them until the evidence forces otherwise. Default to trying to
*disprove* the idea, not to corroborate it. Keep pressure-testing: the problem
isn't painful enough to pay for; the named buyer isn't the one who writes the
check; willingness-to-pay is a fantasy; "inbound demand" is politeness that won't
convert; and the venture's claims about itself ("no real competitor," its
evidence base, its footprint) don't survive contact with the public record. Aim
this skepticism at the venture's *self-serving* claims — not at factual context
the team supplies (named people, a known deployment, internal history), which you
take as given. Be honest, not flattering: the studio would rather kill a weak idea
cheaply now than after spinning up an entity.

## The flow

This skill is deliberately **interactive**. Do not disappear and return with a
finished report — work in three beats, checking in with the user between them.

### Beat 1 — Ingest the input, then clarify (3–5 questions)

**If you were invoked with no idea attached yet** — e.g., a non-technical user on
Claude Desktop just ran `/thrive-desk-research` with nothing else — your *first*
move is a short, friendly prompt asking them to share the idea: ideally **upload the
project brief as a file** (PDF, Word doc, or a Google Doc they've exported/downloaded
to PDF), or paste a few sentences on what it is, for whom, and the core lever. Then
wait. Don't start researching or interrogating before there's an idea on the table.

**Read any uploaded document in full before doing anything else.** Treat an attached
file as the brief; extract from it exactly as you would from pasted text (the thesis,
named entities, studio-fit rationale, and the brief's own "Open questions for Stage
1"). If the upload is unreadable or empty, say so plainly and ask them to re-share.

**Then ingest whatever the user gave you.** The expected input is a Thrive Studio
venture brief — typically structured as Summary, The opportunity, What's been
built, The bet, Why it fits the studio, Tensions, Founder/operator structure,
Go-to-market, **Open questions for Stage 1**, and a Stage 1 plan. (It may also
arrive as a rough concept or a one-liner.) From a brief, extract and hold onto:
- **The thesis** — what's being built, for whom, and the core lever it pulls.
- **Named entities to verify** — the originating program/lab, people, claimed
  evidence base and footprint, competitors named (or claimed absent), buyers
  already in motion, sibling ventures.
- **The studio-fit rationale and the tensions** — especially the capital/outcome
  posture and what stays at the university.
- **The brief's own "Open questions for Stage 1."** These are not optional — they
  are the studio's actual agenda, and the in-depth report must answer each one
  directly (§8 of the template). Let them drive what you research.

**Then ask clarifying questions — calibrated to how much the brief already gives
you.** Separate two kinds of unknowns:
- **Research questions** (market size, competitor pricing, prevalence) — never ask
  these; go find them.
- **Context questions** (only the team knows) — ask these when missing or fuzzy:
  the precise offering; buyer/beneficiary and burning problem; geography/population
  scope; the money hypothesis (who pays — individuals, districts, states,
  foundations, grants?); the outcome lean (spin-out / spin-in / shutdown); and what
  the team already knows (relationships, prior research, the suspected wedge, the
  idea-bringer and any operator in mind).

A rich brief in the studio's standard format usually answers most of those
already — so **don't re-ask what the brief specifies, and don't over-grill a
well-formed brief.** In that case the 3–5 questions shift to confirming scope,
filling the few genuine gaps, and asking **which of the brief's open questions to
prioritize**. A thin idea or bare concept warrants the fuller set. Use
AskUserQuestion for discrete choices and plain conversation for open ones; batch
into one round; state low-stakes assumptions for veto rather than blocking. Then
say what you're about to research and proceed.

### Beat 2 — Research, then ask follow-ups informed by findings

Run the desk research using the method references (next section), grounding every
load-bearing claim in a cited source and verifying the venture's own claims
against the public record. As real information surfaces, **expect to go back to
the user with a second, smaller round of questions** — this is the most valuable
interaction in the skill, because good follow-ups are only possible once you know
what's actually out there. Examples of findings-driven follow-ups:
- "The space is more crowded than the brief implies — competitors X and Y already
  do Z. Does the team see a wedge the brief didn't name?"
- "Pricing is entirely quote-based and unpublished. Do you have any internal price
  intuition or a buyer who's quoted a number?"
- "The strongest analog is grant-funded, not recurring revenue. Is the team
  willing to pursue a grant-funded model, or is that off-strategy?"
- "This looks like it could be a spin-in (a Center program) rather than a
  spin-out. Has the team formed a view?"

Surface these as you hit them; don't hoard them to the end. Then finalize.

### Beat 3 — Produce the two documents

Write both deliverables (see "The two outputs" below), share where they landed,
and give the headline recommendation in chat.

## Research method

Ground the work in the method references below, which adapt the phuryn/pm-skills
product playbook to the studio's evaluation.

### Research discipline

Credibility comes from sources. Link every market size, growth rate, competitor
price, and funding figure to a citation, and note the date — a stale number is
nearly worthless for a decision. Prefer multiple independent sources for
load-bearing claims. **Verify the venture's self-description against the record**
(evidence base, footprint, "no competitors") and surface discrepancies and
brand/naming risks plainly. When a number doesn't exist, say so and reason from the
nearest proxy, labeled as an estimate — never fabricate a figure. Note where
pricing is opaque/quote-based; that absence is itself a finding to test later.

## The two outputs

Produce **both** docs as clean, **Google-Doc-ready Markdown** — the team pastes them
straight into Google Docs, so they must render cleanly there. They serve different
readers, so they are not the same content at two lengths. **Write the in-depth report
first** (it does the thinking), then distill the brief from it — the brief is not a
teaser for the long doc, it's the decision itself, compressed.

**Deliver each doc in two formats — Markdown and Word (`.docx`).** Markdown stays the
source of truth (and the Google-Docs paste path); the `.docx` is for readers who want
a finished Word file. So the run produces four files: the brief as `.md` + `.docx`, and
the in-depth report as `.md` + `.docx`. Write the Markdown first, then convert each to
`.docx`:

- **Prefer pandoc** when it's on the machine — it renders headings, bold, bullet lists,
  and links natively: `pandoc brief.md -o brief.docx` (likewise for the report). If
  pandoc isn't on `PATH`, the `pypandoc_binary` pip package bundles its own pandoc
  (`pip install pypandoc_binary`, then `pypandoc.convert_file(md, "docx", outputfile=…,
  extra_args=["--resource-path=."])`) — a reliable no-system-install path.
- **If pandoc is missing,** convert with another available tool — e.g. a short script
  using the `python-docx` library, or a LibreOffice (`soffice --convert-to docx`) path —
  whichever the environment has.
- **If no converter is available at all,** say so plainly and deliver the Markdown,
  telling the user they can paste it into Google Docs (with Markdown detection on) and
  download as `.docx`. Don't silently skip the Word file.

**Do not use tables in the output docs — use prose and bulleted lists instead.**
Multi-column free-text tables (competitors, buyer paths, alignment breakdowns) render
badly once the doc leaves this environment: Word and especially Google Docs collapse the
narrow columns so cell text stacks one or two characters per line ("Pri / cin / g …").
Word column widths can't be controlled reliably across both apps, so the fix is to not
depend on columns at all. Present every comparative breakdown as a **bold-led bulleted
list** — one bullet per item, the entity name in bold, the former columns folded into a
short sentence with inline labels (e.g. *Strength:* … *Weakness:* …). This reads
cleanly everywhere and is the format the section templates below already specify. If you
ever do emit a table, keep it to a genuinely narrow 2–3 columns of *short* values only.

**Generate the gate-rating radar chart once, as a PNG, before writing the Scorecard
section** (see Part 3 below) — both docs embed the *same* image. Reference it with a
normal Markdown image tag, e.g. `![Gate rating radar chart](gate-rating-radar.png)`,
placed directly under the `## Scorecard` heading in both files:

- **In the `.docx` files,** pandoc/`python-docx` embeds the PNG automatically as long
  as it's saved next to the `.md` file (pass `--resource-path=.` to pandoc, or the
  image's path) when you run the conversion — verify the image actually landed in the
  converted file.
- **In the pasted-into-Google-Docs path,** a local image path won't fetch on paste —
  Google's Markdown-paste only converts headings/tables/bold/links, not images. Flag
  this to the user explicitly: after pasting, they'll need to **Insert → Image →
  Upload** the PNG themselves where the placeholder sits, or just use the `.docx`
  (already has it) if they want zero manual steps. Don't silently drop the chart.

With comparative breakdowns written as bulleted lists (not tables), the scorecard
content renders cleanly in Word and Google Docs alike — verify no stray pipe-tables
slipped into either doc before delivering.

**Both docs follow Thrive's standard Desk Research Template** — the same section
sequence the team uses on paper: Hypothesis → Market Overview → Thrive Mission
Alignment → Competitor Landscape → User/Payor/Referrer Map → UVP & Unique Advantages →
Open Questions & Riskiest Assumptions. The brief *is* that template, filled in tight;
the in-depth report is the same skeleton with each section researched to depth (plus the
sections the gate committee additionally needs: public-record verification, operator
priors, and point-by-point answers to the brief's open questions). The templates below
encode the order — use the headings as written. **Go especially deep on the Competitor
Landscape and the User/Payor/Referrer Map** — these are the two sections the studio most
wants from this work, and the two where thin treatment is least acceptable.

**1. The decision brief — a full 1–2 pages.** The document most people actually read:
busy leadership and gate-committee members. It must stand on its own. Lead with the
recommendation, then walk the template sections in order, each compressed to its
load-bearing line(s). Follow the short-brief template below.

**2. The in-depth report — a full 5–10 pages.** For the record and the people who need
the evidence: the venture owner, the operating leads. Follow the in-depth template
below — the template sections researched to depth: hypothesis & problem/why-now,
public-record verification, market overview (TAM/SAM/SOM), **competitive landscape (deep)**,
**user/payor/referrer map (deep)**, UVP & unique advantages, Thrive mission & studio fit,
operator priors, answers to the brief's open questions, and the go/no-go with ranked
next steps and a categorized source list.

### Formatting standard (both docs — make it look right in Google Docs)

Format so the doc looks finished the moment it's pasted into Google Docs (Docs converts
Markdown on paste when *Automatically detect Markdown* is on — remind the user to enable
it under **Tools → Preferences**):

- **Real, consistent heading hierarchy.** One `#` H1 title; `##` for top-level sections;
  `###` for sub-sections. Never skip a level; never fake a heading with bold text.
- **Open with a one-line *italic* subtitle** under the H1 (what it is + for whom; on the
  brief, append the recommendation + likely-path line).
- **Prose and bulleted lists for anything comparative** (market sizing, competitors,
  buyer paths, alignment breakdowns) — **not tables.** Multi-column free-text tables
  collapse into unreadable one-character-per-line columns in Google Docs and Word. Use a
  bold-led bullet per item, folding the comparison points into a short sentence with
  inline labels (*Strength:* … *Weakness:* …). See the docx-conversion note above.
- **Citations stay readable as link text.** Link inline as `[Source name, date](url)` so
  the visible text is meaningful even when the URL is hidden in Docs. The in-depth report
  ends with a categorized source list; the brief carries only the few load-bearing ones.
- **No raw-Markdown cruft in the body.** No `---` horizontal rules between sections (Docs
  renders them as nothing useful), no stray code fences, no HTML. Short paragraphs and
  bullets, not walls of text. **Bold sparingly** — the load-bearing claim in a bullet, not
  whole sentences.

### Length — hit the full range, through evidence not filler

These are the gate committee's expectations; under-writing reads as thin work, and a
half-page "brief" or a three-page "in-depth report" will not pass.

- **Decision brief: a full 1–2 pages (~500–900 words).** Skimmable in two minutes but
  complete — it must stand alone without the long report.
- **In-depth report: a full 5–10 pages (~2,500–5,000 words).** Every template section
  gets real treatment: several cited data points in problem/why-now; ~5 direct
  competitors plus adjacents and workarounds; a two-way market sizing with reconciled
  numbers; and a point-by-point answer to each of the brief's open questions.

Reach length by adding **evidence, competitors, and reasoning depth** — never by padding
or repetition. If a section is thin, that's a research gap to go fill, not a section to
skip. The skill's whole value is a skeptical, well-sourced read; filler destroys it.

### Closing

Tell the user where the four files landed (brief `.md`/`.docx`, report `.md`/`.docx`),
give the headline recommendation **and the gate-rating radar chart** in chat (share
the PNG plus the gate score / alignment recap), and remind them they can paste the
Markdown into Google Docs with Markdown detection on, or open the `.docx` directly in
Word — and that a pasted-in Google Doc needs the chart image inserted manually.

---

# REFERENCE: Studio Context

## Thrive Studio

*State as of April 24, 2026.*

Thrive Studio is a venture studio inside Georgetown's Thrive Center for Children, Families, and Communities. It builds and launches ventures at the intersection of children's mental health and the people who support it — early childhood educators, peer support workers, community health workers, child care workers, home visitors, and the clinicians who train and supervise them. Matt Biel directs the Thrive Center. Jean-Baptiste Passot and Jason Lehmbeck lead the Studio.

The defining feature of the Studio: ideas are developed *within the Studio* rather than pitched by an operator who arrives wanting to incubate their own company. The idea-bringer is typically a clinician or researcher — today mostly from inside the Thrive Center, and by design increasingly from clinicians and researchers *outside* it (the target is to be sourcing outside ideas by December 2026) — and is not necessarily the operator who builds the venture. The Studio finds the right operator for each idea (operators may also arrive with their own idea, or to test one the Studio is surfacing), pairs them, gives them resources, and pushes them through a structured vetting and prototyping process toward one of three outcomes: spin-out as an independent company, spin-in as a durable internal product line, or shutdown with a clean post-mortem. There is no default outcome. The point of the operation is to be honest about which path each venture is actually on.

In practice, "venture studio" is a more accurate name than the original "Thrive Incubator," which the team still uses interchangeably in older email and meeting threads. The two names refer to the same thing. A separate program inside the Thrive Center, the Thrive Innovation Hub, runs a fellowship cohort of *external* startups; despite the similar branding, it is a different operation and not part of the Studio.

### What kind of ventures the Studio builds

The Studio is not a venture-capital vehicle and is not trying to be. It invests through validation work per idea — desk research, prototyping, customer discovery, MVP — rather than writing growth-stage checks and chasing hundred-x outcomes. The target profile is a $3–15M ARR business that is profitable, often bootstrappable, and built on AI-leveraged lean teams that reach cash-positive faster than traditional human-intensive service models would allow. The point is to find sustainable companies that expand Thrive's mission, not unicorns that exit.

That investment shape implies a different portfolio math from VC. The Studio plans on roughly 80% survival across the ventures it commits to — a much higher hit rate than traditional VC's baseline, made plausible by the heavy upstream vetting and the modest scale targets. Multiples per venture are correspondingly modest (3–5x in most cases). For the model to fund Studio operations, the equity stake at spin-out has to be meaningful enough that a handful of mid-sized successes — not a single moonshot — produce real return flow. The Studio still wants tail exposure on the one-in-twenty venture that turns into a $100M+ exit, but the operating model isn't built around hoping for it.

Capital recycling is structural. Equity returns from spin-outs are intended to fund the next round of ventures; if too few exits happen or returns are too thin, the model breaks. That's why the equity-and-return work currently in progress — modeling realistic return scenarios across the full pipeline, not just per-venture — is treated as load-bearing rather than nice-to-have.

What Thrive brings to a spin-out beyond capital matters as much as the dollars. The Thrive brand carries Georgetown affiliation, mission credibility, and research access; that brand value continues into the spin-out and is part of why ventures stay close after launch. Spin-outs typically retain a Thrive Center stake, continue paying Thrive for shared resources used post-launch, and operate under governance terms designed to preserve mission alignment. The relationship is closer to a coalition than a clean break.

#### The three advantages Thrive brings to a venture

These are the studio's concrete, hard-to-replicate advantages — the substance behind "what Thrive brings beyond capital." They are the raw material for a venture's **Unique Advantages / UVP** (see the UVP method and template), so weigh which ones are actually load-bearing for the venture in question rather than listing all three by rote.

1. **Access to the people who define the field.** 40+ people who have worked inside specific systems for decades — IECMH consultation, peer support, Head Start and early childhood, family caregiving, disability care. Through them a venture gets warm introductions to the faculty and clinicians who *define* these fields, and to the program providers and frontline workforce it would otherwise spend years trying to reach. This is a distribution and credibility advantage, not just a network.

2. **Access to pilots that lead to learnings and scale.** When a venture enters a health system or school district through Thrive, it enters as a **Georgetown learning partner** — both sides come open to discovering what works, rather than in a vendor/buyer posture. That framing opens doors and pilots that a cold commercial sales motion cannot, and produces learnings that compound toward scale.

3. **Nimble clinical validation that drives commercial viability.** Thrive's research team helps a venture tell a credible story and design the *evidence* that gets payers, providers, districts, and clinical systems to move faster — academic rigor at startup speed. For markets where the buyer needs proof before they'll pay (most of Thrive's), this directly shortens the path to revenue.

When evaluating a venture, treat these as testable claims, not guarantees: does *this* venture's buyer motion actually benefit from field access, a learning-partner pilot, or clinical validation — and if so, which one is decisive? An advantage the venture can't use isn't an advantage.

The annual pipeline targets are concrete: roughly 20–25 ideas vetted at the pre-filter stage, 10–12 advancing to desk research, 4–5 reaching MVP build, and 2 spin-outs per year. Of those four numbers, the first one is the bottleneck — pipeline generation is currently the Studio's single biggest gap, and most of the operational improvement work in 2026 is aimed at sourcing more ideas, both internally from the Thrive Center and externally through partner networks. An EIR (entrepreneur-in-residence) program is being stood up to maintain an active bench of operators ready to lead the validated ventures.

### How it works

Every idea goes through a pre-filter screen before any team time is invested: does it advance children's wellbeing in line with Thrive's mission, is there a plausible business model rather than just a good grant idea, is there basic reason to believe paying customers exist, can the hypothesis be stated in one sentence, and is someone willing to lead it with conviction? Ideas that pass the pre-filter enter the four-stage gated pipeline.

Stage 1 is Committee Review — the idea is presented to the leadership committee (Matt, Jason, JB) and gets an up-or-down vote on whether to invest desk research time. Stage 2 is roughly two weeks of desk research at six to twelve hours per week — market sizing, competitive landscape, feasibility — followed by another committee review. Stage 3 is prototyping and customer discovery, a roughly six-to-eight-week phase budgeted at about 50 hours of customer development plus 40 hours of prototyping, ending with a real-buyer-signal review. Stage 4 is deep validation: full MVP, detailed cost model, team confirmation, governance design, leading to the final spin-out / spin-in / shutdown call.

Decision authority is deliberately tight. The three-person leadership committee makes every stage-gate decision. Broader strategic context comes from a wider leadership ring that adds Neal Horen and Shai Idelson, and operational coordination widens further to a `leads@thrive-incubator.com` group that includes Mariam Kherbouch and Sunny Patel. Information and announcements broaden again to `all@thrive-incubator.com`, which includes Anna Jesseman, Jenn Drake-Croft, Frances Bazaz, and others. The principle behind keeping the gate committee small is that progressive commitment requires a real go/no-go each stage, and that decision works better with three people than with a larger group.

The operating cadence settled into 2-week sprints after Offsite #3 in January 2026. Sprint Demos run Thursdays at 11 ET, alternating weeks with the Incubator Leads Sync. The weekly leadership call has a standing block reserved for the three-person committee to review active projects, make stage-gate calls, and manage the pipeline. The AI at Thrive Committee meets weekly to govern AI-product principles for any venture coming out of the Studio. Quarterly offsites — currently four deep — are where the bigger calls happen: which projects to commit to, which to pause, which to kill.

The Studio runs on roughly $750,000 a year, with a $1M target. The seed money came from a donation pool that Matt Biel raised; portions of that pool fund the Studio's experimental phase. A formal Studio LLC is considered — Ben Wiles at Greenberg Glusker is leading the work — to house contracts, subscriptions, and IP that doesn't belong directly under Georgetown's umbrella. Until that's filed, the Studio operates through Georgetown's institutional contracting.

### Where it sits

The Thrive Center is the parent. It is a Georgetown organization with no separate legal existence — it operates under Georgetown's EIN, with Matt Biel as director. Inside the Center, the Studio is one of several programs. The other large adjacent program is the Thrive Innovation Hub (separate, fellowship-based), and the Center also runs research and accreditation work that intersects with the Studio without being part of it.

The Studio's relationships outside Georgetown matter. Georgetown's Office of Technology Commercialization handles IP and spin-out mechanics for any venture that leaves. Beyond Georgetown, the Studio works closely with mission-aligned partners and funders that act both as customer-discovery surfaces and as routes to market for spun-out ventures.

### What it's working on right now

The Incubator Tracker — the canonical state of the pipeline — shows four active ventures.

**Attunify** is the largest and the most pressing, the Studio's first independent venture, launched after a ~5-month incubation with a founding cohort launching in June. Attunify was previously known as **Attune**, before that **Ripple**, and earlier **Caregiver Capacity Pathway**; the Tracker still tags it under "Ripple," and the financial-model files use that label too, but the canonical name going forward is **Attunify**. Closing the spin-out — equity terms, Delaware C-Corp formation, the ongoing Thrive Center stake — is the single biggest near-term workstream. Shai Idelson and Neal Horen are the founding team.

**Thrive Academy** was the spin-in candidate but has exited the Studio effective July 2026. Following the May 18, 2026 offsite, the decision was made to transition Academy from a Studio project to a standalone Georgetown/Thrive Center project under BGE (Boston-area/Georgetown extension). Academy is no longer exploratory — it is moving into implementation and development as a Thrive Center program. It will sit in BGE for at least AY 2026-27, with the possibility of moving to a different university unit (School of Health, School of Nursing) based on experience. A new course development plan targets 4-6 new courses (July–December 2026) using the Doyle Foundation gift, priced at $50/hr (~$600-$3k per course), using recorded content + community time rather than expensive live lectures. The Academy is now a "spin-in" in the most literal sense — it stays within Georgetown, not as a studio venture but as a direct Thrive Center program.

**Virtual Consultation**, currently at Stage 2 desk research, is a spin-out candidate co-led by Julia Sayles and Kelli McDermott. They surfaced and pitched the venture themselves through the standard intake — the kind of internal-origin sourcing the Studio's pipeline model is designed for.

**Carepath DSP** is the most recently added venture, sitting at Stage 1 Committee Review under Sarah's leadership — likely Sarah Ward, building on the ACL Caregiver AI Challenge work on AI training for Direct Service Providers. Spin-out pathway.

Beyond the active four, several ideas sit on hold or in the pre-filter on the Tracker. The on-hold set includes Thrive Ascent (now framed around the Girls Inc. workstream), Magic Morning, an ERH application from David Willis, a Reflective Supervision concept, a Wise spinout, and the messaging-diagnostic framework conversation around Maro. Pre-filter holds an Individualized Family Service Plan idea and an AI-powered practice and assessment tool. One venture has been formally killed in the past year: Thrive Compass, the standalone CHW Platform.

Operationally, the Studio currently runs one active desk research project at a time. Parallel processing across more ventures comes with capacity, not by default.

### What the Studio is not

The Studio is not a "back my startup" incubator — it builds around validated, mission-fit problems developed within the Studio, not companies an operator arrives with already formed. Sourcing idea-bringers (clinicians and researchers) from outside the Center is in scope and expanding; backing already-formed external startups is the Thrive Innovation Hub's separate role, and the two should not be conflated. It is not a research lab; the output is ventures, not papers, though research is a critical input. It is not a consultancy; Thrive holds equity in spin-outs, retains a stake post-launch, and is paid in resource cost-recovery from spin-outs, not hourly fees. And it is not VC-track in the traditional sense — the portfolio is built around mission fit, modest equity, high survival rates, and royalty flows back to the Center, not unicorn-hunting.

### How things have evolved

The Studio started in mid-2025 as a deliberate experiment: take research and operational insight that had accumulated at the Thrive Center over a decade, and find out whether wrapping ventures around it produced more impact than continuing through grants and academic publications alone. The first phase, July through September 2025, was a Notion-driven ideation surge that produced a taxonomy (Domain Areas → Use Cases → Potential Products), eleven canonical use cases, and roughly twenty-five product ideas across the children's mental health workforce. Most of those ideas didn't survive contact with the market.

By Q4 2025 the Studio had concentrated around a smaller set of bets. The Caregiver Capacity Pathway emerged from Offsite #2 in November as the most promising line, with a parallel CHW workforce thesis being explored. Through the winter, the team sharpened the pitch, formalized spin-out criteria (validation in hand, plan for team, plan for governance, mission alignment, meaningful equity for Thrive, kill criteria defined), and built the first real Tracker with stage-gate scoring.

The first quarter of 2026 was consolidation. Cadence shifted to 2-week sprints. Offsite #4 in March made explicit kill/pause/commit calls on every active project; three were paused, one was advanced, and the Caregiver Capacity Pathway crystallized into the Attunify spin-out, set to occur around May. The Studio entered April 2026 still bootstrapped but no longer running on improvisation — the ventures, the team, the cadence, and the legal scaffolding were starting to look like a coherent operation rather than an experiment that hadn't been killed yet.

---

## Governance

*State as of April 25, 2026.*

This section covers decision rights inside the Studio: who decides what, how the gate committee operates, and what gets routed to the broader leadership ring or to an offsite.

### The Gate Committee

The Gate Committee is the three-person body — **Matt Biel, Jason Lehmbeck, Jean-Baptiste Passot** — that makes every stage-gate decision in the Studio's pipeline. Membership is a function of leadership: these three lead the Studio. Each brings a different center of gravity to the calls.

**Matt** carries institutional authority. He directs the Thrive Center, holds the Marriott Endowed Chair, raised the donation pool that seeded the Studio, and is the institutional sponsor for Studio work inside Georgetown. On calls where the question is whether a venture aligns with the Center's mission or where a spin-out interacts with Center-level commitments, Matt's read is load-bearing.

**Jason** brings the deepest venture-formation and financial-modeling experience on the team. Equity structures, spin-out criteria, return scenarios, and the financial templates that govern post-spin-out relationships are his territory. On calls where the question is whether the venture math actually works, Jason's read is load-bearing.

**JB** holds the Studio Technology & Innovation seats — running the operating cadence, owning prototype build for most ventures, and serving as the Studio's outward technical face. On calls where the question is whether a venture is technically tractable, whether the prototype is producing real signal, or whether the operator is delivering, JB's read is load-bearing.

The membership is deliberately tight. Three people produce real go/no-go calls; larger groups produce litigation. Stage-gate decisions require a real *no* to be possible, and a small body is what makes that real.

### What the Gate Committee decides

The committee owns the four-stage pipeline gates: advancing an idea from pre-filter into Stage 1 Committee Review, from Stage 1 to Stage 2 desk research, from Stage 2 to Stage 3 prototyping and customer discovery, from Stage 3 to Stage 4 deep validation, and from Stage 4 to a final spin-out / spin-in / shutdown call. The committee also approves kills at any stage and decides when a paused project may be reactivated.

A short list of decisions that **don't** sit with the committee, for clarity:

- **Per-sprint commitments and venture-level execution** — owners and sprint demos.
- **Cross-venture operational coordination** (resource allocation, partnership routing) — Incubator Leads Sync.
- **AI-product principles for any venture** — the AI at Thrive Committee.
- **Strategic kill/pause/commit ritual across the full portfolio** — quarterly offsites. The committee can advance individual ventures between offsites, but the bigger reframings happen at the offsite cadence.
- **Center-level questions** — Matt and the Center's leadership outside the Studio.

### How decisions get made

The Gate Committee scores each candidate decision against rubric criteria documented in the **Incubator Tracker** (the Google Sheet that holds canonical pipeline state). The scoring is structured per stage: each stage has its own set of criteria appropriate to what the venture should have produced by that point. Each committee member rates each criterion, and the committee uses the **average** score to make the call.

Two consequences follow from averaging:

a. **There is no formal tie-breaker.** Averaging across multiple criteria produces a continuous score, not a binary vote, so the situations that classically need a tiebreaker (a 2–1 vote) don't arise the same way. The threshold for advancement is set per stage in the Tracker.

b. **Matt carries institutional weight, not a structural veto.** When a call is genuinely close on the rubric — when the score lands near the advancement threshold and the committee needs to decide which way to err — Matt's institutional authority gives his read added weight. This is a feature of how the Studio is positioned inside the Thrive Center, not a formal voting mechanic.

### Inputs the committee operates on

Every stage of the pipeline produces one or more **deliverables** that the committee reviews when deciding whether to advance the venture. The deliverable set is stage-specific:

- **Pre-filter → Stage 1:** the one-page idea brief addressing the five pre-filter questions (mission fit, plausible business model, customer plausibility, testable hypothesis, willing leader).
- **Stage 1 → Stage 2:** the committee-review brief with mission/market/competitive read.
- **Stage 2 → Stage 3:** the desk-research deliverable — market sizing, competitive landscape, feasibility memo.
- **Stage 3 → Stage 4:** the customer-discovery package — interview log, real-buyer-signal review, prototype demo, draft cost model.
- **Stage 4 → spin-out / spin-in / shutdown:** the full validation package — MVP, detailed cost model, team confirmation, governance design, spin-out structure proposal.

The owner of the venture is responsible for assembling these deliverables ahead of the committee block. The committee reviews them, scores against the Tracker rubric, and makes the call. Ventures that arrive at a committee block without the expected deliverable are, by default, not advanced — the rubric only works against real artifacts.

### Cadence

The committee's standing surface is the **weekly leadership call**, which has a reserved block for stage-gate review. That block is the operational seat of the committee's role. Decisions made outside that block — by email, hallway, or ad hoc call — get re-litigated; decisions made inside it stick.

Between meetings, async work on the Tracker is normal for **Jason and JB** (both update entries, draft scoring, and prepare the deliverables they're responsible for ahead of the block). Matt's involvement is more concentrated in the meeting itself; he engages async less consistently. The asymmetry is fine — Matt's institutional voice doesn't need rubric-level engagement between meetings to land at the call.

### Wider rings — when input is pulled in

The Gate Committee is the decision body. Around it sit two wider rings:

**Leadership ring** — the committee plus **Neal Horen** and **Shai Idelson**. Pulled in when the committee needs domain input (clinical or GTM) on a call before deciding, or to surface broader strategic context. Neal and Shai don't vote on stage gates; their input feeds the committee's read.

**`leads@` ring** — the leadership ring plus **Mariam Kherbouch, Sunny Patel**, and rotating workstream leads. Pulled in for operational coordination across ventures rather than per-venture stage gates.

Decisions are **announced** more broadly than they are made. After a stage-gate call, the result is surfaced at the next Leadership meeting and at the next Sprint Demo, so the team rings out beyond the committee know what changed and why. Announcement is not the same as decision authority — it is part of how the discipline of "every major call should have a meeting, a date, and an owner" gets enforced past the committee itself.

---

## Thrive Center

*State as of April 24, 2026.*

The Thrive Center for Children, Families, and Communities is a Georgetown University unit that exists to help kids and families thrive — a phrase that does real work in the literature and in the building, and the one Matt Biel reaches for first when asked to describe what the place is. It sits inside Georgetown University Medical Center / MedStar Georgetown University Hospital, under the Division of Child and Adolescent Psychiatry. Matt Biel is the director, holding the Marriott Endowed Chair of Child, Adolescent, and Family Mental Health and serving as Chief of the Division. The Center has no separate legal existence: it operates under Georgetown's EIN, with its contracts, payroll, and tax position flowing through the university. Anything that needs to be its own legal entity — a spin-out, an external accelerator vehicle, an IP licensee — has to be built next to the Center, not as the Center itself.

What the Center actually is, day to day, is a multidisciplinary group of clinicians, researchers, faculty, trainers, and operators working at the intersection of children's mental health and the people who deliver it — early childhood educators, peer support workers, community health workers, home visitors, supervisors, and the clinicians who train them. The Center's external positioning is more polished — a multidisciplinary hub advancing equitable systems of care, accelerating the adoption of effective family-centered interventions for children facing trauma, developmental challenges, or systemic inequities by integrating research, training, policy, and community partnership — but those two descriptions point at the same thing: a Georgetown analog of Harvard's Center on the Developing Child.

### What the Center does

The Center's work splits cleanly into four kinds, none of which the Studio absorbs.

The first is research, weighted toward applied work but with explicit ambition to grow a discovery-research arm. Matt's own framing, reproduced in the March 2026 Incubator Framework draft, is that Thrive is "strongly tilted toward applied, but I'm trying to build up more discovery research too." Applied research is what the Center has historically been famous for: implementation science around IECMH consultation, the Pyramid Model, peer support workforce design, equity-centered service delivery.

The second is training and professional development. The Center has been issuing CEU-bearing trainings to mental health consultants, educators, and frontline workers for decades. The relevant infrastructure is being rebuilt around Georgetown's own continuing education capacity: Canvas as the LMS, Destiny One via the School of Continuing Studies as the registrar and CEU issuer, with optional digital badging via Credly. IACET accreditation was pursued and then paused in March 2026 once the team confirmed Georgetown can issue CEUs directly without an external accreditor.

The third is state and federal partnerships in the IECMH and frontline-workforce space — the Center as connective tissue between universities, state agencies, hub organizations, and federal programs. Active surface area runs through Tennessee (TDMHSAS, Centerstone, Tennessee Voices for Children), Oregon (the David Willis channel into Sen. Reynolds and the Children's Institute), New Mexico (Cabinet Secretary Groginsky), Pennsylvania (PA Keys), Hawaii (AIMH HI), New York, North Carolina, Montana, and California, plus federal-level relationships at NACHC, NWRPCA, AAP, and ACL. State Head Start networks — particularly in North Carolina — are an active anchor for the Studio's first paid Ripple/Attunify cohort but originate as Center-level relationships.

The fourth is direct clinical and program work via the WISE Center (Wellbeing in School Environments) and through cross-appointments with MedStar Georgetown. WISE is the school-mental-health arm; several Thrive faculty hold dual appointments there.

### Programs that live inside the Center relevant for this project

The Center is a parent organization. Several distinct programs operate underneath it, each with its own scope, leadership, and external presentation.

**Thrive Studio** (interchangeably "Thrive Incubator") is the venture studio that builds and launches mission-aligned ventures from ideas developed within the Studio — brought by clinicians and researchers inside the Center today, and by design increasingly from outside it. Operating model, pipeline, equity structure, current ventures, and history are covered in the Studio section above; the only thing worth re-stating at Center level is that the Studio reports up to Matt and uses Center brand, infrastructure, and IP under Georgetown's umbrella.

**Thrive Innovation Hub** is the separate fellowship program that runs cohorts of *external* startups working on children's mental health, wellbeing, and adjacent fields. It is not the Studio under another name and the two should not be conflated. The Hub is where mission-aligned external startups (already formed) interact with the Center; the Studio is where ideas brought by clinicians and researchers get built into ventures. Active Innovation Hub fellows include Maro and Braver/Bryant University, with cohort-level engagement from Abundant Venture Partners and a working-session series with UCLA's Center for Healthier Children, Families & Communities.

Although there are many more projects, a few active ones that are relevant to the studios are:

**Thrive Academy** is looking into CEU-accredited learning platform for educators and frontline workers. Its boundary with the Studio is the most contested in the building: Matt declared in March 2026 that it is "not an Incubator project," while Mariam's April FY27 budget treats Academy staffing as Incubator. The honest current state is that Academy is a Center program built on shared services that the Studio is helping prototype, with the spin-in-versus-Center-line decision still open.

**Research and accreditation work** runs as a portfolio of historically-named programs that long predate the venture model: the IECMH Training and Technical Assistance Center (with Jenn Drake-Croft as Deputy Project Director, formerly Project Director under the old GUCCHD name); GUCEDD (the Georgetown University Center for Excellence in Developmental Disabilities, directed by Tawara Goode, with Pamala Trivedi as Associate Director); GU LEND (Leadership Education in Neurodevelopmental Disabilities); the National Center for Cultural Competence; Nurture Connection (founded and directed by David Willis, with Patsy Hampton as Deputy); Project LAUNCH; HealthySteps Technical Assistance; the Head Start National Center on Health, Behavioral Health, and Safety; and a set of OSEP-funded early-intervention programs led by Toby Long (Contemporary Practices in Early Intervention, GEORGE, EDIJ 2500). Each of these has its own funding, principal investigator, and external surface; together they are what most of the Center's headcount is doing on any given day.

### Institutional surface

Because the Center has no separate legal existence, it operates inside a thicket of Georgetown and external accreditors and counsels.

The **Office of Technology Commercialization (OTC)** owns the IP and spin-out mechanics for any venture that exits Georgetown. The active relationships are with Zeinab Abouissa (Assistant Director, Licensing), Christon Hill (Program Manager, Georgetown Tech Ventures), and Tatiana Litvin-Vechnyak (senior, the one most likely to scrutinize ICA clauses). OTC also gates access to Georgetown's GAP Fund and the 2026 Evergreen Gap Fund. **University Counsel** (Casey Inge) negotiates Independent Contractor Agreements. **Greenberg Glusker LLP** (Benjamin Wiles) is engaged as external counsel for the spin-out structuring work.

**MSCHE** (the Middle States Commission on Higher Education) is the institutional accreditor for Georgetown overall — the backstop that any Center-issued credential ultimately leans on. **BGE** (the relationship referenced in Frances's CEU work and in the BG401262 worktag) and **GUMC** are educational partners for coursework and CEU pathways. **IACET** engagement for external CEU accreditation has been paused since March 2026 once the Georgetown-direct path was confirmed.

### External partners at Center scale

Beyond the institutional surface, the Center's most consequential external relationships sit at this level rather than at the Studio level: MedStar Health (via WISE, MI2, and the Early Childhood Innovation Network); the YMCA, Girls Inc., and Boys & Girls Clubs as anchor partners for community-based platforms; NACHC and NWRPCA as federal-level CHW/FQHC entry points; state CHW associations (TNCHWA, ORCHWA, Southwest ACH); David Willis's Nurture Connection network; UCLA's Center for Healthier Children, Families & Communities as a peer institution; Capita (Joe Waters) and Promise Venture Studio as field connective tissue; and the Lilly Endowment as a potential near-term philanthropic target. Most of these relationships predate the Studio and outlast any individual venture; the Studio uses them as customer-discovery surface and routes-to-market, but it does not own them.

### Funding posture

The Center is funded the way university research centers usually are — a mix of federal grants (OSEP, HRSA, CDC), foundation grants, state contracts, and philanthropy. A specific donation pool that Matt raised "some time ago" is the seed money for the Studio's experimental phase. A broader Center-level philanthropy raise is in flight as part of the move toward a more coherent, less bootstrapped operation.

### How the Center has evolved

For most of its 30-year history the Center was known as **GUCCHD** — the Georgetown University Center for Child and Human Development — founded around 1996 and built around IECMH consultation, developmental disability work, and federal grant programs. The rebrand to "Thrive Center for Children, Families, and Communities" came after Matt Biel became director in 2024, and external contacts were still being introduced to "the new Thrive Center" through summer 2025. The bigger shift underneath the rebrand is the deliberate move from a grants-and-publications operating model toward something that integrates an applied-research-plus-venture-studio model: the same body of knowledge expressed not just as papers and trainings but as ventures, products, and durable revenue. The Studio is the most visible piece of that shift, but the same logic is reshaping the Academy work, the AI committee, the philanthropy raise, and how the Center thinks about its own infrastructure as shared services. Where it ends up — a "new type of Center," in the Framework draft's phrase — is the open question Matt is using the next year to answer.

---

## People

*State as of April 24, 2026.*

The Studio team is small on purpose. Twelve people carry the day-to-day; another handful — counsel and a standing AI committee — are close enough to count as part of the operation. The 130-name external partner roster (state Head Start contacts, FQHC networks, MedStar collaborators, vendors) lives in the staging directory and is not part of this chapter.

The Studio operates in concentric rings, and the cleanest way to introduce the team is to walk those rings in order. The innermost ring is the three-person gate committee — Matt Biel, Jason Lehmbeck, Jean-Baptiste Passot — that approves every stage-gate. A wider strategic ring adds Neal Horen and Shai Idelson. The operational ring (`leads@thrive-incubator.com`) brings in Mariam Kherbouch and Sunny Patel. The information ring (`all@thrive-incubator.com`) widens further to include Anna Jesseman, Jenn Drake-Croft, and Frances Duran. Each ring carries different decision rights and meeting cadences.

### The gate committee

**Matt Biel** is the Director of the Thrive Center and the institutional sponsor of the Studio. A child psychiatrist by training, senior Georgetown faculty, holder of the Marriott Endowed Chair of Child, Adolescent, and Family Mental Health, and Chief of the Division of Child and Adolescent Psychiatry at GUMC. He raised the donation pool that seeded the Studio's experimental phase. His authority is institutional: he sits on the gate committee and weighs in on every stage-gate, but most operating decisions sit with the operating leads. Matt's involvement is most load-bearing on Center-level questions — budget allocation across Thrive programs, the relationship between Studio work and grant-funded research, and the longer-term question of whether the incubator framework should extend across the rest of the Center. Email `mgb33@georgetown.edu`.

**Jason Lehmbeck** co-leads the Studio. He carries the deepest experience in venture formation on the team and owns the financial-modeling and equity-structure work — spin-out criteria, equity-and-return scenarios, the spin-in financial template are his territory or co-owned with the other operating lead. Jason sits cross-boundary: he is also a co-founder of Impact Foundry, a separate venture-building organization, and that boundary needs to be respected when sharing Studio-internal materials. His Drive access and meeting invitations should be scoped narrowly; his Impact Foundry work is not Studio business unless explicitly bridged. Email `jwlehmbeck@gmail.com`.

**Jean-Baptiste Passot (JB)** is the Studio Lead and Director of Technology and Innovation. He is technically a Georgetown contractor, not an employee — the current contract was extended in March 2026 with renewal due in July 2026, which may force a restructuring through a personal consulting LLC. He is the third gate-committee vote, runs the operating cadence, owns the prototype build for most ventures, and serves as the Studio's outward face for technical and partner conversations. Studio email `admin@thrive-incubator.com`; personal `jbpassot@gmail.com` also active.

### The strategic ring

**Neal Horen** is senior Georgetown faculty and the Studio's anchor for Infant and Early Childhood Mental Health (IECMH). His clinical and research credibility is what makes Attunify's certification credentialing plausible — he is the named Clinical Director of the Attunify spin-out, with roughly a 30–40% founding equity stake. Inside the Studio he carries the IECMH Consultation work, the state-network outreach narrative, and AI at Thrive Committee membership. Email `horenn@georgetown.edu`. Note the ambiguity around `np790@georgetown.edu`: that account has been tagged inconsistently with both Neal and Sunny, so route assuming Neal when the topic is faculty/clinical and Sunny when the topic is state outreach.

**Shai Idelson** (also rendered Shai Delson and once Shai Ingber — *Idelson* is canonical) is the Studio's Innovation Director and the incoming CEO of Attunify. He operates through a UK consulting vehicle, **Atlas Strategies Ltd UK**, and is a UK tax resident with UK / Canadian / Israeli triple citizenship — the reason Attunify's spin-out structure has a UK Controlled Foreign Company analysis layered into it. Inside the Studio he runs product strategy, customer discovery for Attunify, and the brand alignment around the Ripple → Attune → Attunify (GTM "Beside By Thrive") transition. His planned founding stake is in the 40–50% range. Personal `shaidelson@gmail.com`; Georgetown `si436@georgetown.edu`.

### The operational ring

**Mariam Kherbouch** is the Studio's operations and CEU lead. She carries Georgetown contracting, Articulate licensing, the IACET accreditation submission (later paused), and the day-to-day administrative reality of running a program inside the university. She is the gatekeeper for IP carve-outs and contract language and the principal interface to University Counsel. Her name is misspelled across older meeting transcripts ("Karim Herboum," "Khadija Herboum," "Mariam Herboum" all refer to her); canonical spelling is **Mariam Kherbouch**. Email `kherboum@georgetown.edu`.

**Sunny Patel** runs state-network outreach, primarily under Neal's clinical leadership: IECMH Consultation outreach to state Head Start associations across Illinois, Montana, Alaska, Georgia, Pennsylvania, Oregon, Washington, and Tennessee. Most of the named state-level relationships in the partner roster originated in his calls. Email `np790@georgetown.edu`; "Neil Patel" appearing in one meeting log is a typo for Sunny.

### The wider team

**Anna Jesseman** holds a dual affiliation between Georgetown and MedStar Wise — Georgetown email `akj45@georgetown.edu`, external email `anna@medstarwise.org`. She leads the Thrive Academy workstream and serves as the bridge into MedStar partnerships, with primary ownership of the IACET application work (now paused), Academy content tagging, and the BGE and Girls Inc. proposal threads.

**Jenn Drake-Croft (JDC)** leads the Adoption Engine workstream — the diagnostic platform that helps advisors unblock stalled adoption engagements. Her background is implementation science (Frameworks Institute, CFIR, NIRN), and she brings that lens to the Studio's product work generally. She also serves as Deputy Project Director of the IECMH Training and Technical Assistance Center on the Center side. Older metadata tags her as `jad421@georgetown.edu`; current address is `jennifer.drakecroft@georgetown.edu`.

**Frances Duran** (written **Frances Bazaz** in older email and meeting threads — *Duran* is the formal current surname; "Bazaz" appears to be a prior or alternate name on the Georgetown account `bazazf@georgetown.edu`) co-leads CEU and Ripple operationally. She joined the Studio in late 2025 and her onboarding became the first worked example of the access-audit pattern after surfacing a missing shared-drive grant in April 2026. She sits on the IACET (paused), BGE strategy, and Ripple launch threads.

**Julia Sayles** and **Kelli McDermott** co-lead **Virtual Consultation**, a Stage 2 spin-out candidate currently in active desk research per the Incubator Tracker. They surfaced and pitched the venture themselves — an internal-origin idea in line with the Studio's sourcing model — and are now the operating leads through Stage 2. Emails `jks116@georgetown.edu` and `km1681@georgetown.edu`.

### Thrive Center colleagues working closely with the Studio

**Lauren Rabinovitz** is a Thrive Center colleague who participates in AI at Thrive Committee meetings and shows up consistently in IECMHC state-outreach threads. Email `lar99@georgetown.edu`.

### Counsel

**Casey Inge** is Georgetown University Counsel — the in-house legal contact for IP carve-outs, contract reviews, and anything that touches the university's institutional position. He does not appear in Studio meetings directly but is referenced any time Mariam is negotiating contract language on Georgetown's behalf. He approved the non-default IP carve-out used in JB's Independent Contractor Agreement.

**Ben Wiles**, at **Greenberg Glusker LLP**, is external counsel leading the Studio LLC formation work and the Attunify spin-out structure — Delaware C-Corp incorporation, cap table, IP license terms with Georgetown OTC, founder vesting. His April 14, 2026 meeting prep document is the canonical artifact for the Attunify deal structure under negotiation.

### The AI at Thrive Committee

The **AI at Thrive Committee** is a standing weekly governance body for AI-related principles across the Center. Its co-chairs are **Sarah Ward**, **Hillary Robertson**, and **Rachel Hanebutt**. **Phyllis Magrab** is the senior committee member, and **Celene Domitrovich** also participates; broader committee membership rotates. Studio ventures that incorporate AI products — which is most of them — operate within this committee's principles, and any new AI surface launched out of the Studio is expected to be reviewable by the committee.

---

# REFERENCE: Research Methods

## Market Sizing (TAM / SAM / SOM)

Adapts the phuryn/pm-skills market-sizing method to a Thrive Studio Stage 1 read.
The goal is a defensible estimate the gate committee can act on — not precision
theater. Two transparent estimates that disagree by 2x beat one suspiciously exact
number.

### The three layers

- **TAM** — everyone who could ever need this (the whole pond).
- **SAM** — the slice the venture can realistically serve given its model,
  geography, channels, and capacity (the part it can fish).
- **SOM** — the achievable share in the next **1–3 years** given competition and
  go-to-market reality (what it can land soon, and the revenue).

### Always estimate two ways, then reconcile

1. **Top-down.** Start from a published industry/market figure and narrow it with
   defensible filters (geography, segment, eligibility). Cite the source and date.
2. **Bottom-up.** Build from units: **customers × price × frequency**. This forces
   explicit assumptions and usually produces the more credible number for a focused
   venture.

If the two diverge wildly, that gap *is* a finding — say which you trust and why.
For Thrive ventures the bottom-up number usually matters most: the buyer is
often a finite, countable set (districts, programs, state agencies, clinician
cohorts), so count it.

### Label every assumption

Number the assumptions; tag each **high / medium / low** confidence; and name how
the most uncertain ones could be validated in Stage 3. Distinguish value-based
(revenue) from volume-based (users/units) sizing. Flag wide confidence intervals.

### Output

A bold-led bulleted summary (one bullet each for TAM / SAM / SOM), then the reasoning.
Fold the estimate, the 2–3 year projection, the basis, and the confidence into each
bullet — **do not use a table** (see the docx-conversion note). For example:

- **TAM — [estimate]** ([confidence]): top-down from [source]; [2–3 yr projection].
- **SAM — [estimate]** ([confidence]): [filters applied]; [2–3 yr projection].
- **SOM (1–3 yr) — [estimate]** ([confidence]): bottom-up: customers × price × frequency.

Follow with **growth drivers** (what's expanding/contracting this market — funding
shifts, policy, demographics) and **where the money comes from** (individuals,
districts, states, foundations, grants, federal). For a studio targeting a
sustainable **$3–15M ARR** business, explicitly note whether the honest SOM/SAM
sizes like that band — a market that's "too small to matter" or "needs unicorn
scale to work" is itself a decision-relevant finding.

---

## Competitive Landscape

Adapts the phuryn/pm-skills competitor-analysis method. The two mistakes to avoid:
counting only companies that look like the venture, and taking the brief's "no real
competitor" at face value. The public record almost always shows more than the
brief admits — "fragmented, not empty" is a common and important finding.

**This is a priority section — go deep.** Along with the User/Payor/Referrer Map, the
competitive landscape is what the studio most wants from this work, and the section
where thin treatment fails the gate. Aim past the minimums: a full direct-competitor
set with real profiles, a genuine sweep of adjacents and workarounds, every findable
cited price, and a positioning read that names where the venture can credibly stand.
Surface-level "here are three similar companies" is not acceptable here.

### Identify ~5 direct competitors

Use web research (sites, pricing pages, reviews, funding/news) to find ~5 primary
direct competitors. For each, capture a compact profile:
- **Profile** — what they offer, founding/funding/stage, who they serve, position
  (leader / challenger / niche), go-to-market.
- **Strengths** — key features, unique advantages, any moat, retention signals.
- **Weaknesses & gaps** — missing features, limitations, dissatisfaction, gaps.
- **Model & pricing** — per-seat / per-usage / flat / freemium; price points;
  sales motion; revenue model and growth stage.

Render as a **bold-led bulleted list, one bullet per competitor** (not a table — see
the docx-conversion note). Lead with the org name in bold, then fold model, scale, and
pricing posture into a short clause, and label the strength/weakness inline. For example:

- **[Org]** — [model]; [scale]; [pricing posture]. *Strength:* [key advantages]. *Weakness:* [gaps].

### Then the layers the brief usually misses

- **Adjacent players** — one step over; partially solve the problem or could
  extend into it. Include any **showing strain** (layoffs, lost contracts, down
  rounds) — a cautionary tale about the space's unit economics is a real finding.
  One bold-led bullet each: **[Org]** — [funding]; [reach]; [pricing]. [notes incl. strain].
- **Workarounds** — spreadsheets, free tools, manual/informal processes. Often the
  *true* incumbent: free, familiar, trusted, hardest to displace.
- **"Do nothing"** — if the pain isn't acute enough to act, inertia wins and the
  wedge must be sharper.

### Pricing benchmarks

Pull every real, cited, dated price point — list prices, contract ranges, grant
formulas, per-unit rates, credential fees. **Where the category prices by quote and
publishes nothing, say so and flag it as a Stage 3 primary-research gap.** Opacity
is a finding, not a dead end; getting 2–3 real quotes later is high-value and cheap.

### Synthesis (Jobs-to-be-Done lens)

- **Differentiation / white space** — unmet needs across the set, JTBD nobody
  solves, underserved segments, mispriced offers, unused channels.
- **Positioning read** — given the field, where could the venture credibly stand?
  Name leaders/challengers/niche and the 12–18 month threats to monitor.

Cite as you go and note dates — competitive landscapes move fast.

---

## User / Payor / Referrer Map

Draws on the phuryn/pm-skills market-segments and customer-journey-map methods,
adapted to the question Stage 1 actually has to answer: **who writes the check, and
who do you sell to first?** In Thrive's markets the person who uses the product is
rarely the one who pays for it, and a third party often gatekeeps the sale — so map
all three roles explicitly before sizing the go-to-market.

**This is a priority section — go deep.** Along with the Competitive Landscape, the
User/Payor/Referrer map is what the studio most wants from this work. Don't settle for
naming the three roles in a line each: characterize each with a specific persona,
work the jobs-to-be-done (especially the *payor's*), map 3–5 real buyer paths with
their funding mechanisms, and land a defensible answer on the credible first dollar and
sell-to-first sequence. This section is what makes or breaks the go-to-market read.

### The three roles

For the venture, identify and characterize each:
- **User** — who uses it day-to-day (the educator, peer supporter, CHW, home
  visitor, clinician, trainee). Use a specific persona, not "users."
- **Payor** — who controls the budget and signs the check (a district CFO, a state
  agency, a foundation, a program director, an individual out-of-pocket).
- **Referrer / gatekeeper** — who recommends or routes buyers, or whose approval
  unblocks the sale (conference contacts, the Georgetown/Thrive network, an
  accreditor, a state association).

Resolve the key question: are these the same person or different — and **if
different, who do you sell to first?** Getting this wrong sinks go-to-market.

### Jobs-to-be-Done per role

For the user and the payor, state the **primary job and desired outcome**, the
frequency/context/stakes, and what success looks like to them. The payor's JTBD is
usually about budget, mandate, risk, or reporting — not the user's experience —
which is why a product that delights users can still fail to sell.

### Segments & buyer paths (3–5)

Identify **3–5 distinct, non-overlapping buyer segments** (behavioral,
demographic/firmographic, or needs-based). Segments should be **measurable,
accessible, and distinct.** For each meaningful buyer path / channel, give a bold-led
bullet (not a table — see the docx-conversion note), folding in who writes the check, the
proven funding mechanism, any named buyer in motion, and your read. For example:

- **[Channel]** — check written by [who]; funded via [mechanism]; buyer in motion: [name or none]. *Read:* [assessment].

Common Thrive channels: **districts / schools, states (legislative or agency line),
foundations & nonprofits (grant pass-through), federal programs, institutions
(training programs, FQHCs, Head Start networks), and individuals.** Each implies a
different sale, compliance posture, and timeline — name the proven mechanism for
each, and flag the one that is the credible **first dollar**.

### Output

The three-role map, the 3–5 segments with JTBD and pain points, the buyer-path
bullets, and a clear answer on the credible first dollar and sell-to-first sequence.
Flag any segment that needs primary research to confirm (a Stage 3 item).

---

## UVP & Unique Advantages

Adapts the Value Proposition Canvas to the studio's question: **among all the ways
this problem already gets solved — including "do nothing" — why is *this* approach
distinct, and is the difference one the buyer actually pays for?** This section is the
hinge between the competitive landscape (what else exists) and mission/studio fit (why
Thrive). The template weights it equally with market and competitor work, so treat it
as a full section, not a closing flourish.

### Pains ↔ pain relievers (Value Proposition Canvas)

State the buyer's real **pains and jobs-to-be-done** (pull these from the
User/Payor/Referrer map — the *payor's* pains, not only the user's), then map the
venture's **pain relievers and gain creators** against them one-to-one. The test is
fit: a pain reliever that doesn't land on a pain the buyer feels is a feature, not
value. Call out any mismatch plainly — a delightful product aimed at a pain the payor
doesn't have is a common, fatal pattern.

### The demonstrable difference vs. the next best alternative

Name the **next best alternative** the buyer would actually use (often an adjacent
tool or a workaround, not a direct competitor) and state the **demonstrable,
defensible difference** — what this does that the alternative can't, in terms the
buyer can verify. Vague superiority ("better," "more holistic") is not a
differentiator; a difference the buyer can see and measure is.

### Outcomes orientation — does the market signal it cares?

Check whether the market actually *rewards* the outcome the venture improves. Look for
the signal: do buyers in this space pay for outcomes, ask for evidence, write
outcomes into contracts or grants? If the market doesn't price the outcome, even a
real improvement may not convert — flag that as a riskiest assumption.

### Unique advantages — including Thrive's

What does the venture have that others don't: **timing, credentials, access, network
trust, proprietary evidence?** Reason explicitly about **which of Thrive's three
advantages** (access to the people who define the field; access to learning-partner
pilots; nimble clinical validation — see the studio context) is *load-bearing* for
this specific venture, and which is decorative. An advantage only counts if this
venture's buyer motion can actually use it; say so honestly. Where a claimed advantage
is really table-stakes that competitors also have, name it as such.

### Output

The pains↔relievers mapping (as a bulleted list — one bullet per pain, mapping it to
the reliever/gain and a fit verdict, e.g. **[buyer pain]** → [pain reliever]. *Fit:*
[verdict] — not a table), the demonstrable difference vs.
the next best alternative, the outcomes-orientation read, and a ranked list of the
genuine unique advantages — with the one or two that are actually decisive marked, and
the load-bearing Thrive advantage named. End with a crisp **UVP statement**:
"_For [buyer] who [pain/job], [venture] provides [pain reliever] — unlike [next best
alternative] — because [the defensible difference]._"

---

## Mission & Studio Fit

This section judges whether the venture belongs in Thrive Studio — not just whether
it's a good business. Ground it in the baked-in context above; you have the real
mission and posture, so reason against them, not a guess.

### What to evaluate

- **Mission fit.** Thrive's mission is **children's mental health and the workforce
  that supports it** — early childhood educators, peer support workers, community
  health workers, home visitors, and the clinicians who train and supervise them.
  Does the venture serve that workforce or those children directly? How does it
  extend the mission's reach beyond current work? A venture that's a good business
  but off-mission is a poor studio fit, however attractive.

- **Fit with the studio's posture.** The Studio targets a **sustainable $3–15M ARR**
  business — profitable, often bootstrappable, AI-leveraged lean team, ~80%
  portfolio survival, 3–5x returns. It is **not VC-track** and is not unicorn-
  hunting. Ask honestly: does this venture's economics fit that band, or does it
  *require* a venture-scale raise and a unicorn timeline to work? If it needs a
  capital model that conflicts with the posture, surface the tension candidly and
  lay out options (start narrow and stay in posture / stage-gate the capital
  question / accept a deliberate exception). The market sizing should inform this —
  if the honest SOM sizes like a $3–15M business, that *resolves* the tension in
  the studio's favor; if it only works at unicorn scale, that's a real misfit.

- **Outcome lean: spin-out / spin-in / shutdown.** There is no default outcome.
  Form a view: is this a spin-out (independent company, Thrive holds equity), a
  spin-in (a durable internal Center product line, like Thrive Academy became), or
  a likely shutdown? Say why. The Innovation Hub backs *external* startups and is a
  different program — don't route a venture there.

- **Relationship to sibling ventures.** If the venture overlaps an existing Studio
  venture (e.g. **Attunify** — IECMH consultation, formerly Attune/Ripple — or
  **Virtual Consultation**, **Carepath DSP**), name the positioning split (by
  population, setting, buyer, brand) and flag what must be settled internally before
  customer-facing materials. Note shared-services opportunities (research engine,
  credentialing, brand) where they exist.

- **What stays at the university vs. what spins out.** Research, IP, and the
  Georgetown/Thrive credibility anchor typically stay; operations and go-to-market
  go to the entity; Thrive holds equity and is paid in resource cost-recovery, not
  fees. Note any institutional seams (e.g. MedStar vs. Thrive Center home, OTC
  involvement) the deal must reconcile.

### Output

Short candid narratives for each, then a one-line verdict: **fits / fits with
guardrails / needs internal resolution / misaligned** — and, if it needs internal
resolution, the exact question for the gate committee (Matt / Jason / JB).

---

## Operator Priors

In the Studio's model the **idea-bringer is usually a clinician or researcher and is
not necessarily the operator** who builds the venture — the Studio finds the right
operator (and is standing up an EIR bench). So this section does two things
depending on what the brief gives you.

### If an operator or idea-bringer is named

Do light, honest due diligence — not a background check, but enough public-record
triangulation to give the gate committee a useful "Read" before they invest
relationship capital. (Treat names the team supplies as authoritative; verify
*public claims*, not the person's existence.)
- **Triangulate** against the public record (LinkedIn, Crunchbase/Tracxn, company
  sites, press). Confirm or correct claimed roles, scale, raises, outcomes.
- **Prior ventures — how did they end?** Acquisition, soft landing, fold, asset
  transfer each tell a different story. Where the record disagrees with the brief,
  flag it and recommend confirming directly rather than assuming.
- **Fit for THIS venture's buyer motion.** Match their proven motion (B2C vs.
  institutional/district/state sales vs. clinical) against where the revenue
  actually comes from (from the User/Payor/Referrer map).
- **The "Read."** One honest paragraph: strengths, the gap, and which seat they fit
  — operator/CEO, clinical/IP lead, idea-bringer, fundraising asset, or not a fit.
- **The one thing to test** in a conversation (the highest-value question).

### If no operator is named (common)

Describe the **operator profile the venture needs**: the buyer motion they must
have sold into, the domain credibility required, full-time vs. part-time given
scope, posture-fit (can they build category leadership inside a sustainable $3–15M,
non-VC model rather than chasing a unicorn?), and any compliance/credential
awareness the space demands. Separate the clinical/IP-lead seat (often the
idea-bringer) from the operator/CEO seat.

### Tone

This is about real people who may read it. Be candid but fair — surface risks worth
weighing, not speculation. "Worth confirming directly with X what actually happened"
is the right register when the record is ambiguous.

---

## Scorecard, Thrive-Alignment Sub-Score & Gate-Rating Radar Chart

Both documents carry a lightweight **scoring layer** so the gate committee can see
the read at a glance. It has three parts: the **four-criteria gate rubric** (scored
1–3, the headline numbers), a **granular Thrive-alignment sub-score** (the deeper
drill on fit, rolled up to one overall number), and a **five-axis gate-rating radar
chart** (the visual gut-check — the four gate criteria plus the overall alignment
score, plotted together). Score from the evidence you actually gathered — every
score must be defensible from the body of the report, not vibes. When the evidence
is thin for a criterion, score conservatively and say the score is provisional.

**Scores live with the content, not in a standalone scorecard table.** Each of the
four criteria maps to a section the report already has, so report each score *inside
its home section* as a short bold callout — e.g. `**Market Size: 2/3** —
[one-line justification]` — where the section's evidence backs it up. The only
scoring summary at the top of the doc is the **radar chart plus a one-line recap** of
the totals (a dashboard, not a duplicate of the per-section reasoning).

### Part 1 — The four-criteria gate rubric (each 1–3)

Score each criterion **1, 2, or 3** against the anchored descriptions below. Use the
anchor language as written; pick the anchor the evidence best supports, and write a
one-line justification with the score in its home section.

| # | Criterion | Question | 1 | 2 | 3 |
|---|-----------|----------|---|---|---|
| 1 | Market Size | How large is the addressable market for this idea? | Tiny niche (<$10M TAM); not viable as a business | Mid-size market ($10–50M TAM); viable but constrained growth | Large market (>$50M TAM); room for meaningful business scale |
| 2 | Competitive Position | How differentiated is Thrive's potential offering from existing solutions? | Saturated market with entrenched incumbents; no clear differentiation | Some competitors but identifiable whitespace or unique angle | Clear whitespace or Thrive has a defensible, unique advantage |
| 3 | Feasibility | How realistically can Thrive build and deliver this within 12–18 months? | Not feasible — requires capabilities, partnerships, or capital we don't have | Feasible with significant effort; some gaps to fill | Highly feasible — fits squarely in Thrive's capability and capacity |
| 4 | Revenue Potential | How strong is the path to earned revenue at meaningful scale ($1M+ ARR)? | No credible path to earned revenue; grant-dependent | Possible revenue model but speculative; comparable businesses thin | Clear path to $1M+ ARR with credible unit economics and buyer evidence |

**Where each score goes** (its home section in the output):

| Criterion | Home section — in-depth report | Home section — brief |
|-----------|-------------------------------|----------------------|
| Market Size | §3 Market Overview | Market Overview |
| Competitive Position | §4 Competitive Landscape | Competitor Landscape |
| Feasibility | §7 Thrive Mission Alignment | Thrive Mission Alignment |
| Revenue Potential | §3 Market Overview (revenue / SOM / where the money comes from) | Market Overview |

**Feasibility sits in the alignment section but is its own gate criterion** — state it
as a distinct, clearly-labeled line *next to* the Part 2 alignment sub-scorecard, not as
one of the six alignment sub-categories. It counts toward the **/12 gate score**; it does
**not** roll into the **/3 alignment average**. Think of it as a seventh line shown
alongside the alignment breakdown, scored on its own.

Note: there is **no "Potential to Scale Thrive" criterion** — Thrive fit is scored in
full by the Part 2 sub-score, so it isn't double-counted in this rubric. All four
scores also become axes of the Part 3 radar chart, and the headline recap carries the
**Gate score (sum of the four, x/12)** alongside it.

### Part 2 — Thrive-alignment sub-score (granular, each 1–3)

This sub-score is how the report scores Thrive fit in full — there is **no separate
"Thrive" line in the four-criteria rubric**, so alignment is captured entirely here.
Score each of the six characteristics **1–3** using the anchors below, then report
the **overall as the average (x/3, one decimal)**. This breakdown lives in the Thrive
Mission Alignment section (brief) / §7 (in-depth), and the overall feeds both the
headline recap and the fifth axis of the Part 3 radar chart.

| # | Alignment characteristic | Question | 1 | 2 | 3 |
|---|--------------------------|----------|---|---|---|
| 1 | Mission-domain fit | Does it serve children's mental health and/or the workforce that supports it? | Off-domain — neither children's MH nor the named supporting workforce | Adjacent — touches the domain indirectly, or serves only part of it | Squarely on-domain — directly serves children's MH and/or the named workforce |
| 2 | Reach / impact multiplication | Can it multiply Thrive's reach and impact? | Marginal or no increase in Thrive's reach/impact | Meaningful but incremental increase | Step-change — credible path to 10x Thrive's reach/impact |
| 3 | Leverages Thrive's advantages | Does the buyer motion actually use field access / learning-partner pilots / clinical validation? | None of Thrive's three advantages are load-bearing here | One advantage helps at the margin | One or more advantages are decisive to winning the buyer |
| 4 | Studio posture / economics fit | Does it fit the $3–15M, sustainable, non-VC, lean model? | Requires venture-scale capital / unicorn timeline to work | Fits the band with stretch, or needs an explicit exception | Fits squarely — sustainable $3–15M, bootstrappable/lean, meaningful equity |
| 5 | Sibling-venture coherence | Does it sit cleanly alongside Attunify / Virtual Consultation / Carepath DSP? | Direct conflict / cannibalization with an existing venture, unresolved | Overlap that needs an internal positioning split before customer-facing work | Clean complement — no harmful overlap, possible shared-services upside |
| 6 | Counter-mission risk | Could it cut against the mission or create values/reputational tension? | Material counter-mission risk that's hard to mitigate | Some tension; manageable with named guardrails | No meaningful counter-mission risk |

Report it as a **bold-led bulleted list** (not a table — see the docx-conversion note),
one bullet per characteristic with its score and a one-line justification, closing with
the rolled-up overall:

- **Mission-domain fit — [score]/3:** [one-line justification].
- **Reach / impact multiplication — [score]/3:** [one-line justification].
- **Leverages Thrive's advantages — [score]/3:** [one-line justification].
- **Studio posture / economics fit — [score]/3:** [one-line justification].
- **Sibling-venture coherence — [score]/3:** [one-line justification].
- **Counter-mission risk — [score]/3:** [one-line justification].
- **Overall alignment — [x.x]/3:** [what the shape reveals].

### Part 3 — Gate-rating radar chart (five axes, plotted from the scores above)

Plot the **four gate-rubric criteria plus the overall Thrive-alignment score** on one
five-axis radar (spider) chart — the visual gut-check that replaces the old star
rating. Unlike the star rating, this isn't an independent judgment call — it's a
direct plot of scores you already computed in Parts 1 and 2, so there's nothing new
to decide here beyond laying it out clearly:

| Axis | Score | Source |
|------|-------|--------|
| Market Size | x/3 | Part 1 — Market Overview (§3 / in-depth; Market Overview / brief) |
| Competitive Position | x/3 | Part 1 — Competitor Landscape (§4 / in-depth; Competitor Landscape / brief) |
| Feasibility | x/3 | Part 1 — Thrive Mission Alignment (§7 / in-depth; Thrive Mission Alignment / brief) |
| Revenue Potential | x/3 | Part 1 — Market Overview (§3 / in-depth; Market Overview / brief) |
| Thrive Alignment (overall) | x.x/3 | Part 2 overall — Thrive Mission Alignment (§7 / in-depth; Thrive Mission Alignment / brief) |

All five axes share the **same 1–3 scale**, which is what makes them comparable on
one chart. A text/glyph rendering can't show five axes at once, so this one has to be
a generated image:

- Five evenly spaced spokes, one per row above, with gridlines at 1, 2, and 3.
- A single closed polygon connecting the five values, lightly filled.
- Each axis labeled with **both its name and its score** (e.g. `Market Size (3/3)`)
  so the reader isn't left estimating position against the gridlines.
- One consistent color per venture across the brief and the in-depth report; a plain
  white background so it reproduces cleanly in print and in Word.

Matplotlib's polar-axes projection is the simplest path if it's available in the
execution environment (the same environment already used for the `.docx` conversion):

```python
import matplotlib.pyplot as plt
import numpy as np

title = "Venture Name — Gate Rating"  # replace with this venture's name
labels = ["Market Size", "Competitive Position", "Feasibility",
          "Revenue Potential", "Thrive Alignment"]
scores = [3, 2, 2, 1, 2.3]  # replace with this venture's actual scores, 1-3 scale
color = "#2E5EAA"

n = len(labels)
angles = np.linspace(0, 2 * np.pi, n, endpoint=False).tolist()
values = scores + scores[:1]
closed = angles + angles[:1]

fig, ax = plt.subplots(figsize=(6, 6), subplot_kw=dict(polar=True))

# First axis at top, going clockwise — the conventional, symmetric radar layout.
ax.set_theta_offset(np.pi / 2)
ax.set_theta_direction(-1)

ax.plot(closed, values, linewidth=2, color=color, zorder=3)
ax.fill(closed, values, color=color, alpha=0.22, zorder=2)

# Hard-cap the scale at 3 so the outer gridline IS the boundary (no wasted ring).
ax.set_ylim(0, 3)
ax.set_yticks([1, 2, 3])
ax.set_yticklabels(["1", "2", "3"], color="#8a8a8a", fontsize=9)
# Park the radial 1/2/3 labels between two spokes so they never sit on the polygon.
ax.set_rlabel_position(360 / n / 2)

ax.set_xticks(angles)
ax.set_xticklabels([f"{l}\n({s}/3)" for l, s in zip(labels, scores)], fontsize=11)
ax.tick_params(axis="x", pad=14)  # keep axis labels clear of the outer ring

# Light grey web; drop the heavy default outer spine.
ax.grid(color="#cfcfcf", linewidth=0.8)
ax.spines["polar"].set_color("#cfcfcf")
ax.spines["polar"].set_linewidth(0.8)

ax.set_title(title, fontsize=15, pad=28)
fig.savefig("gate-rating-radar.png", dpi=200, bbox_inches="tight", facecolor="white")
```

If matplotlib (or an equivalent plotting tool) isn't available in the environment,
say so plainly and fall back to the table above plus the text recap below — don't
fabricate an image or silently drop the visual.

**Save one PNG per venture** (e.g. `gate-rating-radar.png`) and embed the same image
in both docs — see the embedding and Google-Docs-paste guidance above. This is the
**top-of-doc dashboard** — place it right under the `## Scorecard` heading, above the
per-criterion detail, so the reader sees everything at a glance:

> ![Gate rating radar chart](gate-rating-radar.png)
> **Gate score 8/12 · Thrive alignment 2.3/3**
> _One-line takeaway — what the shape reveals (e.g. strong feasibility and alignment
> offsetting thin revenue potential), not a separate score._

---

# REFERENCE: Output Templates

## Short Decision Brief Template (1–2 pages)

This is the document most people will read — busy leadership and gate-committee
members who won't get through the full report for every idea. It must stand on its
own and be skimmable in two minutes. It **follows Thrive's Desk Research Template
section order**, with the recommendation pulled to the top because this is a gate
decision. Aim for a **full 1–2 pages (~500–900 words)** — complete, not a half-page
stub; if it runs past 2, you're writing the long report.

Keep citations light here (a few for the load-bearing numbers); the full source
list lives in the in-depth report. Use the headings below as written so it renders
cleanly when pasted into Google Docs. Each section is the template's section,
compressed to its load-bearing line(s) — the Competitor and User/Payor/Referrer
sections earn a little more room than the rest.

```
# [Venture Name] — Stage 1 Desk Research Brief
_[Project subheading: what it is, for whom] · Recommendation: [GO / CONDITIONAL GO / HOLD / NO-GO] · Likely path: [spin-out / spin-in / shutdown]_

## Recommendation
[2–4 sentences. The call, and the single most important reason for it. If
conditional, name the one condition that decides it.]

## Scorecard
![Gate rating radar chart](gate-rating-radar.png)
**Gate score [x]/12 · Thrive alignment [x.x]/3**
_[one-line takeaway — what the shape reveals, not a separate score]_
[Per-criterion scores sit in their home sections below: Market Size & Revenue Potential in Market Overview, Competitive Position in Competitor Landscape, Feasibility in Thrive Mission Alignment. Chart axes (all 1–3 scale): Market Size, Competitive Position, Feasibility, Revenue Potential, Thrive Alignment (overall).]

## The Hypothesis
_If we provide [X], then [buyer] will [measurable outcome]._
[One line: the burning problem and the measurable change being created.]

## Market Overview
**Market Size: [x]/3** · **Revenue Potential: [x]/3** — [one line each, justified by the read below]
- **Size:** TAM ~[x] / SAM ~[x] / SOM ~[x] ([confidence])
- **Where the money comes from:** [grants / org budgets / individual spend / government]
- **Demand temperature:** [who is desperately looking for this vs. mildly interested]

## Competitor Landscape
**Competitive Position: [x]/3** — [one line, justified by the read below]
- **Direct:** [who is already selling this — the 2–3 that matter most]
- **Adjacent / workarounds:** [partial solutions; spreadsheets, group texts, informal processes]
- **"Do nothing":** [where inertia sits — is the pain acute enough to act?]

## User / Payor / Referrer Map
- **User:** [who uses it day-to-day]
- **Payor:** [who controls the budget and signs the check]
- **Referrer:** [who recommends or routes buyers]
- **First dollar:** [if these differ — who you sell to first, and the proven funding mechanism]

## UVP & Unique Advantages
[One or two lines: why this approach is distinct vs. the next best alternative, and
which Thrive advantage (field access / learning-partner pilots / clinical validation)
is load-bearing here.]

## Thrive Mission Alignment
[One or two lines: on-mission? fits the $3–15M sustainable, non-VC posture? any tension
(capital model, sibling-venture overlap, counter-mission risk) that needs an internal call.]

The six-part alignment breakdown (each scored 1–3):

- **Mission-domain fit — [x]/3:** [one line]
- **Reach / impact multiplication — [x]/3:** [one line]
- **Leverages Thrive's advantages — [x]/3:** [one line]
- **Studio posture / economics fit — [x]/3:** [one line]
- **Sibling-venture coherence — [x]/3:** [one line]
- **Counter-mission risk — [x]/3:** [one line]
- **Overall alignment — [x.x]/3:** [what the shape reveals]

**Feasibility (gate criterion — separate from the alignment average above): [x]/3** — [can Thrive build & deliver this in 12–18 months? counts toward the /12 gate score, not the /3 alignment overall]

## Open Questions & Riskiest Assumptions
[The top 1–3 assumptions that, if wrong, kill this — and the single highest-leverage,
cheapest thing to test next. Point to the in-depth report for the rest.]
```

---

## In-Depth Report Template (5–10 pages)

For the record and for the people who need the evidence behind the call — the
venture owner and the operating leads. It is **Thrive's Desk Research Template with
every section researched to depth**, plus the gate-committee sections the template
doesn't carry (public-record verification, operator priors, answers to the brief's
open questions). Lead with prose and evidence; keep citations inline as readable
`[Source, date](url)` links; use the bold-led bulleted lists shown (not tables — they
collapse in Word/Google Docs). Skeptical and analytical, not
promotional. Use these headings as written so it pastes cleanly into Google Docs.
Target a **full 5–10 pages (~2,500–5,000 words)** — give every section real treatment;
thinness reads as incomplete work. **§4 Competitor Landscape and §5 User/Payor/Referrer
Map are the priority sections — they should be the most substantial in the report.**

```
# Stage 1 Desk Research: [Venture Name]
_[Project subheading — what it is and for whom]_

## Executive Summary
[The verdict on one screen, punchline first: the why-now moment; the
evidence/credibility read; the competitive read; the who-pays/first-dollar read; the
1–2 things that most need de-risking; the operator read if relevant; and the headline
recommendation (GO / CONDITIONAL GO / HOLD / NO-GO) and likely path
(spin-out / spin-in / shutdown).]

## Scorecard
![Gate rating radar chart](gate-rating-radar.png)
**Gate score [x]/12 · Thrive alignment [x.x]/3**
_[one-line takeaway — what the shape reveals, not a separate score]_
[Per-criterion scores are reported in their home sections: Market Size & Revenue Potential in §3, Competitive Position in §4, Feasibility in §7 (alongside the alignment breakdown, as its own gate criterion). The 6-part Thrive-alignment breakdown is also in §7. Chart axes (all 1–3 scale): Market Size, Competitive Position, Feasibility, Revenue Potential, Thrive Alignment (overall).]

## 1. The Hypothesis & Why Now
### The hypothesis (If/Then)
_If we provide [X], then [buyer] will [measurable outcome]._ [Who is the buyer, what is
the burning problem, the measurable change.]
### The problem (current data)
[Prevalence/scale of the problem, cited and dated.]
### Cost of inaction (the buyer's frame)
[What the buyer already loses — dollars, turnover, risk.]
### Research base for the thesis
[Independently triangulate the venture's core claim against the literature.]
### Why now — the inflection
[Timing forces — funding shifts, policy, market moves — that make the window real.]

## 2. What the Public Record Shows
[Verify the venture's claims about itself and its world: originating program/lab and
real footprint, named evidence base, brand/naming risks, brief-vs-record gaps.]

## 3. Market Overview (TAM / SAM / SOM)
**Market Size: [x]/3** · **Revenue Potential: [x]/3** — [one line each, scored from the sizing and revenue read in this section]

- **TAM — [size]** ([confidence]): top-down [source].
- **SAM — [size]** ([confidence]): [filters applied].
- **SOM (1–3 yr) — [size]** ([confidence]): bottom-up: customers × price × frequency.

[Reconcile top-down vs. bottom-up; growth drivers; where the money comes from
(grants / org budgets / individual spend / government); segment demand by behavior —
who is desperately looking vs. mildly interested. Honest about estimates.]

## 4. Competitive Landscape
**Competitive Position: [x]/3** — [one line, justified by the landscape below]
### Direct competitors (identify ~5, profile each)
[One bold-led bullet per competitor: **[Org]** — [model]; [scale]; [pricing posture]. *Strength:* [advantages]. *Weakness:* [gaps].]
### Adjacent solutions
[One bold-led bullet each: **[Org]** — [funding]; [reach]; [pricing]. [notes incl. any strain].]
### Workarounds & "do nothing"
[The real incumbent — spreadsheets, group texts, free tools, status quo, inertia.
Where does "do nothing" sit on the spectrum — is the pain acute enough to act?]
### Pricing benchmarks
[Every findable, cited, dated price point. Flag opaque/quote-based pricing as a Stage 2 gap.]
### White space & positioning
[Where no one serves the buyer well; where the venture could credibly stand; the
12–18 month threats to monitor.]

## 5. User / Payor / Referrer Map
### The three roles
- **User (day-to-day):** [specific persona, not "users"]
- **Payor (writes the check):** [who controls the budget, by channel]
- **Referrer / gatekeeper:** [who recommends, routes, or must approve the sale]
- **Same or different?** [if different — who you sell to first, and why]
### Jobs-to-be-Done per role
[The user's job and the payor's job (budget / mandate / risk / reporting) — these differ.]
### Segments & buyer paths (3–5)
[One bold-led bullet per channel: **[Channel]** — check written by [who]; funded via [mechanism]; buyer in motion: [name or none]. *Read:* [assessment].]
### First dollar & sell-to-first
[The credible first dollar, the sequence, and any segment needing Stage 3 primary research.]

## 6. UVP & Unique Advantages
### Pains ↔ pain relievers (Value Proposition Canvas)
[One bold-led bullet per pain: **[buyer pain / job]** → [venture's pain reliever / gain]. *Fit:* [verdict].]
### Demonstrable difference vs. the next best alternative
[What this does that the alternative can't, in terms the buyer can verify.]
### Outcomes orientation & unique advantages
[Does the market reward the outcome? Which of Thrive's three advantages (field access /
learning-partner pilots / clinical validation) is load-bearing here — and which is
decorative?]
**UVP statement:** _For [buyer] who [pain], [venture] provides [reliever] — unlike [next
best alternative] — because [defensible difference]._

## 7. Thrive Mission Alignment & Studio Fit
**How it scales the mission:** [serves children's MH + the supporting workforce?]
**Where it could go counter to the mission:** [populations/approaches/partnerships that create tension; what must be true to stay in bounds]
**Fit with the $3–15M sustainable, non-VC posture:** [does the model fit, or need a venture-scale exception?]
**Capital / outcome lean:** [spin-out vs spin-in vs shutdown, and why]
**Sibling-venture positioning:** [overlap with Attunify or others to settle internally]
**Stays at the university vs. spins out:** [research/IP/credibility vs. ops/GTM]

### Thrive-alignment sub-score (this is how Thrive fit is scored — no separate gate criterion)
The six-part alignment breakdown (each scored 1–3):

- **Mission-domain fit — [x]/3:** [one line]
- **Reach / impact multiplication — [x]/3:** [one line]
- **Leverages Thrive's advantages — [x]/3:** [one line]
- **Studio posture / economics fit — [x]/3:** [one line]
- **Sibling-venture coherence — [x]/3:** [one line]
- **Counter-mission risk — [x]/3:** [one line]
- **Overall alignment — [x.x]/3:** [what the shape reveals]

**Feasibility (gate criterion — separate from the alignment average above): [x]/3** — [can Thrive build & deliver this in 12–18 months, given capability/capacity? counts toward the /12 gate score, not the /3 alignment overall]

**Verdict:** [fits / fits with guardrails / needs internal resolution / misaligned]

## 8. Operator Priors
[If an operator/idea-bringer is named: light public-record triangulation + a "Read"
on fit + the one thing to test. If none named: the operator profile the venture needs.]

## 9. Answers to the Brief's Open Questions
[Address each Stage-1 open question from the brief in order: best current answer,
the evidence, and what's left for Stage 2.]

## 10. Recommendation & Riskiest Assumptions (Go / No-Go)
### Signals supporting GO
1. ...
### Yellow flags / riskiest assumptions (ranked by how fast the venture dies if true)
1. ...
### Recommended next steps (in execution order)
1. [highest-leverage, cheapest test first]
### Open research questions for Stage 3 (customer discovery)
- ...

## Appendix — Sources
[Categorized list: primary subjects, macro/funding, competitors, models/frameworks.]
```
