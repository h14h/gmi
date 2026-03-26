# ~/h14h/home

Source for my personal site, blog, and Gemini capsule.

- **[h14h.com](https://h14h.com)** — profile (neofetch-style, hosted on omg.lol)
- **[blog.h14h.com](https://blog.h14h.com)** — weblog (omg.lol, gruvbox theme)
- **[gemini.h14h.com](https://portal.mozz.us/gemini/gemini.h14h.com/)** — Gemini capsule (Molly Brown on fly.io)

## Publishing

Push to `main` deploys everything via GitHub Actions:
- Gemini capsule → fly.io
- Blog posts → omg.lol (converted from gemtext to markdown)
- Weblog config/templates → omg.lol

## Local development

Write `.gmi` files in `content/`, then:

```sh
./deploy.sh          # deploy capsule + publish posts
./weblog/push.sh     # push templates/config only
```

## Stack

- **Content**: gemtext (.gmi)
- **Gemini server**: [Molly Brown](https://tildegit.org/solderpunk/molly-brown) (Go)
- **Hosting**: [fly.io](https://fly.io) (Gemini), [omg.lol](https://omg.lol) (web)
- **Fonts**: Geist Mono (headings/nav/code), Source Serif 4 (body)
- **Theme**: gruvbox (dark/light)
