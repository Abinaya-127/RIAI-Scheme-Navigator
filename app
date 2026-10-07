<!DOCTYPE html>
<html lang="en" class="h-full">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>RIAI — AI-Powered Entrepreneurship Scheme Navigator</title>

  <!-- Google Fonts: Plus Jakarta Sans (Body) & Outfit (Headings) -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@500;600;700;800;900&family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">

  <!-- Tailwind CSS via allowlisted CDN -->
  <script src="https://www.gstatic.com/antigravity/web/dev/tailwindcss.min.js"></script>

  <style>
    /* Premium Typography System */
    body {
      font-family: 'Plus Jakarta Sans', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
    }
    h1, h2, h3, h4, .font-heading {
      font-family: 'Outfit', sans-serif;
    }

    /* Custom scrollbars & smooth transitions */
    ::-webkit-scrollbar { width: 6px; height: 6px; }
    ::-webkit-scrollbar-track { background: transparent; }
    ::-webkit-scrollbar-thumb { background: rgba(99, 102, 241, 0.25); border-radius: 9999px; }
    ::-webkit-scrollbar-thumb:hover { background: rgba(99, 102, 241, 0.5); }

    /* Animations & Glassmorphism */
    .fade-in { animation: fadeIn 0.3s cubic-bezier(0.16, 1, 0.3, 1) forwards; }
    @keyframes fadeIn { from { opacity: 0; transform: translateY(8px); } to { opacity: 1; transform: translateY(0); } }
    
    .pulse-ring { animation: pulseRing 2s infinite; }
    @keyframes pulseRing { 0% { box-shadow: 0 0 0 0 rgba(79, 70, 229, 0.4); } 70% { box-shadow: 0 0 0 12px rgba(79, 70, 229, 0); } 100% { box-shadow: 0 0 0 0 rgba(79, 70, 229, 0); } }

    .glass-card {
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(16px);
      -webkit-backdrop-filter: blur(16px);
      border: 1px solid rgba(226, 232, 240, 0.8);
    }
    .dark .glass-card {
      background: rgba(15, 23, 42, 0.85);
      border: 1px solid rgba(30, 41, 59, 0.8);
    }

    .mesh-gradient {
      background-image: 
        radial-gradient(at 0% 0%, rgba(99, 102, 241, 0.15) 0px, transparent 50%),
        radial-gradient(at 100% 0%, rgba(20, 184, 166, 0.15) 0px, transparent 50%),
        radial-gradient(at 100% 100%, rgba(168, 85, 247, 0.1) 0px, transparent 50%);
    }

    .btn-bounce {
      transition: all 0.2s ease;
    }
    .btn-bounce:active {
      transform: scale(0.96);
    }
  </style>
</head>
<body class="h-full bg-slate-50 dark:bg-slate-950 text-slate-900 dark:text-slate-100 antialiased flex flex-col selection:bg-indigo-500 selection:text-white mesh-gradient">

  <!-- TOP HEADER NAV -->
  <header class="sticky top-0 z-40 bg-white/80 dark:bg-slate-900/80 border-b border-slate-200/80 dark:border-slate-800/80 backdrop-blur-xl shadow-xs">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 h-16 flex items-center justify-between gap-4">
      
      <!-- Brand Logo & Tagline -->
      <div class="flex items-center gap-3 cursor-pointer group" onclick="switchScreen('landing')">
        <div class="w-10 h-10 rounded-xl bg-gradient-to-tr from-indigo-600 via-purple-600 to-teal-400 flex items-center justify-center text-white font-extrabold text-xl shadow-lg group-hover:scale-105 transition-transform duration-200">
          R
        </div>
        <div>
          <div class="flex items-center gap-2">
            <span class="font-heading font-black text-2xl tracking-tight bg-gradient-to-r from-indigo-600 via-purple-600 to-teal-500 bg-clip-text text-transparent">RIAI</span>
            <span class="text-[10px] font-extrabold uppercase tracking-wider px-2.5 py-0.5 rounded-full bg-indigo-50 dark:bg-indigo-950/80 text-indigo-600 dark:text-indigo-400 border border-indigo-200 dark:border-indigo-800">Gov Schemes</span>
          </div>
          <p class="text-[11px] text-slate-500 dark:text-slate-400 font-medium hidden md:block">Know Your Scheme. Know Your Path. Build Your Future.</p>
        </div>
      </div>

      <!-- Quick Search / Screen Selector (Desktop) -->
      <div class="hidden lg:flex items-center gap-2 bg-slate-100/80 dark:bg-slate-800/80 border border-slate-200 dark:border-slate-700 rounded-xl px-3.5 py-1.5 w-80">
        <svg class="w-4 h-4 text-indigo-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/></svg>
        <select id="quickScreenJump" onchange="switchScreen(this.value)" class="bg-transparent text-xs font-semibold text-slate-700 dark:text-slate-300 w-full focus:outline-none cursor-pointer">
          <option value="landing">1. Landing Page</option>
          <option value="chat">2. RIAI AI Assistant</option>
          <option value="profile">3. Entrepreneur Profile</option>
          <option value="explorer">4. Scheme Explorer</option>
          <option value="recommendations">5. Scheme Matches</option>
          <option value="compare">7. Compare Schemes</option>
          <option value="documents">8-10. Document Center & OCR</option>
          <option value="pdf_analyzer">11-12. PDF & T&C Analyzer</option>
          <option value="financial">13. Financial Readiness</option>
          <option value="readiness">14. Application Readiness</option>
          <option value="next_actions">15. What Should I Do Next?</option>
          <option value="journey">16. Application Journey</option>
          <option value="support">17. Nearby Support Centres</option>
          <option value="dashboard">19. Entrepreneur Dashboard</option>
          <option value="privacy">21. Privacy & Security</option>
          <option value="about">22. About & System Specs</option>
        </select>
      </div>

      <!-- Right Header Actions -->
      <div class="flex items-center gap-3">
        <!-- Language Switcher -->
        <div class="flex items-center bg-slate-100/90 dark:bg-slate-800/90 border border-slate-200 dark:border-slate-700 rounded-xl p-1 text-xs shadow-xs">
          <span class="px-1.5 text-slate-400 font-bold flex items-center gap-1">
            <svg class="w-3.5 h-3.5 text-indigo-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5h12M9 3v2m1.048 9.5A18.022 18.022 0 016.412 9m6.088 9h7M11 21l5-10 5 10M12.751 5C11.783 10.77 8.07 15.61 3 18.129"/></svg>
          </span>
          <button onclick="setLanguage('en')" id="lang-en" class="px-2.5 py-1 rounded-lg font-bold transition-all bg-indigo-600 text-white shadow-xs">EN</button>
          <button onclick="setLanguage('ta')" id="lang-ta" class="px-2.5 py-1 rounded-lg font-semibold text-slate-600 dark:text-slate-400 hover:text-indigo-600 transition-all">தமிழ்</button>
          <button onclick="setLanguage('hi')" id="lang-hi" class="px-2.5 py-1 rounded-lg font-semibold text-slate-600 dark:text-slate-400 hover:text-indigo-600 transition-all">हिंदी</button>
          <button onclick="setLanguage('te')" id="lang-te" class="px-2.5 py-1 rounded-lg font-semibold text-slate-600 dark:text-slate-400 hover:text-indigo-600 transition-all">తెలుగు</button>
          <button onclick="setLanguage('kn')" id="lang-kn" class="px-2.5 py-1 rounded-lg font-semibold text-slate-600 dark:text-slate-400 hover:text-indigo-600 transition-all">ಕನ್ನಡ</button>
        </div>

        <!-- Saved Schemes Counter -->
        <button onclick="switchScreen('recommendations')" class="relative p-2 rounded-xl border border-slate-200 dark:border-slate-800 hover:bg-slate-100 dark:hover:bg-slate-800 transition-all text-xs flex items-center gap-1.5 shadow-xs" title="Saved Schemes">
          <svg class="w-4 h-4 text-amber-500 fill-current" viewBox="0 0 24 24"><path d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"/></svg>
          <span class="font-extrabold text-slate-700 dark:text-slate-300 hidden sm:inline" id="headerSavedCount">3 Saved</span>
        </button>

        <!-- CTA Assistant Button -->
        <button onclick="switchScreen('chat')" class="btn-bounce bg-gradient-to-r from-indigo-600 via-purple-600 to-teal-500 hover:opacity-95 text-white text-xs font-extrabold px-4 py-2.5 rounded-xl shadow-md transition-all flex items-center gap-1.5">
          <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 10h.01M12 10h.01M16 10h.01M9 16H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-5l-5 5v-5z"/></svg>
          <span>Talk to RIAI</span>
        </button>
      </div>

    </div>
  </header>

  <!-- MAIN WRAPPER (SIDEBAR + CONTENT) -->
  <div class="flex-1 flex overflow-hidden">

    <!-- DESKTOP NAVIGATION SIDEBAR -->
    <aside class="w-64 bg-white/70 dark:bg-slate-900/70 border-r border-slate-200/80 dark:border-slate-800/80 backdrop-blur-md hidden md:flex flex-col justify-between overflow-y-auto shrink-0 p-3 text-xs">
      <div class="space-y-6">
        
        <!-- Section: Overview -->
        <div>
          <div class="px-3 text-[10px] font-extrabold uppercase tracking-wider text-indigo-600 dark:text-indigo-400 mb-2">Main Navigation</div>
          <nav class="space-y-1">
            <button onclick="switchScreen('landing')" id="nav-landing" class="nav-item w-full text-left px-3.5 py-2.5 rounded-xl flex items-center gap-3 font-semibold transition-all hover:bg-slate-100 dark:hover:bg-slate-800">
              <svg class="w-4 h-4 text-indigo-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"/></svg>
              <span>Homepage</span>
            </button>
            <button onclick="switchScreen('dashboard')" id="nav-dashboard" class="nav-item w-full text-left px-3.5 py-2.5 rounded-xl flex items-center gap-3 font-semibold transition-all hover:bg-slate-100 dark:hover:bg-slate-800">
              <svg class="w-4 h-4 text-teal-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2V6zM14 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V6zM4 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2v-2zM14 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z"/></svg>
              <span>Entrepreneur Dashboard</span>
            </button>
            <button onclick="switchScreen('chat')" id="nav-chat" class="nav-item w-full text-left px-3.5 py-2.5 rounded-xl flex items-center gap-3 font-semibold transition-all hover:bg-slate-100 dark:hover:bg-slate-800">
              <svg class="w-4 h-4 text-blue-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 10h.01M12 10h.01M16 10h.01M9 16H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-5l-5 5v-5z"/></svg>
              <span>RIAI AI Assistant</span>
            </button>
            <button onclick="switchScreen('profile')" id="nav-profile" class="nav-item w-full text-left px-3.5 py-2.5 rounded-xl flex items-center gap-3 font-semibold transition-all hover:bg-slate-100 dark:hover:bg-slate-800">
              <svg class="w-4 h-4 text-purple-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"/></svg>
              <span>My Entrepreneur Profile</span>
            </button>
          </nav>
        </div>

        <!-- Section: Discovery & Matching -->
        <div>
          <div class="px-3 text-[10px] font-extrabold uppercase tracking-wider text-indigo-600 dark:text-indigo-400 mb-2">Discovery & Rules</div>
          <nav class="space-y-1">
            <button onclick="switchScreen('explorer')" id="nav-explorer" class="nav-item w-full text-left px-3.5 py-2.5 rounded-xl flex items-center gap-3 font-semibold transition-all hover:bg-slate-100 dark:hover:bg-slate-800">
              <svg class="w-4 h-4 text-amber-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/></svg>
              <span>Scheme Explorer (10+ Schemes)</span>
            </button>
            <button onclick="switchScreen('recommendations')" id="nav-recommendations" class="nav-item w-full text-left px-3.5 py-2.5 rounded-xl flex items-center gap-3 font-semibold transition-all hover:bg-slate-100 dark:hover:bg-slate-800">
              <svg class="w-4 h-4 text-emerald-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z"/></svg>
              <span>Best Scheme Matches</span>
            </button>
            <button onclick="switchScreen('compare')" id="nav-compare" class="nav-item w-full text-left px-3.5 py-2.5 rounded-xl flex items-center gap-3 font-semibold transition-all hover:bg-slate-100 dark:hover:bg-slate-800">
              <svg class="w-4 h-4 text-sky-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7h12m0 0l-4-4m4 4l-4 4m0 6H4m0 0l4 4m-4-4l4-4"/></svg>
              <span>Compare Schemes</span>
            </button>
          </nav>
        </div>

        <!-- Section: Documents & Intelligence -->
        <div>
          <div class="px-3 text-[10px] font-extrabold uppercase tracking-wider text-indigo-600 dark:text-indigo-400 mb-2">Documents & AI</div>
          <nav class="space-y-1">
            <button onclick="switchScreen('documents')" id="nav-documents" class="nav-item w-full text-left px-3.5 py-2.5 rounded-xl flex items-center gap-3 font-semibold transition-all hover:bg-slate-100 dark:hover:bg-slate-800">
              <svg class="w-4 h-4 text-orange-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/></svg>
              <span>Document Upload & OCR</span>
            </button>
            <button onclick="switchScreen('pdf_analyzer')" id="nav-pdf_analyzer" class="nav-item w-full text-left px-3.5 py-2.5 rounded-xl flex items-center gap-3 font-semibold transition-all hover:bg-slate-100 dark:hover:bg-slate-800">
              <svg class="w-4 h-4 text-rose-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253"/></svg>
              <span>Government PDF & T&C</span>
            </button>
          </nav>
        </div>

        <!-- Section: Application Readiness -->
        <div>
          <div class="px-3 text-[10px] font-extrabold uppercase tracking-wider text-indigo-600 dark:text-indigo-400 mb-2">Readiness & Support</div>
          <nav class="space-y-1">
            <button onclick="switchScreen('financial')" id="nav-financial" class="nav-item w-full text-left px-3.5 py-2.5 rounded-xl flex items-center gap-3 font-semibold transition-all hover:bg-slate-100 dark:hover:bg-slate-800">
              <svg class="w-4 h-4 text-emerald-600" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/></svg>
              <span>Financial Readiness</span>
            </button>
            <button onclick="switchScreen('readiness')" id="nav-readiness" class="nav-item w-full text-left px-3.5 py-2.5 rounded-xl flex items-center gap-3 font-semibold transition-all hover:bg-slate-100 dark:hover:bg-slate-800">
              <svg class="w-4 h-4 text-cyan-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"/></svg>
              <span>Application Readiness Score</span>
            </button>
            <button onclick="switchScreen('next_actions')" id="nav-next_actions" class="nav-item w-full text-left px-3.5 py-2.5 rounded-xl flex items-center gap-3 font-semibold transition-all hover:bg-slate-100 dark:hover:bg-slate-800">
              <svg class="w-4 h-4 text-indigo-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"/></svg>
              <span>What Should I Do Next?</span>
            </button>
            <button onclick="switchScreen('journey')" id="nav-journey" class="nav-item w-full text-left px-3.5 py-2.5 rounded-xl flex items-center gap-3 font-semibold transition-all hover:bg-slate-100 dark:hover:bg-slate-800">
              <svg class="w-4 h-4 text-violet-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 20l-5.447-2.724A1 1 0 013 16.382V5.618a1 1 0 011.447-.894L9 7m0 13l6-3m-6 3V7m6 10l4.553 2.276A1 1 0 0021 18.382V7.618a1 1 0 00-.553-.894L15 4m0 13V4m0 0L9 7"/></svg>
              <span>Application Journey Roadmap</span>
            </button>
            <button onclick="switchScreen('support')" id="nav-support" class="nav-item w-full text-left px-3.5 py-2.5 rounded-xl flex items-center gap-3 font-semibold transition-all hover:bg-slate-100 dark:hover:bg-slate-800">
              <svg class="w-4 h-4 text-pink-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"/></svg>
              <span>Find Support Near Me</span>
            </button>
          </nav>
        </div>

      </div>

      <!-- Footer Info / Admin Toggle -->
      <div class="pt-4 border-t border-slate-200/80 dark:border-slate-800/80 space-y-2">
        <div class="flex items-center justify-between text-[11px]">
          <span class="text-slate-500">Profile Status:</span>
          <span class="font-bold text-emerald-600 flex items-center gap-1" id="sidebarProfileBadge">
            <span class="w-2 h-2 rounded-full bg-emerald-500"></span> 85% Complete
          </span>
        </div>
        <button onclick="switchScreen('privacy')" class="w-full text-left px-2 py-1 text-[11px] text-slate-500 hover:text-slate-900 dark:hover:text-slate-200 flex items-center gap-1.5">
          <svg class="w-3.5 h-3.5 text-indigo-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"/></svg>
          <span>Privacy & Security</span>
        </button>
        <button onclick="switchScreen('about')" class="w-full text-left px-2 py-1 text-[11px] text-slate-500 hover:text-slate-900 dark:hover:text-slate-200 flex items-center gap-1.5">
          <svg class="w-3.5 h-3.5 text-indigo-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/></svg>
          <span>About RIAI & Architecture</span>
        </button>
      </div>
    </aside>

    <!-- CONTENT DISPLAY CONTAINER -->
    <main class="flex-1 overflow-y-auto p-4 sm:p-6 pb-24 md:pb-8" id="mainContainer">
      
      <!-- ================= 1. LANDING PAGE SCREEN ================= -->
      <section id="screen-landing" class="screen-view max-w-6xl mx-auto space-y-12 fade-in">
        
        <!-- Hero Section -->
        <div class="relative bg-gradient-to-br from-indigo-950 via-slate-900 to-indigo-900 text-white rounded-3xl p-8 sm:p-14 overflow-hidden shadow-2xl border border-indigo-500/20">
          <div class="absolute -right-16 -bottom-16 w-96 h-96 bg-teal-500/20 rounded-full blur-3xl pointer-events-none"></div>
          <div class="absolute -left-16 -top-16 w-96 h-96 bg-purple-500/20 rounded-full blur-3xl pointer-events-none"></div>
          
          <div class="relative z-10 max-w-3xl space-y-6">
            <div class="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-white/10 text-teal-300 text-xs font-extrabold tracking-wide backdrop-blur-md border border-white/15 shadow-inner">
              <span class="w-2 h-2 rounded-full bg-teal-400 animate-ping"></span>
              AI-Powered Entrepreneurship Scheme Navigator
            </div>
            
            <h1 class="font-heading text-4xl sm:text-6xl font-black tracking-tight leading-none">
              Start Your Business.<br>
              <span class="bg-gradient-to-r from-teal-300 via-emerald-300 to-indigo-300 bg-clip-text text-transparent">Discover Your Support.</span>
            </h1>

            <p class="text-base sm:text-xl text-slate-300 font-normal leading-relaxed">
              RIAI helps you discover government schemes, understand eligibility, prepare documents and navigate your application journey — in your language.
            </p>

            <div class="pt-2 flex flex-wrap items-center gap-4">
              <button onclick="switchScreen('chat')" class="btn-bounce bg-gradient-to-r from-teal-400 to-indigo-500 hover:from-teal-300 hover:to-indigo-400 text-slate-950 font-black px-7 py-4 rounded-2xl shadow-xl hover:shadow-indigo-500/30 transition-all text-sm flex items-center gap-2.5">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 10h.01M12 10h.01M16 10h.01M9 16H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-5l-5 5v-5z"/></svg>
                <span>Talk to RIAI</span>
              </button>
              <button onclick="switchScreen('explorer')" class="btn-bounce bg-white/10 hover:bg-white/20 text-white font-bold px-7 py-4 rounded-2xl border border-white/20 transition-all text-sm flex items-center gap-2.5 backdrop-blur-md">
                <svg class="w-5 h-5 text-teal-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/></svg>
                <span>Explore Schemes</span>
              </button>
            </div>

            <!-- Value Props Badges -->
            <div class="pt-6 grid grid-cols-2 sm:grid-cols-4 gap-3 text-xs border-t border-slate-700/60 text-slate-300">
              <div class="flex items-center gap-2 font-semibold"><svg class="w-4 h-4 text-teal-400 shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/></svg><span>Structured Eligibility</span></div>
              <div class="flex items-center gap-2 font-semibold"><svg class="w-4 h-4 text-teal-400 shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/></svg><span>OCR & Document Scanner</span></div>
              <div class="flex items-center gap-2 font-semibold"><svg class="w-4 h-4 text-teal-400 shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/></svg><span>EN / TA / HI Support</span></div>
              <div class="flex items-center gap-2 font-semibold"><svg class="w-4 h-4 text-teal-400 shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"/></svg><span>Official Govt Portals</span></div>
            </div>
          </div>
        </div>

        <!-- Assistant Interactive Preview -->
        <div class="grid grid-cols-1 lg:grid-cols-12 gap-8 items-center">
          <div class="lg:col-span-7 space-y-5">
            <h2 class="font-heading text-3xl font-extrabold text-slate-900 dark:text-white">One Connected Entrepreneur Journey</h2>
            <p class="text-sm text-slate-600 dark:text-slate-400 leading-relaxed font-normal">
              RIAI guides you from your initial business idea to submitting an official application. It extracts your profile dynamically, matches government subsidies, verifies documents, and calculates financial readiness.
            </p>

            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 pt-2">
              <div class="p-4 rounded-2xl glass-card space-y-1.5 shadow-sm hover:border-indigo-500/40 transition-all">
                <div class="font-heading font-bold text-base text-indigo-600 dark:text-indigo-400 flex items-center gap-2">
                  <span class="w-6 h-6 rounded-full bg-indigo-100 dark:bg-indigo-950 flex items-center justify-center text-xs">1</span>
                  Natural Conversation
                </div>
                <p class="text-xs text-slate-500 dark:text-slate-400">Speak about your study, location, and business goals without filling endless forms.</p>
              </div>

              <div class="p-4 rounded-2xl glass-card space-y-1.5 shadow-sm hover:border-teal-500/40 transition-all">
                <div class="font-heading font-bold text-base text-teal-600 dark:text-teal-400 flex items-center gap-2">
                  <span class="w-6 h-6 rounded-full bg-teal-100 dark:bg-teal-950 flex items-center justify-center text-xs">2</span>
                  Rule-Engine Eligibility
                </div>
                <p class="text-xs text-slate-500 dark:text-slate-400">Structured evaluation against official guidelines to give transparent match scores.</p>
              </div>

              <div class="p-4 rounded-2xl glass-card space-y-1.5 shadow-sm hover:border-purple-500/40 transition-all">
                <div class="font-heading font-bold text-base text-purple-600 dark:text-purple-400 flex items-center gap-2">
                  <span class="w-6 h-6 rounded-full bg-purple-100 dark:bg-purple-950 flex items-center justify-center text-xs">3</span>
                  Document Analysis
                </div>
                <p class="text-xs text-slate-500 dark:text-slate-400">Scan certificates, identify missing requirements, and summarize government PDFs.</p>
              </div>

              <div class="p-4 rounded-2xl glass-card space-y-1.5 shadow-sm hover:border-emerald-500/40 transition-all">
                <div class="font-heading font-bold text-base text-emerald-600 dark:text-emerald-400 flex items-center gap-2">
                  <span class="w-6 h-6 rounded-full bg-emerald-100 dark:bg-emerald-950 flex items-center justify-center text-xs">4</span>
                  Actionable Readiness
                </div>
                <p class="text-xs text-slate-500 dark:text-slate-400">Get step-by-step next tasks and direct verified links to official portals.</p>
              </div>
            </div>
          </div>

          <!-- Live Sample Card -->
          <div class="lg:col-span-5 glass-card rounded-3xl p-6 shadow-xl space-y-5">
            <div class="flex items-center justify-between border-b border-slate-200 dark:border-slate-800 pb-3">
              <div class="flex items-center gap-2.5">
                <div class="w-8 h-8 rounded-xl bg-gradient-to-tr from-indigo-600 to-purple-600 text-white flex items-center justify-center font-bold text-xs shadow">AI</div>
                <span class="font-heading font-bold text-sm">RIAI Assistant Live Preview</span>
              </div>
              <span class="text-[10px] bg-emerald-100 dark:bg-emerald-950 text-emerald-700 dark:text-emerald-300 font-extrabold px-2.5 py-0.5 rounded-full flex items-center gap-1">
                <span class="w-1.5 h-1.5 rounded-full bg-emerald-500 animate-ping"></span> Active
              </span>
            </div>

            <div class="bg-slate-100/80 dark:bg-slate-800/80 p-3.5 rounded-2xl text-xs text-slate-600 dark:text-slate-300 italic border border-slate-200/50 dark:border-slate-700/50">
              «"I have completed my studies and want to start a small manufacturing business in Tamil Nadu. What should I do?"»
            </div>

            <div class="space-y-2">
              <div class="text-xs font-bold text-indigo-600 dark:text-indigo-400">Dynamic Profile Extracted:</div>
              <div class="flex flex-wrap gap-1.5 text-[11px]">
                <span class="px-2.5 py-1 bg-indigo-50 dark:bg-indigo-950/80 border border-indigo-200 dark:border-indigo-800 text-indigo-700 dark:text-indigo-300 rounded-lg font-semibold">Graduate</span>
                <span class="px-2.5 py-1 bg-indigo-50 dark:bg-indigo-950/80 border border-indigo-200 dark:border-indigo-800 text-indigo-700 dark:text-indigo-300 rounded-lg font-semibold">Manufacturing</span>
                <span class="px-2.5 py-1 bg-indigo-50 dark:bg-indigo-950/80 border border-indigo-200 dark:border-indigo-800 text-indigo-700 dark:text-indigo-300 rounded-lg font-semibold">Tamil Nadu</span>
              </div>
            </div>

            <div class="p-4 bg-teal-50 dark:bg-teal-950/50 border border-teal-200 dark:border-teal-900/60 rounded-2xl space-y-2 text-xs">
              <div class="flex items-center justify-between font-heading font-bold text-teal-900 dark:text-teal-300">
                <span>Top Match: NEEDS (Tamil Nadu)</span>
                <span class="px-2.5 py-0.5 bg-teal-600 text-white rounded-full text-[10px] font-extrabold">94% Match</span>
              </div>
              <p class="text-teal-800 dark:text-teal-400 text-[11px]">25% Capital Subsidy up to ₹75 Lakhs for educated first-generation entrepreneurs.</p>
              <button onclick="switchScreen('chat')" class="w-full text-center bg-teal-600 hover:bg-teal-700 text-white py-2 rounded-xl text-xs font-bold transition-all shadow-xs">
                Try Conversation Now →
              </button>
            </div>
          </div>
        </div>

        <!-- Target Groups -->
        <div class="space-y-6 pt-6 border-t border-slate-200 dark:border-slate-800">
          <h3 class="text-center font-heading font-bold text-xl text-slate-900 dark:text-white">Designed for All Indian Entrepreneurs</h3>
          <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-6 gap-4 text-center">
            <div class="p-4 rounded-2xl glass-card hover:border-indigo-500 transition-all cursor-pointer">
              <div class="text-2xl mb-1">👩‍💼</div>
              <div class="font-heading font-bold text-xs">Women</div>
            </div>
            <div class="p-4 rounded-2xl glass-card hover:border-indigo-500 transition-all cursor-pointer">
              <div class="text-2xl mb-1">🌾</div>
              <div class="font-heading font-bold text-xs">Rural</div>
            </div>
            <div class="p-4 rounded-2xl glass-card hover:border-indigo-500 transition-all cursor-pointer">
              <div class="text-2xl mb-1">🎓</div>
              <div class="font-heading font-bold text-xs">Youth</div>
            </div>
            <div class="p-4 rounded-2xl glass-card hover:border-indigo-500 transition-all cursor-pointer">
              <div class="text-2xl mb-1">🎨</div>
              <div class="font-heading font-bold text-xs">Artisans</div>
            </div>
            <div class="p-4 rounded-2xl glass-card hover:border-indigo-500 transition-all cursor-pointer">
              <div class="text-2xl mb-1">🏭</div>
              <div class="font-heading font-bold text-xs">Micro Mfg</div>
            </div>
            <div class="p-4 rounded-2xl glass-card hover:border-indigo-500 transition-all cursor-pointer">
              <div class="text-2xl mb-1">♿</div>
              <div class="font-heading font-bold text-xs">Inclusive</div>
            </div>
          </div>
        </div>

      </section>

      <!-- ================= 2. RIAI AI CHATBOT SCREEN ================= -->
      <section id="screen-chat" class="screen-view max-w-5xl mx-auto space-y-4 fade-in hidden">
        <div class="flex items-center justify-between glass-card p-4 rounded-2xl">
          <div class="flex items-center gap-3">
            <div class="w-10 h-10 rounded-2xl bg-gradient-to-tr from-indigo-600 via-purple-600 to-teal-500 text-white flex items-center justify-center font-black text-lg shadow-md">
              R
            </div>
            <div>
              <h2 class="font-heading font-bold text-base text-slate-900 dark:text-white">RIAI Entrepreneurship Assistant</h2>
              <p class="text-xs text-slate-500 dark:text-slate-400">Natural Language Profile Extraction & Guidance Engine</p>
            </div>
          </div>
          <button onclick="clearChatHistory()" class="text-xs text-slate-500 hover:text-rose-500 border border-slate-200 dark:border-slate-800 px-3 py-1.5 rounded-xl flex items-center gap-1.5 transition-all">
            <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"/></svg>
            Reset Chat
          </button>
        </div>

        <!-- Chat Container Box -->
        <div class="glass-card rounded-3xl flex flex-col h-[580px] shadow-xl overflow-hidden">
          
          <!-- Message Thread -->
          <div id="chatMessages" class="flex-1 overflow-y-auto p-5 space-y-5">
            
            <!-- Default Welcome Message -->
            <div class="flex gap-3 max-w-2xl">
              <div class="w-8 h-8 rounded-xl bg-indigo-600 text-white flex items-center justify-center font-bold text-xs shrink-0 shadow">AI</div>
              <div class="space-y-2">
                <div class="bg-slate-100 dark:bg-slate-800/90 border border-slate-200 dark:border-slate-700/80 rounded-3xl rounded-tl-none p-4 text-xs leading-relaxed space-y-2 shadow-xs">
                  <p class="font-heading font-bold text-indigo-600 dark:text-indigo-400 text-sm">Hey 👋 I'm RIAI, your AI Entrepreneurship Assistant.</p>
                  <p>Tell me about yourself, your education, your business idea and what you want to achieve. I'll help you find the right support and guide you step by step.</p>
                </div>
                
                <!-- Quick Sample Prompt Buttons -->
                <div class="flex flex-wrap gap-2 text-[11px]">
                  <button onclick="sendQuickPrompt('I have completed my studies and want to start a small manufacturing business in Tamil Nadu. What should I do?')" class="bg-indigo-50 dark:bg-indigo-950/80 text-indigo-700 dark:text-indigo-300 border border-indigo-200 dark:border-indigo-800 rounded-xl px-3.5 py-2 hover:bg-indigo-100 transition-all text-left font-medium">
                    💡 "I completed studies and want to start manufacturing in Tamil Nadu."
                  </button>
                  <button onclick="sendQuickPrompt('I am a rural entrepreneur in Bihar looking to start a food processing micro-unit with ₹5 Lakhs loan.')" class="bg-emerald-50 dark:bg-emerald-950/80 text-emerald-700 dark:text-emerald-300 border border-emerald-200 dark:border-emerald-800 rounded-xl px-3.5 py-2 hover:bg-emerald-100 transition-all text-left font-medium">
                    💡 "I am a rural entrepreneur in Bihar seeking ₹5L food processing grant."
                  </button>
                  <button onclick="sendQuickPrompt('I am a woman entrepreneur looking for ₹10 Lakhs business loan without collateral.')" class="bg-teal-50 dark:bg-teal-950/80 text-teal-700 dark:text-teal-300 border border-teal-200 dark:border-teal-800 rounded-xl px-3.5 py-2 hover:bg-teal-100 transition-all text-left font-medium">
                    💡 "I am a woman entrepreneur seeking ₹10L loan without collateral."
                  </button>
                  <button onclick="sendQuickPrompt('I am a traditional artisan practicing wood carving. How can PM Vishwakarma help me?')" class="bg-purple-50 dark:bg-purple-950/80 text-purple-700 dark:text-purple-300 border border-purple-200 dark:border-purple-800 rounded-xl px-3.5 py-2 hover:bg-purple-100 transition-all text-left font-medium">
                    💡 "I am a traditional craftsman. How can PM Vishwakarma help me?"
                  </button>
                </div>
              </div>
            </div>

          </div>

          <!-- Voice & Input Area -->
          <div class="p-4 bg-slate-100/90 dark:bg-slate-900/90 border-t border-slate-200/80 dark:border-slate-800/80 space-y-2">
            
            <!-- Simulated Voice Active Status -->
            <div id="voiceStatus" class="hidden flex items-center justify-between bg-indigo-100 dark:bg-indigo-950 border border-indigo-300 dark:border-indigo-800 px-4 py-2 rounded-xl text-xs text-indigo-700 dark:text-indigo-300">
              <span class="flex items-center gap-2 font-semibold">
                <span class="w-2.5 h-2.5 rounded-full bg-rose-500 animate-ping"></span>
                Listening to Voice Input... (Speak in English, Tamil, or Hindi)
              </span>
              <button onclick="toggleVoiceInput()" class="text-xs font-bold underline">Stop</button>
            </div>

            <form onsubmit="handleChatSubmit(event)" class="flex items-center gap-2">
              
              <!-- Microphone Button -->
              <button type="button" onclick="toggleVoiceInput()" id="micBtn" class="p-3 rounded-2xl border border-slate-200 dark:border-slate-700 hover:bg-white dark:hover:bg-slate-800 text-slate-500 hover:text-indigo-600 transition-all shrink-0 shadow-xs" title="Voice Input (Speech-to-Text)">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 11a7 7 0 01-7 7m0 0a7 7 0 01-7-7m7 7v4m0 0H8m4 0h4m-4-8a3 3 0 01-3-3V5a3 3 0 116 0v6a3 3 0 01-3 3z"/></svg>
              </button>

              <input type="text" id="chatInput" placeholder="Type your message in English, தமிழ், or हिंदी..." class="flex-1 bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-2xl px-4 py-3 text-xs text-slate-900 dark:text-white focus:outline-none focus:border-indigo-500 font-medium">

              <button type="submit" class="btn-bounce bg-gradient-to-r from-indigo-600 via-purple-600 to-teal-500 hover:opacity-95 text-white p-3 rounded-2xl shadow-md transition-all shrink-0">
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3"/></svg>
              </button>
            </form>
          </div>

        </div>
      </section>

      <!-- ================= 3. ENTREPRENEUR PROFILE SCREEN ================= -->
      <section id="screen-profile" class="screen-view max-w-4xl mx-auto space-y-6 fade-in hidden">
        <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-4 border-b border-slate-200 dark:border-slate-800 pb-4">
          <div>
            <h2 class="font-heading text-2xl font-extrabold text-slate-900 dark:text-white">Entrepreneur Profile</h2>
            <p class="text-xs text-slate-500 dark:text-slate-400">AI-extracted information used by the Structured Rule Engine for eligibility evaluation.</p>
          </div>
          
          <!-- Sample Preset Profiles Selector -->
          <div class="flex items-center gap-2">
            <span class="text-xs text-slate-500 font-bold">Load Sample Profile:</span>
            <select onchange="loadPresetProfile(this.value)" class="bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 text-xs rounded-xl px-3.5 py-2 font-bold text-indigo-600 dark:text-indigo-400 cursor-pointer shadow-xs">
              <option value="priya">Priya Sharma (Tamil Nadu - Mfg)</option>
              <option value="rajesh">Rajesh Kumar (Rural Bihar - Agri/Food)</option>
              <option value="kavitha">Kavitha S (Karnataka - Tech Startup)</option>
              <option value="muthu">Muthu Artisan (TN - Craftsman)</option>
            </select>
          </div>
        </div>

        <form id="profileForm" onsubmit="saveProfile(event)" class="glass-card rounded-3xl p-7 shadow-xl space-y-6">
          
          <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4 text-xs">
            <div>
              <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">Full Name</label>
              <input type="text" id="prof-name" value="Priya Sharma" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
            </div>

            <div>
              <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">Age</label>
              <input type="number" id="prof-age" value="26" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
            </div>

            <div>
              <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">Gender</label>
              <select id="prof-gender" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
                <option value="Female" selected>Female</option>
                <option value="Male">Male</option>
                <option value="Transgender">Transgender</option>
                <option value="Prefer not to say">Prefer not to say</option>
              </select>
            </div>

            <div>
              <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">Category / Social Group</label>
              <select id="prof-category" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
                <option value="General">General</option>
                <option value="OBC" selected>OBC</option>
                <option value="SC">SC</option>
                <option value="ST">ST</option>
                <option value="Minority">Minority</option>
                <option value="Ex-Serviceman">Ex-Serviceman</option>
                <option value="PwD">Person with Disability (PwD)</option>
              </select>
            </div>

            <div>
              <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">State</label>
              <input type="text" id="prof-state" value="Tamil Nadu" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
            </div>

            <div>
              <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">District</label>
              <input type="text" id="prof-district" value="Coimbatore" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
            </div>

            <div>
              <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">Area Type</label>
              <select id="prof-area" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
                <option value="Urban" selected>Urban</option>
                <option value="Rural">Rural</option>
              </select>
            </div>

            <div>
              <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">Highest Education</label>
              <select id="prof-education" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
                <option value="Below 8th">Below 8th Pass</option>
                <option value="8th Pass">8th Pass</option>
                <option value="10th Pass">10th Pass</option>
                <option value="12th Pass">12th Pass</option>
                <option value="Diploma">Diploma / ITI</option>
                <option value="Graduate" selected>Graduate / Degree</option>
                <option value="Post Graduate">Post Graduate</option>
              </select>
            </div>

            <div>
              <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">Annual Family Income (₹)</label>
              <input type="number" id="prof-income" value="250000" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
            </div>

            <div>
              <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">Business Stage</label>
              <select id="prof-stage" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
                <option value="Idea Phase">Idea Phase</option>
                <option value="New Business" selected>New / First Generation</option>
                <option value="Existing Expansion">Existing Enterprise Expansion</option>
              </select>
            </div>

            <div>
              <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">Business Sector / Type</label>
              <select id="prof-sector" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
                <option value="Manufacturing" selected>Manufacturing</option>
                <option value="Service Sector">Services</option>
                <option value="Trading / Retail">Trading / Retail</option>
                <option value="Agri / Food Processing">Agri & Food Processing</option>
                <option value="Traditional Crafts / Artisan">Handicrafts / Artisan</option>
                <option value="Technology / Startup">Technology Startup</option>
              </select>
            </div>

            <div>
              <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">Total Funding Required (₹)</label>
              <input type="number" id="prof-funding" value="800000" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
            </div>

            <div>
              <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">Available Own Contribution (₹)</label>
              <input type="number" id="prof-contribution" value="120000" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
            </div>

          </div>

          <div class="flex items-center justify-between border-t border-slate-200 dark:border-slate-800 pt-4">
            <p class="text-[11px] text-slate-500 font-medium">🔒 Privacy Protected: Data stays in your browser session for eligibility logic.</p>
            <button type="submit" class="btn-bounce bg-indigo-600 hover:bg-indigo-700 text-white font-extrabold px-6 py-3 rounded-xl text-xs transition-all shadow-md">
              <span>Save & Update Eligibility Matches</span>
            </button>
          </div>

        </form>
      </section>

      <!-- ================= 4. SCHEME EXPLORER SCREEN ================= -->
      <section id="screen-explorer" class="screen-view max-w-6xl mx-auto space-y-6 fade-in hidden">
        <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-4 border-b border-slate-200 dark:border-slate-800 pb-4">
          <div>
            <h2 class="font-heading text-2xl font-extrabold text-slate-900 dark:text-white">Scheme Explorer (10 Verified Schemes)</h2>
            <p class="text-xs text-slate-500 dark:text-slate-400">Browse central & state government schemes with real eligibility guidelines.</p>
          </div>

          <div class="flex items-center gap-2">
            <input type="text" id="schemeSearchInput" onkeyup="filterSchemes()" placeholder="Search PMEGP, PMFME, MUDRA, NEEDS..." class="bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl px-4 py-2.5 text-xs font-medium w-48 sm:w-64 focus:outline-none focus:border-indigo-500">
            <select id="categoryFilter" onchange="filterSchemes()" class="bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl px-3.5 py-2.5 text-xs font-bold text-slate-700 dark:text-slate-300">
              <option value="ALL">All Categories</option>
              <option value="Manufacturing">Manufacturing</option>
              <option value="Women">Women Entrepreneurship</option>
              <option value="Startup">Startup Support</option>
              <option value="Micro">Micro Enterprise</option>
              <option value="Artisan">Artisans & Crafts</option>
              <option value="Food Processing">Food Processing</option>
            </select>
          </div>
        </div>

        <!-- Grid of Scheme Cards -->
        <div id="explorerGrid" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          <!-- Dynamic rendering via JavaScript -->
        </div>
      </section>

      <!-- ================= 5. SCHEME MATCHES SCREEN ================= -->
      <section id="screen-recommendations" class="screen-view max-w-6xl mx-auto space-y-6 fade-in hidden">
        <div class="flex items-center justify-between border-b border-slate-200 dark:border-slate-800 pb-4">
          <div>
            <h2 class="font-heading text-2xl font-extrabold text-slate-900 dark:text-white">Your Best Scheme Matches</h2>
            <p class="text-xs text-slate-500 dark:text-slate-400">Personalized ranking calculated by the RIAI Recommendation Model & Rule Engine.</p>
          </div>
          <button onclick="switchScreen('compare')" class="btn-bounce bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-extrabold px-5 py-2.5 rounded-xl transition-all shadow-md">
            Compare Selected Schemes →
          </button>
        </div>

        <div class="p-4 bg-amber-50 dark:bg-amber-950/50 border border-amber-200 dark:border-amber-900/60 rounded-2xl text-xs text-amber-800 dark:text-amber-300 flex items-start gap-2.5">
          <svg class="w-5 h-5 shrink-0 text-amber-600" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/></svg>
          <div>
            <span class="font-bold">Transparent Transparency Notice:</span> Match Score ≠ Official Eligibility ≠ Guaranteed Approval. Final sanction is determined strictly by the implementing department or bank.
          </div>
        </div>

        <div id="recommendationsList" class="space-y-5">
          <!-- Dynamic matches rendered by Javascript -->
        </div>
      </section>

      <!-- ================= 7. COMPARE SCHEMES SCREEN ================= -->
      <section id="screen-compare" class="screen-view max-w-6xl mx-auto space-y-6 fade-in hidden">
        <div class="flex items-center justify-between border-b border-slate-200 dark:border-slate-800 pb-4">
          <div>
            <h2 class="font-heading text-2xl font-extrabold text-slate-900 dark:text-white">Scheme Comparison Engine</h2>
            <p class="text-xs text-slate-500 dark:text-slate-400">Side-by-side analysis of benefits, funding limits, subsidy rates, and conditions.</p>
          </div>
        </div>

        <div class="overflow-x-auto glass-card rounded-3xl shadow-xl">
          <table class="w-full text-left text-xs border-collapse">
            <thead>
              <tr class="bg-slate-100/90 dark:bg-slate-800/90 border-b border-slate-200 dark:border-slate-700">
                <th class="p-4 font-heading font-bold text-slate-500 w-48">Feature</th>
                <th class="p-4 font-heading font-bold text-indigo-600 dark:text-indigo-400 border-l border-slate-200 dark:border-slate-700">NEEDS (Tamil Nadu)</th>
                <th class="p-4 font-heading font-bold text-teal-600 dark:text-teal-400 border-l border-slate-200 dark:border-slate-700">PMEGP Scheme</th>
                <th class="p-4 font-heading font-bold text-purple-600 dark:text-purple-400 border-l border-slate-200 dark:border-slate-700">PMFME Scheme</th>
              </tr>
            </thead>
            <tbody class="divide-y divide-slate-200/80 dark:divide-slate-800/80 font-medium">
              <tr>
                <td class="p-3.5 font-bold bg-slate-50/50 dark:bg-slate-900/50">Primary Target Group</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800">Educated First-Gen Youth</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800">Micro Enterprises / All</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800">Micro Food Processing Units</td>
              </tr>
              <tr>
                <td class="p-3.5 font-bold bg-slate-50/50 dark:bg-slate-900/50">Max Funding Amount</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800 font-extrabold text-emerald-600">Up to ₹5.00 Crore</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800 font-extrabold text-emerald-600">Up to ₹50 Lakhs (Mfg)</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800 font-extrabold text-emerald-600">Up to ₹10 Lakhs Subsidy</td>
              </tr>
              <tr>
                <td class="p-3.5 font-bold bg-slate-50/50 dark:bg-slate-900/50">Capital Subsidy / Grant</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800 font-bold text-indigo-600">25% (Max ₹75 Lakhs)</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800 font-bold text-indigo-600">15% - 35% Margin Money</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800 font-bold text-indigo-600">35% Credit-Linked Subsidy</td>
              </tr>
              <tr>
                <td class="p-3.5 font-bold bg-slate-50/50 dark:bg-slate-900/50">Interest Subvention</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800">3% Interest Subvention</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800">Normal Bank Rates</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800">Competitive Bank Rate</td>
              </tr>
              <tr>
                <td class="p-3.5 font-bold bg-slate-50/50 dark:bg-slate-900/50">Own Contribution Required</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800">10% (General) / 5% (Special)</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800">10% (General) / 5% (Special)</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800">10% Beneficiary Equity</td>
              </tr>
              <tr>
                <td class="p-3.5 font-bold bg-slate-50/50 dark:bg-slate-900/50">Required Education</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800 text-amber-600 font-bold">Degree / Diploma Required</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800">8th Pass (Projects > ₹10L)</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800">No Minimum Qualification</td>
              </tr>
              <tr>
                <td class="p-3.5 font-bold bg-slate-50/50 dark:bg-slate-900/50">Collateral Requirement</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800">CGTMSE Covered</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800">No Collateral up to ₹10L</td>
                <td class="p-3.5 border-l border-slate-200 dark:border-slate-800 font-bold text-emerald-600">Collateral Free via CGTMSE</td>
              </tr>
            </tbody>
          </table>
        </div>

        <!-- RIAI Intelligent Recommendation -->
        <div class="bg-gradient-to-r from-indigo-950 via-slate-900 to-indigo-900 text-white rounded-3xl p-7 space-y-3 shadow-xl border border-indigo-500/20">
          <div class="flex items-center gap-2.5 font-heading font-bold text-base text-teal-300">
            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"/></svg>
            RIAI Personalized Scheme Recommendation
          </div>
          <p id="compareRecommendationText" class="text-xs text-slate-300 leading-relaxed font-normal">
            Based on Priya Sharma's profile (<span class="font-bold text-white">Graduate, Tamil Nadu, Manufacturing, ₹8 Lakhs Funding</span>), <span class="font-bold text-teal-300">NEEDS (Tamil Nadu)</span> is your most suitable opportunity because of the 25% capital subsidy (₹2.00 Lakhs direct grant on ₹8L project) plus a 3% interest subvention, matching your graduate degree requirement perfectly.
          </p>
        </div>
      </section>

      <!-- ================= 8-10. DOCUMENT CENTER & OCR SCANNER SCREEN ================= -->
      <section id="screen-documents" class="screen-view max-w-5xl mx-auto space-y-6 fade-in hidden">
        <div class="flex items-center justify-between border-b border-slate-200 dark:border-slate-800 pb-4">
          <div>
            <h2 class="font-heading text-2xl font-extrabold text-slate-900 dark:text-white">Document Center & Image Verification OCR</h2>
            <p class="text-xs text-slate-500 dark:text-slate-400">Upload, scan via camera, or import pictures from File Manager for instant verification.</p>
          </div>
          <span class="px-3.5 py-1.5 bg-indigo-100 dark:bg-indigo-950 text-indigo-700 dark:text-indigo-300 text-xs font-extrabold rounded-full border border-indigo-200 dark:border-indigo-800">
            4 / 6 Ready
          </span>
        </div>

        <!-- Sample Document Type Selector -->
        <div class="flex items-center gap-3 glass-card p-4 rounded-2xl text-xs">
          <span class="font-bold text-indigo-600 dark:text-indigo-400 shrink-0">Test Sample Document Preset:</span>
          <select onchange="loadSampleDocument(this.value)" class="bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-2 text-xs font-bold text-slate-800 dark:text-slate-200 w-full sm:w-auto focus:outline-none">
            <option value="income">Income Certificate (Tahgildar - ₹2.50L)</option>
            <option value="community">Community / Caste Certificate (OBC)</option>
            <option value="degree">Educational Degree Certificate (B.E. Mechanical)</option>
            <option value="gst">GST Registration Certificate</option>
            <option value="udyam">Udyam MSME Registration Certificate</option>
          </select>
        </div>

        <!-- Document Upload & Camera Capture Box -->
        <div class="grid grid-cols-1 md:grid-cols-12 gap-6">
          <div class="md:col-span-6 glass-card rounded-3xl p-7 space-y-4 shadow-xl">
            <h3 class="font-heading font-bold text-base text-slate-900 dark:text-white flex items-center gap-2">
              <svg class="w-5 h-5 text-indigo-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-8l-4-4m0 0L8 8m4-4v12"/></svg>
              Upload / Import Document Picture
            </h3>

            <!-- File Input Area -->
            <div onclick="document.getElementById('fileUploadInput').click()" class="border-2 border-dashed border-slate-300 dark:border-slate-700 hover:border-indigo-500 rounded-2xl p-7 text-center cursor-pointer transition-all bg-slate-50/50 dark:bg-slate-800/50 space-y-2.5">
              <div class="w-14 h-14 rounded-2xl bg-indigo-50 dark:bg-indigo-950 text-indigo-600 flex items-center justify-center mx-auto text-2xl shadow-inner">
                📷
              </div>
              <div class="text-xs font-extrabold text-slate-900 dark:text-white">Click to import picture from File Manager / Gallery</div>
              <p class="text-[11px] text-slate-500 font-medium">Supports PNG, JPG, JPEG, PDF up to 10MB</p>
              <input type="file" id="fileUploadInput" accept="image/*,.pdf" onchange="handleFileUpload(event)" class="hidden">
            </div>

            <div class="flex items-center justify-center gap-3 pt-2">
              <button onclick="document.getElementById('fileUploadInput').click()" class="btn-bounce bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-extrabold px-4.5 py-2.5 rounded-xl transition-all flex items-center gap-2 shadow-md">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z"/></svg>
                Import Picture from Device
              </button>
              <button onclick="simulateCameraCapture()" class="btn-bounce bg-teal-600 hover:bg-teal-700 text-white text-xs font-extrabold px-4.5 py-2.5 rounded-xl transition-all flex items-center gap-2 shadow-md">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 9a2 2 0 012-2h.93a2 2 0 001.664-.89l.812-1.22A2 2 0 0110.07 4h3.86a2 2 0 011.664.89l.812 1.22A2 2 0 0018.07 7H19a2 2 0 012 2v9a2 2 0 01-2 2H5a2 2 0 01-2-2V9z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 13a3 3 0 11-6 0 3 3 0 016 0z"/></svg>
                Scan with Camera
              </button>
            </div>
            
            <p class="text-[11px] text-slate-500 font-medium text-center">🔒 Documents are processed securely and stay strictly under your control.</p>
          </div>

          <!-- Document OCR Extraction Preview -->
          <div class="md:col-span-6 glass-card rounded-3xl p-7 space-y-4 shadow-xl">
            <h3 class="font-heading font-bold text-base text-slate-900 dark:text-white flex items-center gap-2">
              <svg class="w-5 h-5 text-emerald-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/></svg>
              Document Scanner OCR Results
            </h3>

            <div id="ocrStatusBox" class="p-4 bg-slate-100/90 dark:bg-slate-800/90 border border-slate-200 dark:border-slate-700 rounded-2xl space-y-3 text-xs">
              <div class="flex items-center justify-between">
                <span class="font-bold text-indigo-600 dark:text-indigo-400">Document Type Detected:</span>
                <span class="px-2.5 py-1 bg-emerald-100 dark:bg-emerald-950 text-emerald-700 dark:text-emerald-300 font-extrabold rounded-lg" id="ocrDocType">Income Certificate</span>
              </div>
              <div class="space-y-1.5 text-[11px] font-medium" id="ocrDetailsList">
                <div class="flex justify-between"><span>Applicant Name:</span><span class="font-bold">Priya Sharma</span></div>
                <div class="flex justify-between"><span>Annual Income:</span><span class="font-bold">₹2,50,000 / annum</span></div>
                <div class="flex justify-between"><span>Issuing Authority:</span><span class="font-bold">Tahgildar, Coimbatore</span></div>
                <div class="flex justify-between"><span>Issue Date:</span><span class="font-bold">14-Mar-2026</span></div>
                <div class="flex justify-between"><span>Validity Status:</span><span class="font-extrabold text-emerald-600">Valid & Verified</span></div>
              </div>
            </div>

            <div class="p-3.5 bg-amber-50 dark:bg-amber-950/40 border border-amber-200 dark:border-amber-900/60 rounded-2xl text-[11px] text-amber-800 dark:text-amber-300 font-medium">
              ⚠️ <b>Verification Disclaimer:</b> AI document extraction is an assistance feature and does not prove document authenticity or official validity.
            </div>
          </div>
        </div>

        <!-- Document Checklist -->
        <div class="glass-card rounded-3xl p-7 space-y-4 shadow-xl">
          <h3 class="font-heading font-bold text-lg text-slate-900 dark:text-white">NEEDS Scheme Document Checklist</h3>
          
          <div class="grid grid-cols-1 md:grid-cols-2 gap-3 text-xs font-semibold">
            <div class="p-3.5 rounded-2xl border border-emerald-200 dark:border-emerald-900/60 bg-emerald-50/60 dark:bg-emerald-950/30 flex items-center justify-between">
              <div class="flex items-center gap-2.5">
                <span class="w-6 h-6 rounded-full bg-emerald-500 text-white flex items-center justify-center font-bold text-xs">✓</span>
                <span>Aadhaar Card / ID Proof</span>
              </div>
              <span class="text-[10px] font-extrabold text-emerald-700 dark:text-emerald-400">Verified</span>
            </div>

            <div class="p-3.5 rounded-2xl border border-emerald-200 dark:border-emerald-900/60 bg-emerald-50/60 dark:bg-emerald-950/30 flex items-center justify-between">
              <div class="flex items-center gap-2.5">
                <span class="w-6 h-6 rounded-full bg-emerald-500 text-white flex items-center justify-center font-bold text-xs">✓</span>
                <span>Educational Certificate (Degree)</span>
              </div>
              <span class="text-[10px] font-extrabold text-emerald-700 dark:text-emerald-400">Verified</span>
            </div>

            <div class="p-3.5 rounded-2xl border border-emerald-200 dark:border-emerald-900/60 bg-emerald-50/60 dark:bg-emerald-950/30 flex items-center justify-between">
              <div class="flex items-center gap-2.5">
                <span class="w-6 h-6 rounded-full bg-emerald-500 text-white flex items-center justify-center font-bold text-xs">✓</span>
                <span>Community / Caste Certificate</span>
              </div>
              <span class="text-[10px] font-extrabold text-emerald-700 dark:text-emerald-400">Verified</span>
            </div>

            <div class="p-3.5 rounded-2xl border border-emerald-200 dark:border-emerald-900/60 bg-emerald-50/60 dark:bg-emerald-950/30 flex items-center justify-between">
              <div class="flex items-center gap-2.5">
                <span class="w-6 h-6 rounded-full bg-emerald-500 text-white flex items-center justify-center font-bold text-xs">✓</span>
                <span>Income Certificate</span>
              </div>
              <span class="text-[10px] font-extrabold text-emerald-700 dark:text-emerald-400">Verified</span>
            </div>

            <div class="p-3.5 rounded-2xl border border-rose-200 dark:border-rose-900/60 bg-rose-50/60 dark:bg-rose-950/30 flex items-center justify-between">
              <div class="flex items-center gap-2.5">
                <span class="w-6 h-6 rounded-full bg-rose-500 text-white flex items-center justify-center font-bold text-xs">✕</span>
                <span class="font-bold text-rose-700 dark:text-rose-300">Detailed Project Report (DPR)</span>
              </div>
              <span class="text-[10px] font-extrabold text-rose-700 dark:text-rose-400">Missing</span>
            </div>

            <div class="p-3.5 rounded-2xl border border-amber-200 dark:border-amber-900/60 bg-amber-50/60 dark:bg-amber-950/30 flex items-center justify-between">
              <div class="flex items-center gap-2.5">
                <span class="w-6 h-6 rounded-full bg-amber-500 text-white flex items-center justify-center font-bold text-xs">!</span>
                <span class="font-bold text-amber-700 dark:text-amber-300">Bank Statement / Land Lease</span>
              </div>
              <span class="text-[10px] font-extrabold text-amber-700 dark:text-amber-400">Pending</span>
            </div>
          </div>
        </div>
      </section>

      <!-- ================= 11-12. GOVERNMENT PDF & T&C ANALYZER SCREEN ================= -->
      <section id="screen-pdf_analyzer" class="screen-view max-w-5xl mx-auto space-y-6 fade-in hidden">
        <div class="flex items-center justify-between border-b border-slate-200 dark:border-slate-800 pb-4">
          <div>
            <h2 class="font-heading text-2xl font-extrabold text-slate-900 dark:text-white">Government Document & T&C Analyzer</h2>
            <p class="text-xs text-slate-500 dark:text-slate-400">AI-powered simplification of official scheme notifications, circulars, and guidelines.</p>
          </div>
        </div>

        <div class="glass-card rounded-3xl p-7 space-y-6 shadow-xl">
          
          <div class="flex flex-wrap items-center justify-between gap-4 p-4 bg-slate-100/80 dark:bg-slate-800/80 rounded-2xl border border-slate-200 dark:border-slate-700">
            <div>
              <div class="font-bold text-sm text-indigo-600 dark:text-indigo-400">Selected Policy PDF:</div>
              <div class="text-xs text-slate-900 dark:text-white font-extrabold">NEEDS_Scheme_Guidelines_2026_Notification.pdf</div>
            </div>
            <button onclick="alert('Demo: Sample Government Notification loaded successfully.')" class="btn-bounce bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-extrabold px-4.5 py-2.5 rounded-xl transition-all shadow-md">
              Upload Custom PDF Circular
            </button>
          </div>

          <!-- Document Summary -->
          <div class="space-y-2">
            <h3 class="font-heading font-bold text-base text-slate-900 dark:text-white">Document Executive Summary</h3>
            <p class="text-xs text-slate-600 dark:text-slate-300 leading-relaxed font-normal">
              This official notification details the 2026 updates to the New Entrepreneur-cum-Enterprise Development Scheme (NEEDS) by the Industries Department, Government of Tamil Nadu. It provides 25% capital subsidy up to ₹75 Lakhs for educated first-generation entrepreneurs setting up manufacturing or service enterprises.
            </p>
          </div>

          <!-- RIAI Focus Priority Badges -->
          <div class="space-y-4 border-t border-slate-200 dark:border-slate-800 pt-5">
            <h3 class="font-heading font-bold text-base text-slate-900 dark:text-white">RIAI Focus — Personalized Priority Checklist</h3>
            
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 text-xs">
              <div class="p-4 bg-rose-50 dark:bg-rose-950/40 border border-rose-200 dark:border-rose-900/60 rounded-2xl space-y-1.5 shadow-xs">
                <span class="px-2.5 py-0.5 bg-rose-600 text-white text-[10px] font-extrabold rounded-full">🔴 High Priority</span>
                <div class="font-bold text-rose-900 dark:text-rose-300">Degree / Diploma Qualification</div>
                <p class="text-[11px] text-rose-800 dark:text-rose-400 font-medium">Applicant MUST produce a valid Degree/Diploma mark sheet from a recognized university.</p>
              </div>

              <div class="p-4 bg-amber-50 dark:bg-amber-950/40 border border-amber-200 dark:border-amber-900/60 rounded-2xl space-y-1.5 shadow-xs">
                <span class="px-2.5 py-0.5 bg-amber-600 text-white text-[10px] font-extrabold rounded-full">🟠 Important</span>
                <div class="font-bold text-amber-900 dark:text-amber-300">Own Contribution Requirement</div>
                <p class="text-[11px] text-amber-800 dark:text-amber-400 font-medium">General category requires 10% own equity; Special categories require minimum 5% equity.</p>
              </div>

              <div class="p-4 bg-blue-50 dark:bg-blue-950/40 border border-blue-200 dark:border-blue-900/60 rounded-2xl space-y-1.5 shadow-xs">
                <span class="px-2.5 py-0.5 bg-blue-600 text-white text-[10px] font-extrabold rounded-full">🟡 Preparation</span>
                <div class="font-bold text-blue-900 dark:text-blue-300">Project Report (DPR) Submission</div>
                <p class="text-[11px] text-blue-800 dark:text-blue-400 font-medium">Bankable Project Report detailing machinery specs and cashflow projections is mandatory.</p>
              </div>

              <div class="p-4 bg-emerald-50 dark:bg-emerald-950/40 border border-emerald-200 dark:border-emerald-900/60 rounded-2xl space-y-1.5 shadow-xs">
                <span class="px-2.5 py-0.5 bg-emerald-600 text-white text-[10px] font-extrabold rounded-full">🟢 Already Ready</span>
                <div class="font-bold text-emerald-900 dark:text-emerald-300">Age & Residency Condition</div>
                <p class="text-[11px] text-emerald-800 dark:text-emerald-400 font-medium">Applicant age (26) satisfies the 21-35 age bracket for Tamil Nadu residents.</p>
              </div>
            </div>
          </div>

        </div>
      </section>

      <!-- ================= 13. FINANCIAL READINESS SCREEN ================= -->
      <section id="screen-financial" class="screen-view max-w-4xl mx-auto space-y-6 fade-in hidden">
        <div class="border-b border-slate-200 dark:border-slate-800 pb-4">
          <h2 class="font-heading text-2xl font-extrabold text-slate-900 dark:text-white">Financial Readiness Calculator</h2>
          <p class="text-xs text-slate-500 dark:text-slate-400">Evaluate your required capital, bank loan entitlement, subsidy portion, and own equity contribution.</p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-12 gap-6">
          <!-- Input Controls -->
          <div class="md:col-span-6 glass-card rounded-3xl p-7 space-y-4 shadow-xl">
            <h3 class="font-heading font-bold text-base">Financial Parameters</h3>
            
            <div class="space-y-3.5 text-xs">
              <div>
                <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">Total Project Cost (₹)</label>
                <input type="number" id="calcProjectCost" value="800000" onchange="calculateFinancials()" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
              </div>

              <div>
                <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">Target Scheme</label>
                <select id="calcSchemeSelect" onchange="calculateFinancials()" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
                  <option value="NEEDS">NEEDS (25% Subsidy, 5% Contribution)</option>
                  <option value="PMEGP">PMEGP (35% Subsidy, 5% Contribution)</option>
                  <option value="PMFME">PMFME (35% Subsidy, 10% Contribution)</option>
                  <option value="MUDRA">MUDRA Tarun (0% Subsidy, 10% Contribution)</option>
                </select>
              </div>

              <div>
                <label class="block font-bold mb-1.5 text-slate-700 dark:text-slate-300">Your Available Savings / Own Contribution (₹)</label>
                <input type="number" id="calcOwnContribution" value="120000" onchange="calculateFinancials()" class="w-full bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl p-3 text-xs font-semibold">
              </div>
            </div>
          </div>

          <!-- Financial Breakdown Card -->
          <div class="md:col-span-6 glass-card rounded-3xl p-7 space-y-4 flex flex-col justify-between shadow-xl">
            <div>
              <h3 class="font-heading font-bold text-base mb-3">Estimated Capital Distribution</h3>
              
              <div class="space-y-2.5 text-xs font-medium">
                <div class="flex justify-between p-3 rounded-xl bg-indigo-50 dark:bg-indigo-950/60 border border-indigo-100 dark:border-indigo-900/40">
                  <span>Required Own Equity (5%):</span>
                  <span class="font-extrabold text-indigo-700 dark:text-indigo-300" id="resMinOwn">₹40,000</span>
                </div>
                <div class="flex justify-between p-3 rounded-xl bg-teal-50 dark:bg-teal-950/60 border border-teal-100 dark:border-teal-900/40">
                  <span>Govt Capital Subsidy (25%):</span>
                  <span class="font-extrabold text-teal-600 dark:text-teal-400" id="resSubsidy">₹2,00,000</span>
                </div>
                <div class="flex justify-between p-3 rounded-xl bg-emerald-50 dark:bg-emerald-950/60 border border-emerald-100 dark:border-emerald-900/40">
                  <span>Bank Loan Requirement (70%):</span>
                  <span class="font-extrabold text-emerald-600 dark:text-emerald-400" id="resBankLoan">₹5,60,000</span>
                </div>
              </div>
            </div>

            <div id="financialStatusBox" class="p-4 bg-emerald-100 dark:bg-emerald-950 border border-emerald-300 dark:border-emerald-800 rounded-2xl text-xs text-emerald-800 dark:text-emerald-300 space-y-1">
              <div class="font-heading font-bold flex items-center gap-2">
                <span>✓ Financial Readiness Clear</span>
              </div>
              <p class="text-[11px] font-medium">Your available contribution (₹1,20,000) comfortably satisfies the required equity (₹40,000).</p>
            </div>
          </div>
        </div>
      </section>

      <!-- ================= 14. APPLICATION READINESS SCORE SCREEN ================= -->
      <section id="screen-readiness" class="screen-view max-w-4xl mx-auto space-y-6 fade-in hidden">
        <div class="border-b border-slate-200 dark:border-slate-800 pb-4">
          <h2 class="font-heading text-2xl font-extrabold text-slate-900 dark:text-white">Application Readiness Engine</h2>
          <p class="text-xs text-slate-500 dark:text-slate-400">RIAI overall guidance score calculated across eligibility, documentation, and financials.</p>
        </div>

        <div class="glass-card rounded-3xl p-7 space-y-6 shadow-xl">
          
          <div class="flex flex-col sm:flex-row items-center justify-between gap-6 p-7 bg-gradient-to-br from-indigo-950 via-slate-900 to-indigo-900 text-white rounded-2xl border border-indigo-500/20 shadow-lg">
            <div class="space-y-1 text-center sm:text-left">
              <div class="text-xs font-extrabold text-teal-300 uppercase tracking-wider">RIAI Application Guidance Score</div>
              <div class="font-heading text-5xl font-black">72% Ready</div>
              <p class="text-xs text-slate-300 font-medium">High probability of successful application submission.</p>
            </div>
            
            <div class="text-[10px] bg-white/10 p-3.5 rounded-xl border border-white/20 max-w-xs text-slate-300 backdrop-blur-md">
              ℹ️ <b>Disclaimer:</b> This is an internal RIAI guidance score and does not guarantee official sanction by the government department.
            </div>
          </div>

          <!-- Component Breakdown Progress Bars -->
          <div class="space-y-4 text-xs font-bold">
            <div>
              <div class="flex justify-between mb-1.5">
                <span>Rule Engine Eligibility</span>
                <span class="text-emerald-600 font-extrabold">100% Satisfied</span>
              </div>
              <div class="w-full bg-slate-200 dark:bg-slate-800 h-3 rounded-full overflow-hidden shadow-inner">
                <div class="bg-emerald-500 h-full rounded-full" style="width: 100%;"></div>
              </div>
            </div>

            <div>
              <div class="flex justify-between mb-1.5">
                <span>Document Verification</span>
                <span class="text-indigo-600 font-extrabold">70% Ready (4/6 Docs)</span>
              </div>
              <div class="w-full bg-slate-200 dark:bg-slate-800 h-3 rounded-full overflow-hidden shadow-inner">
                <div class="bg-indigo-500 h-full rounded-full" style="width: 70%;"></div>
              </div>
            </div>

            <div>
              <div class="flex justify-between mb-1.5">
                <span>Financial Contribution Capacity</span>
                <span class="text-teal-600 font-extrabold">100% Satisfied</span>
              </div>
              <div class="w-full bg-slate-200 dark:bg-slate-800 h-3 rounded-full overflow-hidden shadow-inner">
                <div class="bg-teal-500 h-full rounded-full" style="width: 100%;"></div>
              </div>
            </div>

            <div>
              <div class="flex justify-between mb-1.5">
                <span>Detailed Project Report (DPR)</span>
                <span class="text-rose-600 font-extrabold">0% Pending</span>
              </div>
              <div class="w-full bg-slate-200 dark:bg-slate-800 h-3 rounded-full overflow-hidden shadow-inner">
                <div class="bg-rose-500 h-full rounded-full" style="width: 0%;"></div>
              </div>
            </div>
          </div>

        </div>
      </section>

      <!-- ================= 15. WHAT SHOULD I DO NEXT? SCREEN ================= -->
      <section id="screen-next_actions" class="screen-view max-w-4xl mx-auto space-y-6 fade-in hidden">
        <div class="border-b border-slate-200 dark:border-slate-800 pb-4">
          <h2 class="font-heading text-2xl font-extrabold text-slate-900 dark:text-white">What Should I Do Next?</h2>
          <p class="text-xs text-slate-500 dark:text-slate-400">Your top priority next actions to complete your application readiness.</p>
        </div>

        <div class="space-y-4">
          <div class="p-5 glass-card rounded-3xl flex items-start gap-4 shadow-lg hover:border-indigo-500/50 transition-all">
            <div class="w-10 h-10 rounded-2xl bg-indigo-600 text-white flex items-center justify-center font-heading font-black text-base shrink-0 shadow-md">
              1
            </div>
            <div class="flex-1 space-y-1.5 text-xs">
              <div class="font-heading font-bold text-lg text-slate-900 dark:text-white">Prepare Detailed Project Report (DPR)</div>
              <p class="text-slate-600 dark:text-slate-400 font-normal">Download the official MSME DPR template or use a certified chartered accountant to prepare machine quotes and financial projections.</p>
              <div class="pt-2 flex items-center gap-2">
                <button onclick="toggleTaskCompletion(1)" class="btn-bounce bg-indigo-600 hover:bg-indigo-700 text-white text-xs px-4 py-2 rounded-xl font-bold shadow-xs">Mark Completed ✓</button>
              </div>
            </div>
          </div>

          <div class="p-5 glass-card rounded-3xl flex items-start gap-4 shadow-lg hover:border-teal-500/50 transition-all">
            <div class="w-10 h-10 rounded-2xl bg-teal-600 text-white flex items-center justify-center font-heading font-black text-base shrink-0 shadow-md">
              2
            </div>
            <div class="flex-1 space-y-1.5 text-xs">
              <div class="font-heading font-bold text-lg text-slate-900 dark:text-white">Obtain Land Lease / Quotations</div>
              <p class="text-slate-600 dark:text-slate-400 font-normal">Gather machinery price quotations from authorized suppliers for your textile manufacturing unit in Coimbatore.</p>
              <div class="pt-2 flex items-center gap-2">
                <button onclick="toggleTaskCompletion(2)" class="btn-bounce bg-teal-600 hover:bg-teal-700 text-white text-xs px-4 py-2 rounded-xl font-bold shadow-xs">Mark Completed ✓</button>
              </div>
            </div>
          </div>

          <div class="p-5 glass-card rounded-3xl flex items-start gap-4 shadow-lg hover:border-purple-500/50 transition-all">
            <div class="w-10 h-10 rounded-2xl bg-purple-600 text-white flex items-center justify-center font-heading font-black text-base shrink-0 shadow-md">
              3
            </div>
            <div class="flex-1 space-y-1.5 text-xs">
              <div class="font-heading font-bold text-lg text-slate-900 dark:text-white">Apply via Official Government Portal</div>
              <p class="text-slate-600 dark:text-slate-400 font-normal">Navigate to MSME Tamil Nadu Single Window Portal (msmeonline.tn.gov.in) and upload your verified document bundle.</p>
              <div class="pt-2 flex items-center gap-2">
                <a href="https://msmeonline.tn.gov.in" target="_blank" class="btn-bounce bg-gradient-to-r from-indigo-600 to-teal-600 text-white text-xs px-5 py-2 rounded-xl font-extrabold flex items-center gap-2 shadow-md">
                  Official Govt Portal →
                </a>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- ================= 16. APPLICATION JOURNEY ROADMAP SCREEN ================= -->
      <section id="screen-journey" class="screen-view max-w-4xl mx-auto space-y-6 fade-in hidden">
        <div class="border-b border-slate-200 dark:border-slate-800 pb-4">
          <h2 class="font-heading text-2xl font-extrabold text-slate-900 dark:text-white">Application Journey Roadmap</h2>
          <p class="text-xs text-slate-500 dark:text-slate-400">8-step end-to-end milestone tracker from initial match to official sanction.</p>
        </div>

        <div class="glass-card rounded-3xl p-7 space-y-6 shadow-xl">
          
          <div class="space-y-7 relative border-l-2 border-indigo-200 dark:border-indigo-900 ml-4 pl-7 text-xs font-medium">
            
            <div class="relative">
              <div class="absolute -left-[35px] top-0 w-4 h-4 rounded-full bg-emerald-500 ring-4 ring-emerald-100 dark:ring-emerald-950"></div>
              <div class="font-heading font-bold text-base text-emerald-600 dark:text-emerald-400">Step 1: Check Eligibility ✓</div>
              <p class="text-slate-500">Rule Engine evaluated profile against NEEDS 2026 guidelines.</p>
            </div>

            <div class="relative">
              <div class="absolute -left-[35px] top-0 w-4 h-4 rounded-full bg-emerald-500 ring-4 ring-emerald-100 dark:ring-emerald-950"></div>
              <div class="font-heading font-bold text-base text-emerald-600 dark:text-emerald-400">Step 2: Collect & Verify Documents ✓</div>
              <p class="text-slate-500">Identity, education, and community certificates verified via Document Scanner.</p>
            </div>

            <div class="relative">
              <div class="absolute -left-[35px] top-0 w-4 h-4 rounded-full bg-indigo-600 ring-4 ring-indigo-100 dark:ring-indigo-950"></div>
              <div class="font-heading font-bold text-base text-indigo-600 dark:text-indigo-400">Step 3: Entrepreneurship Training Registration (EDII) ⏳</div>
              <p class="text-slate-500">Mandatory 12-day Entrepreneurship Development Programme (EDP) training.</p>
            </div>

            <div class="relative">
              <div class="absolute -left-[35px] top-0 w-4 h-4 rounded-full bg-slate-300 dark:bg-slate-700"></div>
              <div class="font-heading font-bold text-base text-slate-400">Step 4: Prepare Project Report & Machinery Quotes</div>
              <p class="text-slate-500">Formulate detailed cashflows and bankable proposal.</p>
            </div>

            <div class="relative">
              <div class="absolute -left-[35px] top-0 w-4 h-4 rounded-full bg-slate-300 dark:bg-slate-700"></div>
              <div class="font-heading font-bold text-base text-slate-400">Step 5: Fill Application on Official Portal</div>
              <p class="text-slate-500">Log in to msmeonline.tn.gov.in and submit data.</p>
            </div>

            <div class="relative">
              <div class="absolute -left-[35px] top-0 w-4 h-4 rounded-full bg-slate-300 dark:bg-slate-700"></div>
              <div class="font-heading font-bold text-base text-slate-400">Step 6: Task Force Committee Interview (DIC)</div>
              <p class="text-slate-500">District Level Task Force Committee interview for scheme sanction.</p>
            </div>

            <div class="relative">
              <div class="absolute -left-[35px] top-0 w-4 h-4 rounded-full bg-slate-300 dark:bg-slate-700"></div>
              <div class="font-heading font-bold text-base text-slate-400">Step 7: Bank Loan Sanction & Subsidy Release</div>
              <p class="text-slate-500">Formal loan agreement and subsidy deposit into bank account.</p>
            </div>
          </div>

        </div>
      </section>

      <!-- ================= 17. NEARBY SUPPORT CENTRES SCREEN ================= -->
      <section id="screen-support" class="screen-view max-w-5xl mx-auto space-y-6 fade-in hidden">
        <div class="flex items-center justify-between border-b border-slate-200 dark:border-slate-800 pb-4">
          <div>
            <h2 class="font-heading text-2xl font-extrabold text-slate-900 dark:text-white">Find Support Near Me</h2>
            <p class="text-xs text-slate-500 dark:text-slate-400">Locate District Industries Centres (DIC), MSME offices, and partner banks.</p>
          </div>
          <button onclick="requestGeolocation()" class="btn-bounce bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-extrabold px-4 py-2.5 rounded-xl transition-all flex items-center gap-2 shadow-md">
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"/></svg>
            Use My Location
          </button>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-5 text-xs">
          <div class="glass-card rounded-3xl p-6 space-y-3 shadow-lg hover:border-indigo-500/50 transition-all">
            <div class="flex items-center justify-between font-heading font-bold text-sm text-indigo-600 dark:text-indigo-400">
              <span>District Industries Centre (DIC) — Coimbatore</span>
              <span class="text-[10px] bg-indigo-100 text-indigo-700 dark:bg-indigo-950 dark:text-indigo-300 px-2.5 py-0.5 rounded-full font-extrabold">2.4 km away</span>
            </div>
            <p class="text-slate-500 font-normal">Govt Implementing Authority for NEEDS, PMEGP, UYEGP in Coimbatore district.</p>
            <div class="text-[11px] font-bold text-slate-800 dark:text-slate-200">📍 Dr. Balasundaram Road, ATT Colony, Coimbatore - 641018</div>
            <div class="pt-2 flex items-center gap-2">
              <a href="tel:04222240409" class="bg-slate-100 dark:bg-slate-800 border border-slate-200 dark:border-slate-700 px-3.5 py-2 rounded-xl font-bold hover:bg-indigo-50">📞 Call Office</a>
              <a href="https://maps.google.com" target="_blank" class="bg-indigo-600 text-white px-3.5 py-2 rounded-xl font-bold shadow-xs">Directions →</a>
            </div>
          </div>

          <div class="glass-card rounded-3xl p-6 space-y-3 shadow-lg hover:border-teal-500/50 transition-all">
            <div class="flex items-center justify-between font-heading font-bold text-sm text-teal-600 dark:text-teal-400">
              <span>MSME Development & Facilitation Office (MSME-DFO)</span>
              <span class="text-[10px] bg-teal-100 text-teal-700 dark:bg-teal-950 dark:text-teal-300 px-2.5 py-0.5 rounded-full font-extrabold">5.1 km away</span>
            </div>
            <p class="text-slate-500 font-normal">Central Government MSME support, project guidance, and incubation centre.</p>
            <div class="text-[11px] font-bold text-slate-800 dark:text-slate-200">📍 65/1, GST Road, Guindy / District Office Branch</div>
            <div class="pt-2 flex items-center gap-2">
              <a href="tel:04422501011" class="bg-slate-100 dark:bg-slate-800 border border-slate-200 dark:border-slate-700 px-3.5 py-2 rounded-xl font-bold hover:bg-teal-50">📞 Call Office</a>
              <a href="https://maps.google.com" target="_blank" class="bg-teal-600 text-white px-3.5 py-2 rounded-xl font-bold shadow-xs">Directions →</a>
            </div>
          </div>

          <div class="glass-card rounded-3xl p-6 space-y-3 shadow-lg hover:border-purple-500/50 transition-all">
            <div class="flex items-center justify-between font-heading font-bold text-sm text-purple-600 dark:text-purple-400">
              <span>EDII - Entrepreneurship Development & Innovation Institute</span>
              <span class="text-[10px] bg-purple-100 text-purple-700 dark:bg-purple-950 dark:text-purple-300 px-2.5 py-0.5 rounded-full font-extrabold">3.8 km away</span>
            </div>
            <p class="text-slate-500 font-normal">Mandatory EDP Training Provider for NEEDS and UYEGP beneficiaries.</p>
            <div class="text-[11px] font-bold text-slate-800 dark:text-slate-200">📍 Parthasarathy Koil Street, SIDCO Industrial Estate</div>
            <div class="pt-2 flex items-center gap-2">
              <a href="tel:04422252081" class="bg-slate-100 dark:bg-slate-800 border border-slate-200 dark:border-slate-700 px-3.5 py-2 rounded-xl font-bold hover:bg-purple-50">📞 Call Hub</a>
              <a href="https://maps.google.com" target="_blank" class="bg-purple-600 text-white px-3.5 py-2 rounded-xl font-bold shadow-xs">Directions →</a>
            </div>
          </div>

          <div class="glass-card rounded-3xl p-6 space-y-3 shadow-lg hover:border-emerald-500/50 transition-all">
            <div class="flex items-center justify-between font-heading font-bold text-sm text-emerald-600 dark:text-emerald-400">
              <span>State Bank of India (SBI) Specialized MSME Branch</span>
              <span class="text-[10px] bg-emerald-100 text-emerald-700 dark:bg-emerald-950 dark:text-emerald-300 px-2.5 py-0.5 rounded-full font-extrabold">1.8 km away</span>
            </div>
            <p class="text-slate-500 font-normal">Nodal Partner Bank for PMEGP, NEEDS capital subsidy & MUDRA loan sanctions.</p>
            <div class="text-[11px] font-bold text-slate-800 dark:text-slate-200">📍 Commercial Branch, DB Road, RS Puram, Coimbatore</div>
            <div class="pt-2 flex items-center gap-2">
              <a href="tel:04222471201" class="bg-slate-100 dark:bg-slate-800 border border-slate-200 dark:border-slate-700 px-3.5 py-2 rounded-xl font-bold hover:bg-emerald-50">📞 Call Manager</a>
              <a href="https://maps.google.com" target="_blank" class="bg-emerald-600 text-white px-3.5 py-2 rounded-xl font-bold shadow-xs">Directions →</a>
            </div>
          </div>
        </div>
      </section>

      <!-- ================= 19. ENTREPRENEUR DASHBOARD SCREEN ================= -->
      <section id="screen-dashboard" class="screen-view max-w-6xl mx-auto space-y-6 fade-in hidden">
        <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-4 border-b border-slate-200 dark:border-slate-800 pb-4">
          <div>
            <h2 class="font-heading text-3xl font-extrabold text-slate-900 dark:text-white" id="dashGreeting">Hello, Priya Sharma 👋</h2>
            <p class="text-xs text-slate-500 dark:text-slate-400">Welcome back to your RIAI Entrepreneurship Hub.</p>
          </div>
          <button onclick="switchScreen('chat')" class="btn-bounce bg-gradient-to-r from-indigo-600 via-purple-600 to-teal-500 text-white text-xs font-extrabold px-5 py-3 rounded-2xl shadow-md">
            Ask RIAI Assistant →
          </button>
        </div>

        <!-- Dashboard Stats Cards -->
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-5">
          <div class="p-5 glass-card rounded-3xl space-y-1 shadow-lg">
            <div class="text-xs text-slate-500 font-bold">Profile Completion</div>
            <div class="font-heading text-3xl font-black text-indigo-600 dark:text-indigo-400" id="dashProfilePct">85%</div>
            <div class="text-[10px] text-emerald-600 font-semibold">All core fields satisfied</div>
          </div>

          <div class="p-5 glass-card rounded-3xl space-y-1 shadow-lg">
            <div class="text-xs text-slate-500 font-bold">Application Readiness</div>
            <div class="font-heading text-3xl font-black text-teal-600 dark:text-teal-400">72%</div>
            <div class="text-[10px] text-teal-600 font-semibold">Ready for DPR step</div>
          </div>

          <div class="p-5 glass-card rounded-3xl space-y-1 shadow-lg">
            <div class="text-xs text-slate-500 font-bold">Matched Schemes</div>
            <div class="font-heading text-3xl font-black text-purple-600 dark:text-purple-400">10 Schemes</div>
            <div class="text-[10px] text-purple-600 font-semibold">Top Match: NEEDS (94%)</div>
          </div>

          <div class="p-5 glass-card rounded-3xl space-y-1 shadow-lg">
            <div class="text-xs text-slate-500 font-bold">Document Status</div>
            <div class="font-heading text-3xl font-black text-emerald-600 dark:text-emerald-400">4 / 6 Ready</div>
            <div class="text-[10px] text-amber-600 font-semibold">1 Missing, 1 Pending</div>
          </div>
        </div>

        <!-- Quick Links Grid -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
          <div class="glass-card rounded-3xl p-6 space-y-4 shadow-xl">
            <h3 class="font-heading font-bold text-base text-slate-900 dark:text-white">Top Scheme Matches</h3>
            <div class="space-y-3 text-xs">
              <div onclick="switchScreen('recommendations')" class="p-3.5 bg-slate-50 dark:bg-slate-800/80 border border-slate-200 dark:border-slate-700 rounded-2xl flex items-center justify-between cursor-pointer hover:border-indigo-500 transition-all">
                <div>
                  <div class="font-bold text-slate-900 dark:text-white">NEEDS (Tamil Nadu)</div>
                  <div class="text-[11px] text-slate-500">25% Capital Subsidy up to ₹75 Lakhs</div>
                </div>
                <span class="px-3 py-1 bg-teal-600 text-white rounded-full font-extrabold text-[10px]">94% Match</span>
              </div>

              <div onclick="switchScreen('recommendations')" class="p-3.5 bg-slate-50 dark:bg-slate-800/80 border border-slate-200 dark:border-slate-700 rounded-2xl flex items-center justify-between cursor-pointer hover:border-indigo-500 transition-all">
                <div>
                  <div class="font-bold text-slate-900 dark:text-white">PMEGP Scheme</div>
                  <div class="text-[11px] text-slate-500">Up to 35% Margin Money Subsidy</div>
                </div>
                <span class="px-3 py-1 bg-indigo-600 text-white rounded-full font-extrabold text-[10px]">87% Match</span>
              </div>
            </div>
          </div>

          <div class="glass-card rounded-3xl p-6 space-y-4 shadow-xl">
            <h3 class="font-heading font-bold text-base text-slate-900 dark:text-white">Next Actions Required</h3>
            <div class="space-y-3 text-xs">
              <div class="p-3.5 bg-slate-50 dark:bg-slate-800/80 border border-slate-200 dark:border-slate-700 rounded-2xl flex items-center justify-between">
                <div>
                  <div class="font-bold text-rose-600 dark:text-rose-400">1. Prepare Project Report (DPR)</div>
                  <div class="text-[11px] text-slate-500 font-medium">Bankable cashflow statement</div>
                </div>
                <button onclick="switchScreen('next_actions')" class="text-xs text-indigo-600 dark:text-indigo-400 font-bold">Start →</button>
              </div>

              <div class="p-3.5 bg-slate-50 dark:bg-slate-800/80 border border-slate-200 dark:border-slate-700 rounded-2xl flex items-center justify-between">
                <div>
                  <div class="font-bold text-slate-900 dark:text-white">2. Gather Machinery Quotes</div>
                  <div class="text-[11px] text-slate-500">Equipment supplier quotations</div>
                </div>
                <button onclick="switchScreen('next_actions')" class="text-xs text-indigo-600 dark:text-indigo-400 font-bold">View →</button>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- ================= 21. PRIVACY & SECURITY SCREEN ================= -->
      <section id="screen-privacy" class="screen-view max-w-4xl mx-auto space-y-6 fade-in hidden">
        <div class="border-b border-slate-200 dark:border-slate-800 pb-4">
          <h2 class="font-heading text-2xl font-extrabold text-slate-900 dark:text-white">Privacy & Data Security Center</h2>
          <p class="text-xs text-slate-500 dark:text-slate-400">User-controlled data architecture, session isolation, and encryption principles.</p>
        </div>

        <div class="glass-card rounded-3xl p-7 space-y-5 text-xs shadow-xl">
          <div class="p-5 bg-emerald-50 dark:bg-emerald-950/50 border border-emerald-200 dark:border-emerald-900/60 rounded-2xl space-y-1.5">
            <div class="font-heading font-bold text-base text-emerald-900 dark:text-emerald-300">🛡️ Local Session Storage Privacy</div>
            <p class="text-emerald-800 dark:text-emerald-400 font-medium">All profile details, document OCR data, and calculated eligibility results remain strictly stored in your local web browser session.</p>
          </div>

          <div class="p-5 bg-slate-100/80 dark:bg-slate-800/80 border border-slate-200 dark:border-slate-700 rounded-2xl space-y-3">
            <div class="font-heading font-bold text-base">User Control & Data Erasure</div>
            <p class="text-slate-600 dark:text-slate-400 font-normal">You can delete uploaded documents or reset your entrepreneur profile at any time with a single click.</p>
            <button onclick="localStorage.clear(); alert('Local session cache cleared.'); location.reload();" class="btn-bounce bg-rose-600 text-white px-4 py-2 rounded-xl font-extrabold text-xs shadow-md">
              Clear All My Session Data Now
            </button>
          </div>
        </div>
      </section>

      <!-- ================= 22. ABOUT RIAI & SYSTEM ARCHITECTURE SCREEN ================= -->
      <section id="screen-about" class="screen-view max-w-5xl mx-auto space-y-6 fade-in hidden">
        <div class="border-b border-slate-200 dark:border-slate-800 pb-4">
          <h2 class="font-heading text-2xl font-extrabold text-slate-900 dark:text-white">About RIAI — AI Role Separation & Tech Specs</h2>
          <p class="text-xs text-slate-500 dark:text-slate-400">Product Architecture & Technical Stack Specifications.</p>
        </div>

        <div class="glass-card rounded-3xl p-7 space-y-6 text-xs shadow-xl">
          
          <div class="space-y-2">
            <h3 class="font-heading font-bold text-lg text-indigo-600 dark:text-indigo-400">Product Identity</h3>
            <p class="text-slate-600 dark:text-slate-300 leading-relaxed font-normal">
              RIAI is not simply an AI chatbot. It is an AI-powered personalized government-scheme navigation and application-readiness platform for entrepreneurs across India.
            </p>
          </div>

          <!-- Architecture Grid -->
          <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-5">
            <div class="p-4 bg-slate-100/80 dark:bg-slate-800/80 border border-slate-200 dark:border-slate-700 rounded-2xl space-y-1.5">
              <div class="font-heading font-bold text-sm text-indigo-600 dark:text-indigo-400">1. LLM / NLP</div>
              <p class="text-[11px] text-slate-500 font-medium">Natural language conversation, profile extraction, translation, and summary.</p>
            </div>

            <div class="p-4 bg-slate-100/80 dark:bg-slate-800/80 border border-slate-200 dark:border-slate-700 rounded-2xl space-y-1.5">
              <div class="font-heading font-bold text-sm text-teal-600 dark:text-teal-400">2. Structured Rule Engine</div>
              <p class="text-[11px] text-slate-500 font-medium">Deterministic IF-THEN evaluation for income, age, location, and social category.</p>
            </div>

            <div class="p-4 bg-slate-100/80 dark:bg-slate-800/80 border border-slate-200 dark:border-slate-700 rounded-2xl space-y-1.5">
              <div class="font-heading font-bold text-sm text-purple-600 dark:text-purple-400">3. RAG Retrieval</div>
              <p class="text-[11px] text-slate-500 font-medium">Verified government guidelines database search preventing AI hallucinations.</p>
            </div>

            <div class="p-4 bg-slate-100/80 dark:bg-slate-800/80 border border-slate-200 dark:border-slate-700 rounded-2xl space-y-1.5">
              <div class="font-heading font-bold text-sm text-emerald-600 dark:text-emerald-400">4. Document OCR AI</div>
              <p class="text-[11px] text-slate-500 font-medium">Field extraction from certificate images/PDFs with verification disclaimers.</p>
            </div>
          </div>

        </div>
      </section>

    </main>
  </div>

  <!-- MOBILE BOTTOM NAVIGATION BAR -->
  <nav class="md:hidden fixed bottom-0 left-0 right-0 bg-white/90 dark:bg-slate-900/90 border-t border-slate-200 dark:border-slate-800 px-3 py-2 flex items-center justify-around z-40 text-[10px] font-bold backdrop-blur-xl">
    <button onclick="switchScreen('landing')" class="flex flex-col items-center gap-1 text-slate-500 hover:text-indigo-600">
      <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"/></svg>
      <span>Home</span>
    </button>
    <button onclick="switchScreen('chat')" class="flex flex-col items-center gap-1 text-slate-500 hover:text-indigo-600">
      <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 10h.01M12 10h.01M16 10h.01M9 16H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-5l-5 5v-5z"/></svg>
      <span>Chat AI</span>
    </button>
    <button onclick="switchScreen('recommendations')" class="flex flex-col items-center gap-1 text-slate-500 hover:text-indigo-600">
      <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z"/></svg>
      <span>Matches</span>
    </button>
    <button onclick="switchScreen('documents')" class="flex flex-col items-center gap-1 text-slate-500 hover:text-indigo-600">
      <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/></svg>
      <span>Docs & OCR</span>
    </button>
    <button onclick="switchScreen('dashboard')" class="flex flex-col items-center gap-1 text-slate-500 hover:text-indigo-600">
      <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2V6zM14 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V6zM4 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2v-2zM14 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z"/></svg>
      <span>Dashboard</span>
    </button>
  </nav>

  <!-- JAVASCRIPT APPLICATION CORE ENGINE -->
  <script>
    // State Store
    let appState = {
      currentScreen: 'landing',
      currentLanguage: 'en',
      profile: {
        name: 'Priya Sharma',
        age: 26,
        gender: 'Female',
        category: 'OBC',
        state: 'Tamil Nadu',
        district: 'Coimbatore',
        area: 'Urban',
        education: 'Graduate',
        income: 250000,
        stage: 'New Business',
        sector: 'Manufacturing',
        funding: 800000,
        contribution: 120000
      },
      savedSchemes: ['needs', 'pmegp', 'pmfme'],
      isVoiceActive: false
    };

    // Preset Sample Profiles Dataset
    const presetProfiles = {
      priya: {
        name: 'Priya Sharma',
        age: 26,
        gender: 'Female',
        category: 'OBC',
        state: 'Tamil Nadu',
        district: 'Coimbatore',
        area: 'Urban',
        education: 'Graduate',
        income: 250000,
        stage: 'New Business',
        sector: 'Manufacturing',
        funding: 800000,
        contribution: 120000
      },
      rajesh: {
        name: 'Rajesh Kumar',
        age: 32,
        gender: 'Male',
        category: 'SC',
        state: 'Bihar',
        district: 'Muzaffarpur',
        area: 'Rural',
        education: '10th Pass',
        income: 120000,
        stage: 'New Business',
        sector: 'Agri / Food Processing',
        funding: 500000,
        contribution: 50000
      },
      kavitha: {
        name: 'Kavitha Sundaram',
        age: 28,
        gender: 'Female',
        category: 'General',
        state: 'Karnataka',
        district: 'Bengaluru',
        area: 'Urban',
        education: 'Graduate',
        income: 450000,
        stage: 'Idea Phase',
        sector: 'Technology / Startup',
        funding: 2000000,
        contribution: 300000
      },
      muthu: {
        name: 'Muthu Artisan',
        age: 42,
        gender: 'Male',
        category: 'OBC',
        state: 'Tamil Nadu',
        district: 'Madurai',
        area: 'Rural',
        education: '8th Pass',
        income: 90000,
        stage: 'Existing Expansion',
        sector: 'Traditional Crafts / Artisan',
        funding: 200000,
        contribution: 10000
      }
    };

    // Scheme Master Database (10 Verified Real Schemes)
    const schemesData = [
      {
        id: 'needs',
        name: 'NEEDS (New Entrepreneur Scheme)',
        ministry: 'MSME Dept, Govt of Tamil Nadu',
        target: 'Educated first-generation entrepreneurs in Tamil Nadu.',
        category: 'Manufacturing',
        maxFunding: '₹5.00 Crore',
        subsidy: '25% Capital Subsidy (Max ₹75 Lakhs) + 3% Interest Subvention',
        ownContribution: '10% (General) / 5% (Special Categories)',
        minAge: 21,
        maxAge: 35,
        educationReq: 'Degree / Diploma / ITI',
        officialPortal: 'https://msmeonline.tn.gov.in',
        lastVerified: '10-Sep-2026'
      },
      {
        id: 'pmegp',
        name: "Prime Minister's Employment Generation Programme (PMEGP)",
        ministry: 'Ministry of MSME, Govt of India',
        target: 'Micro enterprises in Manufacturing & Service sectors across India.',
        category: 'Manufacturing',
        maxFunding: '₹50 Lakhs (Manufacturing) / ₹20 Lakhs (Service)',
        subsidy: '15-25% (Urban) / 25-35% (Rural Margin Money Grant)',
        ownContribution: '10% (General) / 5% (Special)',
        minAge: 18,
        maxAge: 65,
        educationReq: '8th Pass for projects > ₹10 Lakhs',
        officialPortal: 'https://www.kviconline.gov.in/pmegpeportal',
        lastVerified: '08-Sep-2026'
      },
      {
        id: 'pmfme',
        name: 'PM Formalisation of Micro Food Processing Enterprises (PMFME)',
        ministry: 'Ministry of Food Processing Industries, Govt of India',
        target: 'Individual micro food processing units & SHGs/Cooperatives.',
        category: 'Food Processing',
        maxFunding: 'Up to ₹10 Lakhs Credit-Linked Subsidy',
        subsidy: '35% Subsidy of Eligible Project Cost',
        ownContribution: '10% Beneficiary Equity',
        minAge: 18,
        maxAge: 65,
        educationReq: 'No minimum bar',
        officialPortal: 'https://pmfme.mofpi.gov.in',
        lastVerified: '09-Sep-2026'
      },
      {
        id: 'mudra',
        name: 'Pradhan Mantri MUDRA Yojana (PMMY)',
        ministry: 'Ministry of Finance, Govt of India',
        target: 'Non-farm micro and small enterprises seeking collateral-free loans.',
        category: 'Micro',
        maxFunding: 'Up to ₹10 Lakhs (Tarun Category)',
        subsidy: 'Nil (Interest rate subvention for prompt repayment)',
        ownContribution: 'Nil to 10%',
        minAge: 18,
        maxAge: 65,
        educationReq: 'No minimum education bar',
        officialPortal: 'https://www.mudra.org.in',
        lastVerified: '05-Sep-2026'
      },
      {
        id: 'sisfs',
        name: 'Startup India Seed Fund Scheme (SISFS)',
        ministry: 'DPIIT, Ministry of Commerce & Industry',
        target: 'DPIIT recognized early stage tech startups.',
        category: 'Startup',
        maxFunding: '₹20 Lakhs Grant for POC + ₹50 Lakhs Debt',
        subsidy: 'Direct Seed Grant Support',
        ownContribution: 'Varies',
        minAge: 18,
        maxAge: 65,
        educationReq: 'Graduate / Professional',
        officialPortal: 'https://seedfund.startupindia.gov.in',
        lastVerified: '07-Sep-2026'
      },
      {
        id: 'standup',
        name: 'Stand-Up India Scheme',
        ministry: 'Ministry of Finance, Govt of India',
        target: 'SC / ST and Women entrepreneurs for greenfield enterprises.',
        category: 'Women',
        maxFunding: '₹10 Lakhs to ₹1.00 Crore',
        subsidy: 'Margin money assistance combined with state schemes',
        ownContribution: '10%',
        minAge: 18,
        maxAge: 65,
        educationReq: 'No specific bar',
        officialPortal: 'https://www.standupmitra.in',
        lastVerified: '01-Sep-2026'
      },
      {
        id: 'vishwakarma',
        name: 'PM Vishwakarma Scheme',
        ministry: 'Ministry of MSME, Govt of India',
        target: 'Artisans and traditional craftsmen in 18 trades.',
        category: 'Artisan',
        maxFunding: '₹3.00 Lakhs (Collateral Free @ 5% interest)',
        subsidy: '₹15,000 Toolkit Incentive + Skill Stamped Training',
        ownContribution: 'Nil',
        minAge: 18,
        maxAge: 65,
        educationReq: 'Traditional Trade Practitioner',
        officialPortal: 'https://pmvishwakarma.gov.in',
        lastVerified: '09-Sep-2026'
      },
      {
        id: 'uyegp',
        name: 'Unemployed Youth Employment Generation Programme (UYEGP)',
        ministry: 'MSME Department, Govt of Tamil Nadu',
        target: 'Micro enterprises by unemployed youth in Tamil Nadu.',
        category: 'Micro',
        maxFunding: '₹15 Lakhs (Mfg) / ₹5 Lakhs (Service)',
        subsidy: '25% Capital Subsidy (Max ₹1.25 Lakhs)',
        ownContribution: '10% (General) / 5% (Special)',
        minAge: 18,
        maxAge: 45,
        educationReq: '8th Pass Minimum',
        officialPortal: 'https://msmeonline.tn.gov.in',
        lastVerified: '10-Sep-2026'
      },
      {
        id: 'cgtmse',
        name: 'Credit Guarantee Scheme for Micro & Small Enterprises (CGTMSE)',
        ministry: 'Ministry of MSME & SIDBI',
        target: 'Collateral-free credit facility for MSMEs.',
        category: 'Manufacturing',
        maxFunding: 'Up to ₹5.00 Crore Collateral Free',
        subsidy: '85% Guarantee coverage by Govt',
        ownContribution: '10%',
        minAge: 18,
        maxAge: 65,
        educationReq: 'No Bar',
        officialPortal: 'https://www.cgtmse.in',
        lastVerified: '04-Sep-2026'
      },
      {
        id: 'tread',
        name: 'TREAD Scheme for Women Entrepreneurs',
        ministry: 'Ministry of MSME, Govt of India',
        target: 'Women entrepreneurs in rural & urban areas via NGOs.',
        category: 'Women',
        maxFunding: 'Up to 30% Govt Grant of Project Cost',
        subsidy: '30% Grant Support',
        ownContribution: '10%',
        minAge: 18,
        maxAge: 65,
        educationReq: 'No Bar',
        officialPortal: 'https://msme.gov.in',
        lastVerified: '02-Sep-2026'
      }
    ];

    // Screen Switcher Logic
    function switchScreen(screenId) {
      document.querySelectorAll('.screen-view').forEach(el => el.classList.add('hidden'));
      const target = document.getElementById('screen-' + screenId);
      if (target) {
        target.classList.remove('hidden');
        appState.currentScreen = screenId;
        window.scrollTo({ top: 0, behavior: 'smooth' });
        
        // Synchronize drop-downs & sidebar styling
        const quickSelect = document.getElementById('quickScreenJump');
        if (quickSelect) quickSelect.value = screenId;

        document.querySelectorAll('.nav-item').forEach(btn => {
          btn.classList.remove('bg-indigo-50', 'dark:bg-indigo-950/80', 'text-indigo-600', 'dark:text-indigo-400', 'font-bold');
        });
        const activeNav = document.getElementById('nav-' + screenId);
        if (activeNav) {
          activeNav.classList.add('bg-indigo-50', 'dark:bg-indigo-950/80', 'text-indigo-600', 'dark:text-indigo-400', 'font-bold');
        }

        // Trigger dynamic renders if needed
        if (screenId === 'explorer') renderExplorer();
        if (screenId === 'recommendations') renderRecommendations();
      }
    }

    // Render Explorer Cards
    function renderExplorer() {
      const grid = document.getElementById('explorerGrid');
      const search = (document.getElementById('schemeSearchInput').value || '').toLowerCase();
      const cat = document.getElementById('categoryFilter').value;

      const filtered = schemesData.filter(s => {
        const matchesSearch = s.name.toLowerCase().includes(search) || s.target.toLowerCase().includes(search);
        const matchesCat = cat === 'ALL' || s.category === cat;
        return matchesSearch && matchesCat;
      });

      grid.innerHTML = filtered.map(s => `
        <div class="glass-card rounded-3xl p-6 space-y-4 flex flex-col justify-between shadow-lg hover:border-indigo-500/60 transition-all">
          <div class="space-y-3">
            <div class="flex items-center justify-between">
              <span class="text-[10px] font-extrabold uppercase tracking-wider px-2.5 py-1 bg-indigo-50 dark:bg-indigo-950 text-indigo-700 dark:text-indigo-300 rounded-lg border border-indigo-200 dark:border-indigo-800">${s.category}</span>
              <span class="text-[10px] text-slate-400 font-semibold">Verified: ${s.lastVerified}</span>
            </div>
            <h3 class="font-heading font-bold text-base text-slate-900 dark:text-white">${s.name}</h3>
            <p class="text-xs text-slate-500 dark:text-slate-400 font-normal leading-relaxed">${s.target}</p>
          </div>

          <div class="space-y-2.5 pt-3 border-t border-slate-200/80 dark:border-slate-800/80 text-xs font-medium">
            <div class="flex justify-between"><span class="text-slate-400">Max Support:</span><span class="font-extrabold text-emerald-600 dark:text-emerald-400">${s.maxFunding}</span></div>
            <div class="flex justify-between"><span class="text-slate-400">Subsidy:</span><span class="font-bold text-slate-700 dark:text-slate-300">${s.subsidy}</span></div>
            
            <div class="pt-2 flex items-center justify-between gap-2">
              <a href="${s.officialPortal}" target="_blank" class="btn-bounce bg-gradient-to-r from-indigo-600 to-teal-500 text-white text-xs px-3.5 py-2 rounded-xl font-bold flex items-center gap-1.5 shadow-xs">
                Official Portal →
              </a>
              <button onclick="switchScreen('recommendations')" class="text-xs text-indigo-600 dark:text-indigo-400 font-extrabold hover:underline">Check Match</button>
            </div>
          </div>
        </div>
      `).join('');
    }

    function filterSchemes() { renderExplorer(); }

    // Render Recommendation Matches (Rule Engine Logic)
    function renderRecommendations() {
      const container = document.getElementById('recommendationsList');
      const p = appState.profile;

      // Deterministic Rule Engine Match Calculation
      const matches = schemesData.map(s => {
        let score = 70; // baseline
        let reasons = [];
        let checkItems = [];

        // State Check
        if (s.id === 'needs' && p.state === 'Tamil Nadu') {
          score += 15;
          reasons.push('Location match: Tamil Nadu state scheme condition satisfied');
        }

        if (s.id === 'pmfme' && (p.sector.includes('Food') || p.sector.includes('Agri'))) {
          score += 20;
          reasons.push('Direct Sector Match: Agri / Food Processing eligible for 35% subsidy');
        }

        if (s.id === 'vishwakarma' && p.sector.includes('Artisan')) {
          score += 25;
          reasons.push('Artisan / Craftsman trade status satisfied for toolkit & collateral free credit');
        }

        if (s.id === 'sisfs' && p.sector.includes('Startup')) {
          score += 20;
          reasons.push('DPIIT Tech Startup qualification matched for Seed Fund');
        }

        // Education Check
        if (p.education === 'Graduate' || p.education === 'Diploma') {
          score += 10;
          reasons.push('Educational qualification (Degree/Diploma) satisfied');
        }

        // Business Sector Check
        if (p.sector === s.category || s.category === 'Manufacturing') {
          score += 10;
          reasons.push('Business sector (' + p.sector + ') is fully supported');
        }

        // Own Contribution check
        if (p.contribution >= p.funding * 0.05) {
          reasons.push('Own contribution (₹' + p.contribution.toLocaleString() + ') meets equity threshold');
        } else {
          checkItems.push('Available equity is lower than standard required 10%');
        }

        if (s.id === 'standup' && p.gender !== 'Female' && p.category !== 'SC' && p.category !== 'ST') {
          score = 45;
          checkItems.push('Target group condition specifically prioritizes Women or SC/ST entrepreneurs');
        }

        return { scheme: s, score: Math.min(score, 98), reasons, checkItems };
      }).sort((a,b) => b.score - a.score);

      container.innerHTML = matches.map(m => `
        <div class="glass-card rounded-3xl p-6 shadow-xl space-y-4">
          <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-3 border-b border-slate-200/80 dark:border-slate-800/80 pb-3.5">
            <div>
              <div class="flex items-center gap-2.5">
                <h3 class="font-heading font-bold text-lg text-slate-900 dark:text-white">${m.scheme.name}</h3>
                <span class="px-3 py-0.5 bg-emerald-100 dark:bg-emerald-950 text-emerald-700 dark:text-emerald-300 font-black text-xs rounded-full border border-emerald-200 dark:border-emerald-800">${m.score}% Match</span>
              </div>
              <p class="text-xs text-slate-500 font-medium">${m.scheme.ministry}</p>
            </div>
            <a href="${m.scheme.officialPortal}" target="_blank" class="btn-bounce bg-indigo-600 hover:bg-indigo-700 text-white text-xs font-extrabold px-4 py-2 rounded-xl shadow-md shrink-0">
              Apply via Official Portal →
            </a>
          </div>

          <div class="grid grid-cols-1 md:grid-cols-2 gap-4 text-xs font-medium">
            <div class="space-y-2 p-4 bg-emerald-50/70 dark:bg-emerald-950/30 border border-emerald-200 dark:border-emerald-900/40 rounded-2xl">
              <div class="font-heading font-bold text-sm text-emerald-900 dark:text-emerald-300">Why this matches you</div>
              ${m.reasons.map(r => `<div class="flex items-center gap-2 text-emerald-800 dark:text-emerald-400"><span>✅</span><span>${r}</span></div>`).join('')}
            </div>

            <div class="space-y-2 p-4 bg-amber-50/70 dark:bg-amber-950/30 border border-amber-200 dark:border-amber-900/40 rounded-2xl">
              <div class="font-heading font-bold text-sm text-amber-900 dark:text-amber-300">Things to check</div>
              ${m.checkItems.length ? m.checkItems.map(c => `<div class="flex items-center gap-2 text-amber-800 dark:text-amber-400"><span>⚠️</span><span>${c}</span></div>`).join('') : '<div class="text-amber-800 dark:text-amber-400">⚠️ Ensure Project Report (DPR) is prepared.</div>'}
            </div>
          </div>
        </div>
      `).join('');
    }

    function loadPresetProfile(key) {
      if (presetProfiles[key]) {
        appState.profile = { ...presetProfiles[key] };
        
        // Populate Form Controls
        document.getElementById('prof-name').value = appState.profile.name;
        document.getElementById('prof-age').value = appState.profile.age;
        document.getElementById('prof-gender').value = appState.profile.gender;
        document.getElementById('prof-category').value = appState.profile.category;
        document.getElementById('prof-state').value = appState.profile.state;
        document.getElementById('prof-district').value = appState.profile.district;
        document.getElementById('prof-area').value = appState.profile.area;
        document.getElementById('prof-education').value = appState.profile.education;
        document.getElementById('prof-income').value = appState.profile.income;
        document.getElementById('prof-stage').value = appState.profile.stage;
        document.getElementById('prof-sector').value = appState.profile.sector;
        document.getElementById('prof-funding').value = appState.profile.funding;
        document.getElementById('prof-contribution').value = appState.profile.contribution;

        document.getElementById('dashGreeting').innerText = `Hello, ${appState.profile.name} 👋`;
        alert(`Loaded Preset Profile for ${appState.profile.name}. Recalculating eligibility matches!`);
        switchScreen('recommendations');
      }
    }

    function loadSampleDocument(typeKey) {
      const docTypeEl = document.getElementById('ocrDocType');
      const detailsList = document.getElementById('ocrDetailsList');

      if (typeKey === 'income') {
        docTypeEl.innerText = "Income Certificate";
        detailsList.innerHTML = `
          <div class="flex justify-between"><span>Applicant Name:</span><span class="font-bold">${appState.profile.name}</span></div>
          <div class="flex justify-between"><span>Annual Income:</span><span class="font-bold">₹2,50,000 / annum</span></div>
          <div class="flex justify-between"><span>Issuing Authority:</span><span class="font-bold">Tahgildar, ${appState.profile.district}</span></div>
          <div class="flex justify-between"><span>Issue Date:</span><span class="font-bold">14-Mar-2026</span></div>
          <div class="flex justify-between"><span>Validity Status:</span><span class="font-extrabold text-emerald-600">Valid & Verified</span></div>
        `;
      } else if (typeKey === 'community') {
        docTypeEl.innerText = "Community / Caste Certificate";
        detailsList.innerHTML = `
          <div class="flex justify-between"><span>Applicant Name:</span><span class="font-bold">${appState.profile.name}</span></div>
          <div class="flex justify-between"><span>Category Claimed:</span><span class="font-bold">${appState.profile.category}</span></div>
          <div class="flex justify-between"><span>Issuing Authority:</span><span class="font-bold">Revenue Divisional Officer (RDO)</span></div>
          <div class="flex justify-between"><span>Certificate No:</span><span class="font-bold">TN-2026-CC-98214</span></div>
          <div class="flex justify-between"><span>Status:</span><span class="font-extrabold text-emerald-600">Lifetime Valid</span></div>
        `;
      } else if (typeKey === 'degree') {
        docTypeEl.innerText = "Educational Degree Certificate";
        detailsList.innerHTML = `
          <div class="flex justify-between"><span>Degree Obtained:</span><span class="font-bold">B.E. Mechanical Engineering</span></div>
          <div class="flex justify-between"><span>University:</span><span class="font-bold">Anna University, Chennai</span></div>
          <div class="flex justify-between"><span>Year of Passing:</span><span class="font-bold">2024</span></div>
          <div class="flex justify-between"><span>Grade/Class:</span><span class="font-bold">First Class with Distinction</span></div>
          <div class="flex justify-between"><span>NEEDS Requirement:</span><span class="font-extrabold text-emerald-600">100% Satisfied</span></div>
        `;
      } else if (typeKey === 'gst') {
        docTypeEl.innerText = "GST Registration Certificate";
        detailsList.innerHTML = `
          <div class="flex justify-between"><span>Trade Name:</span><span class="font-bold">Sharma Textile Enterprise</span></div>
          <div class="flex justify-between"><span>GSTIN:</span><span class="font-bold">33AAAAA0000A1Z5</span></div>
          <div class="flex justify-between"><span>Registration Type:</span><span class="font-bold">Regular Micro Unit</span></div>
          <div class="flex justify-between"><span>Status:</span><span class="font-extrabold text-emerald-600">Active</span></div>
        `;
      } else if (typeKey === 'udyam') {
        docTypeEl.innerText = "Udyam MSME Registration Certificate";
        detailsList.innerHTML = `
          <div class="flex justify-between"><span>Udyam Registration:</span><span class="font-bold">UDYAM-TN-03-0009841</span></div>
          <div class="flex justify-between"><span>Enterprise Class:</span><span class="font-bold">Micro Manufacturing</span></div>
          <div class="flex justify-between"><span>Ministry:</span><span class="font-bold">Ministry of MSME, Govt of India</span></div>
          <div class="flex justify-between"><span>Status:</span><span class="font-extrabold text-emerald-600">Verified & Active</span></div>
        `;
      }
      alert(`Loaded sample document metadata for "${docTypeEl.innerText}". Running AI verification...`);
    }

    // Chat Handler
    function handleChatSubmit(e) {
      e.preventDefault();
      const input = document.getElementById('chatInput');
      const text = input.value.trim();
      if (!text) return;

      appendChatMessage('user', text);
      input.value = '';

      // AI Multilingual Response Generator (Pan-India Support)
      setTimeout(() => {
        let aiText = "";
        const lang = appState.currentLanguage || 'en';
        if (lang === 'ta') {
          aiText = `வணக்கம் ${appState.profile.name}! 🙏\n\nநீங்கள் "${text}" குறித்துக் கேட்டுள்ளீர்கள். உங்கள் சுயவிவரத்தின்படி (${appState.profile.name}, ${appState.profile.education}, ${appState.profile.state}), உங்களுக்குப் பொருந்தும் முதன்மை அரசுத் திட்டம்: **${appState.profile.state === 'Tamil Nadu' ? 'NEEDS திட்டம் (25% மூலதன மானியம் - அதிகபட்சம் ₹75 லட்சம் வரை)' : 'PMEGP திட்டம் (35% வரை மானியம்)'}**.\n\nஅடுத்து உங்கள் சான்றிதழ்களைச் சரிபார்க்க 'ஆவண மையம் & OCR' பகுதிக்குச் செல்லலாம்! 🚀`;
        } else if (lang === 'hi') {
          aiText = `नमस्ते ${appState.profile.name}! 🙏\n\nआपने "${text}" के बारे में पूछा है। आपकी प्रोफ़ाइल (${appState.profile.name}, ${appState.profile.education}, ${appState.profile.state}) के आधार पर आपकी सर्वश्रेष्ठ योजना: **${appState.profile.state === 'Tamil Nadu' ? 'NEEDS योजना (25% पूंजी सब्सिडी)' : 'PMEGP योजना (35% सब्सिडी)'}** है। आगे बढ़ने के लिए दस्तावेज़ केंद्र पर जाएं! 🚀`;
        } else if (lang === 'te') {
          aiText = `నమస్కారం ${appState.profile.name}! 🙏\n\nమీరు "${text}" గురించి అడిగారు. మీ ప్రొఫైల్ ప్రకారం (${appState.profile.name}, ${appState.profile.education}, ${appState.profile.state}), మీకు సరిపోయే ఉత్తమ పథకం: **PMEGP పథకం (35% వరకు సబ్సిడీ)** లేదా **MUDRA లోన్ (రూ. 10 లక్షల వరకు షూరిటీ లేకుండా)**.\n\nతదుపరి పత్రాలను తనిఖీ చేయడానికి డాక్యుమెంట్ సెంటర్‌కు వెళ్లండి! 🚀`;
        } else if (lang === 'kn') {
          aiText = `ನಮಸ್ಕಾರ ${appState.profile.name}! 🙏\n\nನೀವು "${text}" ಕುರಿತು ಕೇಳಿದ್ದೀರಿ. ನಿಮ್ಮ ಪ್ರೊಫೈಲ್ ಪ್ರಕಾರ (${appState.profile.name}, ${appState.profile.education}, ${appState.profile.state}), ನಿಮಗೆ ಅತ್ಯಂತ ಸೂಕ್ತವಾದ ಯೋಜನೆ: **PMEGP ಯೋಜನೆ (35% ರವರೆಗೆ ಸಬ್ಸಿಡಿ)** ಅಥವಾ **MUDRA ಸಾಲ**.`;
        } else {
          aiText = `I understand you are asking about: "${text}". Based on your updated profile (${appState.profile.name}, ${appState.profile.education}, ${appState.profile.state}), your top match is the ${appState.profile.state === 'Tamil Nadu' ? 'NEEDS Scheme giving a 25% Capital Subsidy up to ₹75 Lakhs' : 'PMEGP Scheme providing up to 35% Margin Money Subsidy'}. Let us proceed to verify your documents!`;
        }
        appendChatMessage('ai', aiText);
      }, 700);
    }

    function appendChatMessage(sender, text) {
      const chatBox = document.getElementById('chatMessages');
      const isAI = sender === 'ai';
      const msgHtml = `
        <div class="flex gap-3 max-w-2xl ${isAI ? '' : 'ml-auto flex-row-reverse'} fade-in">
          <div class="w-8 h-8 rounded-xl ${isAI ? 'bg-indigo-600 text-white' : 'bg-teal-600 text-white'} flex items-center justify-center font-bold text-xs shrink-0 shadow">
            ${isAI ? 'AI' : 'You'}
          </div>
          <div class="${isAI ? 'bg-slate-100 dark:bg-slate-800 border border-slate-200 dark:border-slate-700/80 text-slate-800 dark:text-slate-100' : 'bg-gradient-to-r from-indigo-600 to-purple-600 text-white'} p-4 rounded-3xl ${isAI ? 'rounded-tl-none' : 'rounded-tr-none'} text-xs leading-relaxed shadow-xs font-medium whitespace-pre-line">
            ${text}
          </div>
        </div>
      `;
      chatBox.insertAdjacentHTML('beforeend', msgHtml);
      chatBox.scrollTop = chatBox.scrollHeight;
    }

    function sendQuickPrompt(promptText) {
      document.getElementById('chatInput').value = promptText;
      handleChatSubmit({ preventDefault: () => {} });
    }

    function toggleVoiceInput() {
      appState.isVoiceActive = !appState.isVoiceActive;
      const statusBox = document.getElementById('voiceStatus');
      statusBox.classList.toggle('hidden', !appState.isVoiceActive);
      if (appState.isVoiceActive) {
        setTimeout(() => {
          sendQuickPrompt(appState.currentLanguage === 'ta' ? "நான் படிப்பை முடித்துவிட்டு தமிழகத்தில் உற்பத்தி தொழில் தொடங்க விரும்புகிறேன்." : (appState.currentLanguage === 'te' ? "నేను చదువు పూర్తి చేశాను, వ్యాపారం ప్రారంభించాలనుకుంటున్నాను." : "I have completed my studies and want to start a small manufacturing business in Tamil Nadu. What should I do?"));
          toggleVoiceInput();
        }, 2000);
      }
    }

    function handleFileUpload(e) {
      const file = e.target.files[0];
      if (file) {
        alert(appState.currentLanguage === 'ta' ? `சான்றிதழ் "${file.name}" பதிவேற்றப்பட்டது! AI OCR சரிபார்ப்பு இயங்குகிறது...` : `Document "${file.name}" imported successfully from File Manager! Running AI OCR analysis...`);
        const statusBox = document.getElementById('ocrStatusBox');
        statusBox.classList.add('pulse-ring');
        setTimeout(() => statusBox.classList.remove('pulse-ring'), 1500);
      }
    }

    function simulateCameraCapture() {
      alert(appState.currentLanguage === 'ta' ? "கேமரா மூலம் படம் எடுக்கப்பட்டது! AI OCR சான்றிதழ் சரிபார்ப்பு இயங்குகிறது..." : "Opening device camera... Captured document image. Running AI verification OCR...");
    }

    function calculateFinancials() {
      const cost = parseFloat(document.getElementById('calcProjectCost').value) || 800000;
      const savings = parseFloat(document.getElementById('calcOwnContribution').value) || 120000;
      
      const reqOwn = cost * 0.05;
      const subsidy = cost * 0.25;
      const loan = cost - subsidy - reqOwn;

      document.getElementById('resMinOwn').innerText = '₹' + reqOwn.toLocaleString();
      document.getElementById('resSubsidy').innerText = '₹' + subsidy.toLocaleString();
      document.getElementById('resBankLoan').innerText = '₹' + loan.toLocaleString();
    }

    function saveProfile(e) {
      e.preventDefault();
      alert(appState.currentLanguage === 'ta' ? "சுயவிவரம் சேமிக்கப்பட்டது! அரசுத் திட்டப் பொருத்தங்கள் புதுப்பிக்கப்பட்டன." : "Entrepreneur Profile Saved & Structured Rules Updated!");
      switchScreen('recommendations');
    }

    const i18nDict = {
      en: {
        tagline: "Know Your Scheme. Know Your Path. Build Your Future.",
        talkBtn: "Talk to RIAI",
        chatPlaceholder: "Type your query in English, Tamil, Hindi, Telugu, or Kannada...",
        heroTitle: "Start Your Business.<br/><span class=\"text-transparent bg-clip-text bg-gradient-to-r from-indigo-600 via-purple-600 to-teal-600 dark:from-indigo-400 dark:via-purple-400 dark:to-teal-400\">Discover Your Support.</span>",
        heroSub: "RIAI helps you discover government schemes, understand eligibility, prepare documents and navigate your application journey — in your language.",
        btnTalkHero: "Talk to RIAI AI Assistant",
        btnExploreHero: "Explore Schemes",
        btnDemoHero: "⚡ Run 1-Click Demo Journey (Vardhi's TN Business)",
        navLanding: "Homepage",
        navDashboard: "Entrepreneur Dashboard",
        navChat: "RIAI AI Assistant",
        navProfile: "My Entrepreneur Profile",
        navExplorer: "Scheme Explorer (10+ Schemes)",
        navRecommendations: "Best Scheme Matches",
        navCompare: "Compare Schemes",
        navDocuments: "Document Upload & OCR",
        navPdfAnalyzer: "Government PDF & T&C",
        navFinancial: "Financial Readiness",
        navReadiness: "Application Readiness Score",
        navNextActions: "What Should I Do Next?",
        navJourney: "Application Journey Roadmap",
        navSupport: "Find Support Near Me",
        navPrivacy: "Privacy & Security",
        navAbout: "About RIAI & Architecture"
      },
      ta: {
        tagline: "உங்கள் திட்டத்தை அறிந்திடுங்கள். உங்கள் பாதையை வகுத்திடுங்கள். உங்கள் எதிர்காலத்தை உருவாக்குங்கள்.",
        talkBtn: "RIAI உடன் பேசுங்கள்",
        chatPlaceholder: "தமிழ், ஆங்கிலம் அல்லது ஹிந்தியில் தட்டச்சு செய்யவும்...",
        heroTitle: "உங்கள் தொழிலைத் தொடங்குங்கள்.<br/><span class=\"text-transparent bg-clip-text bg-gradient-to-r from-indigo-600 via-purple-600 to-teal-600 dark:from-indigo-400 dark:via-purple-400 dark:to-teal-400\">அரசு ஆதரவைக் கண்டறியுங்கள்.</span>",
        heroSub: "அரசுத் திட்டங்களைக் கண்டறியவும், தகுதியைப் புரிந்துகொள்ளவும், ஆவணங்களைத் தயார் செய்யவும், உங்கள் தாய்மொழியில் விண்ணப்பிக்கவும் RIAI உதவுகிறது.",
        btnTalkHero: "RIAI AI உதவியாளனுடன் பேசுங்கள்",
        btnExploreHero: "திட்டங்களை ஆராயுங்கள்",
        btnDemoHero: "⚡ 1-கிளிக் மாதிரிப் பயணம் (வர்தியின் தமிழக தொழில் முயற்சி)",
        navLanding: "முகப்புப் பக்கம்",
        navDashboard: "தொழில்முனைவோர் டாஷ்போர்டு",
        navChat: "RIAI AI உதவியாளன்",
        navProfile: "எனது சுயவிவரம்",
        navExplorer: "அரசுத் திட்ட வழிகாட்டி (10+ திட்டங்கள்)",
        navRecommendations: "சிறந்த திட்டப் பொருத்தங்கள்",
        navCompare: "திட்டங்களை ஒப்பிடுக",
        navDocuments: "ஆவண மையம் & OCR ஸ்கேனர்",
        navPdfAnalyzer: "அரசு அரசாணை & விதிமுறை ஆய்வாளர்",
        navFinancial: "நிதி தயார்நிலை கணக்கீடு",
        navReadiness: "விண்ணப்பத் தயார்நிலை மதிப்பெண்",
        navNextActions: "அடுத்து என்ன செய்ய வேண்டும்?",
        navJourney: "8-படி விண்ணப்பப் பயணம்",
        navSupport: "அருகிலுள்ள அரசு உதவி மையங்கள்",
        navPrivacy: "தனியுரிமை & பாதுகாப்பு",
        navAbout: "RIAI பற்றி & தொழில்நுட்ப விவரங்கள்"
      },
      hi: {
        tagline: "अपनी योजना जानें। अपना मार्ग चुनें। अपना भविष्य बनाएं।",
        talkBtn: "RIAI से बात करें",
        chatPlaceholder: "हिंदी, अंग्रेजी या तमिल में टाइप करें...",
        heroTitle: "अपना व्यवसाय शुरू करें।<br/><span class=\"text-transparent bg-clip-text bg-gradient-to-r from-indigo-600 via-purple-600 to-teal-600 dark:from-indigo-400 dark:via-purple-400 dark:to-teal-400\">सरकारी सहायता खोजें।</span>",
        heroSub: "RIAI आपको सरकारी योजनाओं की खोज करने, पात्रता समझने, दस्तावेज़ तैयार करने और अपनी भाषा में आवेदन करने में मदद करता है।",
        btnTalkHero: "RIAI AI सहायक से बात करें",
        btnExploreHero: "योजनाएं खोजें",
        btnDemoHero: "⚡ 1-क्लिक डेमो यात्रा (वर्धि की विनिर्माण योजना)",
        navLanding: "मुख्य पृष्ठ",
        navDashboard: "उद्यमी डैशबोर्ड",
        navChat: "RIAI AI सहायक",
        navProfile: "मेरी प्रोफ़ाइल",
        navExplorer: "सरकारी योजनाएं (10+ योजनाएं)",
        navRecommendations: "सर्वश्रेष्ठ योजना मैच",
        navCompare: "योजनाओं की तुलना करें",
        navDocuments: "दस्तावेज़ केंद्र और OCR",
        navPdfAnalyzer: "PDF और नियम विश्लेषक",
        navFinancial: "वित्तीय तत्परता कैलकुलेटर",
        navReadiness: "आवेदन तत्परता स्कोर",
        navNextActions: "आगे क्या करना चाहिए?",
        navJourney: "8-चरण आवेदन यात्रा",
        navSupport: "नज़दीकी सहायता केंद्र",
        navPrivacy: "गोपनीयता और सुरक्षा",
        navAbout: "RIAI के बारे में"
      },
      te: {
        tagline: "మీ పథకాన్ని తెలుసుకోండి. మీ మార్గాన్ని ఎంచుకోండి. మీ భవిష్యత్తును నిర్మించుకోండి.",
        talkBtn: "RIAI తో మాట్లాడండి",
        chatPlaceholder: "తెలుగు, ఇంగ్లీష్ లేదా హిందీలో టైప్ చేయండి...",
        heroTitle: "మీ వ్యాపారాన్ని ప్రారంభించండి.<br/><span class=\"text-transparent bg-clip-text bg-gradient-to-r from-indigo-600 via-purple-600 to-teal-600 dark:from-indigo-400 dark:via-purple-400 dark:to-teal-400\">ప్రభుత్వ సేవలను పొందండి.</span>",
        heroSub: "RIAI మీకు ప్రభుత్వ పథకాలను కనుగొనడంలో, అర్హతను అర్థం చేసుకోవడంలో మరియు మీ భాషలోనే దరఖాస్తు చేసుకోవడంలో సహాయపడుతుంది.",
        btnTalkHero: "RIAI AI అసిస్టెంట్‌తో మాట్లాడండి",
        btnExploreHero: "పథకాలను అన్వేషించండి",
        btnDemoHero: "⚡ 1-క్లిక్ డెమో ప్రయాణం",
        navLanding: "ముఖ్య పేజీ",
        navDashboard: "ఉపాధి డాష్‌బోర్డ్",
        navChat: "RIAI AI అసిస్టెంట్",
        navProfile: "నా ప్రొఫైల్",
        navExplorer: "ప్రభుత్వ పథకాలు (10+ పథకాలు)",
        navRecommendations: "ఉత్తమ పథక సరిపోలికలు",
        navCompare: "పథకాలను పోల్చండి",
        navDocuments: "డాక్యుమెంట్ స్కానర్ & OCR",
        navPdfAnalyzer: "PDF విశ్లేషణ",
        navFinancial: "ఆర్థిక సిద్ధత",
        navReadiness: "దరఖాస్తు సిద్ధత స్కోరు",
        navNextActions: "తరువాత ఏమి చేయాలి?",
        navJourney: "8-దశల దరఖాస్తు ప్రయాణం",
        navSupport: "సమీప సహాయ కేంద్రాలు",
        navPrivacy: "గోప్యత & భద్రత",
        navAbout: "RIAI గురించి"
      },
      kn: {
        tagline: "ನಿಮ್ಮ ಯೋಜನೆಯನ್ನು ತಿಳಿಯಿರಿ. ನಿಮ್ಮ ಮಾರ್ಗವನ್ನು ಕಂಡುಕೊಳ್ಳಿ. ನಿಮ್ಮ ಭವಿಷ್ಯವನ್ನು ನಿರ್ಮಿಸಿ.",
        talkBtn: "RIAI ನೊಂದಿಗೆ ಮಾತನಾಡಿ",
        chatPlaceholder: "ಕನ್ನಡ, ಇಂಗ್ಲಿಷ್ ಅಥವಾ ಹಿಂದಿಯಲ್ಲಿ ಟೈಪ್ ಮಾಡಿ...",
        heroTitle: "ನಿಮ್ಮ ಉದ್ಯಮವನ್ನು ಪ್ರಾರಂಭಿಸಿ.<br/><span class=\"text-transparent bg-clip-text bg-gradient-to-r from-indigo-600 via-purple-600 to-teal-600 dark:from-indigo-400 dark:via-purple-400 dark:to-teal-400\">ಸರ್ಕಾರಿ ಬೆಂಬಲವನ್ನು ಕಂಡುಕೊಳ್ಳಿ.</span>",
        heroSub: "ಸರ್ಕಾರಿ ಯೋಜನೆಗಳನ್ನು ಕಂಡುಹಿಡಿಯಲು, ಅರ್ಹತೆಯನ್ನು ಅರ್ಥಮಾಡಿಕೊಳ್ಳಲು ಮತ್ತು ನಿಮ್ಮ ಸ್ವಂತ ಭಾಷೆಯಲ್ಲಿ ಅರ್ಜಿ ಸಲ್ಲಿಸಲು RIAI ಸಹಾಯ ಮಾಡುತ್ತದೆ.",
        btnTalkHero: "RIAI AI ಸಹಾಯಕನೊಂದಿಗೆ ಮಾತನಾಡಿ",
        btnExploreHero: "ಯೋಜನೆಗಳನ್ನು ಅನ್ವೇಷಿಸಿ",
        btnDemoHero: "⚡ 1-ಕ್ಲಿಕ್ ಡೆಮೊ ಪ್ರಯಾಣ",
        navLanding: "ಮುಖ್ಯ ಪುಟ",
        navDashboard: "ಉದ್ಯಮಿ ಡ್ಯಾಶ್‌ಬೋರ್ಡ್",
        navChat: "RIAI AI ಸಹಾಯಕ",
        navProfile: "ನನ್ನ ಪ್ರೊಫೈಲ್",
        navExplorer: "ಸರ್ಕಾರಿ ಯೋಜನೆಗಳು",
        navRecommendations: "ಉತ್ತಮ ಯೋಜನೆಗಳು",
        navCompare: "ಯೋಜನೆಗಳನ್ನು ಹೋಲಿಕೆ ಮಾಡಿ",
        navDocuments: "ದಾಖಲೆ ಕೇಂದ್ರ & OCR",
        navPdfAnalyzer: "PDF ವಿಶ್ಲೇಷಣೆ",
        navFinancial: "ಆರ್ಥಿಕ ಸಿದ್ಧತೆ",
        navReadiness: "ಅರ್ಜಿ ಸಿದ್ಧತೆ ಸ್ಕೋರ್",
        navNextActions: "ಮುಂದೇನು ಮಾಡಬೇಕು?",
        navJourney: "8-ಹಂತದ ಅರ್ಜಿ ಪ್ರಯಾಣ",
        navSupport: "ಹತ್ತಿರದ ಸಹಾಯ ಕೇಂದ್ರಗಳು",
        navPrivacy: "ಗೌಪ್ಯತೆ & ಭದ್ರತೆ",
        navAbout: "RIAI ಬಗ್ಗೆ"
      }
    };

    function applyLanguageTranslations(lang) {
      const dict = i18nDict[lang] || i18nDict.en;
      
      const taglineEl = document.querySelector('header p.text-\\[11px\\]');
      if (taglineEl) taglineEl.innerText = dict.tagline;
      
      const talkBtnEl = document.querySelector('header button span:last-child');
      if (talkBtnEl && talkBtnEl.innerText.includes("Talk")) talkBtnEl.innerText = dict.talkBtn;

      const chatInput = document.getElementById('chatInput');
      if (chatInput) chatInput.placeholder = dict.chatPlaceholder;

      const heroTitleEl = document.querySelector('#screen-landing h1');
      if (heroTitleEl) heroTitleEl.innerHTML = dict.heroTitle;

      const heroSubEl = document.querySelector('#screen-landing p.text-slate-600');
      if (heroSubEl) heroSubEl.innerText = dict.heroSub;

      const navMap = {
        'nav-landing': dict.navLanding,
        'nav-dashboard': dict.navDashboard,
        'nav-chat': dict.navChat,
        'nav-profile': dict.navProfile,
        'nav-explorer': dict.navExplorer,
        'nav-recommendations': dict.navRecommendations,
        'nav-compare': dict.navCompare,
        'nav-documents': dict.navDocuments,
        'nav-pdf_analyzer': dict.navPdfAnalyzer,
        'nav-financial': dict.navFinancial,
        'nav-readiness': dict.navReadiness,
        'nav-next_actions': dict.navNextActions,
        'nav-journey': dict.navJourney,
        'nav-support': dict.navSupport,
        'nav-privacy': dict.navPrivacy,
        'nav-about': dict.navAbout
      };

      Object.keys(navMap).forEach(id => {
        const btn = document.getElementById(id);
        if (btn) {
          const span = btn.querySelector('span');
          if (span) span.innerText = navMap[id];
        }
      });
    }

    function setLanguage(lang) {
      appState.currentLanguage = lang;
      ['en','ta','hi','te','kn'].forEach(l => {
        const btn = document.getElementById('lang-' + l);
        if (btn) {
          if (l === lang) btn.className = "px-2.5 py-1 rounded-lg font-bold transition-all bg-indigo-600 text-white shadow-xs";
          else btn.className = "px-2.5 py-1 rounded-lg font-semibold text-slate-600 dark:text-slate-400 hover:text-indigo-600 transition-all";
        }
      });
      applyLanguageTranslations(lang);
      const toastMsg = lang === 'ta' ? '🌐 மொழி தமிழுக்கு (தமிழ்) மாற்றப்பட்டது.' : (lang === 'hi' ? '🌐 भाषा हिंदी (हिन्दी) में बदल दी गई है।' : (lang === 'te' ? '🌐 భాష తెలుగుకు మార్చబడింది.' : (lang === 'kn' ? '🌐 ಭಾಷೆಯನ್ನು ಕನ್ನಡಕ್ಕೆ ಬದಲಾಯಿಸಲಾಗಿದೆ.' : '🌐 Language switched to English.')));
      alert(toastMsg);
    }

    function clearChatHistory() {
      document.getElementById('chatMessages').innerHTML = '';
      const clearMsg = appState.currentLanguage === 'ta' ? "உரையாடல் வரலாறு அழிக்கப்பட்டது. இன்று உங்களுக்கு எவ்வாறு உதவ வேண்டும்?" : "Chat history cleared. How can RIAI assist you with government schemes today?";
      appendChatMessage('ai', clearMsg);
    }

    function requestGeolocation() {
      if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(
          pos => alert(appState.currentLanguage === 'ta' ? `இருப்பிடம் கண்டறியப்பட்டது! Latitude: ${pos.coords.latitude.toFixed(2)}, Longitude: ${pos.coords.longitude.toFixed(2)}. சென்னை/கோவை மாவட்ட மையங்கள் காட்டப்படுகின்றன.` : `Location permission granted! Latitude: ${pos.coords.latitude.toFixed(2)}, Longitude: ${pos.coords.longitude.toFixed(2)}. Displaying nearby support centres in Coimbatore district.`),
          err => alert(appState.currentLanguage === 'ta' ? "இருப்பிட அனுமதி மறுக்கப்பட்டது. இயல்புநிலை மையங்கள் காட்டப்படுகின்றன." : "Location permission denied. Showing default district support centres.")
        );
      }
    }

    // Initialize default screen
    window.addEventListener('DOMContentLoaded', () => {
      switchScreen('landing');
      renderExplorer();
      applyLanguageTranslations(appState.currentLanguage);
    });
  </script>
</body>
</html>