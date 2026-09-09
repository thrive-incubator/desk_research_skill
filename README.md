# Thrive Desk Research — a Claude Skill

A standalone Claude skill that runs **Thrive Studio's Stage 1 desk research** on a
venture idea and returns two structured deliverables:

1. a **short decision brief** (1–2 pages) for busy leadership and the gate committee, and
2. an **in-depth report** (5–10 pages) for the record.

You give it an idea — ideally a project brief, or just a short description — it asks
a few clarifying questions, researches the public record (market sizing, competitive
landscape, who-pays mapping, mission/studio fit), and writes both docs with a
skeptical, evidence-first posture: every load-bearing number is cited and dated,
confidence is labelled, and assumptions are made explicit so you know what to scrutinize.

This is the **v1 standalone skill.** The longer-term path integrates it into a Thrive
Studio Workspace (Slack) Autopilot suite with access to Interview Lens and Thrive
Search; v1 deliberately works only from the public record + what you tell it.

---

## What you need (quick checklist)

- **Nothing to install** — the skill is already shared with everyone at the **Thrive
  Center**, on by default in your Claude account.
- Just confirm **Web search** is on (**Settings → Capabilities**) so sources get cited.
  Code execution is already enabled org-wide — it's what lets the skill read the brief
  you upload.
- No local setup: no Python, no packages.

---

## Using it — it's already installed for the team

The skill is **already provisioned to everyone at the Thrive Center**, so **you don't
install anything.** It appears under **Customize → Skills** (in the *Organization
skills* section), already toggled **on** and marked as owner-provisioned.

To use it: start a **new chat**, type **`/`**, and pick **thrive-desk-research** — or
just ask in plain language (*"Run Stage 1 desk research on this idea…"*). See **Run it**
below.

**Don't see it, or it's not working?** Almost always one of:
- **Web search** or **Code execution & file creation** is off in your **Settings →
  Capabilities** — turn them on (web search powers citations; code execution lets it
  read your uploaded brief).
- You toggled the skill **off** in **Customize → Skills** — switch it back on.
- If it's genuinely absent, you may not be in the Thrive Center Claude org yet — ping Hisham.

### For admins — updating or re-provisioning (reference)

