# Git SSH Assignment
2025-04-0
## Author
Anastasiya Pautarak


---

## Git and GitHub Configuration in WSL

In this section, I worked within the **WSL ** environment.  
As a first step, I configured Git by setting my user information.  
Then, I checked whether I already had any existing SSH keys. After confirming, I generated a new SSH key pair and added the private key to the SSH agent.

Next, I copied the **public key** and added it to my GitHub account under the _SSH and GPG keys_ section.  
After completing the setup, I tested the connection and successfully authenticated with my GitHub profile via SSH.

This allows me to securely interact with my repositories directly from the WSL terminal.

### SSH Connection Confirmation Example:
```bash
ssh -T git@github.com
Mykey:mykeykeykey.(don’t want to show)
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
Enter passphrase for key '/home/apau24/.ssh/id_ed25519':
Hi anastasiyapautarak! You've successfully authenticated, but GitHub does not provide shell access.
```

## Useful Git Commands

### Initialization & Setup
- `git init` – Initialize a new Git repository
- `git config --global user.name "Your Name"` – Set Git username
- `git config --global user.email "your-email@example.com"` – Set Git email
- `ssh-keygen -t ed25519 -C "your-email@example.com"` – Generate SSH key
- `ssh -T git@github.com` – Test SSH connection with GitHub

### Basic Workflow
- `git status` – Check the current state of your working directory
- `git add .` – Stage all changes
- `git commit -m "Message"` – Commit staged changes with a message
- `git push` – Push local commits to GitHub
- `git pull` – Fetch and merge changes from GitHub

---

## Git Pull, Merge & Conflicts

### ↖️ `git pull` – What does it do?
- Downloads changes from a remote repository (`origin`)
- By default, it performs an automatic `merge`
- Command syntax:
  ```bash
  git pull origin main
  ```

### Things to Remember:
- Always run `git pull` **before** starting new work to stay up to date
- If multiple people work on the same file, **conflicts may occur**

### How Merge Works
- `git merge branch-name` – Merges changes from another branch into the current one
- If there are no conflicts, Git merges automatically
- If conflicts occur, Git will mark the conflicting areas in the affected files

#### Example:


### Repository Initialization and Setup:
```bash
mkdir git-ssh-assignment
cd git-ssh-assignment
git init
```
Output:
```
Initialized empty Git repository in /home/apau24/git-ssh-assignment/.git/
```

### Creating and Pushing README:
```bash
echo "# Git SSH Assignment
Created by: Anastasiya Pautarak
Date: 2025-04-09" > README.md
cat README.md
git add README.md
git commit -m "init readme"
```

### Connecting to GitHub:
```bash
git remote add origin git@github.com:anastasiyapautarak/git-ssh-assignment.git
git push -u origin master
```
Output:
```
Branch 'master' set up to track remote branch 'master' from 'origin'.
```

### Updating README and Pushing Again:
```bash
nano README.md  # edited file

git add README.md
git commit -m "init readme edit"
git push
```

```bash
git checkout main
git pull
git merge feature-branch
```

### How to Resolve Merge Conflicts
1. Open the file with conflicts – you'll see something like:
   ```
   <<<<<<< HEAD
   your version
   =======
   incoming version
   >>>>>>> feature-branch
   ```
2. Manually decide what stays and what goes  
3. Save the file, then run:
   ```bash
   git add filename
   git commit
   ```

---

## Best Practices for Merging

- **Always pull before you push**
- Make **frequent, small commits** – easier to track and resolve
- In bigger projects, consider using:
  ```bash
  git fetch
  git merge
  ```
  instead of `git pull` for more control over the process

---
This README is my future self’s best friend(^^:))

