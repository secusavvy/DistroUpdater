# DistroUpdater

DistroUpdater is a practical bash script designed to keep your Linux system up-to-date by automatically handling updates for both Arch Linux and Debian-based distributions. It detects the package management system used and performs the appropriate update commands, making system maintenance effortless.

### Features
- Automatically detects whether your system uses `pacman` (Arch Linux) or `apt` (Debian-based).
- Runs system updates with `pacman -Syu` or `apt update && apt dist-upgrade` based on the detected system.
- Logs all activities to a file for easy tracking and troubleshooting.
- Provides clear, user-friendly feedback on the update process.

### Technologies Used
- Bash scripting
- `pacman` for Arch Linux
- `apt` for Debian-based distributions

### Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/secusavvy/DistroUpdater.git
   cd DistroUpdater
   ```

2. Make the script executable:
   ```bash
   chmod +x Distroupdater.sh
   ```

3. Run the script:
   ```bash
   ./Distroupdater.sh
   ```

4. The script will automatically detect your Linux distribution and perform the necessary updates.

### How It Works
- The script starts by checking for the presence of Arch Linux or Debian-based package management directories.
- It runs the appropriate update commands based on the detected system.
- All actions and outputs are logged to a specified log file.
- Provides feedback on the status of the updates and informs the user of any issues.
