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

- A Claude plan with **Skills** (Pro, Max, Team, or Enterprise — or Claude Code).
- On Claude Desktop / Claude.ai: **Code execution & file creation** turned on (it gates
  the Skills feature *and* lets the skill read the brief you upload) and **Web search**
  turned on (for cited sources). The walkthrough below turns both on — step by step.
- Nothing to install locally: no Python, no packages.

---

## Install & setup

> **Why two sets of steps?** Claude Desktop / Claude.ai install skills by **uploading a
> zip** in Settings; Claude Code reads them from a folder on disk. Most of the team is
> on Desktop — use **Option A**. Builders use **Option B**.

### Option A — Claude Desktop / Claude.ai (the team · ~5 min, one time)

Do this once. After it, using the skill is just `/thrive-desk-research` + uploading a
document. Follow the steps in order — step 2 is what most often gets missed.

1. **Open Settings.** In Claude Desktop, click your name/initials in the **bottom-left
   corner → Settings**. (On claude.ai it's the same menu in the top-right.)
2. **Turn on Code execution & file creation.** In Settings, open **Capabilities**.
   Switch **Code execution & file creation** to **On**. This does two things: it
   *unlocks the Skills feature* (without it, the Skills screen in step 6 won't even
   appear), and it lets the skill *open the brief you upload*. Required even though the
   skill itself writes no code.
3. **Turn on Web search.** In that same **Capabilities** area, switch **Web search** to
   **On**. The report's credibility comes from live, cited sources, so this is needed.
4. **(Team / Enterprise workspaces only.)** If you're on a shared Team or Enterprise
   workspace and there's no Skills section, ask a workspace **Owner** to enable
   **Skills** for the workspace first. Personal / Pro / Max accounts skip this step.
5. **Download the skill file.** Get **`thrive-desk-research.zip`** from the repo's
   **`dist/`** folder (or ask Hisham). **Leave it zipped — do not unzip it.**
6. **Upload it.** Settings → **Capabilities → Skills** (some builds call this
   **Customize → Skills**) → click **Upload skill** → choose `thrive-desk-research.zip`
   → make sure its toggle is switched **On**.
7. **Restart Claude.** Fully **quit and reopen** the Desktop app — skills show up in the
   `/` menu only after a restart.
8. **Confirm it's there.** Open a new chat, type **`/`**, and check that
   **thrive-desk-research** appears in the list. That's it — you're set up.

> **If something's off:** labels vary slightly by build — look under **Capabilities**,
> **Customize**, or **Features** in Settings. If `/thrive-desk-research` doesn't appear
> after a restart, 9 times out of 10 it's step 2 (Code execution still off) or the
> skill's toggle being off in step 6.

### Option B — Claude Code (builders / Hisham)

One-liner (clones `SKILL.md` into your Claude Code skills dir):

```bash
curl -sSL https://raw.githubusercontent.com/thrive-incubator/desk_research_skill/main/install.sh | bash
```

Or copy the folder manually:

```bash
cp -R thrive-desk-research ~/.claude/skills/thrive-desk-research   # SKILL.md at its root
```

Restart Claude Code. It's then invocable as **`/thrive-desk-research`**, and also
auto-loads when a request matches its description.

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
