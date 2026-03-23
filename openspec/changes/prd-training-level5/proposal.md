# Proposal: PRD Training Module for Level 5 (Ultron)

## Intent

Add comprehensive PRD (Product Requirements Document) training to Level 5 of the "Iron Man Evolution" course. Currently, students learn SDD methodology without understanding the foundational PRD step that precedes it. This creates a gap: they know HOW to write specs but not WHY they need PRDs or HOW to scope AI development work without one.

The goal is to teach students to:
- Understand PRDs as the bridge between business problem and technical solution
- Create real PRDs for AI-assisted development projects
- Integrate PRD workflow with existing SDD content

## Scope

### In Scope

- Create PRD template documentation for AI development projects
- Add PRD exercise/boss-fight to Level 5 (Ultron)
- Integrate PRD concepts with existing SDD materials
- Provide examples and exercises with Iron Man theme

### Out of Scope

- Rewriting Level 5 SDD content (only extending it)
- Creating PRD templates for non-AI development projects
- Grading/evaluation rubrics (future enhancement)

## Approach

1. **Create PRD Template**: Document-based template with Iron Man branding
   - Problem Statement section
   - Success Metrics (SMART criteria)
   - User Personas
   - Feature Requirements
   - AI Integration Points (MCP, agents, prompts)
   - Constraints & Risks

2. **Add Boss-Fight Exercise**: Level 5 exercise where students:
   - Receive a vague business problem
   - Write a complete PRD
   - Get evaluated against checklist
   - Unlock "PRD Architect" badge

3. **Integrate with SDD**: Connect PRD output to existing SDD workflow
   - Show PRD → Spec → Design → Tasks pipeline
   - Demonstrate how PRD informs technical decisions

## Affected Areas

| Area | Impact | Description |
|------|--------|-------------|
| `levels/level5-ultron/` | Modified | Add PRD training module |
| `levels/level5-ultron/prd-template.md` | New | PRD template file |
| `levels/level5-ultron/exercises/prd-boss-fight.md` | New | Boss-fight exercise |
| `levels/level5-ultron/examples/prd-iron-man-example.md` | New | Example PRD |
| `README.md` | Modified | Update Level 5 description |

## Risks

| Risk | Likelihood | Mitigation |
|------|------------|------------|
| Students skip PRD step | Medium | Make PRD exercise mandatory before SDD exercises |
| Template too rigid | Low | Provide multiple examples, encourage iteration |
| Time constraint in course | Medium | Keep exercise focused (45-60 min) |

## Rollback Plan

If the PRD module causes confusion or doesn't fit the course flow:
1. Remove `prd-template.md`, `prd-boss-fight.md`, and example files
2. Restore `README.md` to previous state
3. Revert any modifications to existing SDD content

All changes are additive—no existing content modified except `README.md` update.

## Dependencies

- Existing Level 5 SDD content (must be complete before adding PRD)
- Course structure with 6 levels (current structure intact)

## Success Criteria

- [ ] PRD template created with Iron Man branding
- [ ] Boss-fight exercise added to Level 5
- [ ] Example PRD included showing real use case
- [ ] README updated to reflect new content
- [ ] Integration points with SDD documented
- [ ] Exercise completable in 45-60 minutes