Already provisioned; you only need this to **push an update**. An **Owner** opens
**Organization settings → Skills**, makes sure **Code execution and file creation** and
**Skills** are on, clicks **+ Add**, and uploads a fresh **`thrive-desk-research.zip`**
(from the repo's **`dist/`** folder, or rebuild — see *Packaging a fresh zip* below).
Re-provisioning pushes to everyone immediately, no restart. Only Owners can add/remove
org-wide skills; to scope it to a subset, bundle it into a plugin assigned to a group.

### Outside the Thrive Center org? (alternatives)

- **Individual upload (Pro / Max, or a single Desktop user).** In your own **Settings →
  Capabilities**, turn on **Code execution & file creation** and **Web search**, then
  **Skills → Upload skill → `thrive-desk-research.zip`**, switch its toggle **On**, and
  **restart** Claude. Confirm with `/thrive-desk-research` in a new chat.
- **Claude Code (builders).** One-liner:
  ```bash
  curl -sSL https://raw.githubusercontent.com/thrive-incubator/desk_research_skill/main/install.sh | bash
  ```
  or copy the folder: `cp -R thrive-desk-research ~/.claude/skills/thrive-desk-research`.
  Restart Claude Code; invoke with `/thrive-desk-research` or plain language.

---

## Run it

1. Start a **new chat** (a clean context gives the best result).
2. Invoke the skill — **this differs by surface**:
   - **Claude Code:** type `/thrive-desk-research`, *or* just ask in plain language.
   - **Claude Desktop / Claude.ai (once the zip is uploaded):** type `/` and pick
     **thrive-desk-research**, *or* just ask in plain language — *"Run Stage 1 desk
     research on this idea: …"*, *"Evaluate this venture for Thrive Studio,"* *"Size
     this market."* (It also auto-triggers.) If it's missing from the `/` menu, check
     that **Code execution** is on and the skill is **toggled on** in Settings.
3. **Give it the idea — just upload the doc.** Best: **upload the project brief**
   (PDF, Word, or a Google Doc downloaded to PDF) right after invoking; the skill
   reads the file. Pasting the text works too, as does a few sentences on what it is,
   for whom, and the core lever. The skill will ask for it if you start empty.
4. **Answer the clarifying questions.** The skill asks 3–5 up front (scope, who pays,
   spin-out vs spin-in lean, which open questions to prioritize) and won't start
   researching until scope is clear. It may come back with a second, smaller round
   once research surfaces something worth checking.
5. **Get your deliverables.** It writes both docs (each as Markdown **and** Word) and
   gives you the headline recommendation (GO / CONDITIONAL GO / HOLD / NO-GO) plus the
   gate-rating radar chart in the chat.

Plan for an **interactive ~10–15 minute session**, not a fire-and-forget button —
the clarifying loop is the point, and it's what keeps the research honest.

---

## What you get

Both follow **Thrive's standard Desk Research Template** section order — hypothesis →
market overview → competitor landscape → user/payor/referrer map → UVP & unique
advantages → mission alignment → open questions — with the **competitor landscape** and
**user/payor/referrer map** treated as the priority sections.

- **`<venture>-decision-brief.md` / `.docx`** — the 1–2 page call: recommendation up top,
  a **dashboard** (a 5-axis gate-rating radar chart + gate score + Thrive-alignment score),
  then the template sections each compressed to their load-bearing line(s), with each
  gate-criterion score sitting in its own section and the granular Thrive-alignment
  sub-score in the alignment section.
- **`<venture>-indepth-report.md` / `.docx`** — the full evidence: the same template
  researched to depth, the scorecard, public-record verification of the venture's own
  claims, operator priors, the 6-part Thrive-alignment breakdown, point-by-point answers
  to the brief's open questions, the go/no-go, and a categorized source list.

Each doc comes in two formats. **Markdown is the source of truth and the Google-Docs
paste path** — clean heading hierarchy, real tables, readable citation links, sized to a
full 1–2 pages (brief) and 5–10 pages (in-depth). The **`.docx`** is a finished Word file
(converted via pandoc) for readers who prefer it. To turn the Markdown into a Google Doc:
enable **Tools → Preferences → Automatically detect Markdown**, then paste — headings,
tables, bold, and links all convert.

### The scoring layer

Each doc carries a lightweight scoring layer so the gate committee gets the read at a glance:

- **Four gate criteria, each 1–3** (anchored rubric): Market Size, Competitive Position,
  Feasibility, Revenue Potential — **Total /12**. Each score sits *in its home section*
  (e.g. Market Size in Market Overview, Competitive Position in Competitor Landscape), not
  in a separate table.
- **A granular Thrive-alignment sub-score** — six characteristics each scored 1–3
  (mission-domain fit, reach/impact multiplication, leverages Thrive's advantages, studio
  posture/economics fit, sibling-venture coherence, counter-mission risk), rolled up to an
  overall **/3** in the alignment section. This *is* how Thrive fit is scored — there's no
  separate "Thrive" criterion in the gate rubric, so it isn't double-counted.
- **A 5-axis gate-rating radar chart** — the four gate criteria plus the overall
  Thrive-alignment score, plotted together as a visual gut-check at the top of each
  doc (image, generated per venture), alongside the gate-score and alignment recap.

---

## Good to know (and current limits)

- **It's a skeptic, by design.** It tries to *disprove* the idea — pressure-testing
  willingness-to-pay, "no competitor" claims, and the evidence base — so the brief
  may be more critical than a pitch deck. That's the value.
- **It only knows the public record, the bundled field vaults, and what you tell
  it.** No access (yet) to Interview Lens or Thrive Search. If you have internal
  price intuition, a named buyer, or unpublished research, tell it in the
  clarifying round.
- **Field context on K12 and Head Start comes bundled.** The skill ships with the
  Incubator's two knowledge vaults, so on ventures in those fields it starts from a
  standing read of the funding and policy weather instead of from zero — see
  *Field knowledge vaults* below. Outside those fields it researches from scratch
  as before.
- **Built-in studio context is dated (~April–May 2026).** The skill carries the
  Studio's model, pipeline, people, and sibling ventures so its fit analysis is
  sharp — but if the live situation has changed, say so in chat and the session wins.
- **Web search is US-centric** and competitive/pricing data is often quote-based;
  the skill flags those gaps rather than inventing numbers.
- **One idea per chat.** Start fresh for each venture.

---

## Maintaining the skill

Behavior lives in **`SKILL.md`** — flow, research methods, studio/center/people
context, and both output templates are all inlined there. To change behavior, the
output template, or refresh the studio context, edit that one file.

Two supporting pieces sit alongside it and travel with the skill:

- **`references/vaults/`** — the bundled field knowledge vaults (see below).
- **`scripts/refresh-vaults.sh`** — pulls those vaults up to date.

### Field knowledge vaults

The skill bundles read-only snapshots of the Incubator's two knowledge vaults —
`thrive-incubator/k12-synthesis` and `thrive-incubator/headstart-synthesis`, both
public — under `references/vaults/`. They give it a standing, weekly-updated read on
the K12 and Head Start funding and policy ecosystems, which is where the *why-now*
and the regulatory-dependence stress test usually get decided.

**Refresh them before a run on a venture in either field.** Digests land weekly:

```bash
./scripts/refresh-vaults.sh
```

Read-only against the source repos, no credentials needed, takes seconds. It re-pulls
both repos, re-bakes `references/vaults/k12/` and `references/vaults/headstart/`, and
rewrites `references/vaults/SNAPSHOT.md` with the commit and latest digest week of
each. Then re-run the installer so the installed copies pick it up.

Never hand-edit anything under `references/vaults/` — those files belong to the vault
repos, and a refresh overwrites them wholesale. Fixes go upstream. The routing rules
the skill actually follows — when to consult a vault, the read order, the rule that a
vault is never cited in a deliverable — live in `references/vaults/VAULTS.md`, which
*is* ours to edit.

### Verifying it works

Three different questions, three different checks. Run them in order.

**1. Is the plumbing right?** (seconds, run it any time)

```bash
./scripts/verify-vaults.sh
```

Checks that the vaults are bundled and non-empty, that `SKILL.md` still carries the
instructions telling the skill to use them, that every installed copy matches this
folder, that the vault's internal links all still resolve (this is the canary for an
upstream restructure), that timeline entries still carry source links, and how far
behind upstream the snapshot is. Green means the wiring is intact — it says nothing
about output quality.

