# Scripts guide

All game logic that survived decompilation is under `scripts/`. Classes are `public dynamic class … extends MovieClip` (or `Font`) unless noted.

## Where to open first

| File | Why |
| --- | --- |
| [`scripts/GL2_fla/MainTimeline.as`](../scripts/GL2_fla/MainTimeline.as) | Application. Constructor ~line 11680; `addFrameScript` binds timeline frames. Scene jumps: `gotoAndStop("title"\|"home"\|"gacha"\|"studio"\|…)`. Owns `custx` (customizer), `char` (`chara`), gacha UI, ads. |
| [`scripts/GL2_fla/customizer_468.as`](../scripts/GL2_fla/customizer_468.as) | Character creator MovieClip: thousands of button/field slots (`agebt`, `allcolbt1`, presets, import/export). `MainTimeline` drives `custx.gotoAndStop("body"\|"pose"\|"colors"\|…)`. |
| [`scripts/GL2_fla/colorpicker_594.as`](../scripts/GL2_fla/colorpicker_594.as) | Shared color picker. |
| [`scripts/GL2_fla/studioadjuster_756.as`](../scripts/GL2_fla/studioadjuster_756.as) | Studio pose/placement adjuster. |
| [`scripts/GL2_fla/zoomfeature_477.as`](../scripts/GL2_fla/zoomfeature_477.as) | Customizer zoom. |
| [`scripts/chara.as`](../scripts/chara.as) | On-stage character container (`char` child). Used as `char`, `collectchar`, `featchar` on the main timeline. |
| [`scripts/chata.as`](../scripts/chata.as) | Speech bubble (`chatx`, `namex`). |
| [`scripts/emotea.as`](../scripts/emotea.as) | Emote overlay. |

## MainTimeline responsibilities (practical)

Skim **frame handlers** and **`gotoAndStop("…")`**, not the giant property list at the top.

Documented scene labels used as screens:

- `loaddata` / `load` — boot and save read
- `title` — title / terms / options
- `home` — hub
- `featuredchars` — featured roster
- `life` — Life mode
- `gacha` / `gachaani` — summon + animation
- `collection` — collected characters
- `studio` — studio / movie mode
- `none` — blank/idle helper state

Customizer sub-screens (on `custx`, not the root timeline): `presets`, `body`, `pose`, `more`, `profile`, `itempick`, `adjust`, `colors`, `importexport`, `assets`.

Third-party: `com.distriqt.extension.adverts.*` (rewarded ads). That is AIR mobile glue, not character data.

## Part clips (`shirtc1_283`, `hatc1_406`, …)

Hundreds of small classes under `GL2_fla/` are **layered avatar pieces**. Many files are:

- `[Embed(symbol="symbol…")]`
- a few public `MovieClip` children
- `addFrameScript(0, frame1)` + `stop()`

Color and visibility are usually applied from `MainTimeline` / `customizer_468` by walking `char.char.…`.

Prefixes you will see:

| Prefix | Part |
| --- | --- |
| `ahoge`, `hat`, `fronthair`, `sidehair`, `ponytail` | Head hair / hats |
| `eyebrow`, `head` | Face |
| `shirt`, `shirtlen`, `jacket`, `skirt`, `scarf` | Torso / clothes |
| `sleeve`, `should`, `glove`, `wrist`, `prop` | Arms |
| `sock`, `pants`, `shoe`, `knee`, `thigh` | Legs |
| `wing`, `tail`, `cape` | Back extras |
| `fx`, `shadow` | Effects |

## UI / meta clips (by name)

Useful filenames if you are hunting a screen (typos kept):

| Class file | Likely UI |
| --- | --- |
| `titlescreen_16` | Title animation |
| `termconditions_89` | Terms |
| `tutorialguide_666` | Tutorial |
| `swearworddetect_664` | Name filter |
| `socialmedias_659` | Social links |
| `receiveitems_630` | Rewards |
| `buttonsummon_694` | Gacha summon button |
| `talismanga_710` | Gacha / talisman presentation |
| `studiodownui_731` | Studio chrome |
| `textmodep_768`, `textbasee_771` | Studio text tool |
| `lunimeintroanim` (CSV) | Boot logo |

## Fonts

`scripts/Font6.as` (and siblings) only register embedded fonts. Glyph coverage is the long `unicodeRange=` string. Faces live in `fonts/`.

## Embeds

Almost every clip has:

```as
[Embed(source="/_assets/assets.swf", symbol="symbol<ID>")]
```

That ID is the join key to `sprites/DefineSprite_<ID>_…` and `symbolClass/symbols.csv`.
