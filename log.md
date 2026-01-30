# 修改记录

## 2025-01-30

### Oh My Zsh / Powerlevel10k：普通用户也显示 user@hostname

**问题**：root 用户时提示符显示 `root@xxx`，普通用户在主目录下只显示 `~`，没有 `user@hostname`。

**原因**：Powerlevel10k 的 context 段在配置中有一行：
`POWERLEVEL9K_CONTEXT_{DEFAULT,SUDO}_{CONTENT,VISUAL_IDENTIFIER}_EXPANSION=`
该行把「默认用户」和「sudo 后」的 context 内容设为空，因此只有在 root 或 SSH 时才会显示 `user@hostname`，普通用户下 context 不显示，左侧只剩目录（主目录显示为 `~`）。

**修改**：在 `dot_config/ohmyzsh/themes/p10k/p10k-vanilla.zsh` 中注释掉上述那行，使普通用户也使用默认的 `POWERLEVEL9K_CONTEXT_TEMPLATE='%n@%m'`，从而在提示符中显示 `user@hostname`。

**文件**：`dot_config/ohmyzsh/themes/p10k/p10k-vanilla.zsh`
**变更**：注释掉 `typeset -g POWERLEVEL9K_CONTEXT_{DEFAULT,SUDO}_{CONTENT,VISUAL_IDENTIFIER}_EXPANSION=`，并加上说明注释。
