# voice_backup_20260911 备份分卷

本仓库存放儿童语音备份压缩包 `voice_backup_20260911.tgz`（约 3.57 GB）的分卷文件。
由于 GitHub 单文件 100MB 限制，原包被切分为 39 个分卷（每卷 95MB，最后一卷 43MB）。

## 文件清单

- `parts/voice_backup_20260911.tgz.001` ~ `.039`：按序号排列的二进制分卷
- `merge.bat`：Windows 一键合并脚本
- `merge.sh`：Linux / macOS 一键合并脚本

## 还原方法

把整个仓库下载（或 git clone）到本地后：

**Windows（cmd 或双击 merge.bat）：**
```bat
copy /b parts\voice_backup_20260911.tgz.* voice_backup_20260911.tgz
```

**Linux / macOS（在仓库根目录执行 bash merge.sh）：**
```sh
cat parts/voice_backup_20260911.tgz.* > voice_backup_20260911.tgz
```

## 完整性校验

合并后文件应为 **3,830,768,424 字节**，SHA256 应为：

```
B0152AC0B25D426C64B3D6EEBE9AEC7B7FA9FF7BF06925B5D2E415354DC2309D
```

**Windows 校验：**
```powershell
Get-FileHash voice_backup_20260911.tgz -Algorithm SHA256
```

**Linux / macOS 校验：**
```sh
sha256sum voice_backup_20260911.tgz
```

## 解压

校验通过后即可解压：
```sh
tar -xzf voice_backup_20260911.tgz
```

> 注意：GitHub 网页上逐个下载分卷时请确认下载完整（大小与上表一致），建议优先使用 `git clone` 方式获取。
