# K-Veritas CLI Releases

Pre-built binaries for the K-Veritas CLI and attestation server. Download the binaries for your platform and add them to your PATH.

**What it proves.** These numbers came from this code, at this time, unchanged since. Not that the experiment is correct: that stays with the reviewer.

**Faking it.** Several independent checks, and everything run is sealed, an attempt to cheat included. A careful look at the artifact exposes it, and it cannot be denied.

K-Veritas is the official implementation of [Computer Science Conferences Should Require Nonrepudiable Experimental Results](https://arxiv.org/abs/2605.08586) (Keita and Homan, NeurIPS 2026 Position Paper Track).

Latest: paper-style reports, run anchors, no machine name in reports.

## CLI Downloads

| Platform | Architecture | Binary | Size |
|---|---|---|---|
| Linux | x86_64 (amd64) | [`kveritas-linux-amd64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-linux-amd64) | ~8.5 MB |
| Linux | ARM64 | [`kveritas-linux-arm64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-linux-arm64) | ~8.1 MB |
| macOS | Intel (amd64) | [`kveritas-darwin-amd64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-darwin-amd64) | ~8.6 MB |
| macOS | Apple Silicon (arm64) | [`kveritas-darwin-arm64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-darwin-arm64) | ~8.2 MB |
| Windows | x86_64 (amd64) | [`kveritas-windows-amd64.exe`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-windows-amd64.exe) | ~8.7 MB |

## Attestation Server Downloads

Optional. The CLI uses the hosted K-Veritas server by default. Self-host only for on-premise signing (`kveritas init --server <url>`); its reports read SELF-ATTESTED elsewhere.

| Platform | Architecture | Binary | Size |
|---|---|---|---|
| Linux | x86_64 (amd64) | [`kveritas-server-linux-amd64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-linux-amd64) | ~5.2 MB |
| Linux | ARM64 | [`kveritas-server-linux-arm64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-linux-arm64) | ~5.0 MB |
| macOS | Intel (amd64) | [`kveritas-server-darwin-amd64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-darwin-amd64) | ~5.3 MB |
| macOS | Apple Silicon (arm64) | [`kveritas-server-darwin-arm64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-darwin-arm64) | ~5.1 MB |
| Windows | x86_64 (amd64) | [`kveritas-server-windows-amd64.exe`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-windows-amd64.exe) | ~5.4 MB |

## Install via curl

Download both the CLI and the server for your platform:

**Linux (x86_64):**
```bash
curl -fsSL https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-linux-amd64 -o kveritas
curl -fsSL https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-linux-amd64 -o kveritas-server
chmod +x kveritas kveritas-server
sudo mv kveritas kveritas-server /usr/local/bin/
```

**Linux (ARM64):**
```bash
curl -fsSL https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-linux-arm64 -o kveritas
curl -fsSL https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-linux-arm64 -o kveritas-server
chmod +x kveritas kveritas-server
sudo mv kveritas kveritas-server /usr/local/bin/
```

**macOS (Apple Silicon):**
```bash
curl -fsSL https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-darwin-arm64 -o kveritas
curl -fsSL https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-darwin-arm64 -o kveritas-server
chmod +x kveritas kveritas-server
sudo mv kveritas kveritas-server /usr/local/bin/
```

**macOS (Intel):**
```bash
curl -fsSL https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-darwin-amd64 -o kveritas
curl -fsSL https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-darwin-amd64 -o kveritas-server
chmod +x kveritas kveritas-server
sudo mv kveritas kveritas-server /usr/local/bin/
```

**Windows (PowerShell):**
```powershell
Invoke-WebRequest -Uri "https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-windows-amd64.exe" -OutFile "kveritas.exe"
Invoke-WebRequest -Uri "https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-windows-amd64.exe" -OutFile "kveritas-server.exe"
```

Then add the directory containing the executables to your PATH.

## Verify installation

```bash
kveritas --help
kveritas-server --help
```

## Quick start

```bash
kveritas init
kveritas run -- python train.py
kveritas seal --output report.pdf
kveritas verify report.pdf
```

Self-hosted server:

```bash
kveritas-server --addr :7433 --keys ./keys
kveritas init --server http://localhost:7433
```

## What is K-Veritas?

K-Veritas is a cryptographic verification protocol for computational experiments. It binds published results to the exact code, hardware, and time that produced them. Single static binary, zero runtime dependencies. Works with any language.

**Web verifier:** [kveritas.org/verify](https://kveritas.org/verify)

**Published records:** [kveritas.org/records](https://kveritas.org/records)

## License

The CLI is **Apache-2.0**; the attestation server is **AGPL-3.0**. Full license texts are in the [kveritas-go](https://github.com/27-GROUP/kveritas-go) repository.

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
