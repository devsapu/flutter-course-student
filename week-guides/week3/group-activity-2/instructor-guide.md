# Group activity 2 — Instructor guide (exploration + thinking)

---

## Purpose

Students go **deeper**: measure performance, compare APIs, handle edge cases, and **explain** what they found. This is not only “make it work” — it’s **experiment → observe → report**.

---

## Timing

- **Total:** ~50–70 minutes.
- **First 10 min:** Demo `performance_logger.dart` and show **debug console** output.
- **Middle:** Groups work; encourage **try / break / fix**.
- **Last 15 min:** Short **presentations** (Group 10 or volunteers) — 1–2 minutes each.

---

## How to run it

- Same group numbers as **activity 1** **or** mix teams — your choice.
- Each file **`group-1.md` … `group-10.md`** is one theme; students may need code from **`week3/sample-code/`**.
- Emphasize: **no wrong numbers** for “fastest API” — network varies; they should run **several times** and describe **trends**.

---

## Mindset

- **Experimentation:** Change URLs, break on purpose, read errors.
- **Documentation:** Each group notes **what they tried** and **what happened** (for Group 10 / presentations).

---

## Safety

- Use **public** APIs only; respect rate limits; small **`limit`** query params.

---

## Expected outcomes

- Students use **`PerformanceLogger.measure`** or manual **`DateTime`** timing.
- At least one group compares **two** different base URLs.
- Discussion: why **latency** differs, why **caching** helps, what **retry** is for.
