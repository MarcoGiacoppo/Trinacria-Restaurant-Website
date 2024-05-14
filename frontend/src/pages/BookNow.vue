<template>
    <vue-basic-alert :duration="500" :closeIn="3000" ref="alert" />
    <section class="order-section">
        <div class="heading">
            <span>Book a Table</span>
        </div>

        <form id="bookTableForm" @submit.prevent="handleSubmit" novalidate autocomplete="on">
            <div class="row">
                <div class="input-box">
                    <label for="uName">Your Name</label>
                    <input type="text" name="uName" id="uName" v-model="orderObj.name">
                    <p v-if="errorObj.nameErr.length">{{ errorObj.nameErr[0] }}</p>
                </div>
                <div class="input-box">
                    <label for="uPhone">Your Phone Number</label>
                    <input type="text" name="uPhone" id="uPhone" v-model="orderObj.phone">
                    <p v-if="errorObj.phoneErr.length">{{ errorObj.phoneErr[0] }}</p>
                </div>
            </div>

            <div class="row">
                <div class="input-box">
                    <label for="oPeople">Number of People</label>
                    <input type="number" name="oPeople" id="oPeople" v-model="orderObj.people">
                    <p v-if="errorObj.peopleErr.length">{{ errorObj.peopleErr[0] }}</p>
                </div>
                <div class="input-box">
                    <label for="oTables">Number of Tables</label>
                    <input type="number" name="oTables" id="oTables" v-model="orderObj.tables">
                    <p v-if="errorObj.tablesErr.length">{{ errorObj.tablesErr[0] }}</p>
                </div>
            </div>

            <div class="row">
                <div class="input-box">
                    <label for="oDate">Date</label>
                    <input type="date" name="oDate" id="oDate" v-model="orderObj.date">
                    <p v-if="errorObj.dateErr.length">{{ errorObj.dateErr[0] }}</p>
                </div>
                <div class="input-box">
                    <label for="oTime" class="time-label">Time</label>
                    <select name="oTime" id="oTime" v-model="orderObj.time">
                        <option v-for="(time, index) in availableTimes" :key="index" :value="time">{{ time }}</option>
                    </select>
                    <p v-if="errorObj.timeErr.length">{{ errorObj.timeErr[0] }}</p>
                </div>
            </div>

            <div class="row">                
                <div class="input-box">
                    <label for="uMessage">Note</label>
                    <textarea placeholder="Notes, Special requirements (High Chair, Allergy, Birthday)" name="uMessage" id="uMessage" cols="30" rows="10" v-model="orderObj.note"></textarea>
                </div>
            </div>

            <input type="submit" value="Book Now" class="btn">
        </form>
    </section>
</template>

<script>
import axios from 'axios';
import VueBasicAlert from 'vue-basic-alert'

export default {
    name: "Table",

    data() {
        return {
            orderObj: { 
                book_name: "", 
                book_phone: "",
                book_people: "",
                book_tables: "",
                user_id: "", 
                book_date: "",
                book_time: "",
                book_note: "" 
            },
            errorObj: {
                nameErr: [],
                phoneErr: [],
                peopleErr: [],
                tablesErr: [],
                cardErr: [],
                dateErr: [],
                timeErr: []
            },
            openingHour: 10,
            closingHour: 22, // 10 PM
            timeInterval: 60, // in minutes
        }
    },

    computed: {
        availableTimes() {
            const times = [];
            for (let hour = this.openingHour; hour <= this.closingHour; hour++) {
                for (let minute = 0; minute < 60; minute += this.timeInterval) {
                    const formattedTime = `${hour.toString().padStart(2, '0')}:${minute.toString().padStart(2, '0')}`;
                    times.push(formattedTime);
                }
            }
            return times;
        }
    },

    methods: {
        async handleSubmit(e) {
            this.checkForm();

            if (!this.checkEmptyErr()) {
                e.preventDefault();
            } else {
                e.preventDefault();

                let data = {
                    book_name: this.orderObj.name,
                    book_phone: parseInt(this.orderObj.phone),
                    book_people: parseInt(this.orderObj.people),
                    book_tables: parseInt(this.orderObj.tables),
                    user_id: this.orderObj.card ? parseInt(this.orderObj.card) : null,
                    book_date: this.orderObj.date, 
                    book_time: this.orderObj.time,
                    book_note: this.orderObj.note || null,
                }

                console.log('data to be sent: ', data);

                try {
                    const response = await axios.post("/booking", data);
                    if (response.status === 200) {
                        this.$refs.alert.showAlert('success', 'Thank you! We will call you soon to confirm your booking', 'Booking Successful !');
                        document.getElementById("bookTableForm").reset();
                    } else {
                        this.$refs.alert.showAlert('error', 'Failed to submit booking. Please try again later.', 'Booking Error');
                    }
                } catch (error) {
                    console.error('Error submitting booking:', error);
                    this.$refs.alert.showAlert('error', 'Failed to submit booking. Please try again later.', 'Booking Error');
                }
            }
        },

        checkForm() {
            this.resetCheckErr();

            // Name Validation
            if (!this.orderObj.name) {
                this.errorObj.nameErr.push("Entering a name is required");
            } else {
                if (!/^[A-Za-z]+$/.test(this.orderObj.name.replace(/\s/g, ""))) {
                    this.errorObj.nameErr.push('A name can only contain letters');
                }
            }

            // Phone Validation
            if (!this.orderObj.phone) {
                this.errorObj.phoneErr.push('Entering phone number is required');
            } else {
                if (!this.orderObj.phone.startsWith('04')) {
                    this.errorObj.phoneErr.push('Phone numbers must start with 04');
                }
                if (!/[0-9]{10}/.test(this.orderObj.phone)) {
                    this.errorObj.phoneErr.push('Phone numbers can only contain numbers');
                }
                if (this.orderObj.phone.length !== 10) {
                    this.errorObj.phoneErr.push('Phone numbers must have exactly 10 digits');
                }
            }

            // People Validation
            if (!this.orderObj.people) {
                this.errorObj.peopleErr.push("Entering number of people is required");
            } else {
                if (parseInt(this.orderObj.people) > 150) {
                    this.errorObj.peopleErr.push("Our restaurant can only serve 150 people at a time");
                }
                if (parseInt(this.orderObj.people) < 1) {
                    this.errorObj.peopleErr.push("Number of people must be more than or equal to 1");
                }
            }

            // Table Validation
            if (!this.orderObj.tables) {
                this.errorObj.tablesErr.push("Entering number of tables is required");
            } else {
                if (parseInt(this.orderObj.tables) > 100) {
                    this.errorObj.tablesErr.push("Each store can only have maximum 100 tables");
                }
                if (parseInt(this.orderObj.tables) < 1) {
                    this.errorObj.tablesErr.push("Number of tables must be greater than or equal to 1");
                }
                if (parseInt(this.orderObj.people) < parseInt(this.orderObj.tables)) {
                    this.errorObj.tablesErr.push("The number of tables must be less than the number of people");
                }
            }

            // MembershipCard Validation
            if (this.orderObj.card) {
                if (!/[0-9]{10}/.test(this.orderObj.card)) {
                    this.errorObj.cardErr.push('Card numbers can only contain numbers');
                }
                if (this.orderObj.card.length !== 10) {
                    this.errorObj.cardErr.push('Card number must have exactly 10 digits');
                }
            }

            // Date Validation
            if (!this.orderObj.date) {
                this.errorObj.dateErr.push("Entering date is required");
            }

            // Time Validation
            if (!this.orderObj.time) {
                this.errorObj.timeErr.push("Entering time is required");
            }
        },

        resetCheckErr() {
            for (let typeErr in this.errorObj) {
                this.errorObj[typeErr] = [];
            }
        },

        checkEmptyErr() {
            return Object.values(this.errorObj).every(errArr => errArr.length === 0);
        },
    },

    components: {
        VueBasicAlert
    }
}
</script>