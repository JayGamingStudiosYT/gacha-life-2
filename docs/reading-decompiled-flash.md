# How to read this dump

## Mental model

Flash games are a **timeline + library**, not a `main()` plus components folder.

1. **Library item** (sprite/shape/font) has a numeric **character ID**.
2. Optionally a **class name** in `symbols.csv` / `scripts/`.
3. The **stage** (`MainTimeline`) instances those clips and runs frame scripts.

This export **explodes** (2) and (3) into files. IDs stay stable; folder names are derived.

## Workflow that works

1. Pick a feature (e.g. color picker).
2. Find `colorpicker_594.as` or search `symbols.csv` for `colorpicker`.
3. Note `symbol=` ID (e.g. from `[Embed]`).
4. Open `sprites/DefineSprite_<id>_GL2_fla.<name>/` for art.
5. Search `MainTimeline.as` for `colorpicker`, `custx`, or the instance name to see **when it is shown**.

Do not start in `shapes/` or `texts/` — those are leaves.

## What “dynamic class” and wildcard imports mean

JPEXS emits:

```as
import flash.display.*;
public dynamic class foo extends MovieClip
```

`dynamic` means extra properties can be added at runtime (typical for timeline code). Wildcard imports are noise. Frame methods `frame1`, `frame73` are **frame scripts**, 0-based in `addFrameScript(frameIndex, fn)` (frame 73 in the UI is often index 72).

## Searching

- **Logic:** search `scripts/GL2_fla/*.as`, especially `MainTimeline.as` and `customizer_468.as`.
- **Copy / UI chrome:** `texts/*.txt` is a last resort; most labels are `TextField` text set in AS3 or in the sprite.
- **A specific graphic:** `symbols.csv` → sprite folder → child SVG/PNG.

Search tools may choke on `sprites/` and `shapes/` (tens of thousands of files). Limit greps to `scripts/` unless you know an ID.

## Rebuilding

This archive is for **reading and diffing**, not `File > Publish`.

To republish you would need the original FLA/AIR project or to reconstruct an Animate library from IDs. `[Embed]` paths assume `_assets/assets.swf` beside the scripts as in this dump.

## Git notes

The dump is multi-gigabyte. History may be split across several commits (`scripts` first, then `shapes`, then `sprites` batches) so GitHub accepts the push. **HEAD still has the same folder layout.** Empty `movies/` / `morphshapes/` may be omitted by Git (empty dirs are not stored).
