# Installation Guide

## Quickstart

To quickly get started with Scoop, follow these steps:

1. Open a PowerShell terminal (version 5.1 or later).
2. From the `PS C:\>` prompt, run the following commands:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

For advanced installation options, check out the [Installer's Readme](https://github.com/ScoopInstaller/Install).

## Installing bat on Windows

There are a few options to install `bat` on Windows. Once you have installed `bat`, take a look at the "Using bat on Windows" section.

### With Chocolatey

You can install `bat` via Chocolatey by running the following command:

```powershell
choco install bat
```

### With Scoop

You can install `bat` via Scoop by running the following command:

```powershell
scoop install bat
```
