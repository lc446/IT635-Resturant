--Lucca's Pretty Pastas SAMPLE DATA with recipes
--2026-03-08
INSERT INTO Ingredients (name, weight_pounds, price) VALUES
('Crushed Tomatoes', 1.00, 2.00),
('White Onions', 1.00, 0.50),
('Pecorino Romano', 1.00, 15.00),
('Basil', 1.00, 0.10),
('Olive Oil', 1.00, 6.00),
('Spaghetti', 5.00, 4.00),
('Salt', 4.00, 1.00),
('Rigatoni', 5.00, 4.00),
('Heavy Cream', 1.00, 2.00),
('Red Pepper Flakes', 10.00, 2.00),
('Vodka', 1.00, 10.00),
('Gnocchi', 3.00, 2.00),
('Pine Nuts', 1.00, 12.00),
('Garlic', 1.00, 2.00);

INSERT INTO Recipes (name, price) VALUES
('Spaghetti w/ Red Sauce','12.00'),
('Spicy Rigatoni w/ Vodka Sauce','14.50'),
('Gnocchi w/ Pesto Sauce','16.75');

INSERT INTO Recipes_Ingredients (recipe_id, ingredient_id, recipe_use) VALUES
-- Spaghetti w/ redsauce
(1, 1, 0.50),
(1, 2, 0.10),
(1, 3, 0.05),
(1, 4, 0.10),
(1, 5, 0.10),
(1, 6, 0.50),
(1, 7, 0.05),

-- spicy rigatoni w/ vodka sauce
(2, 1, 0.50),
(2, 2, 0.10),
(2, 3, 0.05),
(2, 4, 0.10),
(2, 5, 0.10),
(2, 8, 0.50),--pasta
(2, 7, 0.05),
(2, 9, 0.25), 
(2, 10, 0.01),
(2, 11, 0.15),
(2, 14, 0.10),
-- pesto gnocchi
(1, 3, 0.10),
(1, 4, 0.15),
(1, 5, 0.15),
(1, 12, 0.50), --pasta
(1, 7, 0.05),
(3, 13, 0.10),
(3, 14, 0.05);
