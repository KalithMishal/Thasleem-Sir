# Run TravelMVC in Eclipse and see output

Follow these steps once. After that: **Start server → open browser → watch Console**.

---

## 1. Open the project

1. Start **Eclipse** (Enterprise Java / Web package).
2. **File → Open Projects from File System…**
3. **Directory:** `E:\Thasleem sir\TravelMVC` → **Finish**  
   If it is already open, skip this.

---

## 2. Add Apache Tomcat 9 (runtime)

1. **Window → Preferences → Server → Runtime Environments**
2. **Add… → Apache Tomcat v9.0 → Next**
3. **Tomcat installation directory:** folder where you unzipped Tomcat 9 (e.g. `E:\Thasleem sir\apache-tomcat-9.0.98` or `C:\apache-tomcat-9.0.xx`)
4. **JRE:** pick your JDK (17 or 21 is fine) → **Finish → Apply and Close**

If **JavaSE-17** errors appear on the project: **Project → Properties → Java Build Path → Libraries → JRE** → **Edit** → choose an installed JDK → **Apply**.

---

## 3. Create the “Servers” entry and add TravelMVC

1. **Window → Show View → Servers**
2. Right‑click empty area → **New → Server → Tomcat v9.0 Server** → **Finish**
3. Right‑click that server → **Add and Remove…**
4. Select **TravelMVC** → **Add** → **Finish**

---

## 4. Run and see **output**

### A) Console output (Eclipse)

1. **Window → Show View → Console** (if you do not see it).
2. Right‑click **TravelMVC** server → **Start** (or green **Run**).
3. Wait until the console shows **Server startup in … ms** and **TravelMVC** deployed.
4. Open a browser (inside Eclipse: **Window → Web Browser**, or Chrome):

   **`http://localhost:8080/TravelMVC/home`**

   (If you changed the HTTP port on the server, use that port instead.)

5. Each time you open **Home**, the **Console** prints a line from `HomeServlet`.  
   When you **submit the contact form**, **Console** prints a line from `ContactServlet`.

### B) Web page output (browser)

That is the **Horizon Atlas** site (navigation, pages, form, thank‑you page).

---

## 5. If something fails

| Problem | What to do |
|--------|------------|
| Red errors on servlets | **Project → Properties → Java Build Path → Libraries** → ensure **Apache Tomcat v9.0** is present |
| **Deployment Assembly** | **Project → Properties → Deployment Assembly** → `src` → `WEB-INF/classes`, `WebContent` → `/` |
| Port **8080** in use | Double‑click server in **Servers** → **Ports** → set **HTTP** to e.g. **8888** → save → start → use `http://localhost:8888/TravelMVC/home` |
| Blank page | **Servers** view → check for errors; **Project → Clean…**; republish server |

---

## 6. Stop the server

**Servers** view → right‑click **Tomcat** → **Stop**.

---

Your assignment “output” is both: **browser UI** + **Console logs** when servlets run.
