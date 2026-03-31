# K-Veritas CLI Releases

Pre-built binaries for the K-Veritas CLI and attestation server. Download the binaries for your platform and add them to your PATH.

## CLI Downloads

| Platform | Architecture | Binary | Size |
|---|---|---|---|
| Linux | x86_64 (amd64) | [`kveritas-linux-amd64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-linux-amd64) | ~7.2 MB |
| Linux | ARM64 | [`kveritas-linux-arm64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-linux-arm64) | ~6.9 MB |
| macOS | Intel (amd64) | [`kveritas-darwin-amd64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-darwin-amd64) | ~7.3 MB |
| macOS | Apple Silicon (arm64) | [`kveritas-darwin-arm64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-darwin-arm64) | ~7.0 MB |
| Windows | x86_64 (amd64) | [`kveritas-windows-amd64.exe`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-windows-amd64.exe) | ~7.4 MB |

## Attestation Server Downloads

The attestation server holds the private signing key and signs experiment hashes. Required for server mode (`kveritas init --server`). Not needed for offline mode (`kveritas init --local`).

| Platform | Architecture | Binary | Size |
|---|---|---|---|
| Linux | x86_64 (amd64) | [`kveritas-server-linux-amd64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-linux-amd64) | ~5.0 MB |
| Linux | ARM64 | [`kveritas-server-linux-arm64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-linux-arm64) | ~4.8 MB |
| macOS | Intel (amd64) | [`kveritas-server-darwin-amd64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-darwin-amd64) | ~5.1 MB |
| macOS | Apple Silicon (arm64) | [`kveritas-server-darwin-arm64`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-darwin-arm64) | ~4.9 MB |
| Windows | x86_64 (amd64) | [`kveritas-server-windows-amd64.exe`](https://github.com/27-GROUP/kveritas-releases/raw/main/bin/kveritas-server-windows-amd64.exe) | ~5.1 MB |

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
kveritas-server --addr :7433 --keys ./keys
kveritas init --server http://localhost:7433
kveritas run -- python train.py
kveritas seal --output report.pdf
kveritas verify report.pdf
```

## What is K-Veritas?

K-Veritas is a tamper-evident verification protocol for ML research experiments. It cryptographically binds published results to the exact code, hardware, and time that produced them. Single static binary, zero runtime dependencies. Works with any language.

**Web verifier:** [kveritas-web.vercel.app](https://kveritas-web.vercel.app)

## License

MIT
