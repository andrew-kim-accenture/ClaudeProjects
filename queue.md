# Project Intake Queue

This file is the single entry point for new project ideas. The **ideator agent** reads from this queue and produces a `project-brief.md` for human approval.

**Workflow:** Add an entry below → run ideator → approve `project-brief.md` → move entry to Completed.

---

## How to Add a Project

Copy the template block, fill in the fields, and paste it into the [Pending](#pending) section. Rough descriptions are fine — the ideator refines them.

```
---
name: your-project-slug
what: |
  2–5 sentences describing what to build. Don't worry about precision;
  the ideator will clarify and expand.
why: |
  The problem this solves, and for whom.
constraints:
  - tech/language/framework requirements
  - timeline or deadline (if any)
  - must-use libraries or integrations
out_of_scope:
  - (optional) anything explicitly excluded
priority: high | medium | low
added_at: YYYY-MM-DD
---
```

> **Tip:** `name` must be a slug (lowercase, hyphens only, no spaces). It becomes the project folder name: `projects/your-project-slug/`.

---

## Pending

---
name: smart-recipe-finder
what: |
  A web app that takes a list of ingredients the user has on hand and returns
  recipes they can make. Users can filter by dietary restrictions (vegan,
  gluten-free, etc.) and cooking time. Results should include a confidence
  score showing how closely the available ingredients match the recipe.
why: |
  People frequently waste food because they don't know what they can cook
  with what's already in their kitchen. This reduces food waste and removes
  the "what's for dinner?" decision fatigue.
constraints:
  - TypeScript + Next.js (App Router) frontend
  - Supabase for auth and database
  - Must use the Spoonacular API for recipe data
  - No native mobile app — web only for v1
  - Ship within 6 weeks
out_of_scope:
  - Meal planning / weekly calendar view
  - Grocery list generation
  - Social / sharing features
priority: high
added_at: 2026-04-01
---

---

## Completed / Archived

Projects move here once their `project-brief.md` has been approved and ideation is done. Keep the original entry intact for reference.

| name | brief_approved | brief_path | notes |
|------|---------------|------------|-------|
| _(none yet)_ | | | |
