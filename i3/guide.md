# Guide to i3wm configuration

### Get class of an application

```bash
$xprop # then select the window of the application
```

## Start i3 after boot

Add following line to `/etc/profile`

```bash
if [[ "$(tty)" == '/dev/tty1' ]]; then
exec startx
fi
```
