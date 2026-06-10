# Dotfiles

Minimal collection of personal Linux scripts and small utilities.

## Structure

```
dotfiles/
├── scripts/
│   ├── sysinfo.sh
│   ├── touchpad_toggle.sh
│   └── webcam-toggle.sh
└── README.md
```

---

## Scripts

### touchpad_toggle.sh

Toggle touchpad state using `xinput`.

---

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

---

### webcam-toggle.sh

Toggle webcam on/off using the `uvcvideo` kernel module.

#### Behavior

* `[◉°]` → Webcam ON
* `[◉¯]` → Webcam OFF
* Retries unload if kernel delays
* Can force close apps using the webcam

---

## Setup (Webcam Toggle)

### 1. Make script executable

```bash
chmod +x ~/dotfiles/scripts/webcam-toggle.sh
```

---

### 2. Allow passwordless modprobe

Switch to root:

```bash
su -
```

Then edit sudoers:

```bash
visudo
```

Add this line **at the bottom**:

```
<username> ALL=(ALL:ALL) NOPASSWD: /usr/bin/modprobe
```

Replace `<username>` with your actual username.

---

### 3. Test

```bash
~/dotfiles/scripts/webcam-toggle.sh
```

---

## Keybinding (XFCE)

**Settings → Keyboard → Application Shortcuts**

Command:

```bash
/home/<user>/dotfiles/scripts/webcam-toggle.sh
```

(No need for `bash -c`)

---

## Usage

Run directly:

```bash
./scripts/sysinfo.sh
./scripts/webcam-toggle.sh
```

---

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

4. (Optional) Use **JetBrainsMono Nerd Font** for icons

---

## Requirements

* `lm_sensors`
* `xinput`
* Nerd Font (for icons)
* X11 environment

---

## Notes

* Webcam toggle uses `uvcvideo`
* May fail if kernel refuses unload (rare)
* Apps using webcam may be terminated for force toggle
* CPU sensor uses `k10temp (Tctl)`
* GPU sensor uses `amdgpu (edge)`

---

## Author

Aditya Singh

