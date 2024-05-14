-- database name: "db_restaurant"

CREATE TABLE food( 
    food_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    food_name VARCHAR(255), 
    food_star VARCHAR(255),
    food_vote VARCHAR(255),
    food_price VARCHAR(255),
    food_discount VARCHAR(255),
    food_desc VARCHAR(255),
    food_status VARCHAR(255),
    food_type VARCHAR(255),
    food_category VARCHAR(255),
    food_src VARCHAR(255)
) ENGINE=INNODB;

INSERT INTO food (food_name, food_star, food_vote, food_price, food_discount, food_desc, food_status, food_type, food_category, food_src) VALUES
('Margherita pizza', 4, 800, 12.00, 0.00, 'Classic simplicity with tomato sauce, fresh mozzarella, and basil.', 'best seller', 'vegetarian', 'pizza', 'pizza/pizza-1.png'),
('Quattro Formaggi', 5, 920, 14.00, 0.00, 'A rich blend of mozzarella, gorgonzola, parmesan, and fontina cheeses.', 'best seller', 'vegetarian', 'pizza', 'pizza/pizza-2.png'),
('Diavola', 4, 860, 15.00, 0.00, 'Spicy salami with mozzarella and fiery chili peppers.', 'best seller', 'meat', 'pizza', 'pizza/pizza-3.png'),
('Prosciutto e Funghi', 4, 770, 16.00, 0.00, 'Prosciutto ham and mushrooms on a mozzarella base.', 'best seller', 'meat', 'pizza', 'pizza/pizza-4.png'),
('Pesto e Rucola', 4, 720, 13.00, 1.00, 'Pesto base with arugula and shaved parmesan.', 'online only sale off', 'vegetarian', 'pizza', 'pizza/pizza-5.png'),
('Salsiccia e Broccoli', 4, 780, 14.00, 0.00, 'Italian sausage and broccoli with spicy tomato sauce.', 'best seller', 'meat', 'pizza', 'pizza/pizza-6.png'),
('Cipolla Caramellata', 4, 680, 13.00, 2.00, 'Caramelized onions, blue cheese, and balsamic reduction.', 'sale off', 'vegetarian', 'pizza', 'pizza/pizza-7.png'),
('Tartufo Nero', 5, 950, 18.00, 0.00, 'Black truffle spread with mozzarella and mushrooms.', 'best seller', 'vegetarian', 'pizza', 'pizza/pizza-8.png'),
('Capricciosa', 4, 890, 16.00, 0.00, 'Artichokes, ham, olives, and mushrooms.', 'best seller', 'meat', 'pizza', 'pizza/pizza-9.png'),
('Focaccia al Rosmarino', 4, 710, 8.00, 0.00, 'Classic focaccia with rosemary and olive oil.', 'new dishes', 'vegetarian', 'pizza', 'pizza/pizza-10.png'),
('Calzone Ripieno', 4, 820, 14.00, 0.00, 'Folded pizza with ricotta, ham, and mozzarella.', 'online only', 'meat', 'pizza', 'pizza/pizza-11.png'),
('Pane Aglio e Formaggio', 4, 750, 7.00, 0.00, 'Garlic bread topped with melted cheese.', 'best seller', 'vegetarian', 'pizza', 'pizza/pizza-12.png'),


('Spaghetti Carbonara', 4, 850, 13.00, 0.00, 'Creamy sauce with pancetta and a dusting of pecorino cheese.', 'best seller', 'meat', 'pasta', 'pasta/pasta-1.png'),
('Risotto ai Funghi', 5, 930, 15.00, 1.00, 'Creamy arborio rice with porcini mushrooms.', 'best seller sale off', 'vegetarian', 'pasta', 'pasta/pasta-2.png'),
('Penne all Arrabbiata', 4, 800, 12.00, 0.00, 'Penne pasta in a spicy tomato sauce.', 'best seller', 'vegetarian', 'pasta', 'pasta/pasta-3.png'),
('Risotto al Nero di Seppia', 4, 860, 16.00, 0.00, 'Black squid ink risotto with a seafood medley.', 'best seller', 'Seafood', 'pasta', 'pasta/pasta-4.png'),
('Tagliatelle al Ragù Bolognese', 4, 880, 14.00, 0.00, 'Flat pasta ribbons in a slow-cooked meat sauce.', 'best seller', 'meat', 'pasta', 'pasta/pasta-5.png'),
('Ravioli di Spinaci', 5, 950, 15.00, 0.00, 'Spinach and ricotta stuffed ravioli in sage butter.', 'best seller', 'vegetarian', 'pasta', 'pasta/pasta-6.png'),
('Gnocchi al Pesto', 4, 820, 14.00, 0.00, 'Potato gnocchi in a fresh basil pesto.', 'best seller', 'vegetarian', 'pasta', 'pasta/pasta-7.png'),
('Lasagna al Forno', 4, 890, 16.00, 0.00, 'Layered pasta with béchamel, meat sauce, and cheese.', 'best seller', 'meat', 'pasta', 'pasta/pasta-8.png'),
('Risotto alla Milanese', 5, 930, 15.00, 0.00, 'Saffron risotto, a Milanese specialty.', 'best seller', 'vegetarian', 'pasta', 'pasta/pasta-9.png'),
('Fettuccine Alfredo', 4, 860, 13.00, 0.00, 'Fettuccine in a rich and creamy white sauce.', 'best seller', 'vegetarian', 'pasta', 'pasta/pasta-10.png'),
('Linguine ai Frutti di Mare', 5, 960, 18.00, 0.00, 'Seafood linguine with a tomato and white wine sauce.', 'best seller', 'Seafood', 'pasta', 'pasta/pasta-11.png'),
('Orecchiette con Cime di Rapa', 4, 830, 14.00, 0.00, 'Ear-shaped pasta with broccoli rabe and garlic.', 'best seller online only', 'vegetarian', 'pasta', 'pasta/pasta-12.png'),


('Branzino al Forno', 5, 940, 19.00, 0.00, 'Roasted sea bass with herbs and lemon.', 'best seller seasonal dishes', 'Seafood', 'seafood', 'seafood/seafood-1.png'),
('Gamberi Aglio e Olio', 4, 830, 18.00, 0.00, 'Shrimp sautéed in garlic and olive oil.', 'best seller', 'Seafood', 'seafood', 'seafood/seafood-2.png'),
('Cozze Marinara', 4, 860, 16.00, 0.00, 'Mussels in a tomato and garlic sauce.', 'best seller new dishes', 'Seafood', 'seafood', 'seafood/seafood-3.png'),
('Calamari Fritti', 4, 820, 15.00, 0.00, 'Fried calamari rings served with marinara dip.', 'best seller', 'Seafood', 'seafood', 'seafood/seafood-4.png'),
('Scampi alla Griglia', 5, 920, 20.00, 1.00, 'Grilled scampi with a lemon butter sauce.', 'best seller sale off', 'Seafood', 'seafood', 'seafood/seafood-5.png'),
('Sarde in Saor', 4, 870, 14.00, 0.00, 'Sweet and sour sardines with onions and pine nuts.', 'best seller new dishes', 'Seafood', 'seafood', 'seafood/seafood-6.png'),
('Insalata di Mare', 5, 930, 17.00, 0.00, 'Seafood salad with octopus, squid, and shrimp.', 'best seller', 'Seafood', 'seafood', 'seafood/seafood-7.png'),
('Zuppa di Pesce', 4, 850, 18.00, 0.00, 'Rich seafood soup with a tomato base.', 'best seller', 'Seafood', 'seafood', 'seafood/seafood-8.png'),
('Granchio al Vapore', 5, 960, 22.00, 0.00, 'Steamed crab with garlic and herbs.', 'best seller', 'Seafood', 'seafood', 'seafood/seafood-9.png'),
('Astice alla Griglia', 5, 940, 25.00, 2.00, 'Grilled lobster with drawn butter.', 'best seller sale off', 'Seafood', 'seafood', 'seafood/seafood-10.png'),

('Tiramisu', 5, 950, 7.00, 0.00, 'Layers of coffee-soaked ladyfingers and mascarpone cheese.', 'best seller', 'dessert', 'dessert', 'desserts/desserts-1.png'),
('Panna Cotta', 4, 870, 6.00, 0.00, 'Creamy pudding with berry coulis.', 'best seller', 'dessert', 'dessert', 'desserts/desserts-2.png'),
('Cannoli', 5, 920, 5.00, 0.00, 'Crispy pastry tubes filled with sweet ricotta.', 'best seller', 'dessert', 'dessert', 'desserts/desserts-3.png'),
('Gelato', 5, 960, 4.00, 0.00, 'Homemade Italian ice cream. ($4.00 per scoop)', 'best seller', 'dessert', 'dessert', 'desserts/desserts-4.png'),
('Torta Caprese', 4, 830, 6.00, 0.00, 'Flourless chocolate almond cake from Capri.', 'best seller', 'dessert', 'dessert', 'desserts/desserts-5.png'),
('Affogato', 5, 940, 5.00, 0.00, 'Espresso poured over vanilla gelato.', 'best seller', 'dessert', 'dessert', 'desserts/desserts-6.png'),
('Zabaglione', 4, 880, 6.00, 0.00, 'Light custard whipped with sweet wine.', 'new dishes', 'dessert', 'dessert', 'desserts/desserts-7.png'),
('Baba al Rum', 5, 950, 5.00, 0.00, 'Rum-soaked cake with whipped cream.', 'new dishes', 'dessert', 'dessert', 'desserts/desserts-8.png'),
('Torta di Ricotta', 4, 860, 6.00, 0.00, 'Sweet ricotta pie with chocolate chips.', 'best seller', 'dessert', 'dessert', 'desserts/desserts-9.png'),

('Aperol Spritz', 5, 960, 8.00, 0.00, 'Aperol, prosecco, and soda.', 'best seller', 'drink', 'drinks', 'drink/drink-1.png'),
('Chianti Classico', 5, 940, 9.00, 0.00, 'Robust red wine from Tuscany. ($9.00/glass)', 'best seller', 'drink', 'drinks', 'drink/drink-2.png'),
('Limoncello', 4, 870, 7.00, 0.00, 'Sweet and tart lemon liqueur.', 'best seller', 'drink', 'drinks', 'drink/drink-3.png'),
('Prosecco', 5, 950, 8.00, 0.00, 'Italian sparkling white wine. ($8.00/glass)', 'best seller', 'drink', 'drinks', 'drink/drink-4.png'),
('Negroni', 5, 970, 10.00, 0.00, 'Gin, Campari, and sweet vermouth.', 'best seller', 'drink', 'drinks', 'drink/drink-5.png'),
('Espresso', 4, 830, 3.00, 0.00, 'Strong Italian coffee.', 'best seller', 'drink', 'drinks', 'drink/drink-6.png'),
('Cappuccino', 4, 850, 4.00, 0.00, 'Espresso with steamed milk and foam.', 'best seller', 'drink', 'drinks', 'drink/drink-7.png'),
('Acqua Panna', 4, 890, 3.00, 0.00, 'Still mineral water from Tuscany.', 'best seller', 'drink', 'drinks', 'drink/drink-8.png'),
('San Pellegrino', 4, 870, 3.00, 0.00, 'Sparkling mineral water.', 'best seller', 'drink', 'drinks', 'drink/drink-9.png'),
('Bellini', 5, 920, 8.00, 0.00, 'Prosecco with peach purée.', 'best seller', 'drink', 'drinks', 'drink/drink-10.png'),
('Margarita', 5, 920, 8.00, 0.00, 'Refreshing blend of tequila, lime juice, and Cointreau or triple sec.', 'best seller', 'drink', 'drinks', 'drink/drink-11.png'),
('Long Island Iced Tea', 4, 880, 10.00, 0.00, 'Potent mix of vodka, tequila, light rum, triple sec, gin, and a splash of cola.', 'best seller', 'drink', 'drinks', 'drink/drink-12.png');



CREATE TABLE user( 
    user_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    user_name VARCHAR(255), 
    user_email VARCHAR(255),
    user_phone VARCHAR(255),
    user_password VARCHAR(255),
    user_birth VARCHAR(255),
    user_gender VARCHAR(255)
) ENGINE=INNODB;


CREATE TABLE cart (
  user_id INT,
  food_id INT,
  item_qty INT,
  primary key (user_id, food_id)
);


CREATE TABLE booktable( 
    book_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    book_name VARCHAR(255), 
    book_phone VARCHAR(255),
    book_people INT,
    book_tables INT,
    user_id INT,
    book_when VARCHAR(255),
    book_note TEXT
) ENGINE=INNODB;


CREATE TABLE billdetails (
  bill_id INT,
  food_id INT,
  item_qty INT,
  primary key (bill_id, food_id)
);

CREATE TABLE billstatus (
  bill_id INT,
  user_id INT,
  bill_phone VARCHAR(255),
  bill_address TEXT,
  bill_when VARCHAR(255),
  bill_method VARCHAR(255),
  bill_discount INT,
  bill_delivery INT,
  bill_total INT,
  bill_paid VARCHAR(255),
  bill_status INT,
  primary key (bill_id)
);