# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
protein = ["Chicken", "Beef", "Squirrel", "Alligator", "Tofu", "Lamb", "Ostrich", "Parakeet", "Pigeon", "Liger", "Monkey", "Buffalo", "Pig", "Shark", "Tuna", "Human", "Snake", "Ant", "Spider", "Cat", "Unicorn", "Horse"]

part = ["leg", "wing", "fin", "arm", "cheek", "thigh", "foot", "face", "toe", "finger", "calf", "neck", "tail"]

attribute = ["upside-down", "top", "bottom", "red", "blue", "happy", "grumpy", "giant", "tiny", "strange", "little", "life", "cereal", "banana", "goofy", "fruit salad", "misery", "black and yellow"]

type = ["cake", "pie", "pasta", "smoothie", "ice cream", "stew", "soup", "salad", "bread", "linguini", "strombolli", "whatever", "gravy", "donut", "sausage", "pizza", "thingy"]



$content = ["jujubes", "caramels", "icing", "jelly", "chocolate", "cake", "candy", "oat", "tiramisu", "marshmallow", "macaroon", "gingerbread", "biscuit", "canes", "tart", "bear claw", "cookie", "brownie", "gummies", "tootsie roll", "sugar plum", "bonbon", "sesame snaps", "apple pie", "lollipop", "cupcake", "lemon drops", "carrot cake", "sweet roll", "dessert", "candy canes", "croissant", "chupa chup", "souffle", "toffee", "jelly beans", "fruitcake", "gummi bears", "pork chop", "tenderloin", "jowl", "bacon", "ham hock", "beef ribs", "venison", "turducken", "shankle", "biltong", "pastrami", "bresaola", "filet mignon", "turkey", "cow", "salami", "rump", "drumstick", "pancetta", "pig", "porchetta", "prosciutto", "tritip", "pastrami", "ground round", "brisket", "pork loin", "meatloaf", "jerky", "swine", "bresaola", "flank", "sirloin", "capicola", "landjaeger", "pork belly", "tail", "sausage", "pea", "horseradish", "azuki bean", "lettuce", "avocado", "asparagus", "okra", "kohlrabi", "radish", "corn", "fava bean", "mustard", "tigernut", "green bean", "collard greens", "avocado", "quandong", "fennel", "black-eyed pea", "grape", "silver beet", "watercress", "potato", "tigernut", "groundnut", "chickweed", "winter purslane", "coriander", "sweet pepper", "garlic", "brussels sprout", "tomato", "spring onion", "gourd", "plum", "zucchini", "rock melon", "asparagus", "spinach", "courgette", "radicchio", "chicory", "salsify", "endive", "broccoli", "arugula"]

def generate_recipe_content
	recipe_content = ""
	60.times do
		recipe_content << $content.sample + " "
	end
	recipe_content.capitalize.chop!
end

200.times do
	Recipe.create( title: "#{protein.sample} #{part.sample} #{attribute.sample} #{type.sample}", content: generate_recipe_content)
end