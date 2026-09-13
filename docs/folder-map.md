# Folder map

Every top-level directory is a **SWF tag family** from the decompiler, not an app feature folder (`ui/`, `game/`, etc.). Feature names live *inside* script and sprite **class names**.

## `scripts/`

ActionScript 3 recovered from ABC (DoABC) tags.

| Path | Role |
| --- | --- |
| `scripts/GL2_fla/` | Document package. Almost all named clips (`customizer_468`, `shirtc1_283`, …). |
| `scripts/GL2_fla/MainTimeline.as` | Root `MovieClip` — save/load, navigation, gacha, ads (Distriqt), customizer orchestration. |
| `scripts/*.as` (root of `scripts/`) | Default-package types: `chara`, `chata`, `emotea`, `Font6`–style font classes. |
| `scripts/_assets/assets.swf` | Binary the compiler used for `[Embed(..., symbol="symbolNNNNN")]`. Keep next to scripts. |

A clip with a script is **not** always where gameplay lives. Example: `titlescreen_16.as` only plays intro frames and sets `parent.reachend`. Title *flow* is in `MainTimeline`.

## `sprites/`

One folder per **DefineSprite** (a MovieClip in the library).

Typical name:

`DefineSprite_<characterId>_GL2_fla.<instanceName>_<timelineScriptId>/`

Example: `DefineSprite_24831_GL2_fla.customizer_468` is the visual tree for class `customizer_468` (symbol 24831). Inside: nested SVG/PNG/XML per frame and child.

Unnamed clips look like `DefineSprite_23103` (ID only).

This directory is most of the bytes. Browse by **ID from `symbols.csv` or the `[Embed] symbol=` number**, not by walking all 800 folders.

## `shapes/`

**DefineShape** exports, usually `NNNN.svg`. IDs match SWF characters. Sprites **compose** these shapes. Edit here only if you are inspecting a single outline; the game references them by ID through sprites.

## `images/`

Bitmap tags (`DefineBits`, JPEG, PNG). Referenced from sprites/shapes. Filenames are tag IDs.

## `fonts/` + `scripts/Font*.as`

TTF on disk; `Font*.as` wraps them with `[Embed(source="/_assets/….ttf", fontName=…, unicodeRange=…)]`. `unicodeRange` is huge (Latin + CJK) — that is why font classes look unreadable. The TTF in `fonts/` is the actual face.

## `texts/`

**DefineText / DefineEditText** payloads. One `.txt` per text ID (`88.txt` is character 88, which may be a UI string like `Hi~!`). Not dialogue scripts. Runtime copy is often set in AS3 (`TextField` on clips).

## `sounds/`

DefineSound tags (SFX / BGM snippets).

## `frames/`

Frame-level extras the decompiler split out (labels, frame scripts as data). Scene **names** you care about are still the `gotoAndStop("home")` strings in `MainTimeline.as`.

## `movies/` and `morphshapes/`

DefineSprite-as-movie and DefineMorphShape. May be empty in this export.

## `symbolClass/`

`symbols.csv` maps:

```
<characterId>;"package.ClassName"
```

Example: `22578;"chara"` → `scripts/chara.as` and embed `symbol22578`.  
`24831` → `GL2_fla.customizer_468`.

Use this file as the **index** when a sprite folder name is truncated or numeric-only.
