# thrive-desk-research

A Claude skill that runs Thrive Studio's **Stage 1 desk research** on a proposed
venture — market sizing, competitive landscape, and user/payor/referrer analysis —
and produces two deliverables:

1. **Decision brief** (1–2 pages) — the go/no-go call for busy leadership.
2. **In-depth report** (5–10 pages) — the full evidence base for the record.

It works like a skeptical customer-development veteran: it asks a few clarifying
questions, pressure-tests the venture against the public record, then writes both
documents.

## Install it

**Most people use the Claude Desktop app → see the [Installation Guide](INSTALL.md).**
It takes about two minutes, no coding required.

- **Claude Desktop (recommended for everyone):** download
  [`thrive-desk-research.zip`](thrive-desk-research.zip) and upload it in
  Settings. Full click-by-click steps in [INSTALL.md](INSTALL.md).
- **Claude Code (command-line tool, for developers):** see the
  [Claude Code section](INSTALL.md#option-b--claude-code-command-line) of the guide.

## Use it

Once installed, start a new chat and either:

- type `/thrive-desk-research`, or
- just describe the task, e.g. *"Run Stage 1 desk research on this venture idea: …"*

Then paste or attach the venture brief. The skill will ask a few questions before
it starts researching — answer them and let it work.

## What you'll need

- The Claude Desktop app (free, Pro, Max, Team, or Enterprise plan), **or** Claude Code.
- For Claude Desktop: **Code execution** turned on (Settings → Capabilities). The
  guide shows you where.

## For maintainers

`SKILL.md` is the skill. After editing it, rebuild the upload bundle so teammates
download the latest version:

```bash
./build-zip.sh
```

This regenerates `thrive-desk-research.zip`. Commit both files together.

## License

Internal to Thrive Studio.
