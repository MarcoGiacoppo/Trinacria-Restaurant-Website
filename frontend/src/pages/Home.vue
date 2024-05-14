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

<style scoped>
.home-main,
.home-about,
.home-banner,
.home-category {
    padding: 2rem 9%;
}

.home-main {
    display: flex;
    align-items: center;
    flex-wrap: wrap-reverse;
    gap: 2rem;
    position: relative;
    overflow: hidden;
    background-image: url('../assets/images/home-1.jpg');
    background-size: cover; 
    background-position: center;
    background-repeat: no-repeat;
    height: 70vh;
    color: #fff; 
}

.home-main .content {
    flex: 1 1 41rem;
}

.home-main .content h3 {
    font-size: 4rem;
    color: #fff;
    padding-top: 1rem;
}

.home-main .content p {
    font-size: 1.4rem;
    color: #fff;
    line-height: 2;
    padding: 1rem 0;
}

.home-main .image {
    flex: 1 1 41rem;
    margin: 2rem 0;
    pointer-events: none;
}

.home-main .image .home-img {
    width: 100%;
}

/* home category */
.home-category {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(10rem, 1fr));
    gap: 1.5rem;
    padding-bottom: 5rem;
}

.home-category .box {
    padding: 2rem;
    text-align: center;
    border-radius: .5rem;
    border: 2px solid #444;
}

.home-category .box:hover {
    background: #58625c;
    border-color: #fff;
}

.home-category .box:hover h3 {
    color: #fff;
}

.home-category .box img {
    height: 7rem;
    max-width: 100%;
    justify-content: center;
}

.home-category .box h3 {
    font-size: 1.8rem;
    color: #f7f7f7;
}


/* home banner */
.home-banner .row-banner .content {
    position: absolute;
    top: 50%;
    left: 7%;
    transform: translateY(-50%);
}

.home-banner .row-banner .content span {
    font-family: 'Satisfy', cursive;
    font-size: 4rem;
    color: #27ae60;
    color: #130f40;
}

.home-banner .row-banner .content h3 {
    font-size: 6rem;
    color: red;
    text-transform: uppercase;
}

.home-banner .row-banner .content p {
    font-size: 2rem;
    padding-bottom: 1rem;
}


.home-banner .grid-banner .grid {
    border-radius: 1rem;
    overflow: hidden;
    height: 45rem;
}

.home-banner .grid-banner .grid:hover img {
    transform: scale(1.2);
}

.home-banner .grid-banner .grid img {
    height: 100%;
    width: 100%;
    object-fit: cover;
}

.home-banner .grid-banner .grid .content {
    position: absolute;
    top: 2rem;
    padding: 0 2rem;
}

.home-banner .grid-banner .grid .content.center {
    text-align: center;
    width: 100%;
}

.home-banner .grid-banner .grid .content.center span {
    color: #666;
}

.home-banner .grid-banner .grid .content.center h3 {
    color: #130f40;
}

.home-banner .grid-banner .grid .content span {
    font-size: 2.5rem;
    color: #fff;
}

.home-banner .grid-banner .grid .content h3 {
    font-size: 3rem;
    color: #fff;
    padding-top: .5rem;
}

.home-about {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 2rem;
    background: #f7f7f7;
}

.home-about .image {
    flex: 1 1 50rem;
}

.home-about .image img {
    width: 100%;
}

.home-about .content {

    flex: 1 1 40rem;
}

.home-about .content span {
    font-family: 'Satisfy', cursive;
    font-size: 3rem;
    color: #ff4545;
}

.home-about .content .title {
    font-size: 3rem;
    padding-top: .5rem;
    color: #130f40;
}

.home-about .content p {
    padding: 1rem 0;
    line-height: 2;
    font-size: 1.4rem;
    color: #666;
}

.home-about .content .icons-container {
    margin-top: 2rem;
    display: flex;
    flex-wrap: wrap;
    gap: 1.5rem;
}

.home-about .content .icons-container .icons {
    flex: 1 1 20rem;
    border-radius: .5rem;
    background: #fff;
    box-shadow: 0 1rem 1rem rgba(0, 0, 0, 0.05);
    display: flex;
    align-items: center;
    gap: 2rem;
    padding: 2rem;
}

.home-about .content .icons-container .icons h3 {
    font-size: 1.7rem;
    color: #130f40;
}

@media (max-width: 768px) {
    #menu-btn {
        display: inline-block;
    }

    .home-main .home-parallax-img {
        top: 0;
        right: 0;
        width: 100%;
    }

    .home-banner .grid-banner .content h3 {
        font-size: 15px !important;
    }

    .home-banner .grid-banner .content.center {
        padding-left: 0px !important;
    }

}

@media (max-width: 576px) {
    .home-main .content h3 {
        font-size: 3rem;
    }

    .home-main .content p {
        font-size: 1.5rem;
    }
}
</style>




