Open Source Audit — VLC Media Player

Student Name: Rajkumar S
Registration Number: 24BCE10447

---

This repository contains my Open Source Software audit project. The purpose of this project is to understand how open-source software works in a Linux environment through practical shell scripting tasks.

For this project, I selected VLC Media Player. It is a widely used open-source multimedia player that supports almost all audio and video formats without needing additional codecs. VLC represents the core idea of open-source software — freedom to use, modify, and share.

---

Chosen Software

VLC Media Player
License: GNU General Public License (GPL)

---

Dependencies / Requirements

To run these scripts, the following are required:

* Linux environment (Ubuntu or WSL recommended)
* Bash shell
* VLC Media Player installed

To install VLC:

```bash
sudo apt update
sudo apt install vlc
```

---

Scripts Description and How to Run

Before running any script, give execute permission:

```bash
chmod +x *.sh
```

---

1. System Identity Report (script1_system_identity.sh)

This script displays basic system information such as Linux distribution, kernel version, current user, uptime, and date/time.

Run:

```bash
./script1_system_identity.sh
```

---

2. FOSS Package Inspector (script2_package_inspector.sh)

This script checks whether VLC is installed on the system. It also displays its version, description, and includes a short note about open-source philosophy.

Run:

```bash
./script2_package_inspector.sh vlc
```

---

3. Disk and Permission Auditor (script3_disk_auditor.sh)

This script analyzes important system directories and shows their permissions, ownership, and size. It also checks if the VLC configuration folder exists.

Run:

```bash
./script3_disk_auditor.sh
```

---

4. Log File Analyzer (script4_log_analyzer.sh)

This script reads a log file, counts how many times a keyword (like "error") appears, and shows the last matching lines.

Run:

```bash
./script4_log_analyzer.sh /var/log/syslog error
```

Note: You may need sudo permission depending on the log file.

---

5. Open Source Manifesto Generator (script5_manifesto_generator.sh)

This script takes user input and generates a personalized open-source manifesto, which is saved to a text file.

Run:

```bash
./script5_manifesto_generator.sh
```

---

What I Learned

Working on this project gave me a better understanding of how Linux systems actually work behind the scenes. I learned how to use shell scripting to automate tasks such as checking installed software, analyzing logs, and inspecting file permissions.

It also helped me understand the importance of open-source software and how tools like VLC are built and improved by communities. Overall, this project improved both my technical skills and my understanding of open-source philosophy.

---

Implemented by Rajkumar S
