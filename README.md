# Managing Deleted Files with trash-cli

## Introduction

`trash-cli` is a command-line interface (CLI) utility for managing deleted files. Instead of permanently removing files with `rm`, `trash-cli` moves them to a trash directory, allowing for easy recovery if needed. This guide demonstrates how to install `trash-cli`, use its basic commands, and integrate it with system tasks.

## Installation

To install `trash-cli`, use the following command in your terminal:

```bash
sudo apt-get install trash-cli
```

## Basic Commands

### Deleting Files

To move a file to the trash, use the `trash` command followed by the file's name:

```bash
trash file.txt
```

### Restoring Files

To restore a file from the trash, use the `restore-trash` command followed by the file's name:

```bash
restore-trash file.txt
```

### Emptying Trash

To empty the trash, removing all files permanently, use the `trash-empty` command:

```bash
trash-empty
```

## Automating Trash Emptying

You can schedule automatic trash emptying using `cron`. Open the crontab editor:

```bash
crontab -e
```

Then add the following line to empty the trash every day at midnight:

```bash
0 0 * * * trash-empty
```

## Integrating with Bash

For convenience, you can create aliases in your `~/.bashrc` file to replace `rm` with `trash` and `rm -rf` with `trash-put -rf`:

```bash
sudo nano ~/.bashrc or sudo nano /etc/bash.bashrc

# Add the following lines
alias rm='trash'
alias rmf='trash-put -rf'

# Save and exit the editor
```

Reload the `.bashrc` file to apply the changes:

```bash
source ~/.bashrc
source /etc/bash.bashrc
```

## Viewing Trash Contents

To list the contents of the trash, use the `trash-list` command:

```bash
trash-list
```

You can also specify a specific trash directory:

```bash
trash-list /home/$USER/.local/share/Trash/files
```

## Additional Information

Remember to periodically check and manage the size of your trash directory. You can manually inspect the trash directory:

```bash
ls -al /root/.local/share/Trash/files
```

## Conclusion

By using `trash-cli`, you can safely delete files while having the option to restore them if needed, helping you better manage your filesystem and prevent accidental data loss.

## Disclaimer | Running the Script

**Author:** Lalatendu Swain | [GitHub](https://github.com/Lalatenduswain) | [Website](https://blog.lalatendu.info/)

This script is provided as-is and may require modifications or updates based on your specific environment and requirements. Use it at your own risk. The authors of the script are not liable for any damages or issues caused by its usage.

## Donations

If you find this script useful and want to show your appreciation, you can donate via [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain).
