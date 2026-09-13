# Application flow

Gacha Life 2 in this dump is **one root MovieClip** (`MainTimeline`) with labeled frames as “scenes”. Nested clips (`custx`, `gachamain`, studio UI) have their own timelines.

```
boot
  → loaddata / load     local save, ads SDK init
  → title               intro, terms, options
  → home                hub (bottom bar)
       ├─ customizer    custx (body / pose / colors / assets / …)
       ├─ gacha         gacha + gachaani
       ├─ collection
       ├─ featuredchars
       ├─ life
       └─ studio        movie / posing / text tools
```

## Boot

`MainTimeline` constructor registers frame scripts, then early frames:

- fade / logo (`fadexx`, `logox`, lunime intro clip)
- `gotoAndStop("loaddata")` then `"title"` or `"load"` depending on save and `reachend` on the title animation

`titlescreen_16` only runs the titleloop and sets `parent.reachend = 2` when the intro finishes. Policy/options on title are sibling clips (`termconditions_89`, options MovieClips) scripted from `MainTimeline`.

## Home hub

`gotoAndStop("home")`. Bottom bar and `changebt` switch modes. The same function family maps:

| Label | Player-facing area |
| --- | --- |
| `home` | Hub / rooms |
| `gacha` | Summon |
| `collection` | Saved / collected OC list |
| `featuredchars` | Featured characters |
| `life` | Life / storylet mode |
| `studio` | Posing, props, text, export-oriented UI |

Fades: `fadex.gotoAndPlay("fadein" | "gfadein" | "fadeout")`.

## Customizer

Not a root frame named `customizer`. The hub shows `custx` (`customizer_468`). `MainTimeline` sets:

`custx.gotoAndStop("presets" | "body" | "pose" | "more" | "profile" | "itempick" | "adjust" | "colors" | "importexport" | "assets")`

The live preview is `char` / `chara`: nested parts (`head`, shirts, shoes, …) whose classes sit next to `shirtc1_283.as` etc.

Undo, zoom, copy-color, tint-all are dedicated clips (`undobuton_480`, `zoomfeature_477`, `copycoloros_487`, `tintselall_554`) parented under the customizer sprite.

## Gacha

Root frames `gacha` and `gachaani`. Related clips: summon button, result buttons, `talismanga_710`, star/logo animations. `gachas["gachax" + i]` is an array-style set of result slots on the timeline.

## Studio

Root frame `studio`. `studioadjuster_756` plus `studiodownui_731`, movement blockers, text mode (`textmodep_768`), props page, pose picker. Characters on the stage are still `chara` instances.

## Data

Look in `MainTimeline` for `SharedObject`, `URLLoader`, `File`, or string packs named like `updatedatax_686` / `updatedatabt_673` — those names are the update/news and remote data entry points. Character slots are timeline + SharedObject style storage, not a separate SQL folder in this dump.

## Ads

Distriqt `adverts` / `RewardedVideoAd` at the top of `MainTimeline.as`. Clips like `watchvideox_646` / `watchuppop_464` are the UI around rewarded video, not the ad SDK itself.
