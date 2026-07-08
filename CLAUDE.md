# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Site Overview

This is Clifford B. Anderson's personal academic website, built with [Hugo Blox Builder](https://hugoblox.com/) (the successor to Wowchemy/Hugo Academic), using the Academic CV template. It deploys automatically via Netlify on every push to `master`.

Migrated from Hugo 0.70.0 + Academic theme v4.8 (git submodule) to Hugo Blox (Hugo modules) in July 2026.

## Commands

```bash
# Local development server (installs deps, then hugo server)
bash view.sh

# Production-style build
pnpm install && hugo --gc --minify && pnpm run pagefind
```

Toolchain: Hugo **extended** (0.164.0 pinned in `netlify.toml`), Go (Hugo modules), Node + pnpm (Tailwind CSS v4, Pagefind search). The theme is imported as Hugo modules in `config/_default/module.yaml` (`github.com/HugoBlox/kit/modules/...`); there is no `themes/` directory. Run `hugo mod get -u ./...` to update modules (updates `go.mod`/`go.sum`).

## Architecture

### Configuration
All config lives in `config/_default/` as YAML:
- `hugo.yaml` — core Hugo settings, taxonomies, `ignoreLogs` (suppresses legacy-`publication`-string warnings for ~22 complex citations)
- `params.yaml` — Hugo Blox schema v2: identity, theme colors/fonts, header/footer, SEO, citation style (MLA)
- `menus.yaml` — navigation links (mostly `/#<block-id>` anchors into the homepage)
- `module.yaml` — Hugo module imports and mounts

### Homepage
`content/_index.md` is a single block-based landing page (`type: landing`). Each entry in `sections:` is a block (`resume-biography-3`, `markdown`, `resume-experience`, `resume-awards`, `collection`, `contact-info`); the `id` of each block is the anchor used by the nav menu.

### Author Profile
`data/authors/me.yaml` holds the bio, experience, skills, languages, and awards/certificates (rendered by `resume-*` blocks). `data/authors/intro.yaml` is a variant used only by the homepage intro block: it carries the education entries (compact cards with school-logo icons from `assets/media/icons/custom/`; compact styling in `assets/css/hbx/blocks/site-custom/style.css`) but no interests. Keep education OUT of `me.yaml` — the `resume-experience` block would render it as a second timeline. Avatar: `assets/media/authors/{me,intro}.jpg`. `content/authors/_index.md` disables separate author pages.

### Content Types

| Type | Path | Notes |
|------|------|-------|
| Publications | `content/publications/<slug>/index.md` | YAML frontmatter |
| Talks | `content/events/<slug>.md` or `<slug>/index.md` | TOML or YAML frontmatter |
| Projects | `content/projects/<slug>/index.md` | YAML frontmatter |
| Posts | `content/blog/<slug>.md` | TOML frontmatter |

Every page carries an `aliases` entry preserving its pre-migration URL (`/publication/...`, `/talk/...`, `/post/...`, `/project/...`); the Netlify integration module emits these as `_redirects`.

### Publication Conventions
- `publication_types` uses CSL strings: `paper-conference`, `article-journal`, `manuscript`, `book`, `chapter`, `thesis`
- Venue: structured `publication: {name, volume, issue, pages, publisher}` where the citation splits cleanly; complex citations (edited volumes, translations) keep the legacy flat string, suppressed in `hugo.yaml` `ignoreLogs`
- DOIs go under `hugoblox: { ids: { doi: ... } }`
- Links: `links:` list with `type` (pdf/code/site/...) — legacy `url_pdf`/`url_code` also still work

## Potential Future Work

- Abstracts: all 68 publications have them (July 2026; the `anderson-theology-ai-2023` gap was closed after finding the full text in *Fresh Thinking* issue 10 on issuu). Note: many pre-2015 entries carry descriptive summaries composed for this site rather than published abstracts; Cliff may refine them.
- DOIs: 27 of 68 have them (July 2026) — that appears to be all that exist. The other 41 were searched against Crossref; their venues are unregistered (pre-2018 Atla Summary of Proceedings, Princeton Seminary Bulletin before vol. 28/2007, ZDTh, Cultural Encounters, Calvin Theological Journal, Koinonia, inSpire, and Eerdmans/WJK/Lexham book chapters). Re-check occasionally in case of retroactive assignment.
- Full-text links: open-access full text goes in `links:` (`type: pdf` for scans/PDF viewers — archive.org, issuu, serials.atla.com; `type: site` for HTML articles). Useful sources: PTS journals (PSB, Koinonia, inSpire) are digitized on archive.org via Theological Commons; *Fresh Thinking* issues are on issuu.com/ctinquiry (issue 10 = theology-ai, 11 = computational, 12 = texting).
- Add featured images (`featured.jpg` or `featured.png`) to publications — 7 of 68 have one (July 2026). All six book-type entries now carry their covers; remaining candidates are chapters/articles, which rarely have obvious artwork — ask Cliff which (if any) deserve images. All projects already have images.
- Add `summary` fields to experience entries in `data/authors/me.yaml` (currently absent — needs Cliff's input on what to highlight per role)
- Consider converting the 25 legacy flat `publication` strings to the structured shape (requires manual bibliographic judgment — ask Cliff)
- The old homepage tag cloud ("Popular Topics") was dropped in the migration; restore if a tag-cloud block becomes available
- Keep the publications list current as new work is published
- News posts `cultural-heritage-at-scale-2016` and `wikipedia-edit-a-thon`: the source articles tag Cliff but don't describe his role, so the posts don't either — ask Cliff whether to add a line about his involvement
- News-link maintenance: pre-2024 news.vanderbilt.edu articles were purged (404), so news posts link Wayback Machine snapshots instead — verify the snapshot's page title, not just its HTTP status, when adding more
