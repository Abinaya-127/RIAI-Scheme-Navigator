@echo off
echo ====================================================
echo 🚀 Deploying RIAI Government Scheme Navigator to Firebase Hosting
echo ====================================================
npx -y firebase-tools@latest deploy --only hosting
pause
