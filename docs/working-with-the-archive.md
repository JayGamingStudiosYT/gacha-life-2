# Working with the archive

## Model

Flash content is a **library** (numbered characters) plus a **stage** (`MainTimeline`) that instances those characters and runs frame scripts.

This export writes library items and scripts to disk. Character IDs are stable. Folder names are derived from those IDs and from Animate instance names.

## Recommended workflow

1. Choose a player-facing feature.
2. Locate the class under `scripts/GL2_fla/` or in `symbolClass/symbols.csv`.
3. Read the `[Embed]` `symbol=` ID.
4. Open `sprites/DefineSprite_<id>_…` for the visual tree.
5. Search `MainTimeline.as` for the instance name to see when it is displayed.

Do not start in `shapes/` or `texts/`. Those are leaves.

## Decompiled ActionScript

Typical output:

```as
import flash.display.*;
public dynamic class foo extends MovieClip
```

- `dynamic` allows timeline code to attach extra properties at runtime.
- Wildcard imports are decompiler noise.
- `frame1`, `frame73`, and similar methods are **frame scripts**. `addFrameScript` uses a **0-based** frame index (Animate’s frame 73 is often index 72).

Clip classes are often only an embed plus `stop()`. Behavior is usually applied by the parent, most often `MainTimeline`.

## Search

| Goal | Where |
| --- | --- |
| Logic | `scripts/GL2_fla/`, especially `MainTimeline.as` and `customizer_468.as` |
| A graphic | `symbols.csv` → sprite folder |
| Static text tag | `texts/<id>.txt` (often not the runtime string) |

## Rebuilding

This tree is for reading and comparison. Republishing requires the original Animate / AIR project, or a reconstructed library keyed by the same IDs.

`[Embed]` paths assume `scripts/_assets/assets.swf` remains next to the scripts.

## Git

The export is several gigabytes. Commits are split (scripts, then shapes, then sprite batches) so hosting can accept the history. Empty directories such as `movies/` may be absent from Git.
