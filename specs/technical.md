# Technical Specification — Project Chimera

## Agent Runtime Contracts

### Agent Task Input (JSON)
```json
{
  "task_id": "uuid",
  "task_type": "string",
  "priority": "low | medium | high",
  "context": {
    "goal": "string",
    "constraints": ["string"],
    "resources": ["mcp://resource/path"]
  }
}
