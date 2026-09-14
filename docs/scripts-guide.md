# Scripts guide

Recovered logic is under `scripts/`. Classes are typically `public dynamic class … extends MovieClip` (or `Font`).

## Open these first

| File | Role |
| --- | --- |
| [`MainTimeline.as`](../scripts/GL2_fla/MainTimeline.as) | Application. Constructor near line 11680. Scene jumps via `gotoAndStop`. Owns `custx`, `char`, gacha UI, ads. |
| [`customizer_468.as`](../scripts/GL2_fla/customizer_468.as) | Character creator. `MainTimeline` drives `custx.gotoAndStop("body" \| "pose" \| "colors" \| …)`. |
| [`colorpicker_594.as`](../scripts/GL2_fla/colorpicker_594.as) | Shared color picker. |
| [`studioadjuster_756.as`](../scripts/GL2_fla/studioadjuster_756.as) | Studio placement / pose adjuster. |
| [`zoomfeature_477.as`](../scripts/GL2_fla/zoomfeature_477.as) | Customizer zoom. |
| [`chara.as`](../scripts/chara.as) | On-stage character (`char`, `collectchar`, `featchar`). |
| [`chata.as`](../scripts/chata.as) | Speech bubble (`chatx`, `namex`). |
| [`emotea.as`](../scripts/emotea.as) | Emote overlay. |

## MainTimeline

Read **frame handlers** and **`gotoAndStop("…")`**, not the property block at the top of the file.

| Label | Screen |
| --- | --- |
| `loaddata`, `load` | Boot and save |
| `title` | Title, terms, options |
| `home` | Hub |
| `featuredchars` | Featured roster |
| `life` | Life mode |
| `gacha`, `gachaani` | Summon and animation |
| `collection` | Collected characters |
| `studio` | Studio / movie mode |
| `none` | Idle helper |

Customizer pages (on `custx`): `presets`, `body`, `pose`, `more`, `profile`, `itempick`, `adjust`, `colors`, `importexport`, `assets`.

`com.distriqt.extension.adverts.*` is AIR rewarded-video integration, not avatar data.

## Avatar part clips

Hundreds of `GL2_fla` classes are layered pieces. A typical file is an `[Embed]`, a few `MovieClip` children, and `stop()`. Color and visibility are applied from `MainTimeline` or `customizer_468` by walking `char.char.…`.

| Prefix | Region |
| --- | --- |
| `ahoge`, `hat`, `fronthair`, `sidehair`, `ponytail` | Hair and hats |
| `eyebrow`, `head` | Face |
| `shirt`, `shirtlen`, `jacket`, `skirt`, `scarf` | Torso |
| `sleeve`, `should`, `glove`, `wrist`, `prop` | Arms |
| `sock`, `pants`, `shoe`, `knee`, `thigh` | Legs |
| `wing`, `tail`, `cape` | Back |
| `fx`, `shadow` | Effects |

## Other UI classes (names as exported)

| Class | UI |
| --- | --- |
| `titlescreen_16` | Title animation |
| `termconditions_89` | Terms |
| `tutorialguide_666` | Tutorial |
| `swearworddetect_664` | Name filter |
| `socialmedias_659` | Social links |
| `receiveitems_630` | Rewards |
| `buttonsummon_694` | Summon button |
| `talismanga_710` | Gacha presentation |
| `studiodownui_731` | Studio chrome |
| `textmodep_768`, `textbasee_771` | Studio text |
| `lunimeintroanim` (CSV) | Boot logo |

## Fonts and embeds

`Font*.as` only registers faces; files are in `fonts/`.

```as
[Embed(source="/_assets/assets.swf", symbol="symbol<ID>")]
```

That ID joins `sprites/DefineSprite_<ID>_…` and `symbolClass/symbols.csv`.
