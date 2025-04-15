# Koyeb Deployment Quickstart Guide

Follow these steps to quickly deploy your Cryptocurrency Recovery Tool to Koyeb without Docker.

## Step 1: Download the Deployment Package

Download the `koyeb-deploy-package.tar.gz` file from the Replit environment.

## Step 2: Create GitHub Repository (if you don't already have one)

1. Go to GitHub and create a new repository (e.g., https://github.com/Soeg1916/mine)
2. Extract the downloaded package on your local machine
3. Initialize Git and push to your repository:

```bash
git init
git add .
git commit -m "Initial commit for Koyeb deployment"
git branch -M main
git remote add origin https://github.com/Soeg1916/mine.git
git push -u origin main
```

## Step 3: Deploy to Koyeb

1. Sign up or log in to Koyeb at https://app.koyeb.com
2. Click "Create App"
3. Choose "GitHub" as the deployment method
4. Connect your GitHub account and select your repository
5. Important: Select "Use a buildpack" (NOT Docker)
6. Choose "Node.js" as the runtime
7. Configure:
   - Name: crypto-recovery-tool
   - Region: Choose one close to your users
   - Instance type: nano
   - Build command: npm install && npm run build
   - Run command: npm start
   - Port: 5000
8. Add Environment Variables:
   - TELEGRAM_BOT_TOKEN: [your actual telegram bot token]
   - NODE_ENV: production

## Step 4: Deploy and Monitor

1. Click "Deploy"
2. Watch the build and deployment progress
3. Once deployed, Koyeb will provide a public URL for your app

## Step 5: Test Your Deployment

1. Visit your app's public URL to verify it's working
2. Test the Telegram bot functionality

## Need More Help?

For more detailed instructions, refer to the comprehensive KOYEB_DEPLOYMENT.md file.