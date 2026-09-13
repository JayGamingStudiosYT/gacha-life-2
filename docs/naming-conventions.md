# Naming conventions

Decompilers glue **library name**, **AS3 class**, and **SWF character ID**. Once you parse one name, the rest of the tree matches.

## Script files: `name_NNN.as`

In `scripts/GL2_fla/`:

```
customizer_468.as
colorpicker_594.as
shirtc1_283.as
titlescreen_16.as
```

| Piece | Meaning |
| --- | --- |
| `customizer` | Instance / library name from Animate (often typos: `tittlefeatued`, `deletleall`). |
| `_468` | Script / sprite linkage ID used in the FLA timeline (not the same as SWF character ID). |

The **SWF character ID** is in the `[Embed]` line:

```as
[Embed(source="/_assets/assets.swf", symbol="symbol24831")]
public dynamic class customizer_468 extends MovieClip
```

So: class `customizer_468` ↔ embed symbol **24831** ↔ folder `sprites/DefineSprite_24831_GL2_fla.customizer_468/`.

## Color / part suffixes: `c1` … `c5`

Avatar parts are split by **color channel or variant**:

- `shirtc1_283` … `shirtc5_285` — shirt layers
- `ahogec1_413` … `ahogec4_417` — ahoge color slots
- `wingsc1_158` … `wingsc5_160`

`c1`–`c5` are the same item’s recolor layers, not “chapter 1–5”. Parent clips (`shirtc1`’s container) usually have a shorter name (`alllogoshirt_289`, `wingwing_157`).

## Sprite folders: `DefineSprite_<id>_…`

```
DefineSprite_24831_GL2_fla.customizer_468
DefineSprite_22578          (if unnamed in CSV you still have the id)
```

- `DefineSprite_` — tag type.
- First number — SWF character ID (same as `symbolNNNNN` and CSV column 1).
- `GL2_fla.` — package.
- Rest — class / instance name.

## `symbols.csv`

```
22620;"GL2_fla.fadeouut_13"
22578;"chara"
```

Quoted names may include the package. Default-package clips (`chara`, `stars`, `cloud`) have **no** `GL2_fla.` prefix and live as `scripts/chara.as`, not under `GL2_fla/`.

## Typos and doubled words

Export names are Animate instance names, often with doubled stems:

| You see | Read as |
| --- | --- |
| `headhead_326` | inner head graphic inside `head_325` |
| `ahogeahoge_412` | nested ahoge |
| `tailtail_148`, `wingwing_157` | nested part |
| `fadeouut_13`, `deletleall_80` | misspelled instance names; do not “fix” them in this dump or linkage breaks |

## Texts and shapes: number = ID

`texts/26048.txt` is text tag **26048**, not line 26048 of a script. Cross-check ID in the sprite that contains that text, or in JPEXS if you still have the SWF.
