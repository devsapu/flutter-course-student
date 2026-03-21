# Diagram: Data flow (API → UI)

Typical layers for a small app using Provider:

```mermaid
flowchart LR
  API[Remote API / JSON]
  S[Service / api_service]
  P[Provider / ChangeNotifier]
  U[Widgets / UI]

  API --> S
  S --> P
  P --> U
```

- **Service** — `http.get`, parse JSON, maybe map errors.
- **Provider** — holds lists, loading flags, error messages; calls `notifyListeners()`.
- **UI** — `watch`es the provider and shows lists, spinners, or error text.
