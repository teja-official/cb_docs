// Export a chosen set of Lucide icons (from the frontend's lucide-react) as SVG
// files for MkDocs Material's custom icon folder.
// Usage: node export-lucide.mjs <lucide-react esm icons dir> <out dir>
import fs from "node:fs";
import path from "node:path";
import { pathToFileURL } from "node:url";

const [, , iconsDir, outDir] = process.argv;

const ICONS = `
zap sun moon sun-moon pencil info lightbulb circle-help triangle-alert octagon-alert
circle-check circle-x flask-conical message-circle-question globe mail rocket
chart-pie scan-eye brain radio users bot-message-square blocks headset book-user
puzzle settings user-pen layout-dashboard chart-column history gift life-buoy
message-square megaphone sparkles book-open key-round shield-check credit-card bell
send list-checks workflow arrow-right hand-metal undo-2 webhook file-spreadsheet sheet
upload phone at-sign play pause trash-2 copy external-link search keyboard shield
receipt chart-line link clock check list-todo user-plus lock sliders-horizontal
file-text message-circle layers compass graduation-cap bot user library flag
plug wrench wand-sparkles inbox route timer calendar-clock user-check github
`.trim().split(/\s+/);

const toAttrs = (attrs) =>
  Object.entries(attrs)
    .filter(([k]) => k !== "key")
    .map(([k, v]) => `${k.replace(/[A-Z]/g, (c) => "-" + c.toLowerCase())}="${v}"`)
    .join(" ");

fs.mkdirSync(outDir, { recursive: true });
let missing = [];
for (const name of ICONS) {
  const file = path.join(iconsDir, `${name}.js`);
  if (!fs.existsSync(file)) { missing.push(name); continue; }
  let mod = await import(pathToFileURL(file).href);
  if (!mod.__iconNode) {
    // alias file: re-exports another icon module
    const target = fs.readFileSync(file, "utf8").match(/from '\.\/([^']+\.js)'/)?.[1];
    if (target) mod = await import(pathToFileURL(path.join(iconsDir, target)).href);
  }
  const { __iconNode } = mod;
  if (!__iconNode) { missing.push(name); continue; }
  const body = __iconNode.map(([tag, attrs]) => `<${tag} ${toAttrs(attrs)}/>`).join("");
  const svg =
    `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" ` +
    `stroke-width="2" stroke-linecap="round" stroke-linejoin="round">${body}</svg>\n`;
  fs.writeFileSync(path.join(outDir, `${name}.svg`), svg);
}
console.log(`exported ${ICONS.length - missing.length} icons`);
if (missing.length) console.log("missing:", missing.join(", "));
