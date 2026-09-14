# Getting started

Treat this archive as a **Flash library plus one root timeline**, not as a modern `src/` application. The layout is the SWF tag export; application features live in class and instance names, not in folder names.

## 1. Confirm the contract

- Scripts: `scripts/`
- Library index: `symbolClass/symbols.csv`
- Art for a clip: `sprites/DefineSprite_<id>_…`

Do not reorganize those three. IDs in filenames must stay aligned with the SWF.

## 2. Open the application

Start in [`scripts/GL2_fla/MainTimeline.as`](../scripts/GL2_fla/MainTimeline.as). Skip the long property list at the top. Search for:

- `addFrameScript` (constructor, around line 11680)
- `gotoAndStop("` (scene changes)
- `custx` (character creator)

## 3. Follow one feature

Example: customizer color picker.

1. Open `scripts/GL2_fla/colorpicker_594.as`.
2. Read `[Embed(..., symbol="symbol…")]` for the character ID.
3. Open the matching folder under `sprites/`.
4. Search `MainTimeline.as` for when that clip is shown.

## 4. Restrict searches

Index `scripts/` first. Full-repo search over `sprites/` and `shapes/` is tens of thousands of files and is rarely useful until you already have an ID.

## Next

- [Folder map](folder-map.md)
- [Application flow](app-flow.md)
- [Scripts guide](scripts-guide.md)
