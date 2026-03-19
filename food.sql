--Lucca's Pretty Pastas Table Scructures
--2026-03-07
-- Raw ingredient table
CREATE TABLE Ingredients (
    ingredient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE,
    weight_pounds DECIMAL(10,2) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- recipe table
CREATE TABLE Recipes (
    recipe_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE,
    price DECIMAL(10,2) NOT NULL
);

-- linking all ingredients to all recipes
CREATE TABLE Recipes_Ingredients (
    recipe_ingredient_id INT PRIMARY KEY AUTO_INCREMENT,
    recipe_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    recipe_use DECIMAL(10,2) NOT NULL
);
