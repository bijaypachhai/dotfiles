# Sessions

### Create new Session

```bash

$tmux new-session -s <session-name>
$tmux new -s <session-name> -n <window-name>

$tmux a -t <session-name> # attach to session
$tmux switch -t <session-name>

$tmux kill-session -t <session-name>
$tmux kill-session -a #kill all sessions but current one

```

### Using Tmux command prompt `prefix + :`

```markdown

kill-session -a -t <session-name>
# kill all sessions except <session-name>

```

### Shortcuts with prefix

```markdown

prefix + $ # rename a session
prefix + d # detach from session

prefix + ( # move to previous session
prefix + ) # move to next session

prefix + s # show all sessions
prefix + w # session and window preview

```

# Windows

### Create new Window

```bash

$tmux new-window
```

### Shortcuts with prefix

```markdown

prefix + c # create window
prefix + , # rename current window
prefix + & # close current window
prefix + w # list windows

Alt + Left # previous window
Alt + Right # next window

prefix + 0...9 # select window by number

```
