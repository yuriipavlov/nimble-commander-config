# Current hotkeys and defaults (hotkeyOverrides_v1)

Action | Current bindings | NC defaults
-------|------------------|------------------
**File ▸ New File** | ⇧F4, ⌥⌘n | ⌥⌘n |
**File ▸ Calculate Sizes** | ⇧^Return (Ctrl) | ⇧⌥Return |
**File ▸ Calculate All Sizes** | ⇧⌥Return | ⇧^Return |
**File ▸ Reveal in Opposite Panel** | ⌘←, ⌘→ | ⌥Return |
**View ▸ Show Terminal** | ^o, ^щ (Ctrl+O) | ⌥⌘o |
**View ▸ Panels Position ▸ Move Up** (show terminal) | ^⌥↓ | ^⌥↑ |
**View ▸ Panels Position ▸ Move Down** (hide terminal) | ^⌥↑ | ^⌥↓ |
**View ▸ Panels Position ▸ Focus Overlapped Terminal** | ^⌥Tab | ^⌥Tab |
**Go ▸ Back** | ⌥←, ⌘[ | ⌘[ |
**Go ▸ Forward** | ⌥→, ⌘] | ⌘] |
**Go ▸ Left Panel** | ⌥F1 | F1 |
**Go ▸ Right Panel** | ⌥F2 | F2 |
**Command ▸ Select With Mask** | ⌘=, + | ⌘= |
**Command ▸ Deselect With Mask** | ⌘-, - | ⌘- |
**Command ▸ Internal Viewer** | F3 | F3 |
**Command ▸ Rename In Place** | F2, ^F6 | ^F6 |
**Command ▸ Delete** | Del, F8 | F8 |
**Command ▸ Delete Permanently** | ⇧Del, ⇧F8 | ⇧F8 |
**Command ▸ Compress Here** (pack into an archive) | ⌘F9, ⌥F5 | F9 |
**Command ▸ File Attributes** (properties/info) | ^A, F1, ⌘I | ^A |
**Panel ▸ Show Context Menu** | ^Return | ^Return |
**Panel ▸ Toggle Selection and Move Down** | Insert, Space | Insert |
**Panel ▸ Show Preview** | (empty — not triggered from the panel) | Space |

## Notes

- **New File**: ⇧F4 added as the primary binding, ⌥⌘n kept.
- **Back / Forward**: ⌥← and ⌥→ added alongside ⌘[ and ⌘].
- **Reveal in opposite panel** (open path in the other panel): ⌘←, ⌘→.
- **Left / Right Panel**: see the section below.

## Panel selection (left/right): best practices

**Common in orthodox file managers (Norton Commander, FAR, Double Commander, Total Commander):**

| Action | Canon (Windows) | On Mac |
|--------|-----------------|--------|
| Switch focus to the other panel | **Tab** | **Tab** (unchanged) |
| Select/act on the **left** panel (drive, Go To) | **Alt+F1** | **⌥F1** (Option = Alt) |
| Select/act on the **right** panel (drive, Go To) | **Alt+F2** | **⌥F2** (Option = Alt) |

**Why:** in Norton Commander (and FAR, TC, Double Commander) **F1 and F2 are taken**: F1 = Help, F2 = Rename (or re-read the panel). By the canon, selecting the left/right panel is **only Alt+F1** and **Alt+F2** (drive selection, Go To). Tab switches between panels.

**NC defaults** assign F1/F2 to Go ▸ Left/Right Panel, which diverges from the canon (F1 = Help, F2 = Rename). By the canon, only **⌥F1 and ⌥F2** (Option = Alt on Mac) are used to select panels.

### How F1 is used in two-panel managers (docs, standard, Reddit)

Per **OFM1999** (Orthodox File Manager Standard, softpanorama.org): **F1** invokes context-sensitive hypertext help; help should be relevant to the current toolbar item/menu/dialog. **F2** is the user menu or an equivalent. **Alt+F1 / Alt+F2** show the list of drives/mount points for the left/right panel.

**On Mac:** Alt on a Windows keyboard = **Option (⌥)** on Mac. The mapping is the same: **F1** = Help, **F2** = user menu, **⌥F1** = drive list/Go To for the left panel, **⌥F2** = for the right panel. The other F-keys (F3–F12) are unchanged; on Mac laptops use Fn+F1 etc. unless "Use F1, F2, etc. keys as standard function keys" is enabled.

Per **Norton Commander** (winnc.com, Wikipedia): **F1** = Help, **F2** = Rename, **F3** = View, **F4** = Edit, **F5** = Copy, **F6** = Move, **F7** = Mkdir, **F8** = Delete, **F9** = size, etc.; **Alt+F1** = drive selection for the left panel, **Alt+F2** = for the right panel.

**Total Commander:** F1 = Help (in dialogs — help for the dialog); F2 = Reread the panel.
**Double Commander** (doublecmd.github.io): F1 = Open the program help; Alt+F1 = Change left drive, Alt+F2 = Change right drive.
**Midnight Commander:** F1 = context help (online help).
**FAR:** F1 = Help.

Bottom line: **in two-panel orthodox managers F1 is always Help by the canon**. Panels are selected with **Alt+F1** and **Alt+F2**, not bare F1/F2.

- **Select / Deselect with mask**: + and - (numpad) added to ⌘= and ⌘-.
- **Rename in place**: F2 added to the default ^F6.
- **Compress here** (pack into an archive): ⌘F9 (via Command) and ⌥F5 (commander canon, Alt+F5).
- **Toggle selection and move down**: Space added (TC/FAR canon).
- **Show Preview**: empty in the overrides — not triggered from the panel; ⌘Y (Command ▸ Quick Look) from the menu remains the default.
- **F1**: assigned to **File Attributes** (file properties). **⌘I** (Get Info), the macOS standard, was also added.

## Terminal: all actions (from Actions.h)

### Send to terminal (File)
| ID | Default | Action |
|----|---------|--------|
| `menu.file.feed_filename_to_terminal` | **Ctrl+Option+Return** (^⌥\r) | Paste the name of the file under the cursor into the terminal |
| `menu.file.feed_filenames_to_terminal` | **Ctrl+Option+Cmd+Return** (^⌥⌘\r) | Paste the names of the selected files into the terminal (dialog) |

### Show/hide terminal and panels (View)
| ID | Default | Action |
|----|---------|--------|
| `menu.view.show_terminal` | **Option+Cmd+O** (⌥⌘o) | Show/hide the terminal (full-screen mode) |
| `menu.view.panels_position.move_up` | **Ctrl+Option+↑** (^⌥↑) | Move panels up, show the overlapped terminal |
| `menu.view.panels_position.move_down` | **Ctrl+Option+↓** (^⌥↓) | Move panels down, hide the overlapped terminal |
| `menu.view.panels_position.move_left` | **Ctrl+Option+←** (^⌥←) | Change panel proportions |
| `menu.view.panels_position.move_right` | **Ctrl+Option+→** (^⌥→) | Change panel proportions |
| `menu.view.panels_position.showpanels` | **Ctrl+Option+O** (^⌥o) | Show/hide panels (leave only the terminal or bring the panels back) |
| `menu.view.panels_position.focusterminal` | **Ctrl+Option+Tab** (^⌥\t) | Focus the overlapped terminal |

### Terminal summary
- **Send file name to terminal:** ^⌥Return (Ctrl+Option+Enter).
- **Send selected names to terminal:** ^⌥⌘Return.
- **Show/hide terminal (window mode):** ⌥⌘O (the config also has ^o, ^щ).
- **Overlapped: show** — ^⌥↓ (Move Up), **hide** — ^⌥↑ (Move Down) (swapped in the config).
- **Focus the overlapped terminal:** ^⌥Tab.
- **Hide panels / show them again:** ^⌥O.
