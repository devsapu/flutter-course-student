# Group Activity 2 — Instructor guide (advanced / optional)

---

## What this is

**Same APIs as Activity 1** (each group keeps **their** endpoint). **Same type of advanced work** for everyone:

- Retry when a request fails
- Show **API response time** in the UI or console (ms)
- UI improvements (spacing, cards, readable text)
- **Basic caching** (keep last successful list in memory; show it while refreshing)
- **Refresh** (clearer UX — e.g. `RefreshIndicator`)
- **Filtering / search** (narrow the list in memory by title or name)

---

## Recommended duration

- **45 minutes** (typical)
- **Extend to 60 minutes** if the class is doing well and you want deeper demos

---

## When to run this activity

- This block is **OPTIONAL** — use it only if it fits your schedule.
- **Start only if** the **majority of groups** finished the **core** pieces of Activity 1 (fetch + UI + at least a plan for Provider).

---

## Instructor decision

- If **many groups struggled** in Activity 1 → **skip** Activity 2, or **simplify** (e.g. only retry + one UI tweak).
- If the class is strong → run full list above.

---

## Tips for you

- Same as Activity 1: **understanding > ticking every box**.
- Encourage students to reuse **Week 3** notes and `sample-code/performance_logger.dart` for timing.

---

## Teaching facilitation

- Remind students: **completion is not the only success** — explaining **why** retry or cache helps is valuable.
- Send them back to **`week3/theory/`** and **`sample-code/`** when stuck.
- Ask:
  - **“Why are we using async/await here?”**
  - **“Why did we put this in Provider?”**

---

## If time runs out

- Pick **two** items (e.g. retry + latency text) instead of all six.
