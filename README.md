# saipi-ai

## Prerequisites
- Node.js 22.x via [nvm](https://github.com/nvm-sh/nvm) (script will install if missing)
- npm (kept at latest via the setup script)

## Quick start
Use the setup helper (installs nvm, Node 22, npm@latest, and project deps):
```bash
./setup.sh       # install only
./setup.sh --serve  # install then start dev server
```

## Manual setup
```bash
nvm install 22
nvm use 22
npm ci
```

## Scripts
```bash
npm run serve   # dev server with HMR
npm run build   # production build
npm run lint    # lint with ESLint + Vue rules
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
