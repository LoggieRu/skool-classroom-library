#!/bin/bash

mkdir -p SKOOL-Classroom/docs/modules
mkdir -p SKOOL-Classroom/modules
mkdir -p SKOOL-Classroom/resources/checklists
mkdir -p SKOOL-Classroom/resources/prompts
mkdir -p SKOOL-Classroom/resources/diagrams
mkdir -p SKOOL-Classroom/resources/cheat-sheets
mkdir -p SKOOL-Classroom/templates/quick
mkdir -p SKOOL-Classroom/templates/practical
mkdir -p SKOOL-Classroom/templates/experimental
mkdir -p SKOOL-Classroom/production/hardened-workflows
mkdir -p SKOOL-Classroom/production/logging-frameworks
mkdir -p SKOOL-Classroom/production/deployment-patterns
mkdir -p SKOOL-Classroom/case-studies
mkdir -p SKOOL-Classroom/business
mkdir -p SKOOL-Classroom/version-control

for i in {0..10}; do
  mkdir -p SKOOL-Classroom/docs/modules/module-$i
done

mkdir -p SKOOL-Classroom/modules/module-0-welcome
mkdir -p SKOOL-Classroom/modules/module-1-automation-ai-mental-models
mkdir -p SKOOL-Classroom/modules/module-2-data-fundamentals
mkdir -p SKOOL-Classroom/modules/module-3-triggers-entry-points
mkdir -p SKOOL-Classroom/modules/module-4-core-data-transformation
mkdir -p SKOOL-Classroom/modules/module-5-logic-guard-rails
mkdir -p SKOOL-Classroom/modules/module-6-external-systems-apis
mkdir -p SKOOL-Classroom/modules/module-7-ai-inside-workflows
mkdir -p SKOOL-Classroom/modules/module-8-workflow-architecture-reuse
mkdir -p SKOOL-Classroom/modules/module-9-reliability-production-readiness
mkdir -p SKOOL-Classroom/modules/module-10-from-learning-to-shipping

LESSONS=(
"0.1-course-overview"
"0.2-how-this-course-works"
"0.3-required-tools-setup"
"0.4-the-architect-mindset"
)

for lesson in "${LESSONS[@]}"; do
  BASE="SKOOL-Classroom/modules/module-0-welcome/$lesson"
  mkdir -p "$BASE"/mermaid
  mkdir -p "$BASE"/homework
  mkdir -p "$BASE"/build
  mkdir -p "$BASE"/workflow

  touch "$BASE/skool-summary.md"
  touch "$BASE/theory-full.html"
  touch "$BASE/printable.pdf"
  touch "$BASE/short-theory-script.md"

  touch "$BASE/mermaid/lesson-diagram.mmd"
  touch "$BASE/mermaid/architecture.mmd"

  touch "$BASE/homework/work-instruction.md"
  touch "$BASE/homework/fake-client-brief.md"
  touch "$BASE/homework/expected-solution-outline.md"

  touch "$BASE/build/manual-build-instructions.md"
  touch "$BASE/build/n8n-ai-builder-prompt.txt"
  touch "$BASE/build/walkthrough-script.md"

  touch "$BASE/workflow/workflow.json"
  touch "$BASE/workflow/workflow-version-notes.md"
done

touch SKOOL-Classroom/version-control/n8n-version-check.md
touch SKOOL-Classroom/version-control/deprecated-nodes-log.md
touch SKOOL-Classroom/version-control/changelog-analysis.md

echo "# DeepLogic n8n Course — SKOOL Classroom" > SKOOL-Classroom/README.md
echo "Isolated architecture for Modules 0–10." >> SKOOL-Classroom/README.md