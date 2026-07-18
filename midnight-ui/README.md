# Midnight UI

A small, copy-paste Elm component library — shadcn-style. You don't
`elm install` it; you copy the components you want into your project and
own the code. Each component is self-contained: one `.elm` file and one
`.css` file, plus a single shared `tokens.css` for theming.

## Layout

```
midnight-ui/
├── tokens.css          # shared theme vars + reset — copy ONCE
├── Card/
│   ├── Card.elm
│   └── card.css
├── Navbar/
│   ├── Navbar.elm
│   └── navbar.css
├── Accordion/
│   ├── Accordion.elm
│   └── accordion.css
└── examples/
    └── Demo.elm        # uses every component; also the compile check
```

## Install (per component)

1. Copy `tokens.css` into your project once, and the folder(s) you want
   (e.g. `Card/`).
2. Point Elm at the component folder — add it to `source-directories` in
   your `elm.json`:
   ```json
   "source-directories": [ "src", "Card", "Navbar", "Accordion" ]
   ```
3. Link the CSS in your `index.html`, tokens first:
   ```html
   <link rel="stylesheet" href="tokens.css" />
   <link rel="stylesheet" href="Card/card.css" />
   <link rel="stylesheet" href="Navbar/navbar.css" />
   ```

Only `elm/core` and `elm/html` are required. Icons are supplied by you as
`Html Never`, so the library pulls in no icon dependency.

## Design conventions

- **CSS classes are namespaced** with `mc-` (BEM-ish:
  `mc-navbar__label`, `mc-card--midnight`) so they never collide with your
  own styles.
- **Variants are custom types**, not strings — the compiler lists them and
  rejects typos. Add a look by adding a constructor.
- **Components are stateless.** You own the state; you pass config + a
  `msg`. No nested `Model`/`Msg`/`Html.map` wiring.
- **Theme in one place.** Edit `tokens.css` to restyle every component.

## Try it

```
cd midnight-ui
elm make examples/Demo.elm --output=demo.js
```
