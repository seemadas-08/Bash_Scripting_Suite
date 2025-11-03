#Bash Scripting Suite for System Maintenance

## Objective
To automate daily system maintenance tasks such as backup, system updates, cleanup, and log monitoring using Bash scripts.

---

## Scripts Overview

| Script | Description |
|---------|--------------|
| `backup.sh` | Creates compressed backups of user directories. |
| `update_cleanup.sh` | Updates and cleans the system. |
| `log_monitor.sh` | Scans system logs for errors and saves them to a report file. |
| `menu.sh` | Provides a menu-based interface to run all scripts easily. |

---

##Tools Used
- Bash Shell (Ubuntu via WSL)
- Linux Utilities: `tar`, `apt`, `grep`, `mkdir`, `chmod`

---

## How to Run
```bash
cd Bash_Scripting_Suite
chmod +x *.sh
./menu.sh
