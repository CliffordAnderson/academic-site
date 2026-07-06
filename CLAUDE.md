# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Site Overview

This is Clifford B. Anderson's personal academic website, built with [Hugo Academic (Wowchemy)](https://wowchemy.com/) and deployed automatically via Netlify on every push to `master`.

## Commands

```bash
# Local development server (with i18n warnings)
bash view.sh        # runs: hugo --i18n-warnings server

# Update the Academic theme (git submodule)
bash update_academic.sh
```

Hugo version in use: **0.70.0** (set in `netlify.toml`). The Netlify build command is `hugo --gc --minify -b $URL`.

## Architecture

### Configuration
The real config lives in `config/_default/` — not `config.toml`, which is a compatibility stub for Blogdown/Forestry. Key files:
- `params.toml` — theme ("minimal"), site type, contact info, map coordinates
- `menus.toml` — navigation links
- `languages.toml` — language settings

### Homepage Sections
`content/home/*.md` — each file is a headless widget. Toggle visibility with `active = true/false`; control order with `weight`. Widget types include `about`, `experience`, `accomplishments`, `projects`, `publications`, `talks`, `skills`, `featurette`, and `contact`.

### Content Types

| Type | Path | Format |
|------|------|--------|
| Bio | `content/authors/admin/_index.md` | YAML frontmatter + Markdown body |
| Publications | `content/publication/<slug>/index.md` | YAML frontmatter |
| Projects | `content/project/<slug>/index.md` | YAML frontmatter |
| Talks | `content/talk/<slug>.md` or `<slug>/index.md` | YAML frontmatter |
| Posts | `content/post/<slug>.md` | YAML frontmatter |

### Publication Types
Numeric `publication_types` field: `"1"`=conference proceedings, `"2"`=journal article, `"5"`=book, `"6"`=book chapter, `"7"`=thesis.

### Theme
The Academic theme is a git submodule at `themes/academic/`. Do not edit files inside it directly — use the `data/`, `assets/`, and `static/` directories at the repo root to override theme assets.

## Potential Future Work

- Abstracts: 67 of 68 publications now have them (July 2026). The only gap is `anderson-theology-ai-2023` (CTI *Fresh Thinking* piece — full text not retrievable online; ask Cliff for a copy or an abstract). Note: many pre-2015 entries carry descriptive summaries composed for this site rather than published abstracts; Cliff may refine them.
- Fill in DOIs on older publications (~51 of 68 lack them). Source from publishers where possible; work backward from 2022.
- Add featured images (`featured.jpg` or `featured.png`) to publications — only 3 of 68 have one. Start with book covers (XQuery for Humanists, Artificial Intelligence for Academic Libraries, Digital Humanities and Libraries and Archives in Religious Studies). All projects already have images.
- Fill in `description` fields on experience entries in `content/home/experience.md` (all seven are empty)
- Keep the publications list current as new work is published
- The mapping-berlin project (`content/project/mapping-berlin/`) may need a content update
- Upgrade Hugo (pinned at 0.70.0, May 2020, in `netlify.toml`) and the Academic theme submodule (Wowchemy is now Hugo Blox). Treat as its own project: separate branch, verify via Netlify deploy preview.
