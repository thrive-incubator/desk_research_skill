# Installation Guide

This guide installs the **thrive-desk-research** skill so anyone on the team can
run Stage 1 desk research in Claude — no coding required.

There are two ways to use Claude. Pick the one you have:

- **Claude Desktop** — the app you download and open like any other program
  (or claude.ai in your browser). **This is what almost everyone should use.**
  → [Option A](#option-a--claude-desktop-recommended)
- **Claude Code** — a tool developers run in the Terminal.
  → [Option B](#option-b--claude-code-command-line)

> **Important:** these are two different products. A skill installed in one does
> **not** appear in the other. If you're not sure which you have, you have Claude
> Desktop — use Option A.

---

## Option A — Claude Desktop (recommended)

Time: ~2 minutes. You'll download one file and upload it in Settings.

### Step 1 — Turn on Code execution (one-time)

1. Open Claude Desktop (or go to **claude.ai**).
2. Click your **name/initials** (bottom-left) → **Settings**.
3. Go to **Capabilities**.
4. Turn **Code execution** **on**.

> On a **Team or Enterprise** plan, this may be controlled by your admin. If you
> don't see the toggle or it's locked, ask your Thrive workspace admin to enable
> **Skills / Code execution** for the team.

### Step 2 — Download the skill file

Download **`thrive-desk-research.zip`** from this repository:

- Direct link:
  https://github.com/thrive-incubator/desk_research_skill/raw/main/thrive-desk-research.zip
- Or on the repo's main page, click **`thrive-desk-research.zip`**, then the
  **Download** (⬇) button.

Save it somewhere easy to find, like your **Downloads** folder. **Do not unzip it** —
Claude wants the `.zip` exactly as downloaded.

### Step 3 — Upload it into Claude

1. In Claude Desktop, open **Settings** → **Customize** → **Skills**.
2. Click the **+** button → **Create skill** (the upload option).
3. Choose the **`thrive-desk-research.zip`** file you just downloaded.
4. Claude reads the file and shows the skill named **thrive-desk-research**.
   Make sure its toggle is **on**.

That's it — the skill is installed.

### Step 4 — Run it

1. Start a **new chat**.
2. Type `/` and pick **thrive-desk-research** from the list
   *(or* just write: *"Run Stage 1 desk research on this venture idea…")*.
3. Paste or attach the venture brief.
4. Answer the few clarifying questions it asks, then let it work. You'll get a
   short decision brief and a longer evidence report.

### Updating to a newer version

When the skill is updated, just repeat **Steps 2–3** with the new `.zip`. Claude
replaces the old version automatically.

### Removing it

**Settings → Customize → Skills** → toggle **thrive-desk-research** off, or delete
it from the list.

---

## Option B — Claude Code (command-line)

For teammates who use **Claude Code** (the developer CLI). This installs the skill
into `~/.claude/skills/` — which Claude Code reads, but the Desktop app does **not**.

Open your Terminal and paste:

```bash
curl -fsSL https://raw.githubusercontent.com/thrive-incubator/desk_research_skill/main/install.sh | bash
```

Then restart Claude Code and type `/thrive-desk-research`.

**Prefer not to pipe a script into bash?** Do it by hand:

```bash
mkdir -p ~/.claude/skills/thrive-desk-research
curl -fsSL https://raw.githubusercontent.com/thrive-incubator/desk_research_skill/main/SKILL.md \
  -o ~/.claude/skills/thrive-desk-research/SKILL.md
```

To uninstall: `rm -rf ~/.claude/skills/thrive-desk-research`

---

## No-install option (any plan, takes 10 seconds)

If you just want to try it once without installing anything, start a new chat in
Claude Desktop and paste:

```
Read the skill at https://raw.githubusercontent.com/thrive-incubator/desk_research_skill/main/SKILL.md and follow its instructions.
```

Then share your venture brief. This works every time but won't give you the
`/thrive-desk-research` shortcut — for that, use Option A.

---

## Troubleshooting

**"I don't see Skills in Settings."**
Make sure **Code execution** is on (Step 1). On Team/Enterprise plans, Skills may
be disabled org-wide — ask your workspace admin to enable them.

**"The upload was rejected / nothing happened."**
Upload the `.zip` exactly as downloaded — don't unzip it, and don't re-zip the
`SKILL.md` on its own. If you re-created the zip yourself, the skill folder must be
at the top of the zip (`thrive-desk-research/SKILL.md`). Maintainers can rebuild a
correct one with `./build-zip.sh`.

**"I installed it but `/thrive-desk-research` doesn't appear."**
You likely installed it in the other product. Desktop and Claude Code don't share
skills — re-do the option that matches the app you're actually using. In Desktop,
also confirm the skill's toggle is **on** under Settings → Customize → Skills.

**"It runs but the output looks thin."**
Give it a real venture brief (summary, the opportunity, what's been tried, who it's
for) and answer its clarifying questions. The more context it has up front, the
stronger the brief and report.

**Still stuck?** Ping Hisham, or open an issue on this repository.
