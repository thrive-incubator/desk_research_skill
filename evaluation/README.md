# Evaluation — how well does this skill actually do?

One file lives here: **[`carepath-config-sweep.html`](carepath-config-sweep.html)** — the
test-results dashboard from the `skill-testing` harness.

GitHub renders `.html` as source, so don't click through to read it. Click the file,
choose **Download raw file**, and open the download in a browser. It is fully
self-contained — no network calls, no assets to fetch, no server — so it works offline
and from anywhere on disk.

## What's in it

A three-model config sweep, run 2026-09-02 against skill version `c5b518031107`
(harness commit `ea36e23`): the same five CarePath briefs — `simple`, `thin`,
`standard`, `complete`, `exhaustive` — run through Opus 4.8, Sonnet 5 and Haiku 4.5,
all at medium thinking effort, one run per cell. Fifteen runs, sixteen tests each.

Headline numbers, so you know whether it's worth opening:

| Config | Comparable score | Criticals | Median cost/run |
| --- | --- | --- | --- |
| Opus 4.8 @ medium | 0.770 | 7 | $14.71 |
| Sonnet 5 @ medium | 0.731 | 11 | $4.12 |
| Haiku 4.5 @ medium | 0.723 | 10 | $0.91 |

All three land in the **warning** band. All three are Pareto-efficient — quality and
cost move together, so none of them is simply the wrong choice, and a 16× price gap
buys about five points of composite score.

## Two traps when reading it

**Rank on `comparable_score`, not `overall`.** `overall` includes the two tests
(withheld discovery, discovery ratio) that get mechanically easier as the brief thins,
so averaging it rewards a thinner brief for being thin. `comparable_score` drops both
and reweights by test family. It is the number the page ranks on.

**Stability is unmeasured here, not good.** One run per cell means within-case
dispersion doesn't exist — the page names the arms that can't answer it rather than
scoring them zero. Whether a cheaper model is *noisier* as well as worse is still an
open question.

## Regenerating it

The dashboard is a build artifact of the private `desk-research-testing` repo. It reads
`results/` only — no LLM, no API key, nothing recomputed:

```bash
cd ../skill-testing
python visualize.py --sweep opus-4-8-medium+sonnet-5-medium+haiku-4-5-20251001-medium
```

The copy here is a point-in-time snapshot, so re-run the harness and re-copy rather than
expecting this file to track the skill.
