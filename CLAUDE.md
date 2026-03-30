# Claude Projects

This is the root folder for all Claude Code-assisted projects.

## General Guidelines

- Each subdirectory is a separate project with its own git repository
- Use GitHub (github.com, account: andrew-kim-accenture) for version control on all projects
- Default branch: `main`

## Project Structure

Each project should follow this pattern:
```
ClaudeProjects/
└── project-name/
    ├── CLAUDE.md       # Project-specific Claude instructions
    ├── README.md
    └── ...
```

## Git Workflow

- Initialize each new project with `git init`
- Create a corresponding GitHub repo via `gh repo create`
- Commit early and often with descriptive messages

## Session Commit Convention

At the end of each Claude Code session (or at natural milestones), commit with:

```
git add .
git commit -m "session: <short description of what was done>"
git push
```

Examples:
- `session: scaffold project structure and add dependencies`
- `session: implement auth flow and add unit tests`
- `session: fix bug in data parser and update CLAUDE.md`

This keeps a clear timeline of progress across sessions.
