# dotskills

The agent skills I install in every new repo, in one command.

Run from the root of the new repo:

```sh
curl -fsSL https://raw.githubusercontent.com/SantiagoZarate/dotskills/main/install-skills.sh | bash
```

Extra flags go to `npx skills add`. For example, to install only for Claude Code:

```sh
curl -fsSL https://raw.githubusercontent.com/SantiagoZarate/dotskills/main/install-skills.sh | bash -s -- -a claude-code
```

## Skills

| Skill | Source |
| --- | --- |
| handoff | [mattpocock/skills](https://www.skills.sh/mattpocock/skills/handoff) |
| grill-with-docs | [mattpocock/skills](https://www.skills.sh/mattpocock/skills/grill-with-docs) |
| writing-for-agents | [mattpocock/skills](https://www.skills.sh/mattpocock/skills/writing-for-agents) |
| code-review | [mattpocock/skills](https://www.skills.sh/mattpocock/skills/code-review) |
| pr | [mattpocock/skills](https://www.skills.sh/mattpocock/skills/pr) |
| retro | [mattpocock/skills](https://www.skills.sh/mattpocock/skills/retro) |
| research | [mattpocock/skills](https://www.skills.sh/mattpocock/skills/research) |
| unslop | [cursor/plugins](https://www.skills.sh/cursor/plugins/unslop) |
| show-me | [humanlayer/skills](https://www.skills.sh/humanlayer/skills/show-me) |

To add a skill, edit the `SKILLS` list in `install-skills.sh`.
