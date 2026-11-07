# AILinuX upstream inventory

Source owner: https://github.com/derleiti

| Component | Upstream | Licensing | Import status |
|---|---|---|---|
| Ubuntu-based ISO builder | https://github.com/derleiti/AILinuX-ISO-Builder | AILinux Proprietary Source License for newly authored builder material; historical Apache-2.0 material retains original rights | Pending license review; do not copy restricted source |
| AI desktop client | https://github.com/derleiti/ailinux-client | GPL-3.0 | Eligible for GPL-compliant import with notices and source |
| Kernel builder | https://github.com/derleiti/build_linux | AILinux Proprietary Source License | Pending license review |
| Helper | https://github.com/derleiti/ailinux-helper | Not yet verified | Pending review |

Alllinux remains independent of Mara_OS. Never copy secrets or upstream service credentials. Check licenses for all dependencies and preserve attribution. The upstream client depends on the author's TriForce API; running the client does not automatically provide that service.

## Next steps
1. Audit LICENSE and NOTICE files and exact import permissions.
2. Import GPL-compliant client source, with its full license and attribution.
3. Implement independent, documented AI service adapters; do not assume upstream private endpoints are available.
4. Build and smoke-test a bootable ISO in an appropriate Linux runner.
