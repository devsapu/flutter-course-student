# Public APIs for practice

These services are **free for learning**. Always read their rules; don’t spam them with huge traffic.

---

## JSONPlaceholder

**URL:** https://jsonplaceholder.typicode.com  

**What it is:** Fake REST API with posts, users, todos, albums — great for learning **GET** without signing up.

**Example endpoint:**  
`GET https://jsonplaceholder.typicode.com/todos?_limit=5`

**Try:** Fetch todos or posts, show them in a `ListView`, parse JSON into a model class.

---

## ReqRes

**URL:** https://reqres.in  

**What it is:** Fake data for **users**, login-style examples, pagination — useful for **lists** and **POST** practice.

**Example endpoint:**  
`GET https://reqres.in/api/users?page=1`

**Try:** Display user avatars and names; compare response shape with JSONPlaceholder.

---

## DummyJSON

**URL:** https://dummyjson.com  

**What it is:** Rich fake data: products, users, quotes, carts — good for slightly **more complex** JSON.

**Example endpoint:**  
`GET https://dummyjson.com/products?limit=5`

**Try:** Build a product list with title + price; handle the nested JSON fields.

---

## Public APIs list (meta)

**URL:** https://api.publicapis.org  

**What it is:** A **directory** of many public APIs (not one fake dataset — a **catalog** you can search).

**Example endpoint:**  
`GET https://api.publicapis.org/entries?category=animals&https=true`

**Try:** Pick one small API from the results and call it from Flutter (check CORS / HTTPS for web if you use Flutter web).

---

## Tips for students

- Start with **GET** and **HTTPS**.
- Use **`?limit=`** or similar when the API supports it so responses stay small.
- If a call fails, read the **status code** and **body** in the debugger.
