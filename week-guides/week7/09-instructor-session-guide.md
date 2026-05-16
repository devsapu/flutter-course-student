# Week 7 — Instructor session guide (Play Store)

**Duration:** 2.5–3 hours (demo-heavy)  
**Branches:** `week7` (students), optional `week7-solution-publish` (reference)  
**Lab app:** `tap_rush_game/`

## Before class

- [ ] Create `week7` branch from latest stable week (`week6` or `main`) and push.
- [ ] Verify `tap_rush_game` runs: `flutter run`, `flutter test`.
- [ ] Play Console **organization** account or demo app ready.
- [ ] Slide: APK vs AAB, applicationId vs package name, signing diagram.
- [ ] Confirm students completed **00-prerequisites** (Console account or shared test account policy).

## Agenda

| Time | Topic | Doc |
|------|--------|-----|
| 0:00–0:15 | Why publish; pipeline overview | 01 |
| 0:15–0:35 | applicationId, version, label — live edit | 02 |
| 0:35–1:05 | Keystore + key.properties + build AAB | 03, 04 |
| 1:05–1:35 | Play Console: create app, internal release | 05, 06 |
| 1:35–2:30 | Student lab (07) | circulate |
| 2:30–2:45 | Q&A, common errors | 08 |
| 2:45–3:00 | Git: PR expectations, branching | 10 |

## Live demo script (recommended)

1. Clone/display `week7` → open `tap_rush_game`.
2. Change `applicationId` to instructor demo ID (e.g. `com.icet.demo.taprush`).
3. Run game in debug — 30s round.
4. Generate keystore **off-screen** or use pre-made demo keystore (password in vault, not repo).
5. `flutter build appbundle --release` — show output path.
6. Upload AAB to **Internal testing** — show processing → available.
7. Show tester opt-in link on phone (optional).

## Branching strategy (teach explicitly)

See **10-branching-and-repo.md**. Emphasize:

- Course content branches: `week-1` … `week-7`, `week7`, `week8-final`
- Student work: `week7/student-<name>-publish` → PR to `week7`
- Never commit signing secrets

## Assessment rubric (suggested)

| Criterion | Points |
|-----------|--------|
| Unique applicationId in merged PR | 20 |
| Successful local AAB build (screenshot/log) | 25 |
| Play Internal testing upload (screenshot) | 35 |
| Store listing draft (short + full description) | 10 |
| Git: clean PR, no secrets | 10 |

## Pitfalls in room

- Two students same applicationId → second upload fails.
- Students commit `key.properties` → stop and gitignore.
- Console “pending” forms block release → complete Data safety + rating first.

## Homework (optional)

- Second release with `1.0.1+2` and updated release notes.
- Write 5-bullet “what I learned about signing” reflection.

## Materials in repo

- `week-guides/week7/*.md` — student path
- `tap_rush_game/README.md` — quick commands
- `CONTRIBUTING.md` — PR workflow
