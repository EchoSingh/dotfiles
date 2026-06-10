# Dotfiles

Minimal collection of personal Linux scripts and small utilities.

## Structure

```
dotfiles/
├── scripts/
│   ├── sysinfo.sh
│   └── touchpad_toggle.sh
└── README.md
```


## Scripts

### touchpad_toggle.sh

Toggle touchpad state using `xinput`.


### sysinfo.sh

Lightweight system monitor script for panel usage.

Displays:

* CPU temperature
* GPU temperature
* RAM usage
* Fan speed
* Disk usage

Example output:

```
 52°C    50°C   󰍛 4.0G/15G   󰈐 3.2k   󰋊 88G/928G
```


## Usage

Run directly:

```bash
./scripts/sysinfo.sh
```


## XFCE Panel Setup (Generic Monitor)

1. Right-click panel → **Add New Items**
2. Add **Generic Monitor**
3. Configure:

Command:

```bash
bash /home/<user>/dotfiles/scripts/sysinfo.sh
```

Label:

```
(empty)
```

Period:

```
1
```

4. (Optional) Set font to **JetBrainsMono Nerd Font** for icons


## Keybinding (XFCE)

Bind scripts via:

**Settings → Keyboard → Application Shortcuts**

Example:

```bash
bash -c "/home/<user>/dotfiles/scripts/touchpad_toggle.sh"
```


## Requirements

* `lm_sensors`
* `xinput`
* Nerd Font (for icons)
* X11 environment

## Notes

* CPU sensor uses `k10temp (Tctl)`
* GPU sensor uses `amdgpu (edge)`
* Fan speed may not be available on all laptops
* Script is optimized for minimal panel display (XFCE)

## Author

Aditya Singh

