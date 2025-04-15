# Koyeb Deployment Instructions

This guide will walk you through deploying the Cryptocurrency Recovery Tool on Koyeb.

## Prerequisites

1. A Koyeb account (create one at https://app.koyeb.com/auth/signup if needed)
2. Your project code uploaded to GitHub (e.g., at https://github.com/Soeg1916/mine)

## Steps for Deployment

### 1. Manual GitHub Upload (if needed)

If you haven't been able to push directly to GitHub, follow these steps:

1. Download the `crypto-recovery-tool.tar.gz` archive from Replit
2. Extract the archive to your local machine
3. Create a new repository on GitHub (or use your existing one)
4. Push the extracted files to your GitHub repository:

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/Soeg1916/mine.git
git push -u origin main
```

### 2. Deploy to Koyeb

#### Option 1: Using Koyeb Web Interface

1. Log in to your Koyeb account at https://app.koyeb.com
2. Click "Create App"
3. Select "GitHub" as the deployment method
4. Connect your GitHub account if not already connected
5. Select your repository (e.g., `Soeg1916/mine`)
6. Configure settings:
   - Name: `crypto-recovery-tool`
   - Region: Select the region closest to your users
   - Instance Type: `nano` (or as needed)
   - Environment variables:
     - Add `TELEGRAM_BOT_TOKEN` with your Telegram bot token
   - Port: `5000`
7. Click "Deploy"

#### Option 2: Using Koyeb CLI

1. Install the Koyeb CLI:
   ```bash
   curl -fsSL https://cli.koyeb.com/install.sh | sh
   ```

2. Log in to Koyeb:
   ```bash
   koyeb login
   ```

3. Deploy the application:
   ```bash
   koyeb app init --name crypto-recovery-tool --git github.com/Soeg1916/mine --git-branch main
   ```

4. Add the required environment variables:
   ```bash
   koyeb app env set --app crypto-recovery-tool --env TELEGRAM_BOT_TOKEN=your_token_here
   ```

## Verifying Deployment

After deployment:

1. Koyeb will provide a URL for your application (e.g., https://crypto-recovery-tool-yourusername.koyeb.app)
2. Visit this URL to verify that your application is running
3. Test the Telegram bot functionality to ensure it's working correctly

## Troubleshooting

If you encounter issues:

1. Check the deployment logs in the Koyeb dashboard
2. Verify that all environment variables are properly set
3. Ensure your Telegram bot token is valid and has the necessary permissions