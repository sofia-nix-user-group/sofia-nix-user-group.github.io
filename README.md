# Sofia Nix User Group Website

The official website for the Sofia Nix User Group (SNUG), a community for Nix/NixOS enthusiasts in Sofia, Bulgaria.

## Development

This project uses [Nix Flakes](https://nixos.wiki/wiki/Flakes) for reproducible development and builds.

### Prerequisites

- [Nix](https://nixos.org/download.html) with flakes enabled

### Getting Started

1. Enter the development shell:
   ```bash
   nix develop
   ```

2. Install the Hugo theme (first time only):
   ```bash
   git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke
   ```

3. Start the development server:
   ```bash
   hugo server -D
   ```

4. Open http://localhost:1313 in your browser

### Building

Build the static site:
```bash
nix build
```

The output will be in `./result/`.

## Project Structure

```
.
├── archetypes/      # Content templates
├── content/         # Markdown content
├── layouts/         # Custom layouts (overrides theme)
├── static/          # Static assets
├── themes/          # Hugo themes
├── flake.nix        # Nix flake configuration
├── hugo.toml        # Hugo configuration
└── .github/         # GitHub Actions workflows
```

## Deployment

The site is automatically deployed to GitHub Pages when changes are pushed to the `main` branch.

## Contributing

Contributions are welcome! Please read our [Constitution](CONSTITUTION.md) for community guidelines.

## License

This project is open source. Content is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

