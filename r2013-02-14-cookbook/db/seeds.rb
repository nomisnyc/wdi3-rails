Book.delete_all
Recipe.delete_all
Ingredient.delete_all




b1 = Book.create(:title => 'Julia Child Cookbook', :cuisine => 'French', :chef => 'Julia Child', :image => 'http://chocolatraa.files.wordpress.com/2010/10/the_french_chef_cookbook.jpg')

r1 = Recipe.create(:name => 'Poulet au Porto', :course => 'Dinner', :cooktime => '400', :servingsize => '4', :image => 'http://www.foodandwine.com/assets/images/201303-r-julias-favorite-roast-chicken.jpg/variations/original.jpg')

r2 = Recipe.create(:name => 'Roast Bass', :course => 'Lunch', :cooktime => '78', :servingsize => '4', :image => 'http://www.eatanddrink.co.uk/images/Seafood/WholeRoastSeaBass.jpg')

r3 = Recipe.create(:name => 'Jumping Frogs', :course => 'Breakfast', :cooktime => '90', :servingsize => '18', :image => 'http://invasivore.org/wp-content/uploads/2012/01/Frog-leg-piccata.jpg')

i1 = Ingredient.create(:name => 'Chicken', :measurement => '3lbs', :cost => '$15.00', :image => 'http://us.123rf.com/400wm/400/400/elisanth/elisanth1104/elisanth110400012/9319431-fresh-raw-chicken-legs-isolated-on-white-background-clipping-path-included.jpg')

i2 = Ingredient.create(:name => 'Frog', :measurement => '18lbs', :cost => '$300.00', :image => 'http://4.bp.blogspot.com/_6_IWtRRpdNs/SdQyLI-FhfI/AAAAAAAADz4/ALr9OZGQVAc/s576/Cuisses+de+Grenouille+aux+Herbes+(Herbed+Frog+Legs)+mise+en+place.jpg')

i3 = Ingredient.create(:name => 'Mothers Milk', :measurement => '9cups', :cost => '$35.98 per oz', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Feeding_Is_Fun.jpg/220px-Feeding_Is_Fun.jpg')

i4 = Ingredient.create(:name => 'Garlic', :measurement => '5cloves', :cost => '$9.99', :image => 'http://www.osteoarthritisblog.com/wp-content/uploads/2011/03/garlic.jpg')

i5 = Ingredient.create(:name => 'Bangers', :measurement => '8', :cost => '$4.99', :image => 'http://www.irishgrub.com/raw_bangers.gif')

i6 = Ingredient.create(:name => 'Emu', :measurement => '7 packs', :cost => '$1mil', :image => 'http://skipthepie.org/nutrition-photos/o/05623_129669797287628.jpg')


b1.recipes = [r1,r2]
b1.recipes << r3

r1.ingredients = [i2, i6, i3]
r2.ingredients = [i4, i3, i2]
r3.ingredients = [i1, i5, i4, i6, i3, i2]






