# Permanent Git fix (what was wrong and what to do from now on)

## What went wrong before

- `git init` was run in **`E:\Thasleem sir`** (the **parent** folder), so Git tried to commit **Apache Tomcat**, zip files, logs, and hundreds of unrelated files (~27 MB). Pushes often failed with **HTTP 408** (timeout).

## What is fixed now

1. **Removed** the old **`.git`** folder from **`E:\Thasleem sir`** (parent only — your project files are unchanged).
2. **Added** **`E:\Thasleem sir\.gitignore`** so if you ever use Git in the parent folder again, **Tomcat** and **zips** are ignored.
3. **New repository** lives **only** inside **`E:\Thasleem sir\TravelMVC\.git`** (~35 source files, small push).
4. **Remote:** `https://github.com/KalithMishal/Thasleem-Sir.git`  
5. **`http.postBuffer`** is set in this repo to reduce timeout issues on slow connections.

Your code should now appear at: **https://github.com/KalithMishal/Thasleem-Sir**

---

## Rules so it never breaks again

| Do | Don’t |
|----|--------|
| Run **all** Git commands from **`E:\Thasleem sir\TravelMVC`** | Run `git init` in **`E:\Thasleem sir`** |
| `git add .` only inside **TravelMVC** | `git add` the whole disk or Tomcat folder |
| Let friends **download Tomcat** separately | Commit **`apache-tomcat-*`** into GitHub |

---

## After you change code (update GitHub)

```bat
cd /d "E:\Thasleem sir\TravelMVC"
git add .
git status
git commit -m "Describe your change"
git push
```

---

## If GitHub still shows an old huge commit

If the remote had a **failed** or **partial** history from before, the new push may have **replaced** `main` with the clean history (small repo). If you ever see duplicate or huge history on GitHub, ask a teacher or use **GitHub → Settings → delete repository** and create **Thasleem-Sir** again, then run `git push -u origin main` once more from **TravelMVC**.

---

## Clone on another PC

```bat
git clone https://github.com/KalithMishal/Thasleem-Sir.git
cd Thasleem-Sir
```

Then follow **`HOW-TO-RUN-FOR-A-FRIEND.txt`** (install JDK + Tomcat 9 beside the project, run **`Run-TravelMVC-CMD.bat`**).
