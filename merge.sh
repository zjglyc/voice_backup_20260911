#!/usr/bin/env bash
# 合并 voice_backup_20260911.tgz 分卷（Linux / macOS）
set -e
cd "$(dirname "$0")"
cat parts/voice_backup_20260911.tgz.* > voice_backup_20260911.tgz
echo "合并完成，期望大小 3830768424 字节"
echo "期望 SHA256: B0152AC0B25D426C64B3D6EEBE9AEC7B7FA9FF7BF06925B5D2E415354DC2309D"
if command -v sha256sum >/dev/null 2>&1; then
  sha256sum voice_backup_20260911.tgz
elif command -v shasum >/dev/null 2>&1; then
  shasum -a 256 voice_backup_20260911.tgz
fi
