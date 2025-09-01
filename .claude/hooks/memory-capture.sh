#!/bin/bash
# Memory Capture Hook for ReAct + Reflexion System
# Captures tool usage and session data for learning

MEMORY_DIR="$CLAUDE_PROJECT_DIR/.claude/memory"
TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

# Ensure memory directory exists
mkdir -p "$MEMORY_DIR"

# Log the hook execution
echo "Memory capture hook executed at $TIMESTAMP" >> "$MEMORY_DIR/hook_log.txt"

# For now, just log basic information
# Future versions will capture more detailed session data
echo "{\"timestamp\": \"$TIMESTAMP\", \"event\": \"session_stop\", \"hook\": \"memory-capture\"}" >> "$MEMORY_DIR/session_events.jsonl"

exit 0