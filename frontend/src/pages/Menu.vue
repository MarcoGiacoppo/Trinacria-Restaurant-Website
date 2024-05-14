<template>
    <div class="menu-section">
        <div class="heading">
            <span>menu</span>
        </div>
        
        <div class="filter-box">
            <!-- Search box -->
            <div class="row search-box">
                <input type="text" class="search-input" v-model="foodObj.name" placeholder="  Search for an item..." />
            </div>

            <div class="filter-box-container">
                <!-- Status filter -->
                    <ul class="filter-option">
                        <div class="filter-heading">
                            <h1>Sections</h1>
                        </div>
                            <li>
                                <input type="button" name="cbStatus" id="bsStatus" value="Best Seller" hidden
                                    @click="filterStatusBtn($event)" />
                                <label for="bsStatus" class="d-flex justify-content-between">Best Seller
                                    <button class="unselect-btn" @click="unselectStatusBtn($event)"
                                        value="Best Seller">X</button></label>
                            </li>


                            <li>
                                <input type="button" name="cbStatus" id="soStatus" value="Sale Off" hidden
                                    @click="filterStatusBtn($event)" />
                                <label for="soStatus" class="d-flex justify-content-between">On Sale <button
                                        class="unselect-btn" @click="unselectStatusBtn($event)"
                                        value="Sale Off">X</button></label>
                            </li>


                            <li>
                                <input type="button" name="cbStatus" id="sdStatus" value="Seasonal Dishes" hidden
                                    @click="filterStatusBtn($event)" />
                                <label for="sdStatus" class="d-flex justify-content-between">Seasonal Dishes <button
                                        class="unselect-btn" @click="unselectStatusBtn($event)"
                                        value="Seasonal Dishes">X</button></label>
                            </li>


                            <li>
                                <input type="button" name="cbStatus" id="ndStatus" value="New Dishes" hidden
                                    @click="filterStatusBtn($event)" />
                                <label for="ndStatus" class="d-flex justify-content-between">New Dishes <button
                                        class="unselect-btn" @click="unselectStatusBtn($event)"
                                        value="New Dishes">X</button></label>
                            </li>
                        </ul>

                <!-- Price filter -->
                    <ul class="filter-option">
                        <div class="filter-heading">
                            <h1>Price Range</h1>
                        </div>
                            <li>
                                <input type="button" name="rPrice" id="rtfPrice" value="2,5" hidden
                                    @click="filterPriceBtn($event)" />
                                <label for="rtfPrice" class="d-flex justify-content-between">$2 - $5 <button
                                        class="unselect-btn" @click="unselectPriceBtn($event)">X</button></label>
                            </li>

                            <li>
                                <input type="button" name="rPrice" id="rftPrice" value="5,10" hidden
                                    @click="filterPriceBtn($event)" />
                                <label for="rftPrice" class="d-flex justify-content-between">$5 - $10 <button
                                        class="unselect-btn" @click="unselectPriceBtn($event)">X</button></label>
                            </li>

                            <li>
                                <input type="button" name="rPrice" id="rttPrice" value="10,12" hidden
                                    @click="filterPriceBtn($event)" />
                                <label for="rttPrice" class="d-flex justify-content-between">$10 - $12 <button
                                        class="unselect-btn" @click="unselectPriceBtn($event)">X</button></label>
                            </li>

                            <li>
                                <input type="button" name="rPrice" id="mtPrice" value="15,100" hidden
                                    @click="filterPriceBtn($event)" />
                                <label for="mtPrice" class="d-flex justify-content-between">{{ ">" }} $15 <button
                                        class="unselect-btn" @click="unselectPriceBtn($event)">X</button></label>
                            </li>
                        </ul>
                

                <!-- Type filter -->
                    <ul class="filter-option">
                        <div class="filter-heading">
                            <h1>Types</h1>
                        </div>
                            <li>
                                <input type="button" name="rType" id="mType" value="meat" hidden
                                    @click="filterTypeBtn($event)" />
                                <label for="mType" class="d-flex justify-content-between">meat<button class="unselect-btn"
                                        @click="unselectTypeBtn($event)">X</button></label>
                            </li>

                            <li>
                                <input type="button" name="rType" id="vType" value="vegetarian" hidden
                                    @click="filterTypeBtn($event)" />
                                <label for="vType" class="d-flex justify-content-between">vegetarian<button class="unselect-btn"
                                        @click="unselectTypeBtn($event)">X</button></label>
                            </li>

                            <li>
                                <input type="button" name="rType" id="sType" value="seafood" hidden
                                    @click="filterTypeBtn($event)" />
                                <label for="sType" class="d-flex justify-content-between">seafood<button class="unselect-btn"
                                        @click="unselectTypeBtn($event)">X</button></label>
                            </li>
                        </ul>
                    </div>
                </div>  
        
        <div class="row">
                <hr>
                    <div class="menu-tabs">
                        <input type="button" :class="{ 'menu-tab-item': true, 'highlight': foodObj.category === 'all' }" value="all" @click="filterFoodBtn($event)" />
                        <input type="button" :class="{ 'menu-tab-item': true, 'highlight': foodObj.category === 'pizza' }" value="pizza" @click="filterFoodBtn($event)" />
                        <input type="button" :class="{ 'menu-tab-item': true, 'highlight': foodObj.category === 'pasta' }" value="pasta" @click="filterFoodBtn($event)" />
                        <input type="button" :class="{ 'menu-tab-item': true, 'highlight': foodObj.category === 'seafood' }" value="seafood" @click="filterFoodBtn($event)" />
                        <input type="button" :class="{ 'menu-tab-item': true, 'highlight': foodObj.category === 'dessert' }" value="dessert" @click="filterFoodBtn($event)" />
                        <input type="button" :class="{ 'menu-tab-item': true, 'highlight': foodObj.category === 'drinks' }" value="drink" @click="filterFoodBtn($event)" />
                    </div>
                </div>

                <div class="row box-container">
                    <div v-for="(f, index) in currentPageItems" :key="index">
                        <div class="box">
                            <div class="image">
                                <img :src="require(`../assets/images/${f.food_src}`)" alt="" />
                            </div>
                            <div class="content">
                                <h3>{{ f.food_name }}</h3>
                                <div class="stars">
                                    <div v-for="s in Math.floor(parseFloat(f.food_star))" :key="s" class="d-inline">
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <div v-if="parseFloat(f.food_star) - Math.floor(parseFloat(f.food_star)) == 0.5"
                                        class="d-inline">
                                        <i class="fas fa-star-half-alt"></i>
                                    </div>
                                    <span> ({{ f.food_vote }}) </span>
                                </div>
                                <div class="desc">
                                    <p>{{ f.food_desc }}</p>
                                </div>
                                <div class="price">
                                    ${{ parseFloat(f.food_price) - parseFloat(f.food_discount) }}
                                    <span v-if="parseFloat(f.food_discount) != 0.00">${{ parseFloat(f.food_price)
                                    }}</span>
                                </div>
                                <button class="btn" @click="addItem(index)">Add to cart</button>
                            </div>
                        </div>
                    </div>
                    <div v-if="!filterFoods.length">
                        <div class="box">
                            <div class="content">
                                <h1 style="color: #ff4545;">No match found!</h1>
                            </div>
                            <div class="image">
                                <img src="../assets/images/notfound.png" alt="" />
                            </div>
                        </div>
                    </div>
                </div>
                <div v-if="calculatePages > 1" class="action-row">

                    <button v-if="pageNum != 0" @click="previous()" class="action-btn"> {{ "<" }} </button>
                            <div v-for="(p, i) in calculatePages" :key="i" class="d-inline">
                                <span v-if="i == pageNum" class="highlight" @click="set(i)">{{ i + 1 }}</span>
                                <span v-else @click="set(i)">{{ i + 1 }}</span>
                            </div>
                            <button v-if="pageNum != calculatePages - 1" @click="next()" class="action-btn"> {{ ">" }}
                            </button>
                    </div>

        <QuickView v-if="showQuickView" :food="sendId">
            <button class="btn" @click="closeView">X</button>
        </QuickView>
    </div>
</template>

<script>
import QuickView from "@/components/QuickView.vue";
import { mapState } from "vuex";
export default {
    name: "Menu",

    data() {
        return {
            foodObj: { name: "", category: "", status: [], price: "", type: "" },

            showQuickView: false,
            showDropDown: false,
            sendId: null,

            perPage: 4,
            pageNum: 0,
            previousCategoryClicked: "",
            previousPriceClicked: "",
            previousTypeClicked: "",
        };
    },

    computed: {
        ...mapState(["allFoods"]),

        filterFoods: function () {
            return this.allFoods.filter((f) => f.food_name.toLowerCase().match(this.foodObj.name.toLowerCase()) &&
                (f.food_category.match(this.foodObj.category) || this.foodObj.category == "all" || this.foodObj.category == "") &&
                (this.evaluatePrice(f, this.foodObj.price)) &&
                f.food_type.toLowerCase().match(this.foodObj.type.toLowerCase()) &&
                (this.evaluateStatus(f, this.foodObj.status)));
        },
        currentPageItems: function () {
            return this.filterFoods.slice(this.pageNum * this.perPage, this.pageNum * this.perPage + this.perPage);
        },
        calculatePages() {
            return Math.ceil(this.filterFoods.length / this.perPage);
        }
    },
    methods: {
        set(val) {
            this.pageNum = val;
        },
        next() {
            this.pageNum++;
        },
        previous() {
            this.pageNum--;
        },
        
        checkStatus(food, statusArray, status) {
            return statusArray.includes(status) ? food.food_status.includes(status.toLowerCase()) : true;
        },

        evaluateStatus(food, statusArray) {
            return statusArray.every(status => food.food_status.toLowerCase().includes(status.toLowerCase()));
        },

        evaluatePrice(food, priceRange) {
            if (!priceRange) return true;
            const [min, max] = priceRange.split(',').map(parseFloat);
            const price = parseFloat(food.food_price) - parseFloat(food.food_discount);
            return min <= price && price <= max;
        },

        filterFoodBtn: function (e) {
            this.pageNum = 0;
            if (this.foodObj.category != e.target.value && this.previousCategoryClicked != "") {
                this.previousCategoryClicked.target.style.background = "none";
            }
            this.foodObj.category = e.target.value;
            this.previousCategoryClicked = e;
            e.target.style.background = "#ff4545";
        },
        
        filterStatusBtn: function (e) {
            this.pageNum = 0;
            if (this.foodObj.status.includes(e.target.value) == false) {
                this.foodObj.status.push(e.target.value);
                document.querySelector(`[for=${e.target.id}]`).style.background = "#ff4545";
                document.querySelector(`[for=${e.target.id}]`).style.color = "white";
                document.querySelector(`[for=${e.target.id}]`).querySelector(":scope > button").style.display = "block";
            }
        },

        filterPriceBtn: function (e) {
            this.pageNum = 0;
            this.foodObj.price = "";
            this.foodObj.price += e.target.value;
            document.querySelector(`[for=${e.target.id}]`).style.background = "#ff4545";
            document.querySelector(`[for=${e.target.id}]`).style.color = "white";
            document.querySelector(`[for=${e.target.id}]`).querySelector(":scope > button").style.display = "block";
            if (this.previousPriceClicked != "") {
                document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).style.background = "inherit";
                document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).style.color = "inherit";
                document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).querySelector(":scope > button").style.display = "none";
            }
            this.previousPriceClicked = e;
        },

        filterTypeBtn(e) {
            const selectedType = e.target.value;
            this.foodObj.type = selectedType; // Update the current filter type

            // Manage highlights
            if (this.previousTypeClicked && this.previousTypeClicked !== e.target.id) {
                const prevLabel = document.querySelector(`label[for=${this.previousTypeClicked}]`);
                if (prevLabel) {
                    prevLabel.style.background = "inherit";
                    prevLabel.style.color = "inherit";
                    prevLabel.querySelector(".unselect-btn").style.display = "none";
                }
            }

            const currentLabel = document.querySelector(`label[for=${e.target.id}]`);
            currentLabel.style.background = "#ff4545";
            currentLabel.style.color = "white";
            currentLabel.querySelector(".unselect-btn").style.display = "block";

            this.previousTypeClicked = e.target.id; // Remember the last clicked type for future toggles
        },
        unselectStatusBtn: function (e) {
            this.pageNum = 0;
            this.foodObj.status = this.foodObj.status.filter(function (a) { return a !== e.target.value; });
            e.target.parentNode.style.background = "inherit";
            e.target.parentNode.style.color = "inherit";
            e.target.parentNode.querySelector(":scope > button").style.display = "none";
        },
        unselectPriceBtn: function () {
            this.pageNum = 0;
            this.foodObj.price = "";
            document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).style.background = "inherit";
            document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).style.color = "inherit";
            document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).querySelector(":scope > button").style.display = "none";
            this.previousPriceClicked = "";
        },
        unselectTypeBtn(e) {
            const label = e.target.parentNode;
            label.style.background = "inherit";
            label.style.color = "inherit";
            e.target.style.display = "none";

            this.foodObj.type = ""; // Clear the type filter
            this.previousTypeClicked = ""; // Reset the last clicked button tracking
        },

        addItem: function (index) {
            this.sendId = parseInt(this.currentPageItems[index].food_id);
            this.showQuickView = !this.showQuickView;
        },

        closeView: function () {
            this.showQuickView = !this.showQuickView;
        },
    },
    components: { QuickView }
};
</script>




<style scoped>

.filter-box-container {
    display: flex;
    justify-content: space-between;
    margin-right: 15px;
}

.filter-option{
    width: 200px;
}
</style>