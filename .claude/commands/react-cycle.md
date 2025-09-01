# Start ReAct Cycle

Use the reactor-planner to analyze the given task, create a detailed plan, then have the reactor-executor implement it while the reactor-evaluator assesses progress.

Task: $ARGUMENTS

Please initiate a complete ReAct (Reasoning + Acting) cycle for this task:

1. First, use the reactor-planner subagent to deeply analyze the task and create a structured action plan
2. Then, use the reactor-executor subagent to execute the plan step-by-step 
3. Use the reactor-evaluator subagent to assess outcomes and determine next steps
4. Log all reasoning, actions, and evaluations to the memory system

The cycle should continue until the task is complete or requires human intervention.