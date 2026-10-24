<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/logo-white.svg">
    <img src="assets/logo-black.svg" alt="K-Veritas" width="120">
  </picture>
</p>

# K-Veritas CLI Releases

Prebuilt binaries of the K-Veritas CLI and attestation server, always the latest build. `kveritas version` names the build and its commit; `bin/BUILD` records which is current.

K-Veritas binds a result to the code, hardware and time that produced it, in a signed PDF anyone can verify. It proves these numbers came from this code, at this time, unchanged. Not that the experiment is correct.

Official implementation of [Computer Science Conferences Should Require Nonrepudiable Experimental Results](https://arxiv.org/abs/2605.08586) (Keita and Homan, NeurIPS 2026 Position Paper Track).

## Install

```bash
uv tool install kveritas --find-links https://27-group.github.io/kveritas-releases/wheels/
pip install kveritas --find-links https://27-group.github.io/kveritas-releases/wheels/
```

Or the binary:

```bash
curl -fsSL https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-linux-amd64 -o kveritas   # see the table for other platforms
chmod +x kveritas && sudo mv kveritas /usr/local/bin/
```

```powershell
Invoke-WebRequest -Uri "https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-windows-amd64.exe" -OutFile "kveritas.exe"
```

`kveritas update` keeps it current.

## Downloads

| Platform | CLI | Server |
|---|---|---|
| Linux x86_64 | [`kveritas-linux-amd64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-linux-amd64) | [`kveritas-server-linux-amd64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-linux-amd64) |
| Linux ARM64 | [`kveritas-linux-arm64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-linux-arm64) | [`kveritas-server-linux-arm64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-linux-arm64) |
| macOS Apple Silicon | [`kveritas-darwin-arm64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-darwin-arm64) | [`kveritas-server-darwin-arm64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-darwin-arm64) |
| macOS Intel | [`kveritas-darwin-amd64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-darwin-amd64) | [`kveritas-server-darwin-amd64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-darwin-amd64) |
| Windows x86_64 | [`kveritas-windows-amd64.exe`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-windows-amd64.exe) | [`kveritas-server-windows-amd64.exe`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-windows-amd64.exe) |

The server is optional: the CLI uses the hosted K-Veritas server. A self-hosted server's reports read SELF-ATTESTED elsewhere.

```bash
kveritas-server --addr :7433 --keys ./keys
kveritas init --server http://localhost:7433
```

## Quick start

```bash
kveritas run --seal -- python train.py
kveritas verify report.pdf
```

Results: one line each, from any language.

```python
print(f"KV val_acc={acc:.4f} step={epoch}")
print(f"KV claim test_acc={test_acc:.4f}")
```

Verify in the browser: [kveritas.org/verify](https://kveritas.org/verify). Published records: [kveritas.org/records](https://kveritas.org/records). Docs: [kveritas.org/docs](https://kveritas.org/docs/index.html).

## License

**AGPL-3.0**, CLI and attestation server. Full text in the [kveritas-go](https://github.com/27-GROUP/kveritas-go) repository.

"K-Veritas" is a trademark and cannot be used in any way that implies official certification.

## Citation

```bibtex
@misc{keita2026computerscienceconferencesrequire,
      title={Computer Science Conferences Should Require Nonrepudiable Experimental Results},
      author={Mamadou K. Keita and Christopher Homan},
      year={2026},
      eprint={2605.08586},
      archivePrefix={arXiv},
      primaryClass={cs.CR},
      url={https://arxiv.org/abs/2605.08586},
}
```
