# Nimble Commander shortcuts: source defaults + config vs the OFM canon

## OFM canon (Norton Commander, Total Commander, FAR, Midnight Commander)

| Action | Canon (Windows) | On Mac |
|--------|-----------------|--------|
| Help | F1 | F1 |
| Rename / User menu | F2 | F2 |
| View | F3 | F3 |
| Edit | F4 | F4 |
| Copy | F5 | F5 |
| Move | F6 | F6 |
| Mkdir (new folder) | F7 | F7 |
| Delete | F8 | F8 |
| Left panel (drive/Go To) | Alt+F1 | ⌥F1 |
| Right panel | Alt+F2 | ⌥F2 |
| Back (history) | Alt+← | ⌥← |
| Forward | Alt+→ | ⌥→ |
| Path to the opposite panel | Ctrl+← / Ctrl+→ | (on Mac Ctrl+arrows = Spaces, hence ⌘←/⌘→) |
| Select + move down | Space (TC/FAR) | Space |
| Parent folder | Backspace | Backspace |
| Enter folder | Enter | Enter |
| Pack | Alt+F5 | ⌥F5 |
| Sizes of all folders | Alt+Shift+Enter (TC) | ⌥⇧Enter |
| Size of one folder | Ctrl+Shift+Enter (TC) | ^⇧Enter |

---

## 1. NC defaults (Actions.h) — only those with a non-empty shortcut

| ID | NC default | Action |
|----|------------|--------|
| menu.file.enter | ↵ | Enter / open |
| menu.file.new_file | ⌥⌘n | New file |
| menu.file.new_folder | ⇧⌘n | New folder |
| menu.file.new_tab | ⌘t | New tab |
| menu.file.open | ⇧↵ | Open (alternative) |
| menu.file.reveal_in_opposite_panel | ⌥↵ | Path to the other panel |
| menu.file.reveal_in_opposite_panel_tab | ⌥⌘↵ | Path to the other panel (new tab) |
| menu.file.calculate_sizes | ⇧⌥↵ | Sizes (in NC: one folder by default) |
| menu.file.calculate_all_sizes | ⇧^↵ | All sizes (in NC: all folders by default) |
| menu.file.duplicate | ⌘d | Duplicate |
| menu.file.add_to_favorites | ⌘b | Add to favorites |
| menu.file.close | ⌘w | Close tab |
| menu.file.close_window | ⇧⌘w | Close window |
| menu.file.find | ⌘f | Find |
| menu.file.find_next | ⌘g | Find next |
| menu.view.swap_panels | ⌘u | Swap panels |
| menu.view.sync_panels | ⌥⌘u | Sync panels |
| menu.view.refresh | ⌘r | Refresh |
| menu.view.show_terminal | ⌥⌘o | Show terminal |
| menu.view.panels_position.move_up | ^⌥↑ | Terminal (panels up) |
| menu.view.panels_position.move_down | ^⌥↓ | Terminal (panels down) |
| menu.view.panels_position.focusterminal | ^⌥⇥ | Focus terminal |
| menu.go.back | ⌘[ | Back |
| menu.go.forward | ⌘] | Forward |
| menu.go.enclosing_folder | ⌘↑ | Parent folder |
| menu.go.into_folder | ⌘↓ | Enter folder |
| menu.go.follow_symlink | ⌘→ | Follow symlink |
| menu.go.left_panel | **F1** | Left panel |
| menu.go.right_panel | **F2** | Right panel |
| menu.command.file_attributes | ^a | File properties |
| menu.command.select_with_mask | ⌘= | Select with mask |
| menu.command.deselect_with_mask | ⌘- | Deselect with mask |
| menu.command.quick_look | ⌘y | Quick Look |
| menu.command.internal_viewer | F3 | Internal viewer |
| menu.command.external_editor | F4 | External editor |
| menu.command.copy_to | F5 | Copy |
| menu.command.move_to | F6 | Move |
| menu.command.rename_in_place | ^F6 | Rename |
| menu.command.create_directory | F7 | New folder |
| menu.command.move_to_trash | ⌘⌫ | Move to trash |
| menu.command.delete | F8 | Delete |
| menu.command.delete_permanently | ⇧F8 | Delete permanently |
| menu.command.compress_here | F9 | Compress |
| menu.command.compress_to_opposite | ⇧F9 | Compress to the other panel |
| panel.move_up | ↑ | Up |
| panel.move_down | ↓ | Down |
| panel.move_left | ← | Left |
| panel.move_right | → | Right |
| panel.move_next_and_invert_selection | Insert | Select and move down |
| panel.go_into_enclosing_folder | Backspace | Parent folder |
| panel.show_preview | **Space** | Preview |
| panel.show_context_menu | ^↵ | Context menu |

---

## 2. Current overrides in the config (hotkeyOverrides_v1)

