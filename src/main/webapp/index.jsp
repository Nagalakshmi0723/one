<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Fresh & Friendly E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=DM+Serif+Display&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== DESIGN TOKENS ========== */
        :root {
            --bg: #f9f8f6;
            --bg-card: #ffffff;
            --ink: #1a1a2b;
            --ink-soft: #3d3d5c;
            --muted: #73738c;
            --muted-light: #a8a8b8;
            --line: #eae8e4;
            --accent: #f4775b;
            --accent-soft: #fff0eb;
            --accent-dark: #d95c40;
            --accent-glow: rgba(244, 119, 91, 0.15);
            --mint: #3bb9a0;
            --mint-soft: #e4f7f2;
            --sun: #f4c95d;
            --sun-soft: #fdf6e0;
            --radius-xl: 28px;
            --radius-lg: 20px;
            --radius-md: 14px;
            --radius-pill: 999px;
            --shadow-sm: 0 2px 12px rgba(26, 26, 43, 0.04);
            --shadow-md: 0 8px 30px rgba(26, 26, 43, 0.07);
            --shadow-lg: 0 20px 50px rgba(26, 26, 43, 0.12);
            --ease: 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
            --ease-out: 0.25s cubic-bezier(0.4, 0, 0.2, 1);
            --max-w: 1300px;
        }

        /* ========== RESET ========== */
        * { box-sizing: border-box; margin: 0; padding: 0; }
        html { scroll-behavior: smooth; }
        body {
            font-family: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--ink);
            line-height: 1.55;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        a { color: inherit; text-decoration: none; }
        img { display: block; max-width: 100%; }
        button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }
        input { font-family: inherit; }

        .wrap {
            width: 100%;
            max-width: var(--max-w);
            margin: 0 auto;
            padding: 0 28px;
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            padding: 14px 32px;
            border-radius: var(--radius-pill);
            font-weight: 700;
            font-size: 15px;
            letter-spacing: -0.2px;
            transition: all var(--ease-out);
            border: 2px solid transparent;
            line-height: 1.2;
            white-space: nowrap;
        }
        .btn-accent {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
        }
        .btn-accent:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
            transform: translateY(-3px) scale(1.02);
            box-shadow: 0 12px 30px var(--accent-glow);
        }
        .btn-soft {
            background: var(--accent-soft);
            color: var(--accent-dark);
            border-color: transparent;
        }
        .btn-soft:hover {
            background: var(--accent);
            color: #fff;
            transform: translateY(-2px);
        }
        .btn-ghost-white {
            background: rgba(255, 255, 255, 0.12);
            color: #fff;
            border-color: rgba(255, 255, 255, 0.30);
            backdrop-filter: blur(8px);
        }
        .btn-ghost-white:hover {
            background: rgba(255, 255, 255, 0.22);
            border-color: rgba(255, 255, 255, 0.55);
            transform: translateY(-2px);
        }

        /* ========== HEADER ========== */
        .site-header {
            position: sticky;
            top: 0;
            z-index: 200;
            background: rgba(249, 248, 246, 0.88);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--line);
        }
        .header-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 14px 0;
            min-height: 76px;
        }
        .logo {
            display: flex;
            align-items: center;
            gap: 11px;
            font-weight: 800;
            font-size: 25px;
            letter-spacing: -0.8px;
            flex-shrink: 0;
        }
        .logo-mark {
            width: 42px;
            height: 42px;
            border-radius: 13px;
            background: linear-gradient(135deg, var(--accent) 0%, var(--sun) 100%);
            display: grid;
            place-items: center;
            color: #fff;
            font-size: 19px;
            box-shadow: 0 6px 16px var(--accent-glow);
        }
        .logo-text .accent { color: var(--accent); }

        .nav-links {
            display: flex;
            gap: 2px;
            list-style: none;
            align-items: center;
        }
        .nav-links li a {
            display: flex;
            align-items: center;
            gap: 7px;
            padding: 10px 18px;
            border-radius: var(--radius-pill);
            font-weight: 600;
            font-size: 14px;
            color: var(--muted);
            transition: all var(--ease-out);
        }
        .nav-links li a:hover,
        .nav-links li a.is-active {
            background: var(--accent-soft);
            color: var(--accent-dark);
        }
        .nav-links li a i { font-size: 14px; }

        .header-right {
            display: flex;
            align-items: center;
            gap: 12px;
            flex-shrink: 0;
        }

        .search-box {
            display: flex;
            align-items: center;
            background: var(--bg-card);
            border: 1.5px solid var(--line);
            border-radius: var(--radius-pill);
            padding: 0 6px 0 18px;
            transition: all var(--ease-out);
            min-width: 250px;
        }
        .search-box:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 4px var(--accent-glow);
        }
        .search-box input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 11px 0;
            font-size: 14px;
            color: var(--ink);
        }
        .search-box input::placeholder { color: var(--muted-light); }
        .search-box button {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            color: var(--muted);
            font-size: 15px;
            transition: all var(--ease-out);
        }
        .search-box button:hover { background: var(--accent-soft); color: var(--accent); }

        .icon-pill {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background: var(--bg-card);
            border: 1.5px solid var(--line);
            display: grid;
            place-items: center;
            font-size: 17px;
            color: var(--ink-soft);
            transition: all var(--ease-out);
            position: relative;
        }
        .icon-pill:hover {
            border-color: var(--accent);
            color: var(--accent);
            transform: translateY(-2px);
        }
        .icon-pill .badge-dot {
            position: absolute;
            top: -3px;
            right: -3px;
            background: var(--accent);
            color: #fff;
            font-size: 10px;
            font-weight: 800;
            min-width: 19px;
            height: 19px;
            border-radius: var(--radius-pill);
            display: grid;
            place-items: center;
            padding: 0 4px;
            border: 2px solid var(--bg);
            pointer-events: none;
        }

        .burger {
            display: none;
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background: var(--bg-card);
            border: 1.5px solid var(--line);
            place-items: center;
            font-size: 18px;
            color: var(--ink);
        }

        /* ========== MOBILE MENU ========== */
        .mobile-drawer {
            display: none;
            background: var(--bg-card);
            border-top: 1px solid var(--line);
            padding: 14px 0 26px;
            box-shadow: var(--shadow-md);
        }
        .mobile-drawer ul { list-style: none; display: flex; flex-direction: column; gap: 3px; }
        .mobile-drawer ul li a {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 14px 18px;
            border-radius: var(--radius-md);
            font-weight: 600;
            color: var(--ink);
            transition: all var(--ease-out);
        }
        .mobile-drawer ul li a:hover { background: var(--accent-soft); color: var(--accent-dark); }
        .mobile-drawer ul li a i { width: 22px; color: var(--muted); }

        /* ========== HERO ========== */
        .hero {
            position: relative;
            margin: 26px 26px 0;
            border-radius: var(--radius-xl);
            overflow: hidden;
            background: #1a1a2b;
            min-height: 540px;
            display: flex;
            align-items: center;
        }
        .hero-bg {
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1500&q=80') center/cover no-repeat;
            opacity: 0.38;
            z-index: 0;
        }
        .hero::after {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(100deg, rgba(26, 26, 43, 0.95) 30%, rgba(26, 26, 43, 0.45) 100%);
            z-index: 1;
        }
        .hero-inner {
            position: relative;
            z-index: 2;
            padding: 80px 0;
            width: 100%;
        }
        .hero-chip {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(244, 119, 91, 0.18);
            border: 1px solid rgba(244, 119, 91, 0.35);
            color: #ffb4a2;
            padding: 7px 18px;
            border-radius: var(--radius-pill);
            font-weight: 700;
            font-size: 13px;
            letter-spacing: 0.2px;
            margin-bottom: 22px;
        }
        .hero-title {
            font-family: 'DM Serif Display', serif;
            font-size: 62px;
            font-weight: 400;
            color: #fff;
            line-height: 1.08;
            max-width: 700px;
            margin-bottom: 20px;
            letter-spacing: -1px;
        }
        .hero-title em {
            font-style: italic;
            color: var(--accent);
        }
        .hero-sub {
            color: rgba(255, 255, 255, 0.78);
            font-size: 18px;
            max-width: 520px;
            margin-bottom: 36px;
            line-height: 1.65;
        }
        .hero-cta { display: flex; gap: 14px; flex-wrap: wrap; }
        .hero-stats {
            display: flex;
            gap: 40px;
            margin-top: 48px;
            flex-wrap: wrap;
        }
        .stat-item .stat-num {
            font-family: 'DM Serif Display', serif;
            font-size: 32px;
            color: #fff;
            line-height: 1;
        }
        .stat-item .stat-label {
            font-size: 13px;
            color: rgba(255, 255, 255, 0.55);
            margin-top: 5px;
            font-weight: 500;
        }

        /* ========== SECTION BASICS ========== */
        .section { padding: 72px 0; }
        .section-head {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 24px;
            margin-bottom: 44px;
            flex-wrap: wrap;
        }
        .section-eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            font-size: 12px;
            font-weight: 800;
            letter-spacing: 1.5px;
            text-transform: uppercase;
            color: var(--accent);
            margin-bottom: 10px;
        }
        .section-eyebrow::before {
            content: '';
            width: 22px;
            height: 2px;
            background: var(--accent);
            border-radius: 2px;
        }
        .section-head h2 {
            font-family: 'DM Serif Display', serif;
            font-size: 38px;
            font-weight: 400;
            letter-spacing: -0.8px;
            line-height: 1.15;
        }
        .section-head h2 em { font-style: italic; color: var(--accent); }
        .section-head .sub {
            color: var(--muted);
            margin-top: 8px;
            font-size: 16px;
        }
        .link-arrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            font-weight: 700;
            font-size: 14px;
            color: var(--accent-dark);
            background: var(--accent-soft);
            padding: 10px 20px;
            border-radius: var(--radius-pill);
            transition: all var(--ease-out);
            white-space: nowrap;
        }
        .link-arrow:hover { gap: 14px; background: var(--accent); color: #fff; }

        /* ========== CATEGORY CARDS ========== */
        .cat-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .cat-tile {
            background: var(--bg-card);
            border: 1.5px solid var(--line);
            border-radius: var(--radius-lg);
            padding: 30px 14px;
            text-align: center;
            cursor: pointer;
            transition: all var(--ease);
            position: relative;
            overflow: hidden;
        }
        .cat-tile::before {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(160deg, var(--accent-soft), transparent 60%);
            opacity: 0;
            transition: opacity var(--ease-out);
        }
        .cat-tile:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            box-shadow: var(--shadow-md);
        }
        .cat-tile:hover::before { opacity: 1; }
        .cat-tile .cat-ico {
            position: relative;
            width: 62px;
            height: 62px;
            border-radius: 18px;
            background: var(--accent-soft);
            color: var(--accent);
            display: grid;
            place-items: center;
            margin: 0 auto 16px;
            font-size: 24px;
            transition: all var(--ease);
        }
        .cat-tile:hover .cat-ico {
            background: var(--accent);
            color: #fff;
            transform: rotate(-6deg) scale(1.05);
        }
        .cat-tile h4 { font-size: 15px; font-weight: 700; position: relative; }
        .cat-tile .cat-count { font-size: 12.5px; color: var(--muted); margin-top: 4px; position: relative; }

        /* ========== PRODUCT CARDS ========== */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 22px;
        }
        .prod-card {
            background: var(--bg-card);
            border: 1.5px solid var(--line);
            border-radius: var(--radius-lg);
            overflow: hidden;
            transition: all var(--ease);
            display: flex;
            flex-direction: column;
        }
        .prod-card:hover {
            transform: translateY(-7px);
            border-color: var(--accent);
            box-shadow: var(--shadow-lg);
        }
        .prod-media {
            position: relative;
            aspect-ratio: 1 / 1;
            background: var(--bg);
            overflow: hidden;
        }
        .prod-media img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.45s var(--ease-out);
        }
        .prod-card:hover .prod-media img { transform: scale(1.06); }
        .prod-tag {
            position: absolute;
            top: 13px;
            left: 13px;
            background: var(--ink);
            color: #fff;
            font-size: 11px;
            font-weight: 800;
            letter-spacing: 0.6px;
            text-transform: uppercase;
            padding: 5px 12px;
            border-radius: var(--radius-pill);
        }
        .prod-tag.sale { background: var(--accent); }
        .prod-fav {
            position: absolute;
            top: 13px;
            right: 13px;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.92);
            display: grid;
            place-items: center;
            font-size: 15px;
            color: var(--muted);
            transition: all var(--ease-out);
            box-shadow: var(--shadow-sm);
        }
        .prod-fav:hover { background: var(--accent); color: #fff; transform: scale(1.1); }

        .prod-info { padding: 18px 18px 14px; flex: 1; display: flex; flex-direction: column; gap: 7px; }
        .prod-cat {
            font-size: 11.5px;
            font-weight: 700;
            letter-spacing: 0.8px;
            text-transform: uppercase;
            color: var(--accent);
        }
        .prod-name {
            font-size: 15.5px;
            font-weight: 700;
            line-height: 1.35;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .prod-stars { display: flex; align-items: center; gap: 5px; font-size: 12.5px; color: var(--sun); }
        .prod-stars .rev-count { color: var(--muted); font-weight: 500; }
        .prod-price-row { display: flex; align-items: baseline; gap: 9px; margin-top: 2px; }
        .prod-price { font-weight: 800; font-size: 19px; color: var(--ink); letter-spacing: -0.3px; }
        .prod-old { font-size: 13.5px; color: var(--muted-light); text-decoration: line-through; }

        .prod-actions { padding: 0 18px 18px; }
        .btn-add {
            width: 100%;
            padding: 12px;
            border-radius: var(--radius-md);
            background: var(--bg);
            border: 1.5px solid var(--line);
            color: var(--ink);
            font-weight: 700;
            font-size: 13.5px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: all var(--ease-out);
        }
        .btn-add:hover {
            background: var(--accent);
            border-color: var(--accent);
            color: #fff;
        }
        .btn-add.is-added {
            background: var(--mint);
            border-color: var(--mint);
            color: #fff;
        }

        /* ========== DEAL BANNER ========== */
        .deal-banner {
            display: grid;
            grid-template-columns: 1fr 1fr;
            background: var(--ink);
            border-radius: var(--radius-xl);
            overflow: hidden;
            color: #fff;
        }
        .deal-visual { position: relative; min-height: 380px; background: #2b2b40; }
        .deal-visual img { width: 100%; height: 100%; object-fit: cover; opacity: 0.92; }
        .deal-body { padding: 52px 56px; display: flex; flex-direction: column; justify-content: center; }
        .deal-chip {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: var(--sun);
            color: var(--ink);
            padding: 6px 18px;
            border-radius: var(--radius-pill);
            font-size: 12px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 0.8px;
            align-self: flex-start;
            margin-bottom: 18px;
        }
        .deal-body h3 {
            font-family: 'DM Serif Display', serif;
            font-size: 40px;
            font-weight: 400;
            line-height: 1.1;
            margin-bottom: 12px;
        }
        .deal-body p { color: rgba(255, 255, 255, 0.68); margin-bottom: 22px; font-size: 15.5px; max-width: 440px; }
        .deal-price { font-size: 44px; font-weight: 800; letter-spacing: -1.5px; margin-bottom: 4px; }
        .deal-price .was {
            font-size: 22px;
            font-weight: 400;
            color: rgba(255, 255, 255, 0.45);
            text-decoration: line-through;
            margin-left: 12px;
            letter-spacing: 0;
        }
        .deal-stock { font-size: 14px; color: rgba(255, 255, 255, 0.6); margin-bottom: 22px; }
        .deal-stock strong { color: var(--accent); }

        .countdown { display: flex; gap: 10px; margin-bottom: 28px; }
        .countdown .unit {
            background: rgba(255, 255, 255, 0.08);
            border: 1px solid rgba(255, 255, 255, 0.12);
            border-radius: var(--radius-md);
            padding: 12px 16px;
            min-width: 72px;
            text-align: center;
        }
        .countdown .unit .val { font-size: 26px; font-weight: 800; line-height: 1.1; letter-spacing: -0.5px; }
        .countdown .unit .tag { font-size: 10.5px; text-transform: uppercase; letter-spacing: 0.8px; opacity: 0.55; margin-top: 2px; font-weight: 600; }

        /* ========== TESTIMONIALS ========== */
        .review-track {
            display: flex;
            gap: 22px;
            overflow-x: auto;
            padding: 6px 2px 22px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }
        .review-track::-webkit-scrollbar { height: 6px; }
        .review-track::-webkit-scrollbar-track { background: var(--line); border-radius: var(--radius-pill); }
        .review-track::-webkit-scrollbar-thumb { background: var(--accent); border-radius: var(--radius-pill); }

        .review-card {
            flex: 0 0 380px;
            background: var(--bg-card);
            border: 1.5px solid var(--line);
            border-radius: var(--radius-lg);
            padding: 30px 32px;
            scroll-snap-align: start;
            transition: all var(--ease);
            position: relative;
        }
        .review-card:hover {
            border-color: var(--accent);
            transform: translateY(-4px);
            box-shadow: var(--shadow-md);
        }
        .review-quote-mark {
            font-family: 'DM Serif Display', serif;
            font-size: 64px;
            line-height: 0.6;
            color: var(--accent-soft);
            position: absolute;
            top: 28px;
            right: 30px;
        }
        .review-stars { color: var(--sun); font-size: 17px; letter-spacing: 2px; margin-bottom: 14px; }
        .review-text { font-size: 15px; line-height: 1.7; color: var(--ink-soft); margin-bottom: 20px; position: relative; z-index: 1; }
        .reviewer { display: flex; align-items: center; gap: 13px; }
        .reviewer img { width: 46px; height: 46px; border-radius: 50%; object-fit: cover; }
        .reviewer .r-name { font-weight: 700; font-size: 14.5px; }
        .reviewer .r-role { font-size: 12.5px; color: var(--muted); }

        /* ========== NEWSLETTER ========== */
        .newsletter {
            background: linear-gradient(120deg, var(--accent) 0%, #f4a261 100%);
            border-radius: var(--radius-xl);
            padding: 56px 64px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 40px;
            flex-wrap: wrap;
            position: relative;
            overflow: hidden;
        }
        .newsletter::after {
            content: '';
            position: absolute;
            width: 340px;
            height: 340px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.10);
            top: -160px;
            right: -80px;
        }
        .newsletter-text { position: relative; z-index: 1; }
        .newsletter-text h3 {
            font-family: 'DM Serif Display', serif;
            font-size: 34px;
            font-weight: 400;
            margin-bottom: 8px;
        }
        .newsletter-text p { opacity: 0.9; font-size: 16px; max-width: 380px; }
        .newsletter form { display: flex; gap: 12px; flex-wrap: wrap; flex: 1; max-width: 500px; position: relative; z-index: 1; }
        .newsletter input {
            flex: 1;
            min-width: 220px;
            padding: 16px 24px;
            border-radius: var(--radius-pill);
            border: 2px solid transparent;
            font-size: 15px;
            outline: none;
            transition: all var(--ease-out);
        }
        .newsletter input:focus { border-color: var(--ink); }
        .newsletter .btn { background: var(--ink); color: #fff; border-color: var(--ink); padding: 16px 32px; }
        .newsletter .btn:hover { background: #000; border-color: #000; }
        .newsletter-msg { width: 100%; font-size: 14px; font-weight: 600; margin-top: 4px; min-height: 20px; }

        /* ========== FOOTER ========== */
        .site-footer {
            margin-top: 40px;
            padding: 56px 0 32px;
            border-top: 1.5px solid var(--line);
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 1.8fr 1fr 1fr 1fr;
            gap: 44px;
            margin-bottom: 40px;
        }
        .footer-brand .logo { margin-bottom: 14px; }
        .footer-brand p { color: var(--muted); font-size: 14.5px; max-width: 300px; line-height: 1.7; }
        .social-row { display: flex; gap: 10px; margin-top: 20px; }
        .social-row a {
            width: 42px;
            height: 42px;
            border-radius: 12px;
            background: var(--bg-card);
            border: 1.5px solid var(--line);
            display: grid;
            place-items: center;
            color: var(--muted);
            font-size: 16px;
            transition: all var(--ease-out);
        }
        .social-row a:hover { background: var(--accent); border-color: var(--accent); color: #fff; transform: translateY(-3px); }
        .footer-col h5 {
            font-size: 13px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: var(--ink);
            margin-bottom: 16px;
        }
        .footer-col ul { list-style: none; display: flex; flex-direction: column; gap: 10px; }
        .footer-col ul li a { color: var(--muted); font-size: 14px; transition: color var(--ease-out); }
        .footer-col ul li a:hover { color: var(--accent); }
        .footer-base {
            text-align: center;
            padding-top: 26px;
            border-top: 1.5px solid var(--line);
            color: var(--muted-light);
            font-size: 13.5px;
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1200px) {
            .product-grid { grid-template-columns: repeat(3, 1fr); }
            .cat-grid { grid-template-columns: repeat(3, 1fr); }
            .footer-grid { grid-template-columns: 1fr 1fr; gap: 32px; }
        }
        @media (max-width: 992px) {
            .hero-title { font-size: 46px; }
            .hero { min-height: 460px; margin: 18px 18px 0; }
            .deal-banner { grid-template-columns: 1fr; }
            .deal-visual { min-height: 260px; }
            .deal-body { padding: 36px 32px; }
            .newsletter { padding: 40px 34px; }
            .search-box { min-width: 180px; }
        }
        @media (max-width: 768px) {
            .nav-links { display: none; }
            .burger { display: grid; }
            .search-box { display: none; }
            .product-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .cat-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
            .hero-title { font-size: 34px; }
            .hero-sub { font-size: 16px; }
            .hero-stats { gap: 26px; }
            .stat-item .stat-num { font-size: 26px; }
            .section-head h2 { font-size: 28px; }
            .section { padding: 48px 0; }
            .deal-body h3 { font-size: 30px; }
            .deal-price { font-size: 34px; }
            .footer-grid { grid-template-columns: 1fr; gap: 26px; }
            .review-card { flex: 0 0 300px; }
            .newsletter-text h3 { font-size: 26px; }
            .wrap { padding: 0 18px; }
        }
        @media (max-width: 480px) {
            .hero { margin: 12px 12px 0; min-height: 420px; }
            .hero-title { font-size: 30px; }
            .product-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
            .cat-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
            .prod-info { padding: 12px 12px 10px; }
            .prod-name { font-size: 13.5px; }
            .prod-price { font-size: 16px; }
            .prod-actions { padding: 0 12px 12px; }
            .btn-add { font-size: 12.5px; padding: 10px; }
            .cat-tile { padding: 20px 10px; }
            .cat-tile .cat-ico { width: 50px; height: 50px; font-size: 20px; }
            .cat-tile h4 { font-size: 13px; }
            .deal-body { padding: 26px 20px; }
            .deal-visual { min-height: 200px; }
            .countdown .unit { min-width: 58px; padding: 10px 10px; }
            .countdown .unit .val { font-size: 20px; }
            .newsletter { padding: 30px 22px; }
            .newsletter-text h3 { font-size: 22px; }
            .review-card { flex: 0 0 270px; padding: 22px 22px; }
            .wrap { padding: 0 14px; }
        }
    </style>
</head>

<body>

    <!-- ================= HEADER ================= -->
    <header class="site-header">
        <div class="wrap header-row">
            <div style="display:flex;align-items:center;gap:14px;">
                <button class="burger" id="burgerBtn" aria-label="Open menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="logo" href="#">
                    <span class="logo-mark"><i class="fas fa-bag-shopping"></i></span>
                    <span class="logo-text">Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav aria-label="Primary">
                <ul class="nav-links">
                    <li><a href="#" class="is-active"><i class="fas fa-house"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-grip"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
                    <li><a href="#reviews"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </nav>

            <div class="header-right">
                <div class="search-box" role="search">
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
                    <button id="searchBtn" aria-label="Submit search"><i class="fas fa-magnifying-glass"></i></button>
                </div>
                <button class="icon-pill" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                <button class="icon-pill" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                <button class="icon-pill" id="cartBtn" title="Cart" aria-label="Cart">
                    <i class="fas fa-bag-shopping"></i>
                    <span class="badge-dot" id="cartCount">0</span>
                </button>
            </div>
        </div>

        <!-- Mobile drawer -->
        <div class="mobile-drawer" id="mobileDrawer">
            <div class="wrap">
                <ul>
                    <li><a href="#"><i class="fas fa-house"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-grip"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
                    <li><a href="#reviews"><i class="fas fa-star"></i> Reviews</a></li>
                    <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                    <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- ================= MAIN ================= -->
    <main>

        <!-- HERO -->
        <section class="hero" aria-label="Hero">
            <div class="hero-bg"></div>
            <div class="wrap hero-inner">
                <span class="hero-chip"><i class="fas fa-sparkles"></i> New Season · 2026</span>
                <h1 class="hero-title">Shop smarter,<br>live <em>better.</em></h1>
                <p class="hero-sub">Curated essentials for the modern lifestyle — tech, fashion, and accessories delivered to your door with free shipping.</p>
                <div class="hero-cta">
                    <button class="btn btn-accent" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Shop the Collection</button>
                    <button class="btn btn-ghost-white" id="dealsBtn"><i class="fas fa-clock"></i> See Today's Deals</button>
                </div>
                <div class="hero-stats">
                    <div class="stat-item">
                        <div class="stat-num">12k+</div>
                        <div class="stat-label">Happy Customers</div>
                    </div>
                    <div class="stat-item">
                        <div class="stat-num">4.9★</div>
                        <div class="stat-label">Average Rating</div>
                    </div>
                    <div class="stat-item">
                        <div class="stat-num">Free</div>
                        <div class="stat-label">Shipping over $50</div>
                    </div>
                </div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories" aria-labelledby="catHeading">
            <div class="wrap">
                <div class="section-head">
                    <div>
                        <span class="section-eyebrow">Explore</span>
                        <h2 id="catHeading">Shop by <em>category</em></h2>
                        <p class="sub">Find exactly what you're looking for</p>
                    </div>
                    <a href="#" class="link-arrow">All Categories <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="cat-grid" id="categoriesGrid"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" aria-labelledby="prodHeading">
            <div class="wrap">
                <div class="section-head">
                    <div>
                        <span class="section-eyebrow">Handpicked</span>
                        <h2 id="prodHeading">Trending <em>right now</em></h2>
                        <p class="sub">Popular picks loved by our community</p>
                    </div>
                    <a href="#" class="link-arrow">View All <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="product-grid" id="productsGrid"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals" aria-labelledby="dealHeading">
            <div class="wrap">
                <div class="section-head">
                    <div>
                        <span class="section-eyebrow">Limited Time</span>
                        <h2 id="dealHeading">Today's <em>flash deal</em></h2>
                        <p class="sub">Grab it before it's gone</p>
                    </div>
                </div>
                <div class="deal-banner">
                    <div class="deal-visual">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80" alt="MacBook Air M2" loading="lazy">
                    </div>
                    <div class="deal-body">
                        <span class="deal-chip"><i class="fas fa-bolt"></i> Flash Sale</span>
                        <h3>MacBook Air M2</h3>
                        <p>Thin, light, and incredibly powerful — the M2 chip redefines everyday performance.</p>
                        <div class="deal-price">$999 <span class="was">$1,199</span></div>
                        <div class="deal-stock">Only <strong>12</strong> items left — hurry!</div>
                        <div class="countdown">
                            <div class="unit"><div class="val" id="cdDays">0</div><div class="tag">Days</div></div>
                            <div class="unit"><div class="val" id="cdHours">00</div><div class="tag">Hours</div></div>
                            <div class="unit"><div class="val" id="cdMinutes">00</div><div class="tag">Mins</div></div>
                            <div class="unit"><div class="val" id="cdSeconds">00</div><div class="tag">Secs</div></div>
                        </div>
                        <button class="btn btn-accent" id="dealBuyBtn"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- REVIEWS -->
        <section class="section" id="reviews" aria-labelledby="reviewHeading">
            <div class="wrap">
                <div class="section-head">
                    <div>
                        <span class="section-eyebrow">Testimonials</span>
                        <h2 id="reviewHeading">Loved by <em>customers</em></h2>
                        <p class="sub">Real reviews from real shoppers</p>
                    </div>
                </div>
                <div class="review-track" id="reviewsTrack"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section" aria-labelledby="newsHeading">
            <div class="wrap">
                <div class="newsletter">
                    <div class="newsletter-text">
                        <h3 id="newsHeading">Get 10% off your first order</h3>
                        <p>Join our newsletter for exclusive deals, early access, and new arrivals.</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="you@example.com" aria-label="Email" required />
                        <button class="btn" type="submit"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div class="newsletter-msg" id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>

    </main>

    <!-- ================= FOOTER ================= -->
    <footer class="site-footer">
        <div class="wrap">
            <div class="footer-grid">
                <div class="footer-brand">
                    <a class="logo" href="#">
                        <span class="logo-mark"><i class="fas fa-bag-shopping"></i></span>
                        <span class="logo-text">Nexus<span class="accent">Shop</span></span>
                    </a>
                    <p>Modern e‑commerce built with care. Quality products, a seamless experience, and a community we love.</p>
                    <div class="social-row">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="footer-col">
                    <h5>Company</h5>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Terms</a></li>
                        <li><a href="#">Cookies</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-base">
                &copy; <span id="year">2026</span> NexusShop. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- ================= SCRIPT ================= -->
    <script>
        /* ---------- DATA ---------- */
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-shirt', count: 42 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];

        const REVIEWS = [
            { name: 'Ava Martin', role: 'Verified Buyer',
              avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
              text: 'Fast shipping and excellent support. The product exceeded my expectations!', stars: 5 },
            { name: 'Michael Lee', role: 'Frequent Shopper',
              avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
              text: 'Great selection and smooth checkout. Will definitely shop again.', stars: 4 },
            { name: 'Sophia Chen', role: 'Designer',
              avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
              text: 'Love the quality and the packaging. Everything arrived in perfect condition.', stars: 5 },
            { name: 'James Wilson', role: 'Tech Enthusiast',
              avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
              text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.', stars: 5 }
        ];

        /* ---------- STATE ---------- */
        let cartCount = 0;

        /* ---------- DOM ---------- */
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid   = document.getElementById('productsGrid');
        const reviewsTrack   = document.getElementById('reviewsTrack');
        const cartCountEl    = document.getElementById('cartCount');
        const searchInput    = document.getElementById('searchInput');
        const searchBtn      = document.getElementById('searchBtn');
        const burgerBtn      = document.getElementById('burgerBtn');
        const mobileDrawer   = document.getElementById('mobileDrawer');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail= document.getElementById('newsletterEmail');
        const newsletterMsg  = document.getElementById('newsletterMsg');

        /* ---------- HELPERS ---------- */
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'
            }[s]));
        }
        function stars(rating) {
            const r = Math.round(rating);
            return '★'.repeat(r) + '☆'.repeat(5 - r);
        }
        function updateCart() {
            cartCountEl.textContent = cartCount;
            cartCountEl.style.transform = 'scale(1.35)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 180);
        }

        /* ---------- RENDER: CATEGORIES ---------- */
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-tile';
                el.innerHTML = `
                    <div class="cat-ico"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="cat-count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        /* ---------- RENDER: PRODUCTS ---------- */
        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML =
                    `<p style="grid-column:1/-1;text-align:center;padding:60px 20px;color:var(--muted);font-size:16px;">
                        No products found. Try a different search.
                     </p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'prod-card';
                const tagClass = p.badge === 'Sale' ? 'sale' : '';
                const tagHtml  = p.badge ? `<span class="prod-tag ${tagClass}">${p.badge}</span>` : '';
                const oldHtml  = p.oldPrice ? `<span class="prod-old">$${p.oldPrice.toLocaleString()}</span>` : '';
                el.innerHTML = `
                    <div class="prod-media">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${tagHtml}
                        <button class="prod-fav" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="prod-info">
                        <div class="prod-cat">${p.category}</div>
                        <h3 class="prod-name">${escapeHtml(p.title)}</h3>
                        <div class="prod-stars">${stars(p.rating)} <span class="rev-count">(${p.reviews})</span></div>
                        <div class="prod-price-row">
                            <span class="prod-price">$${p.price.toLocaleString()}</span>
                            ${oldHtml}
                        </div>
                    </div>
                    <div class="prod-actions">
                        <button class="btn-add" data-id="${p.id}">
                            <i class="fas fa-cart-plus"></i> Add to Cart
                        </button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            productsGrid.querySelectorAll('.btn-add').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    const id = Number(this.dataset.id);
                    addToCart(id, this);
                });
            });
        }

        /* ---------- RENDER: REVIEWS ---------- */
        function renderReviews() {
            reviewsTrack.innerHTML = '';
            REVIEWS.forEach(t => {
                const el = document.createElement('div');
                el.className = 'review-card';
                el.innerHTML = `
                    <span class="review-quote-mark">”</span>
                    <div class="review-stars">${stars(t.stars)}</div>
                    <p class="review-text">“${escapeHtml(t.text)}”</p>
                    <div class="reviewer">
                        <img src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div>
                            <div class="r-name">${escapeHtml(t.name)}</div>
                            <div class="r-role">${escapeHtml(t.role)}</div>
                        </div>
                    </div>
                `;
                reviewsTrack.appendChild(el);
            });
        }

        /* ---------- ACTIONS ---------- */
        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCart();
            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
                btnEl.classList.add('is-added');
                setTimeout(() => {
                    btnEl.innerHTML = orig;
                    btnEl.classList.remove('is-added');
                }, 1500);
            }
            const cartBtn = document.getElementById('cartBtn');
            cartBtn.style.color = 'var(--accent)';
            setTimeout(() => cartBtn.style.color = '', 400);
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) return renderProducts(PRODUCTS);
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        /* ---------- COUNTDOWN ---------- */
        (function countdown() {
            const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
            function tick() {
                const diff = target - Date.now();
                if (diff <= 0) {
                    ['cdDays','cdHours','cdMinutes','cdSeconds'].forEach(id => document.getElementById(id).textContent = '00');
                    return;
                }
                const d = Math.floor(diff / 86400000);
                const h = Math.floor((diff % 86400000) / 3600000);
                const m = Math.floor((diff % 3600000) / 60000);
                const s = Math.floor((diff % 60000) / 1000);
                document.getElementById('cdDays').textContent    = d;
                document.getElementById('cdHours').textContent   = String(h).padStart(2,'0');
                document.getElementById('cdMinutes').textContent = String(m).padStart(2,'0');
                document.getElementById('cdSeconds').textContent = String(s).padStart(2,'0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        /* ---------- EVENT BINDINGS ---------- */
        // Search
        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', e => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // Mobile drawer
        burgerBtn.addEventListener('click', () => {
            const open = mobileDrawer.style.display === 'block';
            mobileDrawer.style.display = open ? 'none' : 'block';
            burgerBtn.innerHTML = open ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-xmark"></i>';
        });
        mobileDrawer.querySelectorAll('a').forEach(a => {
            a.addEventListener('click', () => {
                mobileDrawer.style.display = 'none';
                burgerBtn.innerHTML = '<i class="fas fa-bars"></i>';
            });
        });

        // Hero buttons
        document.getElementById('shopNowBtn').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        document.getElementById('dealsBtn').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });

        // Deal buy
        document.getElementById('dealBuyBtn').addEventListener('click', function() {
            cartCount++;
            updateCart();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Added to Cart!';
            this.style.background = 'var(--mint)';
            this.style.borderColor = 'var(--mint)';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
                this.style.borderColor = '';
            }, 1700);
        });

        // Newsletter
        newsletterForm.addEventListener('submit', e => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please enter a valid email address.';
                newsletterMsg.style.color = '#fff';
                return;
            }
            newsletterMsg.textContent = '🎉 You’re subscribed! Check your inbox.';
            newsletterMsg.style.color = '#fff';
            newsletterEmail.value = '';
            setTimeout(() => { newsletterMsg.textContent = ''; }, 3500);
        });

        // Cart
        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
        });

        // Year
        document.getElementById('year').textContent = new Date().getFullYear();

        /* ---------- INIT ---------- */
        renderCategories();
        renderProducts(PRODUCTS);
        renderReviews();
        updateCart();

        // Reset mobile drawer on resize
        window.addEventListener('resize', () => {
            if (window.innerWidth > 768) {
                mobileDrawer.style.display = 'none';
                burgerBtn.innerHTML = '<i class="fas fa-bars"></i>';
            }
        });
    </script>
</body>
</html>
