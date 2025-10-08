# Using This Template

This guide explains how to use this presentation template to create your own reveal.js presentations.

## Quick Start

1. **Click "Use this template"** at the top of the GitHub repository page
2. **Name your new repository** (e.g., `my-awesome-talk`)
3. **Clone your new repository**:
   ```bash
   git clone https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git
   cd YOUR-REPO-NAME
   ```

4. **Run the setup script**:
   ```bash
   ./setup-template.sh
   ```

   The script will:
   - Detect your repository name from git
   - Ask for confirmation or let you customize values
   - Update all template placeholders
   - Rename the markdown file to match your repo name
   - Self-delete when complete

5. **Edit your presentation**:
   ```bash
   # Edit the markdown file in the slides/ directory
   # It will be named after your repository
   ```

6. **Preview locally**:
   ```bash
   npm start
   ```
   Opens at http://localhost:8000

7. **Deploy to GitHub Pages**:
   - Go to Settings > Pages in your repository
   - Set Source to "Deploy from a branch"
   - Select `main` branch
   - Click Save
   - Your presentation will be live at `https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/`

## What Gets Customized

The setup script updates these files:

### README.md
- Replaces `YOUR-USERNAME` with your GitHub username
- Replaces `YOUR-REPO-NAME` with your repository name
- Replaces `Presentation Title` with your custom title

### index.html
- Updates the `<title>` tag
- Updates the markdown file reference in `data-markdown`

### package.json
- Updates the `name` field to match your repository

### slides/
- Renames `presentation.md` to `YOUR-REPO-NAME.md`

## Manual Customization

If you prefer not to use the setup script, update these values manually:

1. **README.md**: Search and replace placeholders
2. **index.html**: 
   - Line 7: Update `<title>`
   - Line 23: Update `data-markdown` path
3. **package.json**: Update the `name` field
4. **slides/**: Rename the markdown file

## Creating Your Presentation

Edit the markdown file in `slides/`:

```markdown
# My Presentation Title

Subtitle or description

---

## Slide 2

Content here

* Bullet 1
* Bullet 2

---

## Slide 3

```bash
# Code examples
echo "Hello"
```
```

### Slide Separators

- `---` creates a new horizontal slide
- `--` creates a vertical slide (nested under current)
- `Note:` at the start of a line creates speaker notes

### Adding Images

1. Add images to the `images/` directory
2. Reference in markdown:
   ```markdown
   ![Alt text](images/my-image.png)
   ```

### Code Blocks

Use fenced code blocks with language specification:

````markdown
```javascript
function hello() {
  console.log("Hello, world!");
}
```
````

## Customizing Styles

Edit `css/custom.css` to change:
- Colors
- Fonts
- Layout
- Custom classes

The template includes DDEV branding styles. Replace or modify these for your brand.

## reveal.js Configuration

In `index.html`, the `Reveal.initialize()` section contains many options:

- `controls`: Show navigation controls
- `progress`: Show progress bar
- `slideNumber`: Display slide numbers
- `transition`: Slide transition effect
- And many more...

See [reveal.js documentation](https://revealjs.com/config/) for all options.

## GitHub Pages Deployment

The repository includes a GitHub Actions workflow (`.github/workflows/deploy.yml`) that:

1. Triggers on pushes to `main`
2. Builds the presentation
3. Deploys to GitHub Pages

You just need to:
1. Enable GitHub Pages in Settings
2. Push to `main` branch
3. Wait for the action to complete

## Troubleshooting

### Setup script doesn't detect repository

Run with custom values:
```bash
./setup-template.sh
# Answer 'n' when asked if detected values are correct
# Enter your values manually
```

### Presentation doesn't load

Check:
- Markdown file name matches reference in `index.html`
- Files are in correct directories
- GitHub Pages is enabled and deployed

### Images don't display

- Ensure images are in `images/` directory
- Use correct relative paths: `images/filename.png`
- Check image file names match (case-sensitive on Linux)

## Resources

- [reveal.js Documentation](https://revealjs.com/)
- [Markdown Guide](https://www.markdownguide.org/)
- [GitHub Pages Docs](https://docs.github.com/en/pages)
- [GitHub Template Repositories](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-template-repository)
