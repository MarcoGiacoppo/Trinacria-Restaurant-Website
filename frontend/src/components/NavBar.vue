<template>
    <div class="header">
        <router-link @click="scrollToTop()" to="/" class="logo">Trinacria Ristorante
        </router-link>

        <nav class="navbar">
            <router-link @click="scrollToTop()" to="/">home</router-link>
            <router-link @click="scrollToTop()" to="/about">about</router-link>
            <router-link @click="scrollToTop()" to="/promotions">What's on</router-link>
            <router-link @click="scrollToTop()" to="/menu">menu</router-link>
            <router-link @click="scrollToTop()" to="/table">Book Now</router-link>
        </nav>

        <div class="icons">
            <div id="menu-btn" class="fas fa-bars menu-btn" @click="showNav"></div>
            <router-link @click="scrollToTop()" to="cart">
                <div class="fas fa-shopping-cart cart"></div>
            </router-link>

            <div v-if="!user" class="fas fa-user account" @click="showLog">
                <ul class="drop-down-select">
                    <li>
                        <router-link @click="scrollToTop()" to="/login">login</router-link>
                    </li>
                    <li>
                        <router-link @click="scrollToTop()" to="/register">register</router-link>
                    </li>
                </ul>

            </div>

            <div v-else class="fas fa-user account" style="background: #ff4545;color: white;" @click="showLog">
                <ul class="drop-down-select">
                    <li>
                        <router-link @click="scrollToTop()" to="/myorder">my orders</router-link>
                    </li>
                    <li>
                        <router-link @click="handleLogout" to="/">logout</router-link>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</template>

<script>
import { mapState, mapMutations } from "vuex";
export default {
    name: 'NavBar',

    computed: {
        ...mapState(["user"])
    },

    mounted() {
        window.addEventListener('scroll', this.handleScroll);
    },
    unmounted() {
        window.removeEventListener('scroll', this.handleScroll);
    },

    methods: {
        ...mapMutations(["setUser"]),

        scrollToTop() {
            window.scrollTo(0, 0);
        },

        showNav: function () {
            let navbar = document.querySelector('.header .navbar');
            navbar.classList.toggle('active');
        },

        showLog: function () {
            let mq = window.matchMedia("(max-width: 768px)");
            if (mq.matches) {
                let log = document.querySelector('.drop-down-select');
                log.classList.toggle('active');
            }
        },

        handleScroll: function () {
            let navbar = document.querySelector('.header .navbar');
            navbar.classList.remove('active');
            let log = document.querySelector('.drop-down-select');
            log.classList.remove('active');
        },

        handleLogout: function () {
            this.setUser("");
        }
    }
}
</script>

<style scoped>
.header {
    position: sticky;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1000;
    background: #1d1d1d;
    box-shadow: 0 1rem 1rem rgba(0, 0, 0, 0.05);
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 2rem 9%;
}

.header .logo {
    font-size: 2.5rem;
    font-weight: bolder;
    color: #ff4545;
}

.header .logo img {
    padding-right: .5rem;
}

.header .navbar a {
    font-size: 1.7rem;
    margin: 0 1rem;
    color: #666;
}

.header .navbar a:hover {
    color: #ff4545;
}

.header .navbar a.router-link-exact-active {
    color: #e60e0e;
}

.header .icons {
    display: flex; /* Ensures flexbox layout */
    justify-content: space-between; /* Distributes space between icons evenly */
    align-items: center; /* Centers icons vertically */
    flex-wrap: nowrap; /* Prevents wrapping into a new line */
    width: auto; /* Adjusts width to content */
    padding: 0 1rem; /* Optional: Adjusts padding */
}

.header .icons div {
    height: 4.5rem;
    width: 4.5rem;
    line-height: 4.5rem;
    font-size: 2rem;
    background: #f7f7f7;
    color: #130f40;
    border-radius: .5rem;
    margin-left: .3rem;
    cursor: pointer;
    text-align: center;
}

.header .icons div:hover {
    color: #fff;
    background: #ff4545 !important;
}

.header .icons a.router-link-exact-active .cart {
    background: #ff4545;
    color: white;
}

#menu-btn {
    display: none;
}

.header .icons .account .drop-down-select {
    display: none;
    position: absolute;
    margin-left: -50px;
    list-style-type: none;
}

.header .icons .account .drop-down-select a {
    text-decoration: none;
    color: #130f40;
    font-size: 15px;
    font-weight: 500;
    float: left;
    width: 95px;
    border-radius: 5%;

}

.header .icons .account .drop-down-select.active {
    display: block !important;
}

.header .icons .account .drop-down-select.active a {
    background-color: #f7f7f7;
}

.header .icons .account .drop-down-select.active a:hover {
    background-color: #ff4545;
    color: white;
}


.header .icons .account:hover .drop-down-select a {
    background-color: #f7f7f7;

}

.header .icons .account:hover .drop-down-select a:hover {
    background-color: #ff4545;
    color: white;
}

@media (min-width: 769px) {
    .header .icons .account:hover .drop-down-select {
        display: block;
    }
}

@media (max-width: 768px) {
    .header .navbar {
        position: absolute;
        top: 99%;
        left: 0;
        right: 0;
        background: #fff;
        border-top: 0.1rem solid rgba(0, 0, 0, 0.2);
        border-bottom: 0.1rem solid rgba(0, 0, 0, 0.2);
        clip-path: polygon(0 0, 100% 0, 100% 0, 0 0);
    }

    .header .navbar.active {
        clip-path: polygon(0 0, 100% 0, 100% 100%, 0% 100%);
    }

    .header .navbar a {
        font-size: 2rem;
        margin: 2rem;
        display: block;
    }

    #menu-btn {
        display: inline-block;
    }

}

@media (max-width: 576px) {
    .header .navbar a {
        font-size: 1.5rem;
        margin: 0;
    }
}
</style>