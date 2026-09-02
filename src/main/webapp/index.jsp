<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NovaMart — Premium Shopping</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
*{margin:0;padding:0;box-sizing:border-box}
:root{
  --bg:#f6f7fb;--surface:#fff;--surface-2:#eef1f6;--text:#101828;
  --muted:#667085;--line:#e4e7ec;--accent:#635bff;--accent-2:#8b5cf6;
  --dark:#111827;--success:#12b76a;--danger:#f04438;
  --shadow:0 16px 45px rgba(16,24,40,.08);--shadow-sm:0 6px 20px rgba(16,24,40,.07);
  --radius:24px;--transition:.28s cubic-bezier(.2,.8,.2,1)
}
body.dark{
  --bg:#0b1020;--surface:#12192b;--surface-2:#1b2438;--text:#f5f7fa;
  --muted:#98a2b3;--line:#26324a;--shadow:0 18px 50px rgba(0,0,0,.3)
}
html{scroll-behavior:smooth}
body{font-family:'Plus Jakarta Sans',sans-serif;background:var(--bg);color:var(--text);line-height:1.5;transition:background var(--transition),color var(--transition)}
button,input{font:inherit}
button{cursor:pointer}
a{text-decoration:none;color:inherit}
.container{width:min(1240px,calc(100% - 40px));margin:auto}

