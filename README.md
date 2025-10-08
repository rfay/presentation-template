# Presentation Title

This repository contains a presentation built with [reveal.js](https://revealjs.com/).

## 🚀 Quick Start

### Option 1: Using as a Template (Recommended)

1. Click "Use this template" button at the top of this repository
2. Create your new repository
3. Clone your new repository
4. Run the setup script to customize:
   ```bash
   ./setup-template.sh
   ```
5. The script will:
   - Update the README with your repository name
   - Update index.html with your presentation title
   - Rename the markdown file to match your repo name
   - Update package.json
   - Self-delete when done

### Option 2: Manual Setup

1. Clone this repository
2. Manually update:
   - `README.md`: Replace placeholders with your values
   - `index.html`: Update title and markdown file reference
   - `slides/presentation.md`: Rename to your preferred name
   - `package.json`: Update the name field

## 🎯 View the Presentation

**👉 [View Live Presentation](https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/)**

After setup, this link will automatically point to your GitHub Pages deployment.

## 📝 Editing Your Presentation

The presentation is written in Markdown. Edit the file in the `slides/` directory.

- Use `---` to separate slides
- Use `--` for vertical slides
- Add images to the `images/` directory
- Customize styling in `css/custom.css`

## 🧪 Local Development

To preview your presentation locally:

```bash
npm start
```

This will start a local server at http://localhost:8000

## 🌐 Deploy to GitHub Pages

1. Go to your repository Settings > Pages
2. Set Source to "Deploy from a branch"
3. Select the `main` branch
4. Click Save
5. Your presentation will be available at `https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/`

## 🎨 Customization

- **Styling**: Edit `css/custom.css` for custom styles
- **Images**: Add images to the `images/` directory
- **Theme**: Change the reveal.js theme in `index.html`
- **Configuration**: Modify reveal.js settings in `index.html`

## 📚 Resources

- [reveal.js Documentation](https://revealjs.com/)
- [Markdown Guide](https://www.markdownguide.org/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
