# Dotfiles

Minimal collection of personal Linux scripts and small utilities.

## Structure

```
dotfiles/
├── scripts/
│   └── touchpad_toggle.sh
└── README.md
```



## Scripts

### touchpad_toggle.sh

Toggle touchpad state using `xinput`.


## Usage

Run directly:

```bash
./scripts/touchpad_toggle.sh
```



## Keybinding (XFCE)

Bind the script via:

**Settings → Keyboard → Application Shortcuts**

Command:

```bash
bash -c "/home/<user>/dotfiles/scripts/touchpad_toggle.sh"
```

Assign any key (e.g. `Fn + F6(Touchpad Symbol)` or `XF86TouchpadToggle`).



## Requirements

* `xinput`
* X11 environment



## Notes

* Script assumes a single touchpad device.
* For multi-device setups, adjust `xinput` matching logic.
* Works best when called through XFCE or a keybinding.



## TODO

* Add more scripts (asus, camera, sensor-monitor)
* Notifications + status feedback
* Setup script for automatic linking


## Author

Aditya Singh

