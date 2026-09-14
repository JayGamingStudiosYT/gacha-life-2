# Naming conventions

Each library item has a **class name**, a **SWF character ID**, and often an Animate **instance name**. They join as follows.

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
| `customizer` | Library / instance name (spellings are as in the FLA: `tittlefeatued`, `deletleall`). |
| `_468` | Timeline linkage id in the FLA. **Not** the SWF character ID. |

The SWF character ID is on the embed:

```as
[Embed(source="/_assets/assets.swf", symbol="symbol24831")]
public dynamic class customizer_468 extends MovieClip
```

Mapping: class `customizer_468` ↔ symbol **24831** ↔ `sprites/DefineSprite_24831_GL2_fla.customizer_468/`.

## Recolor layers: `c1` … `c5`

Avatar parts are split by color layer, not by “chapter”:

- `shirtc1_283` … `shirtc5_285`
- `ahogec1_413` … `ahogec4_417`
- `wingsc1_158` … `wingsc5_160`

Containers often use a doubled stem (`headhead_326`, `wingwing_157`).

## Sprite folders

```
DefineSprite_24831_GL2_fla.customizer_468
DefineSprite_23103
```

- `DefineSprite_` — tag type  
- First number — SWF character ID (same as `symbolNNNNN` and column 1 of `symbols.csv`)  
- `GL2_fla.` — package, when present  
- Remainder — class / instance name  

## `symbols.csv`

```
22620;"GL2_fla.fadeouut_13"
22578;"chara"
```

Default-package clips (`chara`, `stars`, `cloud`) live as `scripts/chara.as`, not under `GL2_fla/`.

## Spellings

Instance names are preserved, including errors. Do not rename them in this dump; linkage will break.

| Export name | Meaning |
| --- | --- |
| `headhead_326` | Inner head graphic under `head_325` |
| `ahogeahoge_412` | Nested ahoge |
| `tailtail_148`, `wingwing_157` | Nested part |
| `fadeouut_13`, `deletleall_80` | Misspelled instance names |

## Numeric text and shape files

`texts/26048.txt` is text tag **26048**. Confirm the ID in `symbols.csv` or in the parent sprite.
