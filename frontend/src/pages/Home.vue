<template>
    <div>
        <div class="home-main">
            <div class="content">
                <h3>Welcome to Trinacria</h3>
                <p>Explore the heart of Italian cooking with our selection of authentic, 
                    handcrafted dishes prepared with the freshest ingredients. From the bustling streets of Sicily to your table, 
                    experience the traditional flavors and modern twists that our chefs bring to every plate.</p>
                <router-link @click="scrollToTop()" to="/menu" class="btn">order now</router-link>
            </div>
        </div>


        <div class="home-category">
            <router-link @click="scrollToTop()" to="/menu" class="box">
                <img src="../assets/images/pasta/pasta-10.png" alt="">
                <h3>Pasta & Risotto</h3>
            </router-link>

            <router-link @click="scrollToTop()" to="/menu" class="box">
                <img src="../assets/images/pizza/pizza-4.png" alt="">
                <h3>Pizza & Breads</h3>
            </router-link>

            <router-link @click="scrollToTop()" to="/menu" class="box">
                <img src="../assets/images/seafood/seafood-2.png" alt="">
                <h3>Seafood Delights</h3>
            </router-link>

            <router-link @click="scrollToTop()" to="/menu" class="box">
                <img src="../assets/images//desserts/desserts-2.png" alt="">
                <h3>Desserts</h3>
            </router-link>

            <router-link @click="scrollToTop()" to="/menu" class="box">
                <img src="../assets/images/drink/drink-1.png" alt="">
                <h3>Beverages & Drinks</h3>
            </router-link>
        </div>

        <div class="home-about">
            <div class="image">
                <img src="../assets/images/rest.png" alt="">
            </div>
            <div class="content">
                <span>Why Choose Trinacria?</span>
                <h3 class="title">Crafting Unforgettable Italian Experiences!</h3>
                <p>At Trinacria, we're not just serving meals; we're curating experiences. 
                    With ingredients sourced directly from Italian farms and recipes that have been passed down through generations, 
                    each dish tells a story. Spearheaded by our celebrated chef, who brings over 20 years of culinary expertise, 
                    we promise an Italian dining experience that's both genuine and innovative</p>
                <router-link @click="scrollToTop()" to="/about" class="btn">read more</router-link>
            </div>
        </div>
    </div>
</template>

<script>

export default {
    name: "Home",

    methods: {
        scrollToTop() {
            window.scrollTo(0, 0);
        }
    }
};
</script>