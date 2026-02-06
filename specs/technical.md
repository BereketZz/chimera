# Technical Specification — Project Chimera

## Database Schema

### Table: videos
- id (uuid, primary key)
- agent_id (uuid)
- platform (string)
- topic (string)
- status (draft | approved | published | failed)
- created_at (timestamp)
- published_at (timestamp, nullable)

### Table: trends
- id (uuid, primary key)
- source (string)
- keyword (string)
- score (float)
- fetched_at (timestamp)


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


