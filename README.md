# Git SSH Assignment
2025-04-09
## Author
Anastasiya Pautarak


---

## Git and GitHub Configuration in WSL

In this section, I worked within the **WSL** environment.  
As a first step, I configured Git by setting my user information.  
Then, I checked whether I already had any existing SSH keys. After confirming, I generated a new SSH key pair and added the private key to the SSH agent.

Next, I copied the **public key** and added it to my GitHub account under the _SSH_ section.  
After completing the setup, I tested the connection and successfully authenticated with my GitHub profile by SSH.

This allows me to securely interact with my repositories directly from the WSL terminal.

### SSH Connection:
```bash
 ls -al ~/.ssh
 ssh-keygen -t ed25519 -C "your-email@example.com"
 cat ~/.ssh/id_ed25519.pub OR: pbcopy < ~/.ssh/id_ed25519.pub
 ssh -T git@github.com

```
### SSH Connection Confirmation Example:
```bash
ssh -T git@github.com
Mykey:mykeykeykey.(don’t want to show)
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
Enter passphrase for key '/home/apau24/.ssh/id_ed25519':
Hi anastasiyapautarak! etc
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
- `git commit -m "etc"` – Commit staged changes with a message
- `git push` – Push local commits to GitHub
- `git log` -  It provides several formatting options for displaying committed snapshots.
- `git reflog` - This allows you to go back to changesets even though they are not referenced by any branch or tag.
---

## Git Pull, Merge & Conflicts

### git pull – !its so important!
- Downloads changes from a remote repository (`origin`)
- By default, an automatic `merge`
  ```bash
  git pull origin main
  ```

### Things to Remember:
- Always run `git pull` **before** starting new work to stay up to date, because I had this problem in the past

### How Merge Works
- `git merge branch-name` – Merges changes from another branch into the current one

### Repository Initialization and Setup (I dont remember about this always):
```bash
mkdir git-ssh-assignment
cd git-ssh-assignment
git init
```
### Connecting to GitHub:
```bash
git remote add origin git@github.com:anastasiyapautarak/git-ssh-assignment.git
git push -u origin master
```
### Creating and Pushing README:
```bash
echo "# Git SSH Assignment
Anastasiya Pautarak
2025-04-09" > README.md
cat README.md
git add README.md
git commit -m "init readme"
```
## Merging

- **Always pull before you push**
- Make **frequent, small commits** – easier to track and resolve
- In bigger projects, consider using:
  ```bash
  git fetch
  git merge
  ```
  instead of `git pull` for more control over the process

---
---

## Always remember about **gitignore**
Git sees every file in your working copy as one of three things:

1. tracked - a file which has been previously staged or committed;

2. untracked - a file which has not been staged or committed; or

3. ignored - a file which Git has been explicitly told to ignore.

Ignored files are usually build artifacts and machine generated files that can be deri>```bash
#### Ignoruj pliki tymczasowe
*.log
*.tmp
*.swp

#### Ignoruj katalogi
__pycache__/
build/
output/

#### Ignoruj konkretne pliki
secret_config.json```
---
This README is my helper(^^:))
