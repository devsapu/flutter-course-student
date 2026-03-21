# Diagram: Async flow

This shows what happens when the user triggers something that loads data **asynchronously**.

```mermaid
flowchart LR
  A[User action] --> B[Start async call]
  B --> C[Waiting... UI stays responsive]
  C --> D[Response arrives]
  D --> E[Update state / UI]
```

**In words:** Tap → start request → app can still animate and scroll → data arrives → `setState` or Provider → new UI.
