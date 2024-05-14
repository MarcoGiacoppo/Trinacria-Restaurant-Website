<template>
    <section class="about-section">
        <div class="heading">
            <span>About Us</span>
            <h3>Authentic Fusion of Italian and Balinese Flavors</h3>
        </div>

        <div class="row">
            <div class="about-content">
                <img src="../assets/images/about.jpg" alt="Interior of Trinacria Ristorante">
                <div class="about-content-text">
                    <p>Founded in the heart of Italy and inspired by the exotic charm of Bali, 
                        Trinacria Ristorante brings you a harmonious blend of Italian culinary 
                        precision and Balinese aromatic richness. Our establishment, 
                        led by a chef with deep roots in both cultures, offers an unforgettable 
                        dining experience that transcends ordinary cuisine.</p>
                    <p>At Trinacria, every dish is a celebration of flavors. Whether dining 
                        in to soak up the ambiance reminiscent of a Sicilian sunset or enjoying 
                        our specialties at home, our mission is to transport you to a world 
                        where every bite tells a story of culinary artistry.</p>
                </div>
            </div>
        </div>
    </section>
</template>


<script>
export default {
    name: "About",
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Satisfy&display=swap");

.about-section {
    padding: 2rem 9%;
    margin-bottom: 120px;
}

.about-section .about-content {
    display: flex;
    align-items: center; 
    justify-content: space-between;
}

.about-section .about-content img {
    max-width: 50%; 
    margin-right: 20px;
    border-radius: 10px;
}

.about-section .about-content img:hover {
    transform: scale(1.05);
}

.about-section .about-content .about-content-text {
    font-size: 16px;
    padding-left: 50px;
}


@media (max-width: 768px) {
    .about-section .about-content {
        flex-direction: column;
    }

    .about-section .about-content img {
        max-width: 100%; 
        margin-right: 0; 
        margin-bottom: 20px; 
    }
}
</style>