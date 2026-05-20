# TravelMVC — Horizon Atlas (ITU5305 Final Practical)

A **travel-themed** Java web application built for **Enterprise Application Development (ITU5305)** using **MVC**, **JSP views**, **Servlet controllers**, and a simple **Java model** — no database, emphasis on **UI/UX**, **responsive layout**, **imagery**, and **CSS/JS motion**.

## How to run (read this — fixes “connection refused”)

**`ERR_CONNECTION_REFUSED`** means **no Tomcat is listening** on that port (server stopped, wrong port, or never started). A web app does not run “in the background” by itself.

### Option A — Easiest (this folder + bundled Tomcat next to it)

1. Folder layout must be:

   `...\Thasleem sir\TravelMVC\` (this project)  
   `...\Thasleem sir\apache-tomcat-9.0.98\` (Tomcat 9)

2. **Double‑click `Run-TravelMVC-CMD.bat`** (pure **CMD** — no PowerShell, no Eclipse), **or** double‑click **`Start-TravelMVC.bat`** (same thing), **or** the copy in the parent folder `E:\Thasleem sir\Start-TravelMVC.bat`. **Leave that black window open** while you test.

   From **Command Prompt** (cmd.exe):

   ```bat
   cd /d "E:\Thasleem sir\TravelMVC"
   Run-TravelMVC-CMD.bat
   ```

   Longer instructions: **`CMD-HOWTO.txt`** in this project.

3. Open **`http://localhost:8888/TravelMVC/home`** (also in `OPEN-THIS-URL.txt`).

4. When finished, run **`Stop-TravelMVC.bat`** or close the server window.

This install uses **HTTP `8888`** and shutdown **`19805`** in `apache-tomcat-9.0.98\conf\server.xml` so it rarely clashes with other tools on 8080/8081.

### Option B — PowerShell

```powershell
cd "e:\Thasleem sir\TravelMVC"
.\run.ps1
```

Then use **`http://localhost:8888/TravelMVC/home`** (port is read from `server.xml`).

### Option C — Eclipse (Enterprise / Web package only)

The small **“Eclipse IDE for Java Developers”** build has **no Servers / Tomcat** support. For your assignment you can **skip Eclipse for running** and use **Option A** (`Run-TravelMVC-CMD.bat`) instead.

If you install **Eclipse IDE for Enterprise Java and Web Developers**, then: Tomcat inside Eclipse uses **its own** port (often **8080**). **Connection refused** there means the server line is **stopped**: open **Window → Show View → Servers**, right‑click **Tomcat → Start**, then use the URL Eclipse shows (e.g. `http://localhost:8080/TravelMVC/home`). To match port **8888**, double‑click the server in **Servers** → **Ports** → change **HTTP** to `8888` → save → start again.

**Step‑by‑step (import, Tomcat, Console output):** see **`ECLIPSE-RUN.md`** in this project.

---

## Assignment mapping (checklist)

| Requirement | How it is met |
|-------------|----------------|
| MVC | `Inquiry` model; JSPs under `WEB-INF/views`; servlets in `com.enterprise.travel.controller` |
| Minimum 4 pages | Home, Destinations, Experiences, About, Contact (+ Thank-you after POST) |
| Servlet navigation | Each main screen is reached via a servlet URL (`/home`, `/destinations`, …) |
| Form + servlet handling | `POST /contact` → `ContactServlet` builds `Inquiry` → forwards to `thank-you.jsp` |
| UI/UX | Sticky header, clear hierarchy, mobile menu, readable typography |
| Visual design | Cohesive dark theme, Unsplash hero/destination imagery, accent gradients |
| Animation | Hero Ken Burns, card hovers, scroll-reveal (`data-animate`), thank-you pulse, reduced-motion support |
| Eclipse + Tomcat 9 | Standard **Dynamic Web Project** layout: `src` + `WebContent` |

## Project layout

```
TravelMVC/
  src/com/enterprise/travel/
    model/Inquiry.java
    controller/*.java          (Home, Destinations, Experiences, About, Contact)
  WebContent/
    index.jsp                  (redirects to /home)
    css/style.css
    js/main.js
    WEB-INF/
      web.xml
      views/                   (JSPs + includes)
```

## Run in Eclipse (Apache Tomcat 9)

1. **File → New → Dynamic Web Project**
   - Project name: `TravelMVC` (or import this folder and use **File → Import → Existing Projects into Workspace** if you added the included `.project`).
   - **Dynamic web module version**: 4.0 (or 3.1+).
   - **Target runtime**: Apache Tomcat v9.0.
2. If you created an empty project, **copy** the `src` and `WebContent` folders from this download **into** the project root, replacing the generated `WebContent` / `src` as needed.
3. **Project → Properties → Project Facets**: enable **Java** and **Dynamic Web Module**; Java **1.8+** recommended.
4. **Add the project to the Tomcat server** (Servers view → Add and Remove… → Finish), then **Start** Tomcat (server must show **Started**).
5. Open a browser using the port shown in Eclipse (often **`http://localhost:8080/TravelMVC/`**).  
   You should be redirected to **`.../TravelMVC/home`**. If the browser says **connection refused**, the Tomcat line in **Servers** is not started.

For the **Start-TravelMVC.bat / port 8888** workflow, see **How to run** at the top of this README.

#### Blank browser page at `/TravelMVC/home` (Eclipse)

1. **Right‑click the server → Clean…** then **Clean…** on **TravelMVC**, then **Publish** / restart the server.  
2. In the browser: **Ctrl+U** (View page source). If the source is **empty**, open the **Console** in Eclipse (server log) and look for **JSP / Servlet** exceptions.  
3. Confirm **Deployment Assembly**: right‑click **TravelMVC → Properties → Deployment Assembly** — you should have **`src` → `WEB-INF/classes`** and **`WebContent` → `/`**.  
4. If your Eclipse project is **not** the same folder as `E:\Thasleem sir\TravelMVC`, copy the updated `WebContent\WEB-INF\views\includes\*.jspf` files into your Eclipse project (or **Import** that folder), then **Refresh (F5)** and republish.

> **Note:** Servlet mappings use `@WebServlet`. Ensure **metadata-complete** is not set to `true` in `web.xml` (default is fine) so annotations are scanned.

## URLs to demo in your 10-minute video

- **Home:** `/TravelMVC/home`
- **Destinations:** `/TravelMVC/destinations`
- **Experiences:** `/TravelMVC/experiences`
- **About (MVC explanation on-page):** `/TravelMVC/about`
- **Contact form (GET):** `/TravelMVC/contact` → submit → **Thank-you** view

Mention briefly: **Model** = `Inquiry`; **View** = JSP; **Controller** = servlet `forward` to JSP.

## Submission reminders (from the brief)

- Record a **~10 minute** walkthrough (navigation, responsive width, animations, **form POST**).
- Zip this source and upload with the video link workflow your LMS describes (PDF slide with Drive link, etc.).

## Offline / classroom networks

Hero and destination images load from **Unsplash** and fonts from **Google Fonts**. If the lab has no internet, replace image URLs with local files under `WebContent/images/` and update the JSP/CSS `url(...)` references.

---

Good luck with ITU5305.
