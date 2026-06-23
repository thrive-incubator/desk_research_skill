# thrive-desk-research

A [Claude](https://claude.ai) skill that runs Thrive Studio's **Stage 1 desk research** on a proposed venture — market sizing, competitive landscape, user/payor/referrer analysis — and produces two deliverables:

1. **Decision brief** (1–2 pages) — the go/no-go call for busy leadership.
2. **In-depth report** (5–10 pages) — the full evidence base for the record.

Built for ventures at the intersection of **children's mental health and the workforce that supports it**.

## Install

Just [Claude Desktop](https://claude.ai/download). That's it — `curl` and `unzip` are already on your Mac.

```bash
curl -sSL https://raw.githubusercontent.com/thrive-incubator/desk_research_skill/main/install.sh | bash
```

Restart Claude Desktop after installing.

## Usage

In Claude Desktop, share a venture brief or concept and ask it to run desk research. For example:

> Run Stage 1 desk research on this idea: [paste brief]

Claude will ask a few clarifying questions, research the market and competitive landscape, then produce both documents as Markdown.

## Repository structure

```
SKILL.md                         # Skill definition and workflow
assets/                          # Reference materials
evals/                           # Evaluation test cases
references/
  context/                       # Thrive Studio context docs
  method/                        # Research methodologies
  templates/                     # Output templates
scripts/
  build_docx.py                  # Markdown → .docx renderer
install.sh                       # One-line installer
```

## License

Internal to Thrive Studio.
