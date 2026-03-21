# Group 1 — Measure API response time

**Branch:** `week3b-group-1/perf-log`

---

## Goal

Use **`performance_logger.dart`** from `sample-code/` to measure how long **`http.get`** takes for one JSONPlaceholder URL.

---

## Steps

1. Copy **`performance_logger.dart`** into your project `lib/`
2. Branch: `week3b-group-1/perf-log`
3. Wrap your fetch: `await PerformanceLogger.measure(() => http.get(uri), label: 'jsonplaceholder todos')`
4. Run on a **device or emulator**, check **console** for **ms**
5. Commit, push, PR

---

## Done when

Console prints a line like: `[PerformanceLogger] jsonplaceholder todos took 120ms` (number will vary).
