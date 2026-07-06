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
`data/authors/me.yaml` holds the bio, education, experience, skills, languages, and awards/certificates (rendered by `resume-*` blocks). Avatar: `assets/media/authors/me.jpg`. `content/authors/_index.md` disables separate author pages.

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

- Abstracts: 67 of 68 publications have them (July 2026). The only gap is `anderson-theology-ai-2023` (CTI *Fresh Thinking* piece — full text not retrievable online; ask Cliff for a copy or an abstract). Note: many pre-2015 entries carry descriptive summaries composed for this site rather than published abstracts; Cliff may refine them.
- Fill in DOIs on older publications (~51 of 68 lack them). Source from publishers where possible; work backward from 2022.
- Add featured images (`featured.jpg` or `featured.png`) to publications — only 3 of 68 have one. Start with book covers (XQuery for Humanists, Artificial Intelligence for Academic Libraries, Digital Humanities and Libraries and Archives in Religious Studies). All projects already have images.
- Fill in `summary` fields on experience entries in `data/authors/me.yaml` (all are empty)
- Consider converting the ~22 legacy flat `publication` strings to the structured shape (requires manual bibliographic judgment — ask Cliff)
- The old homepage tag cloud ("Popular Topics") was dropped in the migration; restore if a tag-cloud block becomes available
- Keep the publications list current as new work is published
- The mapping-berlin project (`content/projects/mapping-berlin/`) may need a content update
