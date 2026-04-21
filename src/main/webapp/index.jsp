<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NexusShop | Premium E‑Commerce Experience</title>
    <!-- Google Fonts & Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #0A0C10;
            --surface: #11151C;
            --surface-elevated: #1A1F2A;
            --primary: #E5E9F0;
            --accent: #6C63FF;
            --accent-glow: #8A82FF;
            --accent-dark: #4F46E5;
            --muted: #8E98A3;
            --card-bg: #12161E;
            --border-light: rgba(108, 99, 255, 0.2);
            --success: #2DD4BF;
            --warning: #F59E0B;
            --danger: #EF4444;
            --radius-sm: 12px;
            --radius-md: 20px;
            --radius-lg: 28px;
            --transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
        }

        body {
            background: var(--bg);
            font-family: 'Inter', 'Plus Jakarta Sans', sans-serif;
            color: var(--primary);
            line-height: 1.5;
            overflow-x: hidden;
        }

        /* scrollbar */
        ::-webkit-scrollbar {
            width: 6px;
            height: 6px;
        }
        ::-webkit-scrollbar-track {
            background: var(--surface);
        }
        ::-webkit-scrollbar-thumb {
            background: var(--accent);
            border-radius: 10px;
        }

        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* glass header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(10, 12, 16, 0.85);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(108, 99, 255, 0.25);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 16px 0;
            gap: 24px;
            flex-wrap: wrap;
        }

        .brand {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-weight: 800;
            font-size: 26px;
            background: linear-gradient(135deg, #FFFFFF 0%, var(--accent) 100%);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.3px;
        }
        .brand span {
            background: none;
            -webkit-background-clip: unset;
            background-clip: unset;
            color: var(--accent);
        }

        nav ul {
            display: flex;
            gap: 28px;
            list-style: none;
        }
        nav ul li a {
            font-weight: 500;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 15px;
        }
        nav ul li a:hover {
            color: var(--accent);
            text-shadow: 0 0 6px rgba(108, 99, 255, 0.4);
        }

        .search-wrapper {
            background: var(--surface);
            border-radius: 60px;
            padding: 8px 16px;
            display: flex;
            align-items: center;
            gap: 12px;
            border: 1px solid var(--border-light);
            transition: var(--transition);
        }
        .search-wrapper:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 12px rgba(108, 99, 255, 0.3);
        }
        .search-wrapper input {
            background: transparent;
            border: none;
            outline: none;
            color: var(--primary);
            font-size: 14px;
            width: 220px;
        }
        .search-wrapper input::placeholder {
            color: var(--muted);
        }

        .cart {
            background: var(--surface);
            padding: 8px 14px;
            border-radius: 40px;
            position: relative;
            transition: var(--transition);
        }
        .cart-count {
            background: var(--accent);
            color: #0A0C10;
            font-weight: 800;
            font-size: 11px;
            padding: 2px 6px;
            border-radius: 30px;
            position: absolute;
            top: -5px;
            right: -8px;
        }

        /* Hero 3D style */
        .hero {
            background: radial-gradient(ellipse at 30% 40%, rgba(108, 99, 255, 0.2), transparent 70%),
                        linear-gradient(135deg, #0A0C10 0%, #131823 100%);
            border-radius: 0 0 40px 40px;
            margin-bottom: 20px;
            padding: 80px 20px;
            text-align: center;
            border-bottom: 1px solid rgba(108, 99, 255, 0.3);
        }
        .hero h1 {
            font-size: 52px;
            font-weight: 800;
            background: linear-gradient(to right, #FFFFFF, var(--accent-glow));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 20px;
        }
        .btn {
            padding: 12px 28px;
            border-radius: 50px;
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: all 0.2s ease;
            font-size: 15px;
        }
        .btn-primary {
            background: linear-gradient(95deg, var(--accent), var(--accent-dark));
            color: white;
            box-shadow: 0 4px 14px rgba(108, 99, 255, 0.4);
        }
        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 24px rgba(108, 99, 255, 0.6);
        }
        .btn-outline {
            background: transparent;
            border: 1.5px solid var(--accent);
            color: var(--accent);
        }
        .btn-outline:hover {
            background: rgba(108, 99, 255, 0.1);
            transform: scale(0.98);
        }

        /* category cards modern */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(170px, 1fr));
            gap: 24px;
            margin: 32px 0;
        }
        .cat-card {
            background: var(--surface-elevated);
            backdrop-filter: blur(4px);
            border-radius: var(--radius-md);
            padding: 24px 12px;
            text-align: center;
            transition: var(--transition);
            border: 1px solid rgba(108, 99, 255, 0.1);
            cursor: pointer;
        }
        .cat-card:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            box-shadow: 0 20px 30px -12px rgba(0,0,0,0.5);
            background: #1B212C;
        }
        .cat-card .icon {
            font-size: 40px;
            background: linear-gradient(135deg, var(--accent), #A78BFA);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 12px;
        }

        /* product grid premium */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 28px;
            margin: 40px 0;
        }
        .product-card {
            background: var(--card-bg);
            border-radius: var(--radius-lg);
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid var(--border-light);
            backdrop-filter: blur(2px);
        }
        .product-card:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            box-shadow: 0 24px 36px -12px rgba(0, 0, 0, 0.6);
        }
        .product-img {
            height: 240px;
            width: 100%;
            object-fit: cover;
            transition: transform 0.4s;
        }
        .product-card:hover .product-img {
            transform: scale(1.02);
        }
        .product-body {
            padding: 18px 20px 20px;
        }
        .price {
            font-weight: 800;
            font-size: 24px;
            color: var(--accent);
        }
        .old-price {
            text-decoration: line-through;
            font-size: 14px;
            color: var(--muted);
            margin-left: 8px;
        }
        .rating {
            color: #FFB347;
            letter-spacing: 1px;
        }

        /* flash sale modern */
        .deal-section {
            background: linear-gradient(125deg, #0E1320, #07090E);
            border-radius: var(--radius-lg);
            padding: 48px;
            margin: 40px 0;
            border: 1px solid rgba(108, 99, 255, 0.3);
            position: relative;
            overflow: hidden;
        }
        .timer-box {
            background: #00000055;
            backdrop-filter: blur(8px);
            border-radius: 20px;
            padding: 16px;
            text-align: center;
            min-width: 80px;
            border: 1px solid var(--accent);
        }

        /* testimonials modern */
        .testimonials-scroll {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 20px 4px 30px;
        }
        .testimonial-card {
            min-width: 320px;
            background: var(--surface-elevated);
            border-radius: 28px;
            padding: 24px;
            border: 1px solid rgba(108,99,255,0.2);
        }

        /* newsletter glass */
        .newsletter-glass {
            background: rgba(17, 21, 28, 0.8);
            backdrop-filter: blur(12px);
            border-radius: 48px;
            border: 1px solid var(--border-light);
            text-align: center;
            padding: 56px 24px;
        }

        footer {
            background: #070A0E;
            margin-top: 60px;
            padding: 48px 0;
            border-top: 1px solid var(--border-light);
        }

        @media (max-width: 860px) {
            .container { padding: 0 20px; }
            .hero h1 { font-size: 36px; }
            nav ul { gap: 16px; }
            .search-wrapper input { width: 140px; }
        }
        @media (max-width: 640px) {
            .header-inner { flex-direction: column; align-items: stretch; }
            nav ul { justify-content: center; flex-wrap: wrap; }
        }
        .badge-new {
            background: var(--accent);
            color: black;
            font-weight: 700;
            font-size: 11px;
            padding: 4px 12px;
            border-radius: 40px;
            display: inline-block;
        }
        button {
            background: none;
            border: none;
        }
        .add-to-cart {
            background: var(--accent);
            width: 100%;
            padding: 12px;
            border-radius: 60px;
            font-weight: 700;
            transition: 0.2s;
        }
        .add-to-cart:hover {
            background: var(--accent-dark);
            transform: scale(0.98);
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div class="brand">NEXUS<span>SHOP</span></div>
        <nav>
            <ul>
                <li><a href="#"><i class="fas fa-compass"></i> Explore</a></li>
                <li><a href="#trending"><i class="fas fa-bolt"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-gem"></i> Drops</a></li>
                <li><a href="#"><i class="fas fa-crown"></i> Premium</a></li>
            </ul>
        </nav>
        <div style="display: flex; gap: 12px; align-items: center;">
            <div class="search-wrapper">
                <i class="fas fa-search" style="color: var(--accent);"></i>
                <input type="text" id="globalSearch" placeholder="Search products...">
            </div>
            <div class="cart" id="cartIconBtn" style="cursor: pointer;">
                <i class="fas fa-bag-shopping fa-lg"></i>
                <span class="cart-count" id="cartCount">0</span>
            </div>
        </div>
    </div>
</header>

<main>
    <section class="hero">
        <div class="container">
            <h1>Beyond the Ordinary.<br>Elevate Your Style</h1>
            <p style="font-size: 18px; color: #B9C3D0; max-width: 680px; margin: 18px auto;">Discover curated collections, exclusive drops & next‑gen tech — all with immersive shopping experience.</p>
            <div style="display: flex; gap: 16px; justify-content: center; margin-top: 32px;">
                <button class="btn btn-primary" id="shopNowHero"><i class="fas fa-store"></i> Shop Collection</button>
                <button class="btn btn-outline" id="exploreBtn"><i class="fas fa-play"></i> Explore Deals</button>
            </div>
        </div>
    </section>

    <div class="container">
        <div style="margin: 20px 0 10px;"><span class="badge-new"><i class="fas fa-fingerprint"></i> handpicked</span></div>
        <h2 style="font-size: 32px; font-weight: 700;">Shop by Category</h2>
        <div class="categories-grid" id="categoriesContainer"></div>

        <div id="trending">
            <div style="display: flex; justify-content: space-between; align-items: baseline; flex-wrap: wrap;">
                <h2 style="font-size: 32px;">✨ Trending Now</h2>
                <p class="muted" style="color: var(--muted);">most wanted this week</p>
            </div>
            <div class="products-grid" id="productsContainer"></div>
        </div>

        <!-- Flash Sale modern design -->
        <section id="deals">
            <div class="deal-section" id="flashDealBlock">
                <div style="display: flex; flex-wrap: wrap; gap: 32px; align-items: center; justify-content: space-between;">
                    <div style="flex: 1.2;">
                        <span class="badge-new" style="background: var(--warning); color:#0A0C10;"><i class="fas fa-bolt"></i> FLASH SALE</span>
                        <h2 style="font-size: 38px; margin: 12px 0;">MacBook Air M2 <br> <span style="color: var(--accent);">Ultimate Edition</span></h2>
                        <p style="color: var(--muted); margin: 12px 0 20px;">Supercharged performance, all‑day battery life. Limited units.</p>
                        <div style="display: flex; gap: 16px; margin: 20px 0;">
                            <div class="timer-box"><span id="dealDays" style="font-size: 28px; font-weight:800;">0</span><br>Days</div>
                            <div class="timer-box"><span id="dealHours" style="font-size: 28px; font-weight:800;">00</span><br>Hours</div>
                            <div class="timer-box"><span id="dealMinutes" style="font-size: 28px; font-weight:800;">00</span><br>Min</div>
                            <div class="timer-box"><span id="dealSeconds" style="font-size: 28px; font-weight:800;">00</span><br>Sec</div>
                        </div>
                        <div style="display: flex; gap: 18px; align-items: baseline;">
                            <span class="price" style="font-size: 42px;">$999</span>
                            <span class="old-price" style="font-size: 20px;">$1,299</span>
                            <span style="background: var(--danger); padding: 4px 14px; border-radius: 50px; font-weight: 700;">-23%</span>
                        </div>
                        <button class="btn btn-primary" id="flashDealBtn" style="margin-top: 24px;"><i class="fas fa-zap"></i> Claim Deal</button>
                    </div>
                    <div style="flex: 0.9; text-align: center;">
                        <img src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=600&q=80" alt="Macbook" style="width: 100%; max-width: 320px; border-radius: 36px; box-shadow: 0 20px 40px rgba(0,0,0,0.5);">
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials Elevated -->
        <div style="margin: 60px 0 20px;">
            <h2 style="font-size: 32px;">Trusted by Creators</h2>
            <div class="testimonials-scroll" id="testimonialsList">
                <div class="testimonial-card">
                    <i class="fas fa-star" style="color: var(--warning);"></i><i class="fas fa-star" style="color: var(--warning);"></i><i class="fas fa-star" style="color: var(--warning);"></i><i class="fas fa-star" style="color: var(--warning);"></i><i class="fas fa-star" style="color: var(--warning);"></i>
                    <p style="margin: 14px 0;">"Best premium experience. The UI feels futuristic and checkout was instant."</p>
                    <div style="display: flex; gap: 12px; align-items: center; margin-top: 12px;">
                        <div style="background: var(--accent); width: 42px; height: 42px; border-radius: 50%; display: flex; align-items: center; justify-content: center;"><i class="fas fa-user-astronaut"></i></div>
                        <div><strong>Lina Chen</strong><br><span style="font-size: 12px;">Product Designer</span></div>
                    </div>
                </div>
                <div class="testimonial-card">
                    <i class="fas fa-star" style="color: var(--warning);"></i><i class="fas fa-star" style="color: var(--warning);"></i><i class="fas fa-star" style="color: var(--warning);"></i><i class="fas fa-star" style="color: var(--warning);"></i><i class="fas fa-star-half-alt" style="color: var(--warning);"></i>
                    <p>"Shipping faster than light. Their customer support solved my issue in minutes."</p>
                    <div style="display: flex; gap: 12px; align-items: center; margin-top: 12px;">
                        <div style="background: #4F46E5; width: 42px; height: 42px; border-radius: 50%; display: flex; align-items: center; justify-content: center;"><i class="fas fa-crown"></i></div>
                        <div><strong>Marcus V.</strong><br><span style="font-size: 12px;">Tech reviewer</span></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Newsletter Glassmorph -->
        <div class="newsletter-glass" style="margin: 40px 0;">
            <i class="fas fa-paper-plane" style="font-size: 42px; color: var(--accent);"></i>
            <h3 style="margin: 12px 0;">Join the Inner Circle</h3>
            <p style="margin-bottom: 20px;">Get early access to sales, new drops and exclusive offers.</p>
            <form id="newsForm" style="display: flex; gap: 12px; justify-content: center; flex-wrap: wrap;">
                <input type="email" id="newsEmail" placeholder="your@email.com" style="padding: 14px 22px; border-radius: 80px; border: none; width: 300px; background: #1e2532; color: white;">
                <button class="btn btn-primary" type="submit" style="padding: 14px 28px;"><i class="fas fa-envelope"></i> Subscribe</button>
            </form>
            <p id="newsMsg" style="margin-top: 12px; font-size: 13px; display: none;"></p>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; flex-wrap: wrap; justify-content: space-between; gap: 32px;">
        <div><h3 style="font-size: 26px;">NEXUS<span style="color:var(--accent)">SHOP</span></h3><p style="color: var(--muted); max-width: 260px;">Redefining modern commerce with cutting‑edge design & immersive tech.</p></div>
        <div><strong>Explore</strong><br><span style="color: var(--muted);">New Arrivals<br>Best Sellers<br>Gift Cards</span></div>
        <div><strong>Support</strong><br><span style="color: var(--muted);">Help Center<br>Returns<br>Track Order</span></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 40px; border-top: 1px solid var(--border-light); padding-top: 24px;"><span style="color: var(--muted);">© 2026 NexusShop — Immersive commerce.</span></div>
</footer>

<script>
    // PRODUCT & CATALOG DATA
    const categoriesData = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen-button' },
        { id: 'wearables', name: 'Wearables', icon: 'fa-apple' },
        { id: 'audio', name: 'Audio', icon: 'fa-headphones-simple' },
        { id: 'gaming', name: 'Gaming', icon: 'fa-gamepad' },
        { id: 'fashion', name: 'Fashion', icon: 'fa-shirt' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-gem' }
    ];

    const productsData = [
        { id: 101, title: 'iPhone 15 Pro Max', price: 1199, oldPrice: 1299, rating: 5, reviews: 324, img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'Smartphones', badge: 'NEW' },
        { id: 102, title: 'Sony WH-1000XM6', price: 399, oldPrice: 499, rating: 5, reviews: 210, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'Audio', badge: '-20%' },
        { id: 103, title: 'MacBook Air M3', price: 1299, oldPrice: 1499, rating: 5, reviews: 98, img: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80', category: 'Wearables', badge: 'Limited' },
        { id: 104, title: 'SteelSeries Arctis Nova', price: 189, oldPrice: 249, rating: 4, reviews: 87, img: 'https://images.unsplash.com/photo-1599661046289-e31897846e41?auto=format&fit=crop&w=600&q=80', category: 'Gaming', badge: 'Sale' },
        { id: 105, title: 'Apex Pro Keyboard', price: 199, rating: 4.5, reviews: 142, img: 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?auto=format&fit=crop&w=600&q=80', category: 'Gaming', badge: null },
        { id: 106, title: 'Minimalist Backpack', price: 89, oldPrice: 129, rating: 4, reviews: 66, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'Fashion', badge: 'Eco' },
        { id: 107, title: 'Galaxy Watch6 Classic', price: 329, oldPrice: 399, rating: 4.5, reviews: 205, img: 'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80', category: 'Wearables', badge: 'Trend' },
        { id: 108, title: 'AirPods Pro 2', price: 229, oldPrice: 279, rating: 5, reviews: 512, img: 'https://images.unsplash.com/photo-1600294037681-c80b4cb5b434?auto=format&fit=crop&w=600&q=80', category: 'Audio', badge: 'Hot' }
    ];

    let cartItemsCount = 0;
    const cartCountSpan = document.getElementById('cartCount');
    const productsContainer = document.getElementById('productsContainer');
    const categoriesContainer = document.getElementById('categoriesContainer');

    function renderCategories() {
        categoriesContainer.innerHTML = categoriesData.map(cat => `
            <div class="cat-card" data-cat="${cat.name}">
                <div class="icon"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
                <span style="font-size:13px; color:var(--muted);">explore →</span>
            </div>
        `).join('');
        document.querySelectorAll('.cat-card').forEach(card => {
            card.addEventListener('click', (e) => {
                const catName = card.getAttribute('data-cat');
                document.getElementById('globalSearch').value = catName;
                filterProductsBySearch(catName);
                document.getElementById('trending').scrollIntoView({ behavior: 'smooth' });
            });
        });
    }

    function renderProducts(productList) {
        if(!productList) productList = productsData;
        productsContainer.innerHTML = productList.map(p => `
            <div class="product-card">
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-body">
                    <div style="display: flex; justify-content: space-between;"><h4 style="font-size: 18px;">${p.title}</h4>${p.badge ? `<span class="badge-new" style="background:#2C2F3A;">${p.badge}</span>` : ''}</div>
                    <div class="rating">${'★'.repeat(Math.floor(p.rating))}${p.rating % 1 !== 0 ? '½' : ''} <span style="color:var(--muted);font-size:12px;">(${p.reviews})</span></div>
                    <div style="margin: 12px 0;"><span class="price">$${p.price.toLocaleString()}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
                    <button class="add-to-cart" data-id="${p.id}"><i class="fas fa-shopping-bag"></i> Add to Cart</button>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.add-to-cart').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.getAttribute('data-id'));
                addToCartLogic(id);
            });
        });
    }

    function addToCartLogic(productId) {
        cartItemsCount++;
        cartCountSpan.innerText = cartItemsCount;
        const btn = document.querySelector(`.add-to-cart[data-id="${productId}"]`);
        if(btn) {
            const originalText = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> Added!';
            btn.style.background = '#2DD4BF';
            setTimeout(() => {
                btn.innerHTML = originalText;
                btn.style.background = 'var(--accent)';
            }, 1100);
        }
    }

    function filterProductsBySearch(query) {
        const lowerQuery = query.toLowerCase().trim();
        if(!lowerQuery) return renderProducts(productsData);
        const filtered = productsData.filter(p => p.title.toLowerCase().includes(lowerQuery) || p.category.toLowerCase().includes(lowerQuery));
        renderProducts(filtered);
    }

    // Search listener
    const searchInputGlobal = document.getElementById('globalSearch');
    const searchHandler = () => filterProductsBySearch(searchInputGlobal.value);
    searchInputGlobal.addEventListener('input', searchHandler);
    document.getElementById('shopNowHero').addEventListener('click', () => document.getElementById('trending').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreBtn').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));

    // Flash Deal Counter (24h from now)
    function startDealTimer() {
        const targetTime = new Date().getTime() + (24 * 60 * 60 * 1000) + (2 * 60 * 60 * 1000); // 26hrs
        function updateTimer() {
            const now = new Date().getTime();
            const diff = targetTime - now;
            if(diff <= 0) {
                document.getElementById('dealDays').innerText = '0'; document.getElementById('dealHours').innerText = '00';
                document.getElementById('dealMinutes').innerText = '00'; document.getElementById('dealSeconds').innerText = '00';
                return;
            }
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = hours < 10 ? '0'+hours : hours;
            document.getElementById('dealMinutes').innerText = mins < 10 ? '0'+mins : mins;
            document.getElementById('dealSeconds').innerText = secs < 10 ? '0'+secs : secs;
        }
        updateTimer();
        setInterval(updateTimer, 1000);
    }
    startDealTimer();

    document.getElementById('flashDealBtn').addEventListener('click', () => {
        cartItemsCount++;
        cartCountSpan.innerText = cartItemsCount;
        alert('🔥 MacBook Air M2 added to cart! Limited offer.');
    });

    // Newsletter
    document.getElementById('newsForm').addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value.trim();
        const msgDiv = document.getElementById('newsMsg');
        if(!email || !email.includes('@')) {
            msgDiv.style.display = 'block';
            msgDiv.innerHTML = '⚠️ Please enter valid email.';
            msgDiv.style.color = '#EF4444';
        } else {
            msgDiv.style.display = 'block';
            msgDiv.innerHTML = '🎉 You’re in! Welcome to the club.';
            msgDiv.style.color = '#2DD4BF';
            document.getElementById('newsEmail').value = '';
        }
        setTimeout(() => msgDiv.style.display = 'none', 3000);
    });

    // cart icon click feedback
    document.getElementById('cartIconBtn').addEventListener('click', () => alert(`🛒 Cart has ${cartItemsCount} item(s). Checkout soon!`));

    // Initial load
    renderCategories();
    renderProducts(productsData);
    cartCountSpan.innerText = cartItemsCount;
</script>
</body>
</html>
