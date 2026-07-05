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

- Add featured images (`featured.jpg` or `featured.png`) to projects and publications that are missing them
- Fill in `description` fields on experience entries in `content/home/experience.md`
- Keep the publications list current as new work is published
- The `content/home/posts.md`, `content/home/demo.md`, and `content/home/people.md` sections are inactive (`active = false`) — candidates for removal or activation
- The mapping-berlin project (`content/project/mapping-berlin/`) may need a content update
