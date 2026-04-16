# Accenture Claude Code & MCP Server Research

**Date:** 2026-04-01
**Topic:** Whether Accenture has deployed custom MCP servers for Claude Code

---

## Summary

No publicly documented Accenture-proprietary MCP servers exist for Claude Code as of April 2026. Internal tooling almost certainly exists at scale but has not been disclosed.

---

## Key Facts

### Partnership Scale
- Accenture and Anthropic announced a multi-year partnership on **December 9, 2025**
- Described by Anthropic's CEO as their **"largest ever deployment"**
- Rollout targeting **~30,000 Accenture developers**
- Joint entity: **Accenture Anthropic Business Group**

### What Accenture Has Built (Publicly)
- **AI Refinery MCPClientAgent** — an MCP *client* agent within Accenture's AI Refinery platform that connects to standard community MCP servers (arXiv, Azure, Gmail, filesystem, etc.). Not Accenture-proprietary servers.
- **MCP-Bench** ([github.com/Accenture/mcp-bench](https://github.com/Accenture/mcp-bench)) — a research benchmarking framework (accepted to NeurIPS 2025 Workshop) that evaluates LLM tool use across 28 real-world MCP servers. A research tool, not an internal MCP server.
- **Trusted Agent Huddle** — uses MCP and Agent2Agent protocol as an interoperability standard for onboarding third-party agents into AI Refinery. Not a custom server.

### What Was Not Found
- No named Accenture-built MCP server for Claude Code employee use
- No Accenture-proprietary MCP endpoints or tool catalogs
- No integration between Claude Code and myWizard (Accenture's legacy automation platform)
- No internal developer portal announcements or GitHub repos beyond mcp-bench

---

## Assessment

Given the scale of deployment, Accenture likely has internal MCP servers connecting Claude Code to enterprise tools (Jira, Confluence, ServiceNow, internal repos). Claude Code's enterprise model supports this via managed policy files (`managed-mcp.json`). However, **none of this has been publicly disclosed**.

On any individual Accenture developer machine, internal MCP configuration would appear in:
- `~/.claude/settings.json`
- A managed policy file deployed by IT

---

## Sources

- [Accenture + Anthropic Partnership Newsroom](https://newsroom.accenture.com/news/2025/accenture-and-anthropic-launch-multi-year-partnership-to-drive-enterprise-ai-innovation-and-value-across-industries)
- [Anthropic Partnership Announcement](https://www.anthropic.com/news/anthropic-accenture-partnership)
- [Accenture AI Refinery MCP Catalog](https://sdk.airefinery.accenture.com/distiller/agent-library/utility_agents/MCP%20Client%20Agent/mcp_catalog_overview/)
- [Trusted Agent Huddle Announcement](https://newsroom.accenture.com/news/2025/accenture-introduces-trusted-agent-huddle-to-allow-seamless-first-of-its-kind-multi-system-ai-agent-collaboration-across-the-enterprise)
- [GitHub: Accenture/mcp-bench](https://github.com/Accenture/mcp-bench)
- [TechCrunch Partnership Coverage](https://techcrunch.com/2025/12/09/anthropic-and-accenture-sign-multi-year-ai-strategic-partnership/)
