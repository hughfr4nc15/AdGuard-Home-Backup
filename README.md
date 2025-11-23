# 🛠️ AdGuard Home Backup

A simple shell script to backup and restore your AdGuard Home configuration.

## 🛡️ Badges

[![License](https://img.shields.io/github/license/hughfr4nc15/AdGuard-Home-Backup)](https://github.com/hughfr4nc15/AdGuard-Home-Backup/blob/main/LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/hughfr4nc15/AdGuard-Home-Backup?style=social)](https://github.com/hughfr4nc15/AdGuard-Home-Backup/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/hughfr4nc15/AdGuard-Home-Backup?style=social)](https://github.com/hughfr4nc15/AdGuard-Home-Backup/network/members)
[![GitHub issues](https://img.shields.io/github/issues/hughfr4nc15/AdGuard-Home-Backup)](https://github.com/hughfr4nc15/AdGuard-Home-Backup/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/hughfr4nc15/AdGuard-Home-Backup)](https://github.com/hughfr4nc15/AdGuard-Home-Backup/pulls)
[![GitHub last commit](https://img.shields.io/github/last-commit/hughfr4nc15/AdGuard-Home-Backup)](https://github.com/hughfr4nc15/AdGuard-Home-Backup/commits/main)

![Shell Script](https://img.shields.io/badge/language-Shell_Script-green)

## 📋 Table of Contents

- [About](#about)
- [Features](#-features)
- [Quick Start](#-quick-start)
- [Installation](#-installation)
- [Usage](#-usage)
- [Configuration](#%EF%B8%8F-configuration)
- [Project Structure](#project-structure)
- [Contributing](#-contributing)
- [Testing](#testing)
- [Support](#-support)
- [Acknowledgments](#-acknowledgments)

## About

This project provides a simple shell script to automate the backup and restoration of your AdGuard Home configuration. AdGuard Home is a network-wide software for blocking ads & tracking. Regular backups are essential to protect your configuration and data in case of system failure or accidental data loss.

This script aims to simplify the backup process, making it easy for users to create backups on a schedule or on demand. It targets users who are comfortable with the command line and want a reliable way to manage their AdGuard Home backups. The script utilizes standard shell commands and is designed to be lightweight and easy to configure.

## ✨ Features

- 🎯 **Backup**: Creates a compressed archive of your AdGuard Home configuration directory.
- ⚡ **Restore**: Restores your AdGuard Home configuration from a backup archive.
- ⚙️ **Configuration**: Easily configurable backup directory and AdGuard Home configuration path.
- 🛠️ **Automation**: Can be easily integrated into cron jobs for scheduled backups.
- 📱 **Lightweight**: Simple shell script with minimal dependencies.

## 🚀 Quick Start

Download the script and make it executable:

```bash
wget https://raw.githubusercontent.com/hughfr4nc15/AdGuard-Home-Backup/main/AdGuard-Backup.sh
chmod +x AdGuard-Backup.sh
```

Run the script to create a backup:

```bash
./AdGuard-Backup.sh backup
```

## 📦 Installation

### Prerequisites

- `bash`
- `tar`
- `gzip`
- AdGuard Home installed and configured

### Steps

1. Clone the repository (optional, if you want to contribute):

```bash
git clone https://github.com/hughfr4nc15/AdGuard-Home-Backup.git
cd AdGuard-Home-Backup
```

2. Download the script directly:

```bash
wget https://raw.githubusercontent.com/hughfr4nc15/AdGuard-Home-Backup/main/AdGuard-Backup.sh
```

3. Make the script executable:

```bash
chmod +x AdGuard-Backup.sh
```

## 💻 Usage

### Backup

To create a backup, run the script:

```bash
./AdGuard-Backup.sh
```

This will create a compressed archive of your AdGuard Home configuration directory in the specified backup directory.

### Restore

To restore from a backup, extract the backup file to AdGuard Home directory:

**Important:** Make sure AdGuard Home is stopped before restoring a backup to avoid data corruption.

## ⚙️ Configuration

The script can be configured by modifying the following variables within the script:

```bash
# Path to the AdGuard Home configuration directory
SOURCE_DIR="/opt/AdGuardHome"

# Directory to store backups
BACKUP_DIR="/mnt/backup/AdGuard-Backup"
```

You can edit these variables directly in the `AdGuard-Backup.sh` file.

## 📁 Project Structure

```
AdGuard-Home-Backup/
├── AdGuard-Backup.sh  # Main backup script
└── README.md          # Project documentation
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues.

### Contribution Steps

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes.
4. Test your changes.
5. Submit a pull request.

## Testing

The script can be tested by running it with different configurations and verifying that the backups are created correctly and that the restore process works as expected.

1. Create a test AdGuard Home configuration.
2. Run the backup script.
3. Verify that the backup file is created in the specified directory.
4. Restore the backup to a different directory.
5. Verify that the restored configuration matches the original configuration.

## 💬 Support

For support, please open an issue on the [GitHub repository](https://github.com/hughfr4nc15/AdGuard-Home-Backup/issues).

## 🙏 Acknowledgments

- Thanks to the AdGuard Home team for creating such a great product.