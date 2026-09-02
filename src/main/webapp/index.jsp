<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NovaMart | Shop Smarter</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<style>
*{box-sizing:border-box;margin:0;padding:0}
:root{
 --primary:#ff4d2d;--primary-dark:#e63b1e;--black:#111;--white:#fff;
 --bg:#f5f5f5;--card:#fff;--muted:#737373;--border:#e5e5e5;
 --green:#16a34a;--yellow:#f59e0b;--shadow:0 8px 25px rgba(0,0,0,.07);
}
body.dark{--bg:#101010;--card:#181818;--white:#f5f5f5;--black:#fff;--muted:#aaa;--border:#292929}
body{font-family:Inter,Arial,sans-serif;background:var(--bg);color:var(--black);transition:.25s}
button,input{font:inherit}button{cursor:pointer}a{text-decoration:none;color:inherit}
.container{width:min(1240px,calc(100% - 30px));margin:auto}

/* header */
.top{background:#111;color:#fff;font-size:11px;padding:8px 0}
.top .container{display:flex;justify-content:space-between}
.header{background:var(--card);border-bottom:1px solid var(--border);position:sticky;top:0;z-index:100}
.head{height:76px;display:flex;align-items:center;gap:20px}
.logo{font-size:25px;font-weight:800;color:var(--primary);white-space:nowrap}
.logo i{margin-right:5px}
.search{height:44px;flex:1;display:flex;border:2px solid var(--primary);border-radius:7px;overflow:hidden;background:var(--card);max-width:620px}
.search input{border:0;outline:0;flex:1;padding:0 15px;background:transparent;color:var(--black);font-size:13px}
.search button{width:55px;border:0;background:var(--primary);color:#fff}
.head-actions{margin-left:auto;display:flex;gap:10px}
.head-btn{border:0;background:transparent;color:var(--black);min-width:48px;position:relative;font-size:18px}
.head-btn small{display:block;font-size:9px;margin-top:2px;font-weight:600}
.count{position:absolute;right:2px;top:-2px;background:var(--primary);color:#fff;width:17px;height:17px;border-radius:50%;font-size:9px;display:grid;place-items:center}

/* nav */
.nav{background:var(--card);border-bottom:1px solid var(--border)}
.nav .container{display:flex;align-items:center;height:45px;gap:26px}
.nav a{font-size:12px;font-weight:700;color:var(--muted)}
.nav a:hover{color:var(--primary)}
.menu{display:flex;align-items:center;gap:8px;color:var(--black)!important}

/* hero */
.hero{padding:20px 0}
.hero-grid{display:grid;grid-template-columns:2fr 1fr;gap:15px}
.hero-main{min-height:390px;border-radius:10px;overflow:hidden;position:relative;background:
linear-gradient(90deg,rgba(0,0,0,.78),rgba(0,0,0,.12)),
url('https://images.unsplash.com/photo-1550745165-9bc0b252726f?auto=format&fit=crop&w=1300&q=85') center/cover}
.hero-content{position:absolute;left:45px;top:50%;transform:translateY(-50%);color:#fff;max-width:520px}
.hero-tag{display:inline-block;background:var(--primary);padding:7px 12px;border-radius:4px;font-size:10px;font-weight:800;text-transform:uppercase}
.hero h1{font-size:48px;line-height:1.04;margin:15px 0 12px;letter-spacing:-2px}
.hero p{font-size:13px;color:#ddd;line-height:1.7}
.hero-btn{margin-top:22px;background:var(--primary);color:#fff;border:0;border-radius:5px;padding:13px 22px;font-size:12px;font-weight:800}
.hero-btn:hover{background:var(--primary-dark)}
.hero-side{display:grid;grid-template-rows:1fr 1fr;gap:15px}
.side-card{border-radius:10px;overflow:hidden;position:relative;min-height:187px;background-size:cover;background-position:center}
.side-card:after{content:"";position:absolute;inset:0;background:linear-gradient(90deg,rgba(0,0,0,.7),transparent)}
.side-one{background-image:url('https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85')}
.side-two{background-image:url('https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=700&q=85')}
.side-content{position:absolute;z-index:2;left:20px;top:50%;transform:translateY(-50%);color:#fff}
.side-content small{font-size:9px;text-transform:uppercase;font-weight:800}
.side-content h3{font-size:21px;margin:4px 0}
.side-content button{border:0;background:#fff;color:#111;padding:8px 12px;font-size:9px;font-weight:800;border-radius:4px}

/* service strip */
.services{display:grid;grid-template-columns:repeat(4,1fr);background:var(--card);border:1px solid var(--border);border-radius:8px;margin:0 0 25px}
.service{padding:18px;display:flex;gap:12px;align-items:center;border-right:1px solid var(--border)}
.service:last-child{border:0}
.service i{color:var(--primary);font-size:21px}
.service strong{font-size:11px;display:block}.service span{font-size:9px;color:var(--muted)}

/* section */
.section{margin:28px 0}
.title{display:flex;justify-content:space-between;align-items:end;margin-bottom:15px}
.title h2{font-size:22px;letter-spacing:-.6px}
.title p{font-size:10px;color:var(--muted);margin-top:3px}
.title a{font-size:11px;color:var(--primary);font-weight:700}

/* categories */
.categories{display:grid;grid-template-columns:repeat(6,1fr);gap:12px}
.category{background:var(--card);border:1px solid var(--border);border-radius:7px;padding:18px 10px;text-align:center;transition:.25s;cursor:pointer}
.category:hover{transform:translateY(-4px);box-shadow:var(--shadow);border-color:var(--primary)}
.cat-icon{width:58px;height:58px;border-radius:50%;margin:auto auto 10px;background:#fff1ed;color:var(--primary);display:grid;place-items:center;font-size:22px}
.category h4{font-size:11px}.category span{font-size:9px;color:var(--muted)}

/* products */
.products{display:grid;grid-template-columns:repeat(4,1fr);gap:14px}
.product{background:var(--card);border:1px solid var(--border);border-radius:7px;overflow:hidden;position:relative;transition:.25s}
.product:hover{box-shadow:var(--shadow);transform:translateY(-3px)}
.pic{height:225px;background:#f1f1f1;position:relative;overflow:hidden}
.pic img{width:100%;height:100%;object-fit:cover;transition:.4s}
.product:hover .pic img{transform:scale(1.05)}
.discount{position:absolute;top:10px;left:10px;background:#fff0ec;color:var(--primary);padding:5px 7px;border-radius:3px;font-size:9px;font-weight:800}
.heart{position:absolute;right:10px;top:10px;border:0;background:#fff;width:31px;height:31px;border-radius:50%;color:#555}
.info{padding:14px}
.product h3{font-size:12px;margin-bottom:6px}
.stars{font-size:10px;color:var(--yellow)}.reviews{color:var(--muted);font-size:9px}
.price{display:flex;gap:8px;align-items:center;margin:9px 0}
.price strong{font-size:18px;color:var(--primary)}
.price del{font-size:10px;color:var(--muted)}
.buy{width:100%;border:0;background:var(--black);color:var(--card);border-radius:4px;padding:10px;font-size:10px;font-weight:800}
.buy:hover{background:var(--primary)}

/* deal */
.deal{background:var(--primary);color:#fff;border-radius:9px;padding:28px;display:grid;grid-template-columns:1.5fr 1fr;gap:25px;align-items:center}
.deal h2{font-size:30px}.deal p{font-size:11px;opacity:.85;margin:7px 0 17px}
.timer{display:flex;gap:7px}
.time{background:#fff;color:#111;border-radius:5px;padding:9px 11px;text-align:center;min-width:52px}
.time strong{display:block;font-size:18px}.time span{font-size:8px}
.deal-img{height:230px;border-radius:7px;overflow:hidden}.deal-img img{width:100%;height:100%;object-fit:cover}

/* reviews */
.reviews-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:14px}
.review{background:var(--card);border:1px solid var(--border);padding:20px;border-radius:7px}
.user{display:flex;gap:10px;align-items:center;margin-bottom:12px}
.user img{width:40px;height:40px;border-radius:50%;object-fit:cover}
.user strong{font-size:11px;display:block}.user small{font-size:9px;color:var(--muted)}
.review p{font-size:11px;color:var(--muted);line-height:1.7}

/* newsletter/footer */
.news{background:#111;color:#fff;border-radius:9px;padding:38px;text-align:center}
.news h2{font-size:26px}.news p{font-size:11px;color:#aaa;margin:5px 0 18px}
.news form{display:flex;max-width:450px;margin:auto}
.news input{flex:1;padding:12px;border:0;outline:0;border-radius:5px 0 0 5px;font-size:11px}
.news button{border:0;background:var(--primary);color:#fff;padding:0 18px;border-radius:0 5px 5px 0;font-size:11px;font-weight:800}
footer{margin-top:30px;background:var(--card);border-top:1px solid var(--border);padding:38px 0 20px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:30px}
footer h4{font-size:11px;margin-bottom:10px}footer p,footer a{font-size:10px;color:var(--muted);line-height:2}
.bottom{border-top:1px solid var(--border);margin-top:25px;padding-top:15px;text-align:center;color:var(--muted);font-size:9px}

/* toast/mobile */
.toast{position:fixed;bottom:22px;left:50%;transform:translateX(-50%);background:#111;color:#fff;padding:11px 17px;border-radius:5px;font-size:10px;font-weight:700;z-index:999}
.mobile-menu{display:none}
@media(max-width:950px){
 .hero-grid{grid-template-columns:1fr}.hero-side{grid-template-columns:1fr 1fr;grid-template-rows:1fr}.side-card{min-height:180px}
 .categories{grid-template-columns:repeat(3,1fr)}.products{grid-template-columns:repeat(2,1fr)}
 .services{grid-template-columns:repeat(2,1fr)}.service:nth-child(2){border-right:0}.service:nth-child(-n+2){border-bottom:1px solid var(--border)}
}
@media(max-width:650px){
 .container{width:calc(100% - 20px)}.top .container{justify-content:center}.top .container span{display:none}
 .head{height:auto;padding:12px 0;flex-wrap:wrap}.logo{font-size:21px}.head-actions{margin-left:auto}
 .head-btn small{display:none}.search{order:3;max-width:none;flex-basis:100%}
 .nav{display:none}.hero{padding-top:10px}.hero-main{min-height:430px}.hero-content{left:25px;right:20px}.hero h1{font-size:38px}
 .hero-side{grid-template-columns:1fr}.side-card{min-height:150px}.side-two{display:none}
 .services{grid-template-columns:1fr 1fr}.service{padding:13px 10px}.service i{font-size:17px}.service strong{font-size:9px}.service span{font-size:8px}
 .categories{grid-template-columns:repeat(2,1fr)}.products{grid-template-columns:1fr 1fr;gap:9px}
 .pic{height:180px}.info{padding:11px}.product h3{font-size:11px}.price strong{font-size:16px}
 .deal{grid-template-columns:1fr;padding:22px}.deal-img{height:190px;grid-row:1}.deal h2{font-size:26px}
 .reviews-grid{grid-template-columns:1fr;overflow:hidden}.review{min-height:150px}
 .footer-grid{grid-template-columns:1fr 1fr}.footer-grid>div:first-child{grid-column:1/-1}
 .news{padding:30px 15px}.news form{flex-direction:column;gap:7px}.news input,.news button{height:42px;border-radius:5px}
}
</style>
</head>
<body>

<div class="top"><div class="container"><span>🚚 Free delivery on orders over $100</span><span>Secure payments • 30-day returns • 24/7 support</span></div></div>

<header class="header">
<div class="container head">
<a class="logo" href="#"><i class="fa-solid fa-bolt"></i>NovaMart</a>
<div class="search"><input id="search" placeholder="Search for products, brands and more..."><button id="searchBtn"><i class="fa-solid fa-search"></i></button></div>
<div class="head-actions">
<button class="head-btn" id="theme"><i class="fa-solid fa-moon"></i><small>Theme</small></button>
<button class="head-btn"><i class="fa-regular fa-user"></i><small>Account</small></button>
<button class="head-btn" id="cart"><i class="fa-solid fa-cart-shopping"></i><span class="count" id="cartCount">0</span><small>Cart</small></button>
</div>
</div>
</header>

<nav class="nav"><div class="container">
<a class="menu"><i class="fa-solid fa-bars"></i> All Categories</a>
<a href="#products">Electronics</a><a href="#products">Fashion</a><a href="#products">Gaming</a><a href="#products">Home</a><a href="#deals">Today's Deals</a><a href="#reviews">Customer Reviews</a>
</div></nav>

<main>
<div class="container">
<section class="hero">
<div class="hero-grid">
<div class="hero-main"><div class="hero-content">
<span class="hero-tag">Mega Sale • Up to 40% Off</span>
<h1>Upgrade your everyday.</h1>
<p>Discover the latest technology, fashion and lifestyle essentials at prices you'll love.</p>
<button class="hero-btn" onclick="document.getElementById('products').scrollIntoView()">SHOP NOW <i class="fa-solid fa-arrow-right"></i></button>
</div></div>
<div class="hero-side">
<div class="side-card side-one"><div class="side-content"><small>New arrivals</small><h3>Step into style</h3><button onclick="filter('Fashion')">Shop fashion</button></div></div>
<div class="side-card side-two"><div class="side-content"><small>Trending now</small><h3>Tech essentials</h3><button onclick="filter('Electronics')">Explore tech</button></div></div>
</div>
</div>
</section>

<div class="services">
<div class="service"><i class="fa-solid fa-truck-fast"></i><div><strong>Fast delivery</strong><span>Quick doorstep delivery</span></div></div>
<div class="service"><i class="fa-solid fa-shield-halved"></i><div><strong>Secure payments</strong><span>100% protected checkout</span></div></div>
<div class="service"><i class="fa-solid fa-rotate-left"></i><div><strong>Easy returns</strong><span>30-day return policy</span></div></div>
<div class="service"><i class="fa-solid fa-headset"></i><div><strong>24/7 support</strong><span>We're here to help</span></div></div>
</div>

<section class="section">
<div class="title"><div><h2>Shop by category</h2><p>Explore our most popular collections</p></div><a href="#products">View all →</a></div>
<div class="categories" id="categories"></div>
</section>

<section class="section" id="products">
<div class="title"><div><h2>🔥 Trending products</h2><p>Top picks our customers are buying right now</p></div><a href="#products">See more →</a></div>
<div class="products" id="productsGrid"></div>
</section>

<section class="section" id="deals">
<div class="deal">
<div>
<small style="font-size:9px;font-weight:800;letter-spacing:1px">LIMITED TIME OFFER</small>
<h2>⚡ Flash Sale</h2><p>MacBook Pro M3 — exclusive bundle price. Hurry, this deal ends soon.</p>
<div class="timer"><div class="time"><strong id="days">00</strong><span>DAYS</span></div><div class="time"><strong id="hours">00</strong><span>HOURS</span></div><div class="time"><strong id="mins">00</strong><span>MINS</span></div><div class="time"><strong id="secs">00</strong><span>SECS</span></div></div>
<button class="hero-btn" id="dealBtn">GRAB DEAL <i class="fa-solid fa-arrow-right"></i></button>
</div>
<div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85" alt="MacBook Pro"></div>
</div>
</section>

<section class="section" id="reviews">
<div class="title"><div><h2>⭐ What shoppers say</h2><p>Thousands of verified customer experiences</p></div></div>
<div class="reviews-grid" id="reviewsGrid"></div>
</section>

<section class="section">
<div class="news"><h2>Get 10% off your first order</h2><p>Join our newsletter for new arrivals, exclusive deals and member-only offers.</p>
<form id="newsletter"><input type="email" id="email" placeholder="Enter your email address" required><button>GET MY 10% OFF</button></form>
<div id="msg" style="font-size:10px;margin-top:10px"></div></div>
</section>
</div>
</main>

<footer><div class="container">
<div class="footer-grid">
<div><div class="logo">⚡ NovaMart</div><p>Making online shopping simpler, faster and more enjoyable.</p></div>
<div><h4>SHOP</h4><a href="#products">Electronics</a><br><a href="#products">Fashion</a><br><a href="#products">Gaming</a><br><a href="#products">Home</a></div>
<div><h4>HELP</h4><a href="#">Contact us</a><br><a href="#">Shipping</a><br><a href="#">Returns</a><br><a href="#">FAQ</a></div>
<div><h4>COMPANY</h4><a href="#">About us</a><br><a href="#">Careers</a><br><a href="#">Privacy</a><br><a href="#">Terms</a></div>
</div>
<div class="bottom">© 2026 NovaMart. All rights reserved.</div>
</div></footer>

<script>
const categories=[
 ['Electronics','fa-laptop'],['Fashion','fa-shirt'],['Gaming','fa-gamepad'],
 ['Audio','fa-headphones'],['Home','fa-house'],['Accessories','fa-gem']
];
const products=[
 {name:'Sony WH-1000XM6',cat:'Electronics',price:399,old:499,rating:5,reviews:324,discount:20,img:'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=700&q=85'},
 {name:'Apple Watch Ultra 2',cat:'Electronics',price:749,old:799,rating:5,reviews:512,discount:6,img:'https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=85'},
 {name:'Razer Gaming Laptop',cat:'Gaming',price:2799,old:3199,rating:4.8,reviews:210,discount:13,img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85'},
 {name:'Premium Street Hoodie',cat:'Fashion',price:89,old:129,rating:4.7,reviews:189,discount:31,img:'https://images.unsplash.com/photo-1556905055-8f358a7a47b2?auto=format&fit=crop&w=700&q=85'},
 {name:'Dyson V15 Detect',cat:'Home',price:599,old:749,rating:4.9,reviews:178,discount:20,img:'https://images.unsplash.com/photo-1558317374-067fb5f30001?auto=format&fit=crop&w=700&q=85'},
 {name:'Bose QuietComfort Ultra',cat:'Audio',price:379,old:429,rating:4.9,reviews:267,discount:12,img:'https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=700&q=85'},
 {name:'Minimal Leather Bag',cat:'Accessories',price:129,old:179,rating:4.8,reviews:94,discount:28,img:'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?auto=format&fit=crop&w=700&q=85'},
 {name:'Mechanical Gaming Keyboard',cat:'Gaming',price:119,old:149,rating:4.8,reviews:341,discount:20,img:'https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=700&q=85'}
];
const reviewData=[
 ['Sophia Chen','Absolutely love the quality and fast delivery. NovaMart has become my favorite store.','https://randomuser.me/api/portraits/women/68.jpg'],
 ['James Walker','The flash sale was amazing. Great price and the product arrived perfectly packed.','https://randomuser.me/api/portraits/men/32.jpg'],
 ['Elena Rodriguez','Super easy shopping experience and customer support was incredibly helpful.','https://randomuser.me/api/portraits/women/44.jpg']
];
let cartCount=0;

function renderCategories(){
 document.getElementById('categories').innerHTML=categories.map(c=>`
 <div class="category" onclick="filter('${c[0]}')"><div class="cat-icon"><i class="fa-solid ${c[1]}"></i></div><h4>${c[0]}</h4><span>Shop now →</span></div>`).join('');
}
function renderProducts(list=products){
 document.getElementById('productsGrid').innerHTML=list.map(p=>`
 <div class="product">
  <div class="pic"><span class="discount">-${p.discount}%</span><button class="heart"><i class="fa-regular fa-heart"></i></button><img src="${p.img}" alt="${p.name}" loading="lazy"></div>
  <div class="info"><h3>${p.name}</h3><div><span class="stars">${'★'.repeat(Math.floor(p.rating))}</span> <span class="reviews">${p.rating} (${p.reviews})</span></div>
  <div class="price"><strong>$${p.price.toLocaleString()}</strong><del>$${p.old.toLocaleString()}</del></div>
  <button class="buy" onclick="addCart('${p.name}')"><i class="fa-solid fa-cart-plus"></i> ADD TO CART</button></div>
 </div>`).join('');
}
function filter(q){
 const list=products.filter(p=>p.cat.toLowerCase().includes(q.toLowerCase())||p.name.toLowerCase().includes(q.toLowerCase()));
 renderProducts(list);
 document.getElementById('products').scrollIntoView({behavior:'smooth'});
}
function addCart(name){
 cartCount++;document.getElementById('cartCount').textContent=cartCount;
 toast(name+' added to cart ✓');
}
function toast(text){
 const t=document.createElement('div');t.className='toast';t.textContent=text;document.body.appendChild(t);setTimeout(()=>t.remove(),1800);
}
document.getElementById('search').addEventListener('input',e=>filter(e.target.value));
document.getElementById('searchBtn').onclick=()=>filter(document.getElementById('search').value);
document.getElementById('cart').onclick=()=>toast('Your cart has '+cartCount+' item(s)');
document.getElementById('theme').onclick=()=>{
 document.body.classList.toggle('dark');
 document.querySelector('#theme i').className=document.body.classList.contains('dark')?'fa-solid fa-sun':'fa-solid fa-moon';
};
document.getElementById('dealBtn').onclick=()=>addCart('MacBook Pro M3');
document.getElementById('newsletter').onsubmit=e=>{
 e.preventDefault();let email=document.getElementById('email').value;
 document.getElementById('msg').textContent='🎉 Welcome! Your 10% discount is ready for '+email;
 document.getElementById('email').value='';
};
let end=new Date();end.setHours(end.getHours()+35);
function countdown(){
 let d=end-new Date();
 if(d<0)d=0;
 document.getElementById('days').textContent=String(Math.floor(d/86400000)).padStart(2,'0');
 document.getElementById('hours').textContent=String(Math.floor(d/3600000)%24).padStart(2,'0');
 document.getElementById('mins').textContent=String(Math.floor(d/60000)%60).padStart(2,'0');
 document.getElementById('secs').textContent=String(Math.floor(d/1000)%60).padStart(2,'0');
}
document.getElementById('reviewsGrid').innerHTML=reviewData.map(r=>`
<div class="review"><div class="user"><img src="${r[2]}" alt="${r[0]}"><div><strong>${r[0]}</strong><small>Verified customer</small></div></div><div class="stars">★★★★★</div><p>“${r[1]}”</p></div>`).join('');
renderCategories();renderProducts();countdown();setInterval(countdown,1000);
</script>
</body>
</html>
