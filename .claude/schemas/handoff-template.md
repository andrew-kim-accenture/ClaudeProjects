---
task_id: task-001
agent_type: implementer
status: complete
completed_at: {{ISO_TIMESTAMP}}
---

# Handoff · task-001

<!--
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
AGENT TYPES: implementer | verifier | reviewer
STATUS:       complete | ambiguous | failed

Every agent in every pipeline writes this file on exit.
The next agent in the pipeline reads it before starting.
The orchestrator reads it when assessing stage completion.
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-->

## Output Summary

### Files Created
- {{FILE_PATH}}

### Files Modified
- {{FILE_PATH}} — {{ONE LINE DESCRIPTION OF CHANGE}}

### Files Deleted
- (none)

## Test Results
- Command run: `{{TEST_COMMAND}}`
- Passing: {{N}}
- Failing: 0
- Coverage: {{N}}% (if measured)

## Decisions Made This Task
<!-- Any non-obvious choices. Link to decisions.md entries written. -->
- {{DECISION}} — see decisions.md entry {{DATE}}/{{TASK_ID}}

## Notes for Next Agent
<!-- Critical context the next agent in the pipeline must know.
     Be specific. Vague notes cause ambiguity reports. -->
- {{NOTE}}

---

<!--
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
AMBIGUITY REPORT — only present if status: ambiguous
Written by implementer BEFORE writing any code.
If this section exists, NO code was written this session.
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

## Ambiguity Report

### What Is Unclear in the Brief
- {{SPECIFIC THING that cannot be resolved without guessing}}
- {{SPECIFIC THING}}

### What I Would Have Guessed (but did not)
- {{ASSUMPTION I avoided making — shows planner what decision is missing}}

### What Information Is Needed to Proceed
- {{EXACT information or decision needed from planner}}
- {{EXACT information}}

### Affected Acceptance Criteria
- {{CRITERION that cannot be verified until ambiguity is resolved}}
-->