**2. Does the skill actually use them?** (one real run)

Run the skill on a venture in one of the two fields and watch what it reads.

Working looks like: it opens `references/vaults/VAULTS.md`, then the relevant
`index.md`, then **two to four** theme or entity pages — and talks about the field's
funding and policy state *before* it starts searching the web. On a venture outside
both fields it should say so in one line and skip them.

Broken looks like:
- It reads a whole vault, or a dozen-plus files — it's ignoring the read protocol.
- A vault path, a digest filename, or a `[[wiki-link]]` appears in the brief or the
  report — the citation rule has failed, and that's the most damaging failure mode
  here, because internal file paths are not sources.
- It writes "no competitors found" and the support for that is vault silence.
- It never opens the vaults at all on an obviously K12 or Head Start venture.

**3. Does it make the report better?** (the only question that really matters)

This needs the `skill-testing` harness, and it needs a test case in one of the two
fields — every current case is CarePath DSP (I/DD), which correctly doesn't trigger
the vaults at all, so the suite cannot see this change. Add a K12 or Head Start case,
then run the suite against a vault-wired build and a stripped one:

```bash
cd ../skill-testing
THRIVE_SKILL_DIR=~/Workspace/thrive/thrive-desk-research python run.py   # vaults on
```

The harness records which skill version produced each result, so the two runs stay
comparable. Look for a sharper why-now, correctly classified rule durability, and
named funding channels — not just a longer report.

The harness renders its scoreboard as a single self-contained HTML page, and the most
recent one is checked in here: **[`evaluation/carepath-config-sweep.html`](evaluation/carepath-config-sweep.html)**
— five CarePath briefs across Opus 4.8, Sonnet 5 and Haiku 4.5, sixteen tests each.
GitHub shows `.html` as source, so download the raw file and open it in a browser.
[`evaluation/README.md`](evaluation/README.md) has the headline numbers and the two
ways the scores are easy to misread.

### Installing a local build

`install.sh` fetches `SKILL.md` and `README.md` from the published repo, so it does
**not** carry the vault bundle. To install what's in this folder, vaults included,
use **`./install-local.sh`** — it copies the whole folder into every Claude config
root on the machine (`~/.claude`, `~/.claude-work`, `$CLAUDE_CONFIG_DIR`).

### Packaging a fresh zip (for Desktop/Claude.ai distribution)

From the directory **above** the skill folder:

```bash
# excludes tooling cruft so the zip is clean
zip -r thrive-desk-research.zip thrive-desk-research \
  -x '*/.opencode/*' '*/.git/*' '*/.DS_Store'
```

Share that `.zip`; teammates install it via the steps in **Option A** above. The zip
includes `references/vaults/`, which adds roughly 800 KB — run
`./scripts/refresh-vaults.sh` first so the snapshot you ship is current.

---

*Questions or a broken install: ping Hisham. Feedback on output quality (especially
whether it beats your manual baseline): that's exactly what v1 is trying to learn —
send it to Hisham and Jenn.*
