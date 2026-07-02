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

- **Team or Enterprise plan** to provision it once for the whole org (the recommended
  path below). Individuals on Pro/Max can install it just for themselves; builders can
  use Claude Code.
- **Code execution & file creation** and **Web search** turned on — code execution
  unlocks Skills *and* lets the skill read the brief you upload; web search powers the
  cited sources. On Enterprise/Team an **Owner** turns these on centrally (below);
  individuals turn them on in their own **Settings → Capabilities**.
- Nothing to install locally: no Python, no packages.

---

## Install & setup

**Recommended for the team (Enterprise / Team): provision it once, org-wide.** An
organization **Owner** adds the skill in organization settings; it then appears for
**every member automatically** — no per-person upload, no restart. Everyone else does
nothing.

### A. Provision org-wide — Owner, one time (~2 min)

1. **Get the skill zip.** Grab **`thrive-desk-research.zip`** from the repo's **`dist/`**
   folder (or build a fresh one — see *Packaging a fresh zip* below). It must contain
   **`SKILL.md`**. Leave it zipped.
2. **Open Organization settings → Skills.** Owners only — members don't see this screen.
3. **Turn on *Code execution and file creation* and *Skills*** (both toggles, in that
   Skills area). Skills require code execution to run, so this is mandatory.
4. **Add the skill.** Under **Organization skills**, click **+ Add** and upload
   `thrive-desk-research.zip`.
5. **Done.** It's provisioned to everyone immediately — enabled by default, no restart.
   Only Owners can add or remove org-wide skills. To scope it to *some* people instead
   of the whole org, bundle it into a plugin and assign that plugin to a group.

### B. What members do — essentially nothing

The skill is **on by default** for all members. Each person finds it under **Customize →
Skills** (in the **Organization skills** section, marked as owner-provisioned) and can
toggle it off if they choose. To use it: start a new chat, type **`/`**, and pick
**thrive-desk-research** — or just ask in plain language. Make sure **Web search** is on
so it can cite sources (Owners can enable this centrally too).

### Alternatives (if you're not provisioning org-wide)

- **Individual upload (Pro / Max, or a single Desktop user).** In your own **Settings →
  Capabilities**, turn on **Code execution & file creation** and **Web search**, then
  **Skills → Upload skill → `thrive-desk-research.zip`**, switch its toggle **On**, and
  **restart** Claude. Confirm with `/thrive-desk-research` in a new chat. (If the Skills
  section is missing, Code execution is still off — that's what gates it.)
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
   5-star idea rating in the chat.

Plan for an **interactive ~10–15 minute session**, not a fire-and-forget button —
the clarifying loop is the point, and it's what keeps the research honest.

---

## What you get

Both follow **Thrive's standard Desk Research Template** section order — hypothesis →
market overview → competitor landscape → user/payor/referrer map → UVP & unique
advantages → mission alignment → open questions — with the **competitor landscape** and
**user/payor/referrer map** treated as the priority sections.

- **`<venture>-decision-brief.md` / `.docx`** — the 1–2 page call: recommendation up top,
  a **dashboard** (5-star idea rating + gate score + Thrive-alignment score), then the
  template sections each compressed to their load-bearing line(s), with each gate-criterion
  score sitting in its own section and the granular Thrive-alignment sub-score in the
  alignment section.
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
- **A 5-star idea rating** (★ out of 5) — a holistic visual gut-check at the top of each
  doc (with the gate-score and alignment recap), allowed to diverge from the arithmetic
  when one fatal flaw or standout strength dominates.

---

## Good to know (and current limits)

- **It's a skeptic, by design.** It tries to *disprove* the idea — pressure-testing
  willingness-to-pay, "no competitor" claims, and the evidence base — so the brief
  may be more critical than a pitch deck. That's the value.
- **It only knows the public record + what you tell it.** No access (yet) to
  Interview Lens or Thrive Search. If you have internal price intuition, a named
  buyer, or unpublished research, tell it in the clarifying round.
- **Built-in studio context is dated (~April–May 2026).** The skill carries the
  Studio's model, pipeline, people, and sibling ventures so its fit analysis is
  sharp — but if the live situation has changed, say so in chat and the session wins.
- **Web search is US-centric** and competitive/pricing data is often quote-based;
  the skill flags those gaps rather than inventing numbers.
- **One idea per chat.** Start fresh for each venture.

---

## Maintaining the skill

Everything lives in **`SKILL.md`** — it's fully self-contained (flow, research
methods, studio/center/people context, and both output templates are all inlined).
To change behavior, the output template, or refresh the studio context, edit that
one file. No other files are required for it to run.

### Packaging a fresh zip (for Desktop/Claude.ai distribution)

From the directory **above** the skill folder:

```bash
# excludes tooling cruft so the zip is clean
zip -r thrive-desk-research.zip thrive-desk-research \
  -x '*/.opencode/*' '*/.git/*' '*/.DS_Store'
```

Share that `.zip`; teammates install it via the steps in **Option A** above.

---

*Questions or a broken install: ping Hisham. Feedback on output quality (especially
whether it beats your manual baseline): that's exactly what v1 is trying to learn —
send it to Hisham and Jenn.*
