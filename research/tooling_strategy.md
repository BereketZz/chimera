# Tooling Strategy — Project Chimera

## Overview
This document outlines the tooling strategy for Project Chimera, separating
Developer Tools (used during development) from Agent Skills (used at runtime).

---

## Sub-Task A: Developer Tools (MCP)

Developer tools are MCP servers that assist the human developer while building,
debugging, and maintaining the Chimera system.

They are NOT exposed directly to runtime agents.

### Selected MCP Servers

#### 1. filesystem-mcp
**Purpose:**  
Allows structured reading and writing of project files by the IDE agent.

**Why needed:**  
- Enables spec-aware code generation
- Supports refactoring while respecting project structure
- Allows inspection of logs, configs, and generated artifacts

---

#### 2. git-mcp
**Purpose:**  
Provides controlled access to Git operations.

**Why needed:**  
- Allows the IDE agent to inspect diffs and commit history
- Prevents unsafe or accidental repository changes
- Supports traceability and review-driven development

---

#### 3. http-mcp (optional)
**Purpose:**  
Enables controlled HTTP requests for testing APIs and integrations.

**Why needed:**  
- Useful for validating MCP endpoints
- Supports integration testing without hardcoding logic

---

## Separation of Concerns
Developer MCP tools are only used during development and debugging.
Runtime agents rely exclusively on explicitly defined Skills.