/* top announcement */
.announcement{background:var(--dark);color:#fff;text-align:center;font-size:12px;font-weight:700;letter-spacing:.04em;padding:9px 16px}
.announcement span{opacity:.72;font-weight:500}

/* header */
.header{position:sticky;top:0;z-index:100;background:color-mix(in srgb,var(--bg) 88%,transparent);backdrop-filter:blur(18px);border-bottom:1px solid var(--line)}
.header-row{height:76px;display:flex;align-items:center;gap:24px}
.logo{display:flex;align-items:center;gap:9px;font-size:23px;font-weight:800;letter-spacing:-.04em;white-space:nowrap}
.logo-mark{width:35px;height:35px;border-radius:11px;background:linear-gradient(135deg,var(--accent),var(--accent-2));color:#fff;display:grid;place-items:center;box-shadow:0 8px 18px rgba(99,91,255,.3)}
.nav{display:flex;gap:24px;margin-left:12px}
.nav a{font-size:13px;font-weight:700;color:var(--muted);transition:var(--transition)}
.nav a:hover,.nav a.active{color:var(--text)}
.search{margin-left:auto;width:min(300px,28vw);height:43px;background:var(--surface);border:1px solid var(--line);border-radius:14px;display:flex;align-items:center;gap:10px;padding:0 14px;box-shadow:var(--shadow-sm)}
.search i{color:var(--muted);font-size:13px}
.search input{width:100%;border:0;outline:0;background:transparent;color:var(--text);font-size:12px}
.actions{display:flex;gap:9px}
.icon-btn{width:43px;height:43px;border:1px solid var(--line);background:var(--surface);color:var(--text);border-radius:14px;display:grid;place-items:center;position:relative;transition:var(--transition)}
.icon-btn:hover{transform:translateY(-2px);border-color:var(--accent);color:var(--accent)}
.badge{position:absolute;right:-5px;top:-5px;background:var(--accent);color:#fff;width:19px;height:19px;border-radius:50%;font-size:10px;font-weight:800;display:grid;place-items:center;border:2px solid var(--bg)}

/* hero */
.hero{padding:32px 0 18px}
.hero-box{min-height:430px;border-radius:32px;overflow:hidden;position:relative;background:
 radial-gradient(circle at 78% 22%,rgba(139,92,246,.45),transparent 28%),
 radial-gradient(circle at 10% 100%,rgba(99,91,255,.35),transparent 34%),
 linear-gradient(125deg,#0b1020,#191f38 55%,#28234b);color:#fff;display:flex;align-items:center;padding:58px}
.hero-box:before{content:"";position:absolute;inset:0;background-image:linear-gradient(rgba(255,255,255,.035) 1px,transparent 1px),linear-gradient(90deg,rgba(255,255,255,.035) 1px,transparent 1px);background-size:42px 42px;mask-image:linear-gradient(to right,#000,transparent)}
.hero-copy{position:relative;z-index:2;max-width:620px}
.eyebrow{display:inline-flex;gap:8px;align-items:center;background:rgba(255,255,255,.1);border:1px solid rgba(255,255,255,.14);padding:8px 13px;border-radius:999px;font-size:11px;font-weight:800;letter-spacing:.05em;text-transform:uppercase;margin-bottom:20px}
.hero h1{font-size:clamp(42px,6vw,70px);line-height:1.02;letter-spacing:-.065em;margin-bottom:18px}
.hero h1 span{background:linear-gradient(90deg,#a78bfa,#60a5fa);-webkit-background-clip:text;color:transparent}
.hero p{font-size:15px;color:rgba(255,255,255,.68);max-width:500px}
.hero-buttons{display:flex;gap:12px;margin-top:30px;flex-wrap:wrap}
.btn{border:0;border-radius:14px;padding:13px 19px;font-weight:800;font-size:12px;transition:var(--transition);display:inline-flex;align-items:center;justify-content:center;gap:9px}
.btn-primary{background:var(--accent);color:#fff;box-shadow:0 10px 25px rgba(99,91,255,.28)}
.btn-primary:hover{transform:translateY(-2px);filter:brightness(1.07)}
.btn-light{background:#fff;color:#101828}
.btn-light:hover{transform:translateY(-2px)}
.hero-stat{position:absolute;right:45px;bottom:40px;z-index:2;background:rgba(255,255,255,.09);border:1px solid rgba(255,255,255,.12);backdrop-filter:blur(15px);border-radius:20px;padding:17px 20px;min-width:180px}
.hero-stat strong{font-size:23px;display:block}.hero-stat small{color:rgba(255,255,255,.6);font-size:10px}

/* sections */
.section{padding:54px 0 0}
.section-head{display:flex;align-items:end;justify-content:space-between;gap:20px;margin-bottom:24px}
.kicker{font-size:11px;font-weight:800;color:var(--accent);text-transform:uppercase;letter-spacing:.1em}
.section h2{font-size:29px;letter-spacing:-.04em;margin-top:5px}
.section-head p{font-size:12px;color:var(--muted);margin-top:4px}
.view-all{font-size:12px;font-weight:800;color:var(--accent)}

/* categories */
.category-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:14px}
.category-card{background:var(--surface);border:1px solid var(--line);border-radius:20px;padding:22px 12px;text-align:center;transition:var(--transition);cursor:pointer}
.category-card:hover{transform:translateY(-5px);box-shadow:var(--shadow);border-color:rgba(99,91,255,.35)}
.category-icon{width:52px;height:52px;border-radius:17px;margin:0 auto 13px;display:grid;place-items:center;background:var(--surface-2);color:var(--accent);font-size:20px}
.category-card h4{font-size:12px}.category-card span{display:block;color:var(--muted);font-size:10px;margin-top:5px}

/* products */
.product-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:18px}
.product-card{background:var(--surface);border:1px solid var(--line);border-radius:24px;overflow:hidden;transition:var(--transition);position:relative}
.product-card:hover{transform:translateY(-6px);box-shadow:var(--shadow)}
.product-img-wrap{height:270px;background:var(--surface-2);overflow:hidden;position:relative}
.product-img{width:100%;height:100%;object-fit:cover;transition:.55s ease}
.product-card:hover .product-img{transform:scale(1.06)}
.product-badge{position:absolute;top:13px;left:13px;background:var(--dark);color:#fff;padding:6px 10px;border-radius:999px;font-size:9px;font-weight:800;z-index:2}
.wish{position:absolute;right:13px;top:13px;width:36px;height:36px;border-radius:12px;background:rgba(255,255,255,.9);border:0;color:#344054;display:grid;place-items:center;z-index:2}
.product-info{padding:18px}
.product-title{font-size:14px;font-weight:800;margin-bottom:7px}
.rating{font-size:11px;color:var(--muted)}.rating i{color:#fdb022;margin-right:4px}
.price-row{display:flex;align-items:center;gap:8px;margin-top:10px}
.price-tag{font-size:18px;font-weight:800;color:var(--text)}
.old-price-tag{font-size:11px;color:var(--muted);text-decoration:line-through}
.product-actions{display:flex;gap:8px;margin-top:15px}
.btn-add{flex:1;background:var(--text);color:var(--surface);border:0;border-radius:12px;padding:11px;font-size:11px;font-weight:800;transition:var(--transition)}
.btn-add:hover{background:var(--accent)}
.quick{width:43px;border:1px solid var(--line);background:var(--surface);border-radius:12px;color:var(--text)}

/* sale */
.flash-sale{margin-top:18px;border-radius:28px;background:var(--surface);border:1px solid var(--line);overflow:hidden;box-shadow:var(--shadow-sm)}
.sale-flex{display:grid;grid-template-columns:1fr 1fr}
.sale-image{min-height:330px;overflow:hidden}
.sale-image img{width:100%;height:100%;object-fit:cover}
.sale-content{padding:42px;display:flex;flex-direction:column;justify-content:center}
.sale-label{font-size:10px;font-weight:800;color:var(--accent);text-transform:uppercase;letter-spacing:.1em}
.sale-content h2{font-size:34px;letter-spacing:-.05em;margin:7px 0}
.sale-content p{font-size:12px;color:var(--muted)}
.timer-group{display:flex;gap:9px;margin:22px 0}
.time-card{background:var(--surface-2);border-radius:14px;padding:10px 13px;min-width:64px;text-align:center}
.time-number{font-size:20px;font-weight:800}.time-card span{font-size:9px;color:var(--muted)}

/* testimonials/newsletter */
.testimonial-scroll{display:grid;grid-template-columns:repeat(3,1fr);gap:16px}
.testimonial-card{background:var(--surface);border:1px solid var(--line);border-radius:20px;padding:22px}
.testimonial-card img{width:43px!important;height:43px!important}
.testimonial-card p{font-size:12px;color:var(--muted)}
.newsletter{margin-top:54px;border-radius:28px;padding:44px 25px;text-align:center;color:#fff;background:linear-gradient(120deg,#171b31,#31265e)}
.newsletter h3{font-size:28px;letter-spacing:-.04em}.newsletter p{font-size:12px;opacity:.65;margin-top:5px}
.newsletter-form{display:flex;max-width:460px;margin:22px auto 0;gap:8px}
.newsletter-form input{flex:1;min-width:0;border:0;outline:0;border-radius:13px;padding:13px 16px;background:#fff;color:#101828;font-size:12px}
.newsletter-form .btn{background:#fff;color:#111827}

/* footer */
footer{padding:48px 0 30px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:30px;padding-bottom:35px}
footer h4{font-size:12px;margin-bottom:12px}footer p,footer a{font-size:11px;color:var(--muted);line-height:2.2}
.footer-bottom{border-top:1px solid var(--line);padding-top:22px;display:flex;justify-content:space-between;gap:20px;font-size:10px;color:var(--muted)}

/* toast */
.toast{position:fixed;bottom:22px;left:50%;transform:translateX(-50%);background:var(--dark);color:#fff;padding:12px 18px;border-radius:13px;font-size:11px;font-weight:800;z-index:9999;box-shadow:var(--shadow)}

/* responsive */
@media(max-width:1000px){
 .nav{display:none}.search{width:260px}.category-grid{grid-template-columns:repeat(3,1fr)}
 .product-grid{grid-template-columns:repeat(2,1fr)}.footer-grid{grid-template-columns:2fr 1fr 1fr}
}
@media(max-width:700px){
 .container{width:min(100% - 24px,1240px)}.announcement{font-size:10px}
 .header-row{height:66px;gap:8px}.logo{font-size:19px}.logo-mark{width:31px;height:31px}
 .search{display:none}.actions{margin-left:auto}.icon-btn{width:39px;height:39px}
 .hero{padding-top:14px}.hero-box{min-height:520px;padding:30px 24px;align-items:flex-start}
 .hero h1{font-size:43px;margin-top:25px}.hero p{font-size:13px}
 .hero-stat{left:24px;right:24px;bottom:24px}.hero-buttons{margin-top:23px}
 .section{padding-top:42px}.section h2{font-size:24px}.category-grid{grid-template-columns:repeat(2,1fr);gap:10px}
 .category-card{padding:18px 8px}.product-grid{grid-template-columns:1fr;gap:14px}
 .product-img-wrap{height:290px}.sale-flex{grid-template-columns:1fr}.sale-image{min-height:230px}.sale-content{padding:26px}
 .sale-content h2{font-size:28px}.testimonial-scroll{display:flex;overflow-x:auto;padding-bottom:5px}
 .testimonial-card{min-width:280px}.newsletter{padding:35px 18px}.newsletter-form{flex-direction:column}
 .footer-grid{grid-template-columns:1fr 1fr}.footer-grid>div:first-child{grid-column:1/-1}
 .footer-bottom{flex-direction:column;text-align:center}
}
</style>
</head>

<body>
<div class="announcement">FREE SHIPPING ON ORDERS OVER $100 <span>• Easy 30-day returns</span></div>

<header class="header">
  <div class="container header-row">
    <a class="logo" href="#"><span class="logo-mark"><i class="fa-solid fa-bolt"></i></span>NovaMart</a>
    <nav class="nav">
      <a href="#" class="active">Home</a><a href="#productsSection">Shop</a><a href="#dealsSection">Deals</a><a href="#insights">Insights</a>
    </nav>
    <div class="search"><i class="fa-solid fa-magnifying-glass"></i><input id="globalSearch" placeholder="Search products..."></div>
    <div class="actions">
      <button class="icon-btn theme-toggle" id="themeToggle" aria-label="Toggle theme"><i class="fa-solid fa-moon"></i></button>
      <button class="icon-btn" aria-label="Wishlist"><i class="fa-regular fa-heart"></i></button>
      <button class="icon-btn" id="cartIconBtn" aria-label="Cart"><i class="fa-solid fa-bag-shopping"></i><span class="badge" id="cartCountDisplay">0</span></button>
    </div>
  </div>
</header>

<main>
<section class="hero">
  <div class="container">
    <div class="hero-box">
      <div class="hero-copy">
        <div class="eyebrow"><i class="fa-solid fa-sparkles"></i> New season • Limited drops</div>
        <h1>Everything you want.<br><span>All in one place.</span></h1>
        <p>Discover premium tech, lifestyle essentials and everyday favorites — carefully selected for modern living.</p>
        <div class="hero-buttons">
          <button class="btn btn-primary" id="shopNowHero">Shop collection <i class="fa-solid fa-arrow-right"></i></button>
          <button class="btn btn-light" id="exploreDealsHero">View today's deals</button>
        </div>
      </div>
      <div class="hero-stat"><strong>4.9/5</strong><small><i class="fa-solid fa-star"></i> Loved by 10k+ shoppers</small></div>
    </div>
  </div>
</section>

<div class="container">
<section class="section">
  <div class="section-head"><div><div class="kicker">Explore</div><h2>Shop by category</h2><p>Find what fits your lifestyle.</p></div><a class="view-all" href="#productsSection">View all →</a></div>
  <div class="category-grid" id="categoryGrid"></div>
</section>

<section class="section" id="productsSection">
  <div class="section-head"><div><div class="kicker">Popular now</div><h2>Trending products</h2><p>What the NovaMart community is loving right now.</p></div><span class="view-all">Fresh arrivals ✦</span></div>
  <div class="product-grid" id="productGrid"></div>
</section>

<section class="section" id="dealsSection">
  <div class="section-head"><div><div class="kicker">Don't miss it</div><h2>Flash sale</h2><p>Premium picks, limited-time prices.</p></div></div>
  <div class="flash-sale">
    <div class="sale-flex">
      <div class="sale-image"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85" alt="MacBook Pro"></div>
      <div class="sale-content">
        <div class="sale-label">Editor's pick</div>
        <h2>MacBook Pro M3</h2>
        <p>Up to 20% off + an exclusive bundle while supplies last.</p>
        <div class="timer-group" id="countdownTimer">
          <div class="time-card"><div class="time-number" id="days">00</div><span>Days</span></div>
          <div class="time-card"><div class="time-number" id="hours">00</div><span>Hours</span></div>
          <div class="time-card"><div class="time-number" id="minutes">00</div><span>Mins</span></div>
          <div class="time-card"><div class="time-number" id="seconds">00</div><span>Secs</span></div>
        </div>
        <div><span class="price-tag">$1,299</span> <span class="old-price-tag">$1,699</span></div>
        <button class="btn btn-primary" id="flashDealBtn" style="margin-top:17px;width:max-content">Grab the deal <i class="fa-solid fa-arrow-right"></i></button>
      </div>
    </div>
  </div>
</section>

<section class="section" id="insights">
  <div class="section-head"><div><div class="kicker">Community</div><h2>Customer love</h2><p>Real stories from real shoppers.</p></div></div>
  <div class="testimonial-scroll" id="testimonialList"></div>
</section>

<section class="newsletter">
  <h3>Get the good stuff first.</h3>
  <p>New arrivals, private offers and early access — straight to your inbox.</p>
  <form id="newsletterFormModern" class="newsletter-form">
    <input type="email" id="newsEmail" placeholder="Your email address" required>
    <button type="submit" class="btn">Subscribe <i class="fa-solid fa-arrow-right"></i></button>
  </form>
  <div id="newsletterMsgModern" style="margin-top:12px;font-size:11px"></div>
</section>
</div>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div><div class="logo"><span class="logo-mark"><i class="fa-solid fa-bolt"></i></span>NovaMart</div><p style="max-width:280px;margin-top:12px">A cleaner, smarter way to discover products you actually want.</p></div>
      <div><h4>Explore</h4><a href="#">About</a><br><a href="#">Careers</a><br><a href="#">Sustainability</a></div>
      <div><h4>Support</h4><a href="#">Help Center</a><br><a href="#">Returns</a><br><a href="#">Contact</a></div>
      <div><h4>Follow</h4><a href="#"><i class="fa-brands fa-instagram"></i> Instagram</a><br><a href="#"><i class="fa-brands fa-facebook"></i> Facebook</a><br><a href="#"><i class="fa-brands fa-x-twitter"></i> X / Twitter</a></div>
    </div>
    <div class="footer-bottom"><span>© 2026 NovaMart. All rights reserved.</span><span>Designed for a better shopping experience.</span></div>
  </div>
</footer>

<script>
        // --- ENHANCED DATA (more premium) ---
        const CATEGORIES = [
            { id: "audio", name: "Audio & Hi-Fi", icon: "fa-headphones" },
            { id: "wearables", name: "Wearables", icon: "fa-apple" },
            { id: "gaming", name: "Gaming Gear", icon: "fa-gamepad" },
            { id: "fashion", name: "Streetwear", icon: "fa-vest" },
            { id: "accessories", name: "Luxury Acc.", icon: "fa-gem" },
            { id: "smart-home", name: "Smart Home", icon: "fa-microchip" }
        ];

        const PRODUCTS = [
            { id: 101, title: "Sony WH-1000XM6", price: 399, oldPrice: 499, rating: 5, reviews: 324, img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80", category: "audio", badge: "Best Seller" },
            { id: 102, title: "Apple Watch Ultra 2", price: 749, oldPrice: 799, rating: 5, reviews: 512, img: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=600&q=80", category: "wearables", badge: "New" },
            { id: 103, title: "Razer Blade 16", price: 2799, oldPrice: 3199, rating: 4.8, reviews: 210, img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80", category: "gaming" },
            { id: 104, title: "Off-White Hoodie", price: 420, oldPrice: 650, rating: 4.7, reviews: 89, img: "https://images.unsplash.com/photo-1556905055-8f358a7a47b2?auto=format&fit=crop&w=600&q=80", category: "fashion", badge: "Limited" },
            { id: 105, title: "Dyson V15 Detect", price: 599, oldPrice: 749, rating: 4.9, reviews: 178, img: "https://images.unsplash.com/photo-1558317374-067fb5f30001?auto=format&fit=crop&w=600&q=80", category: "smart-home" },
            { id: 106, title: "Bose QC Ultra", price: 379, oldPrice: 429, rating: 4.9, reviews: 267, img: "https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=600&q=80", category: "audio" }
        ];

        let cartCount = 0;
        let currentFilter = "";

        // DOM elements
        const categoryGrid = document.getElementById('categoryGrid');
        const productGrid = document.getElementById('productGrid');
        const cartCountSpan = document.getElementById('cartCountDisplay');
        const searchInput = document.getElementById('globalSearch');

        function renderCategories() {
            categoryGrid.innerHTML = CATEGORIES.map(cat => `
                <div class="category-card" data-cat="${cat.name}">
                    <div class="category-icon"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <span>Shop now →</span>
                </div>
            `).join('');
            document.querySelectorAll('.category-card').forEach(card => {
                card.addEventListener('click', () => {
                    const catName = card.getAttribute('data-cat');
                    searchInput.value = catName;
                    filterProducts(catName);
                    document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' });
                });
            });
        }

        function renderProducts(productsArray) {
            productGrid.innerHTML = productsArray.map(p => `
                <article class="product-card">
                    ${p.badge ? `<div class="product-badge">${p.badge}</div>` : ''}
                    <button class="wish" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    <div class="product-img-wrap"><img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy"></div>
                    <div class="product-info">
                        <div class="product-title">${p.title}</div>
                        <div class="rating"><i class="fas fa-star"></i> ${p.rating} · ${p.reviews} reviews</div>
                        <div class="price-row">
                            <span class="price-tag">$${p.price.toLocaleString()}</span>
                            ${p.oldPrice ? `<span class="old-price-tag">$${p.oldPrice.toLocaleString()}</span>` : ''}
                        </div>
                        <div class="product-actions">
                            <button class="btn-add" data-id="${p.id}"><i class="fas fa-cart-shopping"></i> Add to cart</button>
                            <button class="quick" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                        </div>
                    </div>
                </article>
            `).join('');
            document.querySelectorAll('.btn-add[data-id]').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    e.stopPropagation();
                    const id = parseInt(btn.dataset.id);
                    addToCartById(id);
                });
            });
        }

        function addToCartById(productId) {
            const product = PRODUCTS.find(p => p.id === productId);
            if (!product) return;
            cartCount++;
            cartCountSpan.innerText = cartCount;
            // micro feedback
            const originalText = btn => btn.innerHTML;
            const targetBtn = document.querySelector(`.btn-add[data-id="${productId}"]`);
            if(targetBtn) {
                targetBtn.innerHTML = '<i class="fas fa-check"></i> Added!';
                setTimeout(() => { targetBtn.innerHTML = '<i class="fas fa-cart-shopping"></i> Add to cart'; }, 1200);
            }
            showToast(`${product.title} added ✨`);
        }

        function showToast(msg) {
            let toast = document.createElement('div');
            toast.innerText = msg;
            toast.style.position = 'fixed';
            toast.style.bottom = '20px';
            toast.style.left = '50%';
            toast.style.transform = 'translateX(-50%)';
            toast.style.backgroundColor = 'var(--accent)';
            toast.style.color = 'white';
            toast.style.padding = '12px 24px';
            toast.style.borderRadius = '60px';
            toast.style.zIndex = '999';
            toast.style.fontWeight = 'bold';
            toast.style.backdropFilter = 'blur(8px)';
            document.body.appendChild(toast);
            setTimeout(() => toast.remove(), 2000);
        }

        function filterProducts(query) {
            const q = query.trim().toLowerCase();
            if(!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
            renderProducts(filtered);
        }

        // Deal countdown (ends in 2 days 5h)
        function startCountdown() {
            const targetDate = new Date();
            targetDate.setDate(targetDate.getDate() + 2);
            targetDate.setHours(targetDate.getHours() + 5);
            function update() {
                const now = new Date();
                const diff = targetDate - now;
                if(diff <= 0) {
                    document.getElementById('days').innerText = '00';
                    document.getElementById('hours').innerText = '00';
                    document.getElementById('minutes').innerText = '00';
                    document.getElementById('seconds').innerText = '00';
                    return;
                }
                const days = Math.floor(diff/(1000*60*60*24));
                const hours = Math.floor((diff/(1000*60*60)) % 24);
                const mins = Math.floor((diff/(1000*60)) % 60);
                const secs = Math.floor((diff/1000) % 60);
                document.getElementById('days').innerText = days < 10 ? '0'+days : days;
                document.getElementById('hours').innerText = hours < 10 ? '0'+hours : hours;
                document.getElementById('minutes').innerText = mins < 10 ? '0'+mins : mins;
                document.getElementById('seconds').innerText = secs < 10 ? '0'+secs : secs;
            }
            update();
            setInterval(update, 1000);
        }

        // testimonials dynamic
        const testimonialsData = [
            { name: "Sophia Chen", text: "Absolutely love the minimalist design and fast shipping. My new favorite store.", rating: 5, avatar: "https://randomuser.me/api/portraits/women/68.jpg" },
            { name: "James Walker", text: "The flash sale was insane! Grabbed the MacBook at incredible price.", rating: 5, avatar: "https://randomuser.me/api/portraits/men/32.jpg" },
            { name: "Elena Rodriguez", text: "Customer support helped me within minutes. Premium experience all the way.", rating: 4.9, avatar: "https://randomuser.me/api/portraits/women/44.jpg" }
        ];
        function renderTestimonials() {
            const container = document.getElementById('testimonialList');
            container.innerHTML = testimonialsData.map(t => `
                <div class="testimonial-card">
                    <div style="display: flex; gap: 12px; align-items: center; margin-bottom: 14px;">
                        <img src="${t.avatar}" style="width: 48px; height: 48px; border-radius: 60px; object-fit: cover;">
                        <div><strong>${t.name}</strong><div style="color: #fbbf24;">${'★'.repeat(Math.floor(t.rating))} ${t.rating}</div></div>
                    </div>
                    <p style="line-height: 1.4;">“${t.text}”</p>
                </div>
            `).join('');
        }

        // dark/light mode
        const themeToggle = document.getElementById('themeToggle');
        themeToggle.addEventListener('click', () => {
            document.body.classList.toggle('dark');
            const icon = themeToggle.querySelector('i');
            if(document.body.classList.contains('dark')) icon.classList.replace('fa-moon', 'fa-sun');
            else icon.classList.replace('fa-sun', 'fa-moon');
        });

        // newsletter modern
        const newsletterForm = document.getElementById('newsletterFormModern');
        const newsMsg = document.getElementById('newsletterMsgModern');
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsEmail').value.trim();
            if(!email.includes('@')) {
                newsMsg.style.color = '#ffb3b3';
                newsMsg.innerText = 'Valid email required';
                return;
            }
            newsMsg.style.color = '#c3e6cb';
            newsMsg.innerText = `🎉 Thanks! ${email} is now subscribed.`;
            document.getElementById('newsEmail').value = '';
            setTimeout(() => newsMsg.innerText = '', 3000);
        });

        // flash deal add to cart
        document.getElementById('flashDealBtn').addEventListener('click', () => {
            cartCount++;
            cartCountSpan.innerText = cartCount;
            showToast('MacBook Pro M3 added to cart!');
        });
        document.getElementById('shopNowHero').addEventListener('click', () => document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('exploreDealsHero').addEventListener('click', () => document.getElementById('dealsSection').scrollIntoView({ behavior: 'smooth' }));
        
        // search live
        searchInput.addEventListener('input', (e) => filterProducts(e.target.value));
        searchInput.addEventListener('keydown', (e) => { if(e.key === 'Enter') filterProducts(e.target.value); });

        // cart icon simple alert
        document.getElementById('cartIconBtn').addEventListener('click', () => showToast(`Cart has ${cartCount} item(s)`));

        function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            startCountdown();
            renderTestimonials();
        }
        init();
    </script>
</body>
</html>
