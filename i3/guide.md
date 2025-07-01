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



## Issue on window layout

`i3: V[V[S[Navigator]]]` appearing at the window title in tabbed layout

```markdown

### focus on parent container
$mod + a  

### make the parent container floating
$mod + shift + space

### move to scratch pad
$mod + shift + -

```
