# Week 7 — Google Play Console setup

Console UI changes over time; menu names may differ slightly. Follow Google’s current labels if yours do not match exactly.

**Console:** [https://play.google.com/console](https://play.google.com/console)

## Step 1 — Developer account

1. Sign in with your Google account.
2. Complete **developer registration** (fee, identity, agreements).
3. Enable **2-step verification** on the Google account (recommended).

## Step 2 — Create an app

1. **All apps** → **Create app**.
2. **App name:** e.g. `Tap Rush – Your Name` (users see this; can change later with limits).
3. **Default language**
4. **App or game** → **Game** for `tap_rush_game` (or **App** if you publish Task Manager).
5. **Free or paid** → **Free** for class.
6. Declare policy checkboxes (ads, access restrictions, etc.) honestly.

## Step 3 — Dashboard tasks (first-time)

Complete required sections (left menu). Typical order:

| Section | What you do |
|---------|-------------|
| **App access** | If no login: “All functionality available without restrictions” |
| **Ads** | “No, my app does not contain ads” (if true) |
| **Content rating** | Questionnaire → get rating |
| **Target audience** | Age groups per policy |
| **News app** | Usually “No” |
| **COVID-19 / government** | Usually N/A |
| **Data safety** | Declare what you collect (minimal game: often “no data collected”) |
| **Store listing** | Short description, screenshots — see **06** |
| **App content / Privacy policy** | URL if you collect data; internal test may still need a placeholder URL for some forms |

## Step 4 — Upload to Internal testing (recommended for class)

1. **Testing** → **Internal testing** → **Create new release**.
2. **Upload** → select `app-release.aab`.
3. Add **Release name** (e.g. `1.0.0 (1)`) and **Release notes** (“First class upload”).
4. **Review release** → **Start rollout to Internal testing**.

### Add testers

1. **Testing** → **Internal testing** → **Testers** tab.
2. Create an **email list** with student Gmail addresses.
3. Testers open the **opt-in link** from Console, then install from Play Store on device.

**Note:** Internal track updates are fast; **production** review can take hours to days.

## Step 5 — Application ID must match

The `applicationId` in your AAB **must equal** the app id registered in Console when you created the app. If you change `applicationId` in Gradle after creating the Console app, create a **new** Console app.

## Closed / open testing (optional)

| Track | Use |
|-------|-----|
| **Internal** | Up to 100 testers, quick — **use in lecture** |
| **Closed** | Larger beta, still private |
| **Open** | Public beta |
| **Production** | Everyone — full review |

## Next

**06-store-listing-and-submission.md** — listing assets and going toward production.
