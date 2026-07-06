# cliffordanderson.net

Clifford B. Anderson's personal academic website, built with [Hugo Blox Builder](https://hugoblox.com/) (Academic CV template) and deployed via [Netlify](https://www.netlify.com/) on every push to `master`.

## Requirements

- [Hugo](https://gohugo.io/) (extended edition)
- [Go](https://go.dev/) (for Hugo modules)
- [Node.js](https://nodejs.org/) and [pnpm](https://pnpm.io/) (for Tailwind CSS and Pagefind search)

## Local development

```bash
bash view.sh   # installs dependencies and starts the Hugo dev server
```

## Content

| Type | Path |
|------|------|
| Homepage | `content/_index.md` (block-based landing page) |
| Author profile | `data/authors/me.yaml` |
| Publications | `content/publications/<slug>/index.md` |
| Talks | `content/events/<slug>.md` |
| Projects | `content/projects/<slug>/index.md` |
| Posts | `content/blog/<slug>.md` |

See `CLAUDE.md` for further architectural notes.
