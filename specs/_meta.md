# Project Chimera — Master Specification

## Vision
Project Chimera is a platform for building and operating autonomous AI-powered influencer agents.
These agents are persistent digital entities capable of perception, reasoning, content creation,
social interaction, and economic participation with minimal human intervention.

Chimera is not a chatbot platform.
It is an agent orchestration system designed to manage fleets of goal-driven agents at scale.

## Core Principles
- Agents are autonomous but governed.
- All external interaction occurs via MCP (Model Context Protocol).
- Architecture favors composability, observability, and safety.
- Human oversight is applied by exception, not by default.

## Non-Goals
- Building a single monolithic AI influencer.
- Hard-coding social media platform APIs into agent logic.
- Allowing unrestricted autonomous financial actions.

## Constraints
- All agent behavior must be spec-driven.
- Code generation must reference specs before implementation.
- External systems must be accessed only through MCP servers.
- The system must support future multi-tenancy.

## Architectural Pillars
- Planner / Worker / Judge swarm architecture
- MCP-based tool and resource abstraction
- Retrieval-Augmented Generation (RAG) for memory
- Human-in-the-Loop (HITL) escalation for risk control
