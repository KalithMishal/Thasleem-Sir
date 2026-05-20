# Push TravelMVC to GitHub (step-by-step)

Push **only the `TravelMVC` project folder** — not the whole `apache-tomcat` folder (too large; your friend downloads Tomcat separately). See **`HOW-TO-RUN-FOR-A-FRIEND.txt`** for how they run it.

---

## Part 1 — Create an empty repo on GitHub

1. Log in at **https://github.com**
2. **+** (top right) → **New repository**
3. **Repository name:** e.g. `TravelMVC` or `Horizon-Atlas-ITU5305`
4. Choose **Public** or **Private**
5. **Do not** add a README, .gitignore, or license *if* you want the simplest first push from the command line (you can add them later).
6. Click **Create repository**

GitHub will show you commands — you can ignore them and use **Part 3** below instead.

---

## Part 2 — Install Git on your PC (if needed)

- Download: **https://git-scm.com/download/win**  
- Install, then open **Git Bash** or **Command Prompt** and check:

```bat
git --version
```

---

## Part 3 — First push from your computer

Open **Command Prompt** or **Git Bash**, then run (change the URL to **your** repo):

```bat
cd /d "E:\Thasleem sir\TravelMVC"

git init
git branch -M main
git add .
git status
git commit -m "Add TravelMVC Horizon Atlas Servlet/JSP MVC project"
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git push -u origin main
```

Replace:

- `YOUR_USERNAME` — your GitHub username  
- `YOUR_REPO_NAME` — the repo name you created  

**First time `git push`:** GitHub may open a browser to sign in, or ask for a **Personal Access Token** (not your password). Create a token: **GitHub → Settings → Developer settings → Personal access tokens** (classic) — enable **repo**, then use the token as the password when Git asks.

---

## Part 4 — If GitHub already has a README (merge first)

If you created the repo **with** a README on the website:

```bat
cd /d "E:\Thasleem sir\TravelMVC"
git init
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git fetch origin
git pull origin main --allow-unrelated-histories
git add .
git commit -m "Add TravelMVC project"
git push -u origin main
```

Resolve any merge conflicts if Git reports them (rare for a new project).

---

## Part 5 — Later updates

After you change files:

```bat
cd /d "E:\Thasleem sir\TravelMVC"
git add .
git commit -m "Describe your change in one short sentence"
git push
```

---

## Using GitHub Desktop (no command line)

1. Install **GitHub Desktop**: **https://desktop.github.com**  
2. **File → Add local repository** → choose `E:\Thasleem sir\TravelMVC`  
   - If it says “not a git repository”, choose **“create a repository”** here instead.  
3. **Publish repository** on GitHub (pick name, public/private).

---

## What gets ignored (`.gitignore`)

Compiled files under `build/` and `WebContent/WEB-INF/classes/` are **not** pushed — your friend’s machine will compile when they run **`Run-TravelMVC-CMD.bat`**.

---

## Checklist before you push

- [ ] No passwords, API keys, or personal tokens inside the project  
- [ ] `apache-tomcat-9.0.98` is **not** inside `TravelMVC` (and you are not `git add`-ing the whole drive)  
- [ ] You are in the **`TravelMVC`** folder when you run `git add .`

Your repo link will look like: **`https://github.com/YOUR_USERNAME/YOUR_REPO_NAME`**
