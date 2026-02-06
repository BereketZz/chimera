# Skill: Publish Content

**Purpose:** Post content to social media platforms and handle interactions (likes, replies) via MCP Tools.

**Input Schema:**
```json
{
  "platform": "twitter|instagram|threads",
  "content_text": "string",
  "media_urls": ["string"],
  "disclosure_level": "automated|assisted|none"
}