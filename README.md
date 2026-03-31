# open-source-software-cse0002-project-
Open Source Audit — Git
OSS Capstone Project | VIT | Course: Open Source Software
Student Name: Sarthak patil Registration Number: 24BCY10017 Chosen Software: Git License: GNU General Public License v2 (GPL v2)

About This Project
This project is a structured audit of Git — one of the most widely used open source tools in the world. Git was created by Linus Torvalds in 2005 after a proprietary version control tool revoked its free license. Rather than pay for an alternative, Torvalds built his own and gave it to the world for free under the GPL v2 license.

This audit covers Git's origin story, its license and the freedoms it grants, its ethical implications, how it lives on a Linux system, its ecosystem, and a comparison with its proprietary alternative Perforce.

Shell Scripts
Script 1 — System Identity Report
File: script1.sh What it does: Displays information about the Linux system including the kernel version, logged in user, uptime, date, and the license of the operating system and chosen software. Concepts used: Variables, echo, command substitution $()

Script 2 — FOSS Package Inspector
File: script2.sh What it does: Checks whether Git is installed on the system, displays its version, size, and summary, then uses a case statement to print a philosophy note about Git's origin. Concepts used: if-else, case statement, dpkg, grep, pipe

Script 3 — Disk and Permission Auditor
File: script3.sh What it does: Loops through important system directories and reports their permissions, owner, group, and disk usage. Also checks Git's configuration file locations specifically. Concepts used: for loop, ls, du, awk, if-else, arrays

Script 4 — Log File Analyzer
File: script4.sh What it does: Reads a log file line by line, counts how many times a keyword appears, and prints the last 5 matching lines. Defaults to /var/log/dpkg.log if no file is specified. Concepts used: while read loop, if-else, counter variables, command line arguments, grep, tail

Script 5 — Open Source Manifesto Generator
File: script5.sh What it does: Asks the user three interactive questions and generates a personalised open source philosophy statement, saving it to a .txt file named after the current user. Concepts used: read, string concatenation, file writing with > and >>, date command, cat

How to Run the Scripts
Requirements
A Linux system (Ubuntu 20.04 or higher recommended)
Git installed: sudo apt install git
Bash shell (default on Ubuntu)
Steps
1. Clone this repository:

git clone https://github.com/shruuishhh/oss-audit-24BAI10529.git
cd oss-audit-24BAI10529
2. Make all scripts executable:

chmod +x *.sh
3. Run each script:

# Script 1 - System Identity Report
./script1.sh

# Script 2 - FOSS Package Inspector
./script2.sh

# Script 3 - Disk and Permission Auditor
./script3.sh

# Script 4 - Log File Analyzer (uses default log file)
./script4.sh

# Script 4 - With custom log file and keyword
./script4.sh /var/log/dpkg.log error

# Script 5 - Manifesto Generator (interactive)
./script5.sh
Dependencies
git — install with: sudo apt install git
dpkg — pre-installed on Ubuntu
bash — pre-installed on Ubuntu
Standard Linux utilities: ls, du, awk, grep, tail, date
Project Structure
oss-audit-24BAI10529/
├── README.md
├── script1.sh    # System Identity Report
├── script2.sh    # FOSS Package Inspector
├── script3.sh    # Disk and Permission Auditor
├── script4.sh    # Log File Analyzer
└── script5.sh    # Open Source Manifesto Generator
References
Git official site: https://git-scm.com
GPL v2 License: https://www.gnu.org/licenses/old-licenses/gpl-2.0.html
GNU Free Software Definition: https://www.gnu.org/philosophy/free-sw.html
The Linux Command Line: https://linuxcommand.org
Open Source Initiative: https://opensource.org
