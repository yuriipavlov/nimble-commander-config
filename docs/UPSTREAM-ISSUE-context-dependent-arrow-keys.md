# Feature request: context-dependent behavior for Left/Right arrow keys (Brief vs List)

<!--
  Draft for upstream contribution.
  Target repo: https://github.com/mikekazakov/nimble-commander
  Use: Copy the content below the line into a new GitHub Issue (or PR description).
  See: CONTRIBUTING.md in the repo for guidelines.
-->

---

**Summary:** Interpret Left/Right arrow keys by panel view mode (Brief = move cursor, List/Gallery = parent/enter folder) to remove shortcut conflicts and align with Total Commander / FAR behavior.

## Problem

Left and Right arrow keys are bound to two different logical actions:

- **Move Left / Move Right** — cursor movement within the panel (needed in **Brief** mode with multiple columns).
- **Go to Enclosing Folder / Go Into Folder** — tree navigation (parent folder / enter folder).

Assigning the same key to more than one action causes **shortcut conflicts** (8 conflicts in Keyboard settings). The user has to choose one behavior for all view modes.

## Expected behavior (canonical file managers)

In **Total Commander** and **FAR Manager**:

- **List mode:** ← = parent folder, → = enter folder (tree navigation).
- **Brief mode:** ← / → = move cursor between columns (Move Left / Move Right); tree navigation is done via Enter and Backspace.

So the same physical keys (← / →) are interpreted **depending on the current panel view mode**.

## Proposal

Make arrow key handling **context-dependent**:

- When the active panel is in **List** (or **Gallery**) mode:  
  ← = Go to Enclosing Folder, → = Go Into Folder.
- When the active panel is in **Brief** mode:  
  ← = Move Left, → = Move Right.

Implementation could be either:

- In the key event path: when handling ← / →, check the current layout (Brief vs non-Brief) and dispatch to the corresponding action; or  
- Keep a single shortcut per key but let the actions (e.g. `panel.move_left` / `panel.go_into_enclosing_folder`) internally check the context and behave accordingly (or expose "Move Left in Brief only" vs "Go to Enclosing in List only" in the action list, if the shortcut system supports context).

## Result

- No shortcut conflicts for ← / →.
- Behavior matches user expectations from Total Commander / FAR.
- Brief mode keeps full horizontal navigation; List mode keeps canonical tree navigation on arrows.

## References

- Total Commander: arrow key behavior in List vs Brief.
- FAR Manager: same pattern.
- Nimble Commander: `Source/Panel/source/QuickSearch.mm`, `Source/NimbleCommander/NimbleCommander/Bootstrap/Actions.h` (panel actions and defaults).
