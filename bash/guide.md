
- PROMPT_COMMAND is a special bash variable that gets executed right before displaying the bash prompt (`PS1`)

### Issue faced `PROMPT_COMMAND` and `PS1`

```markdown
Before I was using the following two lines:

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'
PS1="\n${_RED}${_BOLD}${PS1_CMD1}** ${_WHITE}@@ ${_GREEN}\w\n${_YELLOW}%% ${_RESET}"

But PS1_CMD1 variable was not getting displayed on the prompt, even when being inside a git repository.
To make it display I had to run source ~/.bashrc.

This issue was caused due to timing issues between PROMPT_COMMAND and PS1

The following worked like a breeze.

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'
PS1="\n${_RED}${_BOLD}\${PS1_CMD1}** ${_WHITE}@@ ${_GREEN}\w\n${_YELLOW}%% ${_RESET}"

By using \${PS1_CMD1} instead of ${PS1_CMD1}, we force PS1 to expand the variable during display rather than during definition.
This ensures the latest value is always shown.
```