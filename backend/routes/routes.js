//Import Express
import express from "express";
//Import functions from controller
import {
    showFoods,
    showFoodById,
    createFood,
    updateFood,
    deleteFood,
} from "../controllers/food.js";

import {
    showAUser,
    createAccount
} from "../controllers/user.js";

import {
    addItems,
    getItem,
    updateItem,
    allItems,
    deleteItem,
    deleteItems
} from "../controllers/cart.js";

import {
    createBooking
} from "../controllers/booktable.js";

import {
    createBillDetails,getBillDetailsById
} from "../controllers/billdetails.js";

import {
    showNewestStatusId,
    createBillStatus, 
    getAllBillsByUser,
    getAllBillsByBill,
    getAllBills,
    updateBillStatus,
    updateBillPaid,
    cancelBillStatus
} from "../controllers/billstatus.js";

//Init Express Router
const router = express.Router();

//FOOD

//Get All Food
router.get("/api/foods", showFoods);

//Get Single Food
router.get("/api/foods/:id", showFoodById);

//Create Food
router.post("/api/foods", createFood);

//Update Food 
router.put("/api/foods/:id", updateFood);

//Delete Food
router.delete("/api/foods/:id", deleteFood);

//USER

//Get all user
router.get("/api/users/:email", showAUser);

//Create Account
router.post("/api/users/", createAccount);

//CART

//Add to cart
router.post("/api/cartItem", addItems);

//Get an item in the cart
router.get("/api/cartItem/:user_id/:food_id", getItem);

//Get all items by user id
router.get("/api/cartItem/:id", allItems);

//Update item quantity
router.put("/api/cartItem/", updateItem);

//Delete an item in the cart
router.delete("/api/cartItem/:user_id/:food_id", deleteItem);

//Delete all items in the cart
router.delete("/api/cartItem/:id", deleteItems);

//Booking
router.post("/api/booking", createBooking);

//Bill Details
router.post("/api/billdetails", createBillDetails);
router.get("/api/billdetails/:id", getBillDetailsById);

// Bill status
router.get("/api/billstatus/new", showNewestStatusId);
router.post("/api/billstatus", createBillStatus);
router.get("/api/billstatus/user/:id", getAllBillsByUser);
router.get("/api/billstatus/bill/:id", getAllBillsByBill);
router.get("/api/billstatus", getAllBills);
router.put("/api/billstatus/:id", updateBillStatus);
router.put("/api/billstatus/paid/:id", updateBillPaid);
router.put("/api/billstatus/cancel/:id", cancelBillStatus);

// export default router
export default router;