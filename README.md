# Cryptocurrency Recovery Tool

A cryptocurrency recovery tool designed to help users efficiently recover their digital assets through an interactive and user-friendly interface.

## Features

- **Telegram Bot Integration**: Interactive UI for easy cryptocurrency recovery through Telegram
- **Recovery Mechanisms**: Secure and reliable mechanisms for recovering lost cryptocurrency
- **Transaction Handling**: Secure handling of cryptocurrency transactions
- **Multi-Currency Support**: Exploration for supporting multiple cryptocurrencies

## Deployment

This project can be deployed to Koyeb using the provided `koyeb.yaml` configuration:

```bash
# Install Koyeb CLI (if needed)
curl -fsSL https://cli.koyeb.com/install.sh | sh

# Login to Koyeb
koyeb login

# Deploy the app
koyeb app init --name crypto-recovery-tool --git github.com/Soeg1916/mine --git-branch main
```

## Environment Variables

The following environment variables need to be configured:

- `TELEGRAM_BOT_TOKEN`: Token for the Telegram bot integration

## Running Locally

```bash
# Install dependencies
npm install

# Run development server
npm run dev

# Build for production
npm run build

# Start production server
npm start
```