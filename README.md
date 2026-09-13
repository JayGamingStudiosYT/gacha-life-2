# Gacha Life 2 — source archive

Private archive of the **Gacha Life 2** Flash / AIR dump for Lunime developers.

This tree is **not** a typical `src/` project. It is a **JPEXS / FFDec-style export**: every SWF tag (script, sprite, shape, font, sound, text) is a file or folder. Layout matches the decompiler export. Do not rename or nest these folders if you want IDs to stay aligned with the original SWF.

**Start here**

| Doc | What it answers |
| --- | --- |
| [docs/folder-map.md](docs/folder-map.md) | What each top-level folder is |
| [docs/naming-conventions.md](docs/naming-conventions.md) | How `customizer_468` and `DefineSprite_24831_…` names work |
| [docs/scripts-guide.md](docs/scripts-guide.md) | Which `.as` files matter and where logic lives |
| [docs/app-flow.md](docs/app-flow.md) | Title → home → customizer / gacha / studio |
| [docs/reading-decompiled-flash.md](docs/reading-decompiled-flash.md) | How to read this dump without Flash Builder |

Decompiled ActionScript is verbose (wildcard imports, `dynamic` classes, timeline frame scripts). Treat `MainTimeline.as` as the app, clip classes as UI skins with optional scripts.

---

## Top-level folders (quick)

```
fonts/         Embedded TTF files referenced by Font*.as
frames/        Timeline / frame tag exports
images/        Bitmaps (JPEG/PNG/GIF) from DefineBits tags
morphshapes/   Shape tweens (often empty)
movies/        Nested SWF / DefineSprite movie tags (often empty)
scripts/       ActionScript 3 (readable logic)
  GL2_fla/     Almost all game/UI classes (document package)
  _assets/     Packed assets.swf used by [Embed] metadata
shapes/        Vector outlines (SVG), one file per shape ID
sounds/        Audio tags
sprites/       DefineSprite folders (bulk of the archive ~6 GB)
symbolClass/   symbols.csv — SWF character ID ↔ class name
texts/         Static DefineText strings (one .txt per text ID)
```

Numeric filenames (`shapes/10001.svg`, `texts/88.txt`) are **SWF character IDs**, not “chapter 88”.

---

## Fast paths for developers

- **App entry / scene machine:** `scripts/GL2_fla/MainTimeline.as` (~37k lines). Frame labels include `loaddata`, `title`, `load`, `home`, `gacha`, `studio`, `collection`, `life`, `featuredchars`.
- **Character creator UI:** `scripts/GL2_fla/customizer_468.as` — class for symbol `24831`. Matching art: `sprites/DefineSprite_24831_GL2_fla.customizer_468/`.
- **Color UI:** `scripts/GL2_fla/colorpicker_594.as`.
- **Studio transform UI:** `scripts/GL2_fla/studioadjuster_756.as`.
- **On-stage character / chat / emote clips:** `scripts/chara.as`, `scripts/chata.as`, `scripts/emotea.as` (default package, not `GL2_fla`).
- **Name lookup:** `symbolClass/symbols.csv` (`id;"package.ClassName"`).

---

## Size

Rough scale of this dump:

| Area | Scale |
| --- | --- |
| `sprites/` | ~6 GB, ~800 sprite folders, tens of thousands of files |
| `shapes/` | ~1 GB, ~23k SVG files |
| `scripts/` | ~90 MB, ~440 `.as` files + `assets.swf` (~75 MB) |
| `images/` | ~86 MB |
| Rest | fonts, sounds, texts, frames |

GitHub warns on `scripts/_assets/assets.swf` (over 50 MB). That file is required by `[Embed(source="/_assets/assets.swf", symbol="…")]` on clip classes.

---

## What this is not

- Not a rebuildable Adobe Animate / Flash Builder project (no `.fla`, no `.as3proj`).
- Not minified web JS. Logic is AS3 timeline + MovieClip scripts.
- Clip class bodies are often empty besides `addFrameScript` / `stop()`; real behavior is parent-driven from `MainTimeline`.
