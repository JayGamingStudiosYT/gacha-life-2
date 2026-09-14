# Folder map

Top-level directories are **SWF tag families**, not application features (`ui/`, `game/`). Feature names appear in class and instance names inside those folders.

## `scripts/`

ActionScript 3 recovered from ABC tags.

| Path | Role |
| --- | --- |
| `scripts/GL2_fla/` | Document package. Named clips (`customizer_468`, `shirtc1_283`, and similar). |
| `scripts/GL2_fla/MainTimeline.as` | Root `MovieClip`: save/load, navigation, gacha, ads (Distriqt), customizer. |
| `scripts/*.as` (package root) | Default-package types: `chara`, `chata`, `emotea`, font classes. |
| `scripts/_assets/assets.swf` | Binary referenced by `[Embed(..., symbol="symbolNNNNN")]`. Required. |

A file under `scripts/` does not always own the feature. `titlescreen_16.as` only plays intro frames and sets `parent.reachend`. Title **flow** is in `MainTimeline`.

## `sprites/`

One folder per **DefineSprite** (library MovieClip).

```
DefineSprite_<characterId>_GL2_fla.<instanceName>_<timelineScriptId>/
```

Example: `DefineSprite_24831_GL2_fla.customizer_468` is the visual tree for `customizer_468` (symbol 24831). Unnamed clips are `DefineSprite_<id>` only.

This directory is most of the bytes. Resolve IDs from `symbols.csv` or `[Embed]`, then open that folder. Do not browse all ~800 folders by hand.

## `shapes/`

**DefineShape** exports, typically `NNNN.svg`. Sprites compose these outlines. Inspect a single SVG only when you already have the ID.

## `images/`

Bitmap tags. Filenames are tag IDs.

## `fonts/` and `scripts/Font*.as`

TTF files on disk. `Font*.as` registers them with `[Embed]` and a large `unicodeRange` (Latin and CJK). The face is the TTF, not the range string.

## `texts/`

DefineText / DefineEditText payloads. `88.txt` is character **88**, not “line 88 of a script.” Runtime copy is often assigned in ActionScript.

## `sounds/`

DefineSound tags.

## `frames/`

Frame extras from the decompiler. Scene names used in code are the `gotoAndStop("home")` labels in `MainTimeline.as`.

## `movies/` and `morphshapes/`

May be empty in this export. Git does not store empty directories.

## `symbolClass/`

`symbols.csv` format:

```
<characterId>;"package.ClassName"
```

Examples: `22578;"chara"` → `scripts/chara.as`; `24831` → `GL2_fla.customizer_468`. Use this file when a sprite folder name is numeric-only.
