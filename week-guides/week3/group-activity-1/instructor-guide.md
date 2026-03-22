# Group Activity 1 — Instructor guide (core implementation)

---

## What students do

**All groups complete the same skills.** Each group uses a **different API** (see `group-1.md` … `group-10.md`).

Everyone must cover:

- API fetch (`http`, `async`/`await`)
- Display data in the UI (e.g. `ListView`)
- Loading state
- Error handling
- **Provider** (`ChangeNotifier` + `ChangeNotifierProvider`)
- Refresh (button or pull-to-refresh)
- Empty state (friendly message when there is no data)
- *(Optional)* Log or show API response time (`DateTime` or `sample-code/performance_logger.dart`)

---

## Recommended duration

**55 minutes** total for this activity.

---

## Suggested flow

| Time | Focus |
|------|--------|
| **First 25 min** | API call + parse JSON + basic UI (list or cards) |
| **Next 20 min** | Move data into a **Provider**, wire loading / error / list |
| **Final 10 min** | Polish, empty state, refresh, debug |

Adjust if your session is shorter — **understanding beats finishing**.

---

## Checkpoint (~30 minutes)

Pause the class and ask:

- **“Did you successfully fetch data?”** (console or UI)
- **“Is your UI rendering correctly?”** (even a rough list is OK)

Use answers to decide who needs help with **async** or **URLs** first.

---

## Tips for you

- Let **faster groups** continue to Provider and refresh **without waiting** for others.
- Help **struggling groups** with **async** and **API** first — Provider can follow once data appears.
- Focus on **understanding**, not 100% completion.

---

## Teaching facilitation

- Tell students: **do not aim only for completion** — aim to **understand** each step (why the screen updates, why errors happen).
- Point them to **Week 3 docs**: `theory/`, `diagrams/`, `sample-code/`, `resources/public-apis.md`.
- Ask out loud:
  - **“Why are we using async/await here?”**
  - **“Why do we need Provider?”**

Short discussions help more than silent coding for everyone.

---

## If time runs out

- Minimum viable: **fetch + show list + loading + error**.
- Provider + refresh can be homework if needed.
