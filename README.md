# Assignment5(Git\GitHub\SSH)

## Author
Anastasiya Pautarak

2025-04-09

---

## Git and GitHub Configuration in WSL

In this section, I worked within the **WSL** environment.  
As a first step, I configured Git by setting my user information.  
Then, I checked whether I already had any existing SSH keys. After confirming, I generated a new SSH key pair and added the private key to the SSH agent.

Next, I copied the **public key** and added it to my GitHub account under the _SSH and GPG keys_ section.  
After completing the setup, I tested the connection and successfully authenticated with my GitHub profile via SSH.

This allows me to securely interact with my repositories directly from the WSL terminal.

---

## Useful Git Commands

### Initialization
- `git init` – Initialize a new Git repository
- `git config --global user.name "Your Name"` – Set username
- `git config --global user.email "your-email@example.com"` – Set email

### SSH Setup
- `ssh-keygen -t ed25519 -C "your-email@example.com"` – Generate SSH key
- `ssh -T git@github.com` – Test SSH connection

### Working with Git
- `git status` – Show current status
- `git add .` – Add all changes
- `git commit -m "Message"` – Commit with message
- `git push` – Push to remote
- `git pull` – Pull from remote

--- 