| ID | In config | NC default |
|----|-----------|------------|
| menu.file.new_file | ⇧F4, ⌥⌘n | ⌥⌘n |
| menu.file.reveal_in_opposite_panel | ⌘←, ⌘→ | ⌥↵ |
| menu.file.calculate_sizes | ⇧^↵ | ⇧⌥↵ |
| menu.file.calculate_all_sizes | ⇧⌥↵ | ⇧^↵ |
| menu.view.show_terminal | ^o, ^щ, ⌥⌘o, ⌥⌘щ | ⌥⌘o |
| menu.view.panels_position.move_up | ^⌥↓ | ^⌥↑ |
| menu.view.panels_position.move_down | ^⌥↑ | ^⌥↓ |
| menu.view.panels_position.focusterminal | ^⌥⇥ | ^⌥⇥ |
| menu.go.back | ⌥←, ⌘[ | ⌘[ |
| menu.go.forward | ⌥→, ⌘] | ⌘] |
| menu.go.left_panel | ⌥F1 | F1 |
| menu.go.right_panel | ⌥F2 | F2 |
| menu.go.follow_symlink | ⌥⌘→ | ⌘→ |
| menu.command.file_attributes | F1 (and others) | ^a |
| menu.command.select_with_mask | ⌘=, + | ⌘= |
| menu.command.deselect_with_mask | ⌘-, - | ⌘- |
| menu.command.internal_viewer | F3 | F3 |
| menu.command.rename_in_place | F2, ^F6 | ^F6 |
| menu.command.delete | Del, F8 | F8 |
| menu.command.delete_permanently | ⇧Del, ⇧F8 | ⇧F8 |
| menu.command.compress_here | ⌥F5 | F9 |
| panel.move_next_and_invert_selection | Insert, Space | Insert |
| panel.show_preview | "" (empty) | Space |

---

## 3. What deviates from the canon

### 3.1 In NC defaults (if not overridden in the config)

| Shortcut / action | In NC | By the OFM canon |
|-------------------|-------|------------------|
| **F1** = left panel | menu.go.left_panel | F1 = **Help**; left panel = **Alt+F1** |
| **F2** = right panel | menu.go.right_panel | F2 = **Rename**; right panel = **Alt+F2** |
| **Space** = preview | panel.show_preview | Space = **Select + move down** (TC/FAR) |
| Back/Forward only ⌘[/⌘] | menu.go.back/forward | Also **Alt+← / Alt+→** (TC) |
| Path to the other panel ⌥↵ | menu.file.reveal_in_opposite_panel | In TC: **Ctrl+← / Ctrl+→** (on Mac — ⌘←/⌘→) |
| Sizes: ⇧⌥↵ = one, ⇧^↵ = all | calculate_sizes / calculate_all_sizes | In TC: ⇧⌥↵ = all folders, ⇧^↵ = one folder (already swapped to the canon in your config) |

### 3.2 In your config (after overrides)

| What | Currently in config | By the canon | Comment |
|------|---------------------|--------------|---------|
| **F1** | file_attributes (properties) | F1 = **Help** | By the canon F1 is help; properties are more often F4 or separate. |
| **Show Terminal** | ^o, ⌥⌘o, … | No single canon | TC/FAR have their own sets; yours duplicates for keyboard layouts. |
| **Terminal move_up/move_down** | ^⌥↓ = up, ^⌥↑ = down | — | NC-specific (overlapped terminal). |
| **Follow symlink** | ⌥⌘→ | NC default ⌘→ | Moved because ⌘→ is used for reveal; there is no canon for follow symlink. |

### 3.3 Summary list: "not by the canon"

1. **menu.command.file_attributes on F1** — by the canon F1 = Help, not file properties.
2. **menu.view.show_terminal on Ctrl+O** — not an OFM standard (in FAR Ctrl+O = show console output, in TC it is configurable).
3. **menu.go.left_panel / right_panel in NC defaults (F1/F2)** — by the canon F1/F2 = Help/Rename, panels = Alt+F1/F2 (your config already uses ⌥F1/⌥F2 — canonical).
4. **panel.show_preview = Space in NC defaults** — by the canon Space = select and move down; empty in your config — fine.
5. **Default reveal_in_opposite_panel (⌥↵)** — by the TC canon the path to the other panel = Ctrl+arrows; your config has ⌘←/⌘→ — canonical.
6. **NC defaults for calculate_sizes / calculate_all_sizes** — in TC the combinations are reversed (⇧⌥↵ = all, ⇧^↵ = one); your config already matches TC.

Everything else in your config (⌥←/⌥→ Back/Forward, ⌥F1/⌥F2 panels, F2 Rename, F3 View, Space/Insert selection, ⌥F5 Compress, ⇧⌥↵/⇧^↵ sizes, ⌘←/⌘→ reveal) matches the OFM canon.

---

### 3.4 Other deviations (NC defaults, no overrides)

| What in NC | By the OFM canon |
|------------|------------------|
| **^a (Ctrl+A)** = file_attributes | Usually Ctrl+A / ⌘A = **Select All**; in NC select_all = ⌘a, and ^a is given to properties. |
| **⌘y** = Quick Look | OFM has no Quick Look; **F3** = View (internal viewer). ⌘y is Mac-style. |
| **⇧⌘n** = new_folder | In OFM **F7** = Mkdir. In NC **F7** is already create_directory (Command menu), so the canonical new folder exists; ⇧⌘n is a Mac-style duplicate. |
| **⌘↑** / **⌘↓** = parent / enter folder | OFM mostly uses **Backspace** and **Enter**; ⌘↑/⌘↓ are extra Mac bindings and do not conflict. |
| **^↵** = panel context menu | OFM usually has a separate key (Menu) or right click; there is no single canon. |
