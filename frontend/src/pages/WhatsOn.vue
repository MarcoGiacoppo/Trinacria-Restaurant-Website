<template>
    <div class="heading">
        <br>
      <span>What's On</span>
      <p>Discover What's On in Bali at Trinacria Ristorante</p>
      <p>Stay updated with our latest events, promotions, and special nights.</p>
    </div>
    <div class="promo-container">
  <div class="promo-box">
    <img src="../assets/images/whatson/grill.png" alt="Promo 1">
    <div class="promo-info">
      <h3>TRINACRIA BAR & GRILL</h3>
      <p>DISCOVER OUR NEW SPRING MENU</p>
    </div>
  </div>
  <div class="promo-box">
    <img src="../assets/images/whatson/pizza.png" alt="Promo 2">
    <div class="promo-info">
      <h3>STREET PIZZA</h3>
      <p>CHECK OUT OUR NEW TASTY PIZZA</p>
    </div>
  </div>
  <div class="promo-box">
    <img src="../assets/images/whatson/pub.png" alt="Promo 3">
    <div class="promo-info">
      <h3>TRINACRIA BAR</h3>
      <p>JOIN US AT OUR ICONIC BAR</p>
    </div>
  </div>
  <div class="promo-box">
    <img src="../assets/images/whatson/freeflow.png" alt="Promo 4">
    <div class="promo-info">
      <h3>WEEKDAYS HAPPY HOUR</h3>
      <h3>4pm - 6pm</h3>
      <br>
      <h5>$7 Schooners $12 Cocktails</h5>
    </div>
  </div>
  <div class="promo-box">
    <img src="../assets/images/whatson/oyster.png" alt="Promo 5">
    <div class="promo-info">
      <h3>THANK GOD ITS FRIDAY</h3>
      <p>HALF PRICE OYSTERS & PROSECCO</p>
    </div>
  </div>
  <div class="promo-box">
    <img src="../assets/images/whatson/roast.png" alt="Promo 6">
    <div class="promo-info">
      <h3>ROAST SUNDAY</h3>
      <p>UNTIL SOLD OUT</p>
      <p>$28</p>
    </div>
  </div>
</div>

  </template>

<script>
export default {
    name: "Promo",

    methods: {
        scrollToTop() {
            window.scrollTo(0, 0);
        }
    }
}
</script>

<style scoped>
h1{
    text-align: center;
    font-size: 24px;
}

p{
    text-align: center;
    font-size: 16px;
}

.promo-container {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  margin: 0 auto;
  max-width: 1500px; 
}

.promo-box {
  position: relative;
  width: 33%; 
  margin-bottom: 20px;
  overflow: hidden;
  display: flex;
  justify-content: center;
  align-items: center;
}

.promo-box img {
  width: 100%;
  transition: transform 1s ease, opacity 0.3s;
  opacity: 0.7;
}

.promo-info {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  text-align: center;
  color: white;
  text-shadow: 0 2px 4px rgba(0,0,0,0.5); 
  transition: transform 0.5s ease;
}

.promo-box:hover img {
  transform: scale(1.1); /* Slight zoom effect on hover */
  opacity: 1;
}

.promo-box:hover .promo-info {
  transform: translateY(-5px); /* Slight rise effect on hover */
}

@media (max-width: 768px) {
    .promo-box {
        width: 100%;
    }
}
</style>