/* =========================
   TripTrakerDeduct Theme
   ========================= */

:root {
  --bg: #f5f7fb;
  --card: #ffffff;
  --primary: #2563eb;      /* app-style blue */
  --primary-dark: #1e4fd6;
  --text: #1f2937;
  --muted: #6b7280;
  --border: #e5e7eb;
  --radius: 10px;
}

* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI",
    Roboto, Helvetica, Arial, sans-serif;
  background: var(--bg);
  color: var(--text);
  line-height: 1.5;
}

/* =========================
   Layout helpers
   ========================= */

.container {
  max-width: 960px;
  margin: 0 auto;
  padding: 16px;
}

/* =========================
   Header
   ========================= */

.site-header {
  background: linear-gradient(
    135deg,
    var(--primary),
    var(--primary-dark)
  );
  color: #ffffff;
  padding-bottom: 16px;
}

.header-inner {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 16px;
  flex-wrap: wrap;
}

.brand h1 {
  margin: 0;
  font-size: 1.6rem;
  font-weight: 700;
}

.tagline {
  margin: 8px 0 0;
  color: #e5e7eb;
  font-size: 1rem;
}

/* =========================
   Download buttons
   ========================= */

.downloads {
  display: flex;
  gap: 12px;
  flex-wrap: wrap;
}

.download-button {
  background: #ffffff;
  color: var(--primary);
  text-decoration: none;
  padding: 10px 16px;
  border-radius: var(--radius);
  font-weight: 600;
  border: 1px solid rgba(255, 255, 255, 0.5);
  transition: all 0.15s ease;
}

.download-button:hover {
  background: #f0f4ff;
  transform: translateY(-1px);
}

/* =========================
   Cards
   ========================= */

.card {
  background: var(--card);
  border-radius: var(--radius);
  padding: 16px 18px;
  margin-bottom: 16px;
  border: 1px solid var(--border);
}

.card h2 {
  margin-top: 0;
  font-size: 1.2rem;
}

.card ul {
  padding-left: 18px;
}

.card li {
  margin-bottom: 6px;
}

/* =========================
   Links
   ========================= */

a {
  color: var(--primary);
}

a:hover {
  text-decoration: underline;
}

/* =========================
   Footer
   ========================= */

.site-footer {
  text-align: center;
  color: var(--muted);
  /* =========================
   TripTrakerDeduct Theme
   (Material-ish)
   ========================= */

:root {
  /* “Material-ish” blues */
  --primary: #1a73e8;        /* Google-ish blue (close to Material Blue) */
  --primary-dark: #1558b0;
  --on-primary: #ffffff;

  /* Surfaces */
  --bg: #f6f8fc;
  --card: #ffffff;
  --text: #1f2937;
  --muted: #6b7280;
  --border: #e5e7eb;

  --radius: 12px;
  --shadow: 0 6px 18px rgba(0,0,0,0.08);
  --shadow-soft: 0 3px 10px rgba(0,0,0,0.06);
}

* { box-sizing: border-box; }

body {
  margin: 0;
  font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI",
    Roboto, Helvetica, Arial, sans-serif;
  background: var(--bg);
  color: var(--text);
  line-height: 1.5;
}

/* =========================
   CSS-only Dark Mode
   - toggle is a checkbox at the top of body
   ========================= */

.theme-toggle {
  position: absolute;
  left: -9999px;
  top: -9999px;
}

/* When checked, redefine tokens for everything that follows */
.theme-toggle:checked ~ .site-header,
.theme-toggle:checked ~ main {
  --bg: #0b1220;
  --card: #0f172a;
  --text: #e5e7eb;
  --muted: #9ca3af;
  --border: rgba(255,255,255,0.10);

  --primary: #60a5fa;
  --primary-dark: #3b82f6;
  --on-primary: #0b1220;

  --shadow: 0 10px 28px rgba(0,0,0,0.45);
  --shadow-soft: 0 6px 18px rgba(0,0,0,0.35);
}

.container {
  max-width: 980px;
  margin: 0 auto;
  padding: 16px;
}

/* =========================
   Header
   ========================= */

.site-header {
  background: linear-gradient(135deg, var(--primary), var(--primary-dark));
  color: var(--on-primary);
  padding-bottom: 16px;
}

.header-inner {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 14px;
  flex-wrap: wrap;
}

.brand h1 {
  margin: 0;
  font-size: 1.65rem;
  font-weight: 750;
  letter-spacing: 0.2px;
}

.tagline {
  margin: 8px 0 0;
  color: rgba(255,255,255,0.88);
  font-size: 1rem;
}

/* Right side header area */
.header-actions {
  display: flex;
  align-items: center;
  gap: 12px;
  flex-wrap: wrap;
}

/* Theme toggle control */
.toggle {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  padding: 9px 12px;
  border-radius: 999px;
  border: 1px solid rgba(255,255,255,0.35);
  color: var(--on-primary);
  cursor: pointer;
  user-select: none;
  transition: transform 0.12s ease, background 0.12s ease;
}

.toggle:hover {
  background: rgba(255,255,255,0.12);
  transform: translateY(-1px);
}

.toggle .icon {
  width: 18px;
  height: 18px;
}

/* Change label text based on checkbox state */
.theme-toggle ~ .site-header .toggle-text::after { content: "Off"; }
.theme-toggle:checked ~ .site-header .toggle-text::after { content: "On"; }
.toggle-text { font-weight: 650; }

/* =========================
   Buttons
   ========================= */

.downloads {
  display: flex;
  gap: 12px;
  flex-wrap: wrap;
}

.download-button {
  display: inline-flex;
  align-items: center;
  gap: 10px;

  background: rgba(255,255,255,0.96);
  color: #0b2a66;
  text-decoration: none;
  padding: 10px 14px;
  border-radius: 999px;
  font-weight: 700;
  border: 1px solid rgba(255,255,255,0.55);
  box-shadow: var(--shadow-soft);
  transition: transform 0.12s ease, background 0.12s ease;
}

.download-button:hover {
  background: #ffffff;
  transform: translateY(-1px);
}

.btn-icon .icon {
  width: 18px;
  height: 18px;
  opacity: 0.85;
}

/* =========================
   Cards
   ========================= */

.card {
  background: var(--card);
  border-radius: var(--radius);
  padding: 16px 18px;
  margin-bottom: 16px;
  border: 1px solid var(--border);
  box-shadow: var(--shadow-soft);
}

.card h2 {
  margin: 0 0 10px;
  font-size: 1.22rem;
}

.card ul { padding-left: 18px; margin: 10px 0 0; }
.card li { margin-bottom: 6px; }

.muted { color: var(--muted); }
code {
  background: rgba(127,127,127,0.12);
  padding: 2px 6px;
  border-radius: 6px;
}

/* Links */
a { color: var(--primary); }
a:hover { text-decoration: underline; }

/* =========================
   Screenshots (no JS)
   ========================= */

.shots {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 12px;
  margin-top: 12px;
}

.shot {
  margin: 0;
  border: 1px solid var(--border);
  border-radius: var(--radius);
  overflow: hidden;
  background: rgba(127,127,127,0.06);
}

.shot img {
  width: 100%;
  height: auto;
  display: block;
}

.shot figcaption {
  padding: 10px 12px;
  font-size: 0.95rem;
  color: var(--muted);
}

/* Footer */
.site-footer {
  text-align: center;
  color: var(--muted);
  font-size: 0.92rem;
  padding: 24px 0 8px;
}

/* Mobile */
@media (max-width: 680px) {
  .header-inner {
    flex-direction: column;
    align-items: flex-start;
  }

  .downloads { width: 100%; }
  .download-button {
    width: 100%;
    justify-content: center;
  }

  .shots {
    grid-template-columns: 1fr;
  }
}
font-size: 0.9rem;
  padding: 24px 0 8px;
}

/* =========================
   Mobile tweaks
   ========================= */

@media (max-width: 600px) {
  .header-inner {
    flex-direction: column;
    align-items: flex-start;
  }

  .downloads {
    width: 100%;
  }

  .download-button {
    width: 100%;
    text-align: center;
  }
}
