# Gacha Life 2 — internal source archive

**Classification:** Lunime confidential  
**Access:** Authorized staff and contractors only  
**Status:** Private GitHub repository — do not fork, mirror, or redistribute

This tree is a **decompiler export** of the shipped Adobe AIR / Flash SWF (JPEXS / FFDec layout). It is maintained for engineering review, tooling, and historical reference. It is **not** an Adobe Animate project and cannot be published with File → Publish.

Keep the folder layout. Numeric names are SWF **character IDs**, not feature numbers. Renaming or collapsing directories (especially `sprites/`) breaks the mapping between scripts, embeds, and art.

## Documentation

| Document | Contents |
| --- | --- |
| [docs/README.md](docs/README.md) | Index of all guides |
| [docs/getting-started.md](docs/getting-started.md) | Five-minute orientation |
| [docs/folder-map.md](docs/folder-map.md) | Top-level directories |
| [docs/naming-conventions.md](docs/naming-conventions.md) | Class names, symbol IDs, `c1`–`c5` layers |
| [docs/scripts-guide.md](docs/scripts-guide.md) | Primary ActionScript files |
| [docs/app-flow.md](docs/app-flow.md) | Boot, hub, customizer, gacha, studio |
| [docs/working-with-the-archive.md](docs/working-with-the-archive.md) | Search, decompiled AS3, rebuild limits |
| [NOTICE](NOTICE) | Copyright and access |

## Directory overview

```
fonts/          Embedded typefaces (TTF)
frames/         Frame / label exports
images/         Bitmap tags
morphshapes/    Morph-shape tags (may be empty)
movies/         Nested movie tags (may be empty)
scripts/        ActionScript 3
  GL2_fla/      Document package (game and UI classes)
  _assets/      assets.swf required by [Embed] metadata
shapes/         Vector outlines (SVG), one file per shape ID
sounds/         Audio tags
sprites/        DefineSprite folders (majority of the archive)
symbolClass/    symbols.csv — character ID to class name
texts/          Static text tags
```

## Primary entry points

| Area | Location |
| --- | --- |
| Application / scene graph | `scripts/GL2_fla/MainTimeline.as` |
| Character creator | `scripts/GL2_fla/customizer_468.as` (symbol `24831`) |
| Color picker | `scripts/GL2_fla/colorpicker_594.as` |
| Studio adjuster | `scripts/GL2_fla/studioadjuster_756.as` |
| On-stage character, chat, emote | `scripts/chara.as`, `scripts/chata.as`, `scripts/emotea.as` |
| ID index | `symbolClass/symbols.csv` |

Root timeline labels include `loaddata`, `title`, `load`, `home`, `gacha`, `gachaani`, `collection`, `life`, `featuredchars`, and `studio`.

## Scope

- There is no `.fla` in this archive. Most clip classes are library items (`[Embed]`, children, `stop()`). Game flow lives in `MainTimeline`.
- `scripts/_assets/assets.swf` exceeds GitHub’s recommended file size and must remain in place for embed metadata.
- Runtime copy is often assigned in ActionScript; files under `texts/` are tag payloads, not the string table.

## Scale

| Path | Approximate size |
| --- | --- |
| `sprites/` | ~6 GB |
| `shapes/` | ~1 GB |
| `scripts/` | ~90 MB (including `assets.swf`) |
| `images/` | ~86 MB |

History is split across many commits so GitHub can accept the upload. The working tree at `HEAD` is the complete export.

## Handling

Do not reorganize `scripts/`, `sprites/`, or `symbolClass/symbols.csv`. Restrict searches to `scripts/` until you have a character ID. See [NOTICE](NOTICE) for copyright.
