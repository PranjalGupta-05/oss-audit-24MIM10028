# Python Open Source Audit Project

**Name of Student:** Pranjal Gupta  
**Roll Number:** 24MIM10028  
**Selected Software:** Python ## Overview of the Project

There are five Bash shell scripts in this repository that are needed for the Open Source Software (OSS) Capstone Project. The scripts were written and tested on Ubuntu 24.04 (WSL). They show that you know how to use the Linux command line, check the system, and automate things based on the open-source philosophy.* A Linux environment based on Debian or Ubuntu (to support the "dpkg" command used in Script 2).
* A regular "bash" shell.
* Basic Linux core tools like "awk," "grep," "du," "uname," and "cut."
* You don't need to download anything from outside sources or use any third-party APIs.

You need to give the individual scripts permission to run before you can run them. Open your terminal, go to the folder with these files, and type:
`chmod +x *.sh`
---

### Script 1: Report on System Identity* **File:** 01_system_identity.sh
* **Description:** This is the welcome screen for the system. It gets information from the Linux kernel in real time to show the OS version, uptime, active user, and a note about the GNU General Public License (GPL).* **How to run:** `./01_system_identity.sh`

### FOSS Package Inspector Script 2* **File:** `02_package_inspector.sh`
* **Description:** Uses the package manager to check if Python 3 is installed on the computer. Then it uses a case statement to write a philosophical note about how Python is based on the community.* **How to run:** `./02_package_inspector.sh`

Script 3: Disk and Permission Checker* **File:** `03_disk_auditor.sh`
* **Description:** Checks a set list of important system directories, such as Python's `/usr/lib/python3` library path. It uses a loop to show the storage size and user permissions for each directory in a way that people can understand.
* **How to run:** `./03_disk_auditor.sh`

Script 4: Analyzing Log Files* **File:** `04_log_analyzer.sh`
* **What it is:** Reads a given system log file line by line to find out how many times a certain word appears. It takes command-line arguments and uses a while loop. If no arguments are given, it will either use the defaults or ask the user for them.
* **How to start:** To get the best results, type in the command with a log file and a keyword (like "install" or "status"):
`./04_log_analyzer.sh /var/log/dpkg.log install`

### Script 5: The Generator of the Open Source Manifesto* **File:** `05_manifesto_gen.sh`
* **What it is:** An interactive script that asks the user three questions about how they feel about open-source software. It uses string concatenation and output redirection to take their answers and make a personalized text file (like "manifesto_pranjal.txt").
* **How to run:** `./05_manifesto_gen.sh`*(Note: When asked, you will need to type your answers into the terminal.)*
