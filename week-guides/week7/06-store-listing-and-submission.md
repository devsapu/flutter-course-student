# Week 7 — Store listing and submission

A **working AAB** is not enough — Play requires **listing**, **policy**, and **content** forms before users can install.

## Store listing (minimum for testing)

**Grow** → **Store presence** → **Main store listing** (names may vary):

| Field | Guidance |
|-------|----------|
| **App name** | Short, unique (30 char limit) |
| **Short description** | 1–2 sentences (80 chars) |
| **Full description** | What the game does, course credit if allowed |
| **App icon** | 512×512 PNG, 32-bit, no alpha for store icon rules |
| **Feature graphic** | 1024×500 PNG (required for production; may be required early) |
| **Phone screenshots** | At least 2 — capture from emulator or device |

### Screenshot tips

1. Run app: `flutter run` on emulator.
2. Android Studio → **Logcat** device screenshot, or emulator **⋯** → **Screenshot**.
3. Use **1080×1920** or similar phone aspect ratio.

## Privacy policy URL

- If the app **does not collect** personal data, many student apps still use a simple policy page (GitHub Pages, institution template).
- Firebase / Analytics / Auth → you **must** disclose data in **Data safety** and link a real policy.

`tap_rush_game` (no network): simplest case — declare no collection in Data safety; confirm current Console rules for policy URL requirement.

## Data safety form

Answer honestly:

| Question | Tap Rush (default code) |
|----------|-------------------------|
| Collects personal data? | No (unless you add analytics) |
| Encrypted in transit? | N/A if no network |
| Users can request deletion? | N/A |

If you publish **`task_manager_app`** with Firebase Auth, update answers (email, identifiers, etc.).

## Content rating

Complete the questionnaire in Console. A simple arcade game is usually **Everyone** or low teen — depends on answers.

## Countries and pricing

- **Countries:** start with your country + Sri Lanka (adjust for your cohort).
- **Price:** Free → no merchant account needed.

## Submitting to Production (after internal success)

1. Complete **all** required dashboard tasks (green checks).
2. **Production** → **Create new release** → upload same or newer AAB (higher `versionCode`).
3. **Review release** → **Start rollout to Production**.
4. Wait for **review status** (Approved / Rejected).

### Common rejection reasons (teaching)

- Misleading metadata or screenshots
- Missing privacy policy when collecting data
- Permissions not justified (e.g. unused location)
- Broken login on review device (Task Manager with auth)

## Post-submission

- Monitor **Policy status** and email from Play.
- For updates: increment `versionCode`, new AAB, new release on same track.

## Course deliverable (suggested)

Submit to LMS / instructor:

1. Application ID used
2. Screenshot: Internal testing release with version
3. Screenshot: Store listing (draft OK)
4. Link to GitHub PR from your `week7/...` branch

## Next

**07-group-activity.md** — structured lab tasks.
