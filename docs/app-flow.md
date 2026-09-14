# Application flow

The product is one root `MovieClip` (`MainTimeline`) with labeled frames as screens. Nested clips (`custx`, gacha, studio) have their own timelines.

```
boot
  → loaddata / load     local save, ads SDK
  → title               intro, terms, options
  → home                hub
       ├─ customizer    custx
       ├─ gacha         gacha / gachaani
       ├─ collection
       ├─ featuredchars
       ├─ life
       └─ studio
```

## Boot

The constructor registers frame scripts. Early frames run fade and logo (`fadexx`, `logox`, Lunime intro), then `gotoAndStop("loaddata")`, then `"title"` or `"load"` depending on save data and `reachend` on the title clip.

`titlescreen_16` plays the intro and sets `parent.reachend = 2`. Terms and options are sibling clips driven from `MainTimeline`.

## Hub

`gotoAndStop("home")`. The bottom bar and `changebt` select modes:

| Label | Area |
| --- | --- |
| `home` | Hub / rooms |
| `gacha` | Summon |
| `collection` | Collected characters |
| `featuredchars` | Featured characters |
| `life` | Life mode |
| `studio` | Posing, props, text |

Fades: `fadex.gotoAndPlay("fadein" | "gfadein" | "fadeout")`.

## Customizer

There is no root frame named `customizer`. The hub hosts `custx` (`customizer_468`):

`custx.gotoAndStop("presets" | "body" | "pose" | "more" | "profile" | "itempick" | "adjust" | "colors" | "importexport" | "assets")`

Preview is `char` (`chara`) with nested parts (`shirtc1_283` and similar). Undo, zoom, copy-color, and tint-all are child clips (`undobuton_480`, `zoomfeature_477`, `copycoloros_487`, `tintselall_554`).

## Gacha

Frames `gacha` and `gachaani`. Related clips include the summon button, results, and `talismanga_710`. Result slots are `gachas["gachax" + i]`.

## Studio

Frame `studio`. `studioadjuster_756`, `studiodownui_731`, text mode (`textmodep_768`), props, and pose picker. Characters remain `chara` instances.

## Persistence and ads

In `MainTimeline`, look for `SharedObject`, `URLLoader`, `File`, `updatedatax_686`, and `updatedatabt_673` for save and remote data. There is no separate database folder in this export.

Distriqt `adverts` / `RewardedVideoAd` is the ad SDK. `watchvideox_646` and `watchuppop_464` are the surrounding UI.
