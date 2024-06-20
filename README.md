## Active Record Challenge 

This is the starter code for the WEBD-2007 Active Record challenge.

## License

This is free and unencumbered software released into the public domain. See UNLICENSE for details.

## To complete task mentioned in challenge_read.rb file we do the following:
## Step 1: Retrieve and Inspect a Product
We need to retrieve a product from the database and inspect its columns. which is being carried out in the code.

## Step 2: Record All Columns in product.rb
After running the above code, you'll get an output showing all columns in the products table. Record these columns as comments in the product.rb file. which has been done in the code.

## Step 3: Determine Association with Other Tables
From the columns, we see a category_id column, which indicates an association with the categories table. This confirms the many-to-one relationship between products and categories as stated in the product.rb file.

## Step 4: Use ActiveRecord to Find and Print Out Required Information
We'll add code to find and print out the total number of products, names of all products above $10 with names starting with 'C', and the total number of products with a low stock quantity.
There are 77 products in the products table.
Products above $10 with names starting with 'C':
Chai
Chang
Chef Anton's Cajun Seasoning
Chef Anton's Gumbo Mix
Carnarvon Tigers
Côte de Blaye
Chartreuse verte
Chocolade
Camembert Pierrot
There are 8 products with a low stock quantity.
