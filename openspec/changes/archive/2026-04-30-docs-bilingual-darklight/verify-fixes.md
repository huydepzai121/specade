## [2026-04-30] Round 1 (from spx-apply auto-verify)

### spx-arch-verifier
- Fixed: Pinned `marked` CDN dependency to version 15.0.12 in docs/index.html (was unpinned, risking breaking changes)
- Fixed: Deleted stale `docs/search-index.json` (was copied not renamed; now only `search-index-en.json` exists)
- Fixed: Changed EN locale fetch fallback from `VI_STRINGS` to `{}` so English users see key names instead of Vietnamese on fetch failure

### spx-verifier
- Fixed: Deleted stale `docs/search-index.json` (task 6.1 completion gap)
- Skipped: `<html lang="vi">` hardcoded — accepted as trade-off for VI-first product, consistent with landing page pattern. LocaleProvider corrects on mount.
