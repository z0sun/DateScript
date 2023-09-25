#!/bin/bash

# Function to display currently logged users
current_users() {
    who
}

# Function to display your shell directory
shell_directory() {
    echo "Your shell directory: $SHELL"
}

# Function to display home directory
home_directory() {
    echo "Home Directory: $HOME"
}

# Function to display OS name & version
os_info() {
    echo "OS Name & Version:"
    uname -a
}

# Function to display current working directory
current_directory() {
    echo "Current Working Directory: $(pwd)"
}

# Function to display the number of users logged in
num_users_logged_in() {
    echo "Number of Users Logged In: $(who | wc -l)"
}

# Function to display hard disk information
hard_disk_info() {
    echo "Hard Disk Information:"
    df -h
}

# Function to display CPU information
cpu_info() {
    echo "CPU Information:"
    lscpu
}

# Function to display memory information
memory_info() {
    echo "Memory Information:"
    free -h
}

# Function to display file system information
filesystem_info() {
    echo "File System Information:"
    df -T
}

# Function to display currently running processes
running_processes() {
    echo "Currently Running Processes:"
    ps aux
}

# Display the user menu
while true; do
    clear
    echo ""
    echo "System Information Menu"
    echo "1. Currently logged users"
    echo "2. Your shell directory"
    echo "3. Home Directory"
    echo "4. OS name & version"
    echo "5. Current working directory"
    echo "6. Number of users logged in"
    echo "7. Hard disk information"
    echo "8. CPU information"
    echo "9. Memory information"
    echo "10. File system information"
    echo "11. Currently running process"
    echo "0. Exit"
    echo ""
    read -p "Enter your choice (0-11): " choice

    case $choice in
        1) current_users ;;
        2) shell_directory ;;
        3) home_directory ;;
        4) os_info ;;
        5) current_directory ;;
        6) num_users_logged_in ;;
        7) hard_disk_info ;;
        8) cpu_info ;;
        9) memory_info ;;
        10) filesystem_info ;;
        11) running_processes ;;
        0) break ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
    echo ""
    read -p "Press Enter to continue..."
done
