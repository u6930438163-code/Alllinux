# Alllinux — AI agent integration

Alllinux is an independent project. Do not merge its source tree or runtime state with Mara_OS.

## Agents
- Aria — interface and user interaction
- Astyria — system integration and orchestration
- Alex — diagnostics, tests and automation
- Aurelius — architecture and security review

These are intended agent roles, not proof of live connections. Connect each agent to its real API or service endpoint only after verifying credentials and permissions. Never simulate agent status as live.

## Integration requirements
- Review upstream AI Linux repositories from https://github.com/derleiti and select the actual distribution source before importing; preserve upstream license, attribution and history where practical.
- Support MCP and optional OpenAI/Ollama adapters with explicit engine identification.
- Provide bidirectional agent messaging, per-agent channels and shared channel with auditable logs.
- Use a root-capable execution service only with explicit operator approval, strong authentication and an audit trail; never commit credentials.
- Set up Codespaces/devcontainer and CI smoke tests before claiming the system boots.
- Keep Mara_OS entirely separate; no cross-project synchronization by default.
