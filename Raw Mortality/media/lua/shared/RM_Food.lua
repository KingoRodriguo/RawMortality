-- RM_Food.lua
local _fileName = "RM_Food.lua"

--Base food list
RM_Food = {

	DogfoodOpen = {
		Ingredients = {
			"Beef", 
			"Wheat", 
			"Canola Oil", 
			"Peas", 
			"Carrot",
		},
		Allergens = {
			"Meat", 
			"Gluten", 
			"Legumes", 
			"Roots",
		},
	},

	Dogfood = { 
		Ingredients = {
			"Beef", 
			"Wheat", 
			"Canola Oil", 
			"Peas", 
			"Carrot",
		},
		Allergens = {
			"Meat", 
			"Gluten", 
			"Legumes", 
			"Roots",
		},
	},
			

	CannedCornedBeefOpen = {
		Ingredients = {
			"Beef", 
			"Salt",
		},
		Allergens = {
			"Meat",
		},
	},
			

	CannedChiliOpen = {
		Ingredients = {
			"Water", 
			"Beef", 
			"Beans", 
			"Cornstarch", 
			"Chili Peppers", 
			"Paprika", 
			"Cumin", 
			"Garlic", 
			"Salt", 
			"Soy",
		},
		Allergens = {
			"Meat", 
			"Legumes", 
			"Gluten", 
			"Spices",
		},
	},
			

	CannedBologneseOpen = {
		Ingredients = {
			"Tomatoes", 
			"Beef", 
			"Onion", 
			"Cornstarch", 
			"Salt", 
			"Wheat Flour", 
			"Carrots", 
			"Paprika", 
			"Spaghetti",
		},
		Allergens = {
			"Tomatoes", 
			"Meat", 
			"Gluten", 
			"Roots",
		},
	},
			

	CannedCarrotsOpen = {
		Ingredients = {
			"Water", 
			"Carrots",
		},
		Allergens = {
			"Roots",
		},
	},
			

	CannedCornOpen = {
		Ingredients = {
			"Water", 
			"Corn",
		},
		Allergens = {
			"Vegetables",
		},
	},
			

	CannedMushroomSoupOpen = {
		Ingredients = {
			"Water", 
			"Mushrooms", 
			"Canola Oil", 
			"Cornstarch", 
			"Wheat Flour", 
			"Salt", 
			"Cream", 
			"Soy", 
			"Yeast", 
			"Garlic",
		},
		Allergens = {
			"Fungi", 
			"Dairy", 
			"Gluten",
		},
	},
			

	CannedPeasOpen = {
		Ingredients = {
			"Water", 
			"Peas",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	CannedPotatoOpen = {
		Ingredients = {
			"Water", 
			"Potato",
		},
		Allergens = {
			"Roots",
		},
	},
			

	CannedSardinesOpen = {
		Ingredients = {
			"Olive Oil", 
			"Sardines",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	CannedTomatoOpen = {
		Ingredients = {
			"Water", 
			"Tomato",
		},
		Allergens = {
			"Vegetables",
		},
	},
			

	CannedCorn = {
		Ingredients = {
			"Water", 
			"Corn",
		},
		Allergens = {
			"Vegetables",
		},
	},
			

	CannedMushroomSoup = {
		Ingredients = {
			"Water", 
			"Mushrooms", 
			"Canola Oil", 
			"Cornstarch", 
			"Wheat Flour", 
			"Salt", 
			"Cream", 
			"Soy", 
			"Yeast", 
			"Garlic",
		},
		Allergens = {
			"Fungi", 
			"Dairy", 
			"Gluten",
		},
	},
			

	CannedPeas = {
		Ingredients = {
			"Water", 
			"Peas",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	CannedPotato2 = {
		Ingredients = {
			"Water", 
			"Potato",
		},
		Allergens = {
			"Roots",
		},
	},
			

	CannedSardines = {
		Ingredients = {
			"Olive Oil", 
			"Sardines",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	CannedTomato2 = {
		Ingredients = {
			"Water", 
			"Tomato",
		},
		Allergens = {
			"Vegetables",
		},
	},
			

	CannedCarrots2 = {
		Ingredients = {
			"Water", 
			"Carrots",
		},
		Allergens = {
			"Roots",
		},
	},
			

	CannedChili = {
		Ingredients = {
			"Water", 
			"Beef", 
			"Beans", 
			"Cornstarch", 
			"Chili Peppers", 
			"Paprika", 
			"Cumin", 
			"Garlic", 
			"Salt", 
			"Soy",
		},
		Allergens = {
			"Meat", 
			"Legumes", 
			"Gluten", 
			"Spices",
		},
	},
			

	CannedBolognese = {
		Ingredients = {
			"Tomatoes", 
			"Beef", 
			"Onion", 
			"Cornstarch", 
			"Salt", 
			"Wheat Flour", 
			"Carrots", 
			"Paprika", 
			"Spaghetti",
		},
		Allergens = {
			"Tomatoes", 
			"Meat", 
			"Gluten", 
			"Roots",
		},
	},
			

	CannedCornedBeef = {
		Ingredients = {
			"Beef", 
			"Salt",
		},
		Allergens = {
			"Meat",
		},
	},
			

	TinnedSoupOpen = {
		Ingredients = {
			"Water", 
			"Carrots", 
			"Celery", 
			"Corn", 
			"Sweet Potato", 
			"Tomato", 
			"Onion", 
			"Red Peppers", 
			"Zucchini", 
			"Salt",
		},
		Allergens = {
			"Roots", 
			"Vegetables",
		},
	},
			

	TinnedSoup = {
		Ingredients = {
			"Water", 
			"Carrots", 
			"Celery", 
			"Corn", 
			"Sweet Potato", 
			"Tomato", 
			"Onion", 
			"Red Peppers", 
			"Zucchini", 
			"Salt",
		},
		Allergens = {
			"Roots", 
			"Vegetables",
		},
	},
			

	TunaTinOpen = {
		Ingredients = {
			"Water", 
			"Tuna",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	OpenBeans = {
		Ingredients = {
			"Water", 
			"Beans",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	TinnedBeans = {
		Ingredients = {
			"Water", 
			"Beans",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	TunaTin = {
		Ingredients = {
			"Water", 
			"Tuna",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	CannedFruitCocktail = {
		Ingredients = {
			"Pineapple", 
			"Papaya", 
			"Water", 
			"Cherry",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	CannedFruitCocktailOpen = {
		Ingredients = {
			"Pineapple", 
			"Papaya", 
			"Water", 
			"Cherry",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	CannedFruitBeverage = {
		Ingredients = {
			"Water", 
			"Apple", 
			"Pear",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	CannedFruitBeverageOpen = {
		Ingredients = {
			"Water", 
			"Apple", 
			"Pear",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	CannedPeaches = {
		Ingredients = {
			"Water", 
			"Peach",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	CannedPeachesOpen = {
		Ingredients = {
			"Water", 
			"Peach",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	CannedPineapple = {
		Ingredients = {
			"Water", 
			"Pineapple",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	CannedPineappleOpen = {
		Ingredients = {
			"Water", 
			"Pineapple",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	MushroomGeneric1 = {
		Ingredients = {
			"Unknown Mushrooms",
		},
		Allergens = {
			"Fungi",
		},
	},
			

	MushroomGeneric2 = {
		Ingredients = {
			"Unknown Mushrooms",
		},
		Allergens = {
			"Fungi",
		},
	},
			

	MushroomGeneric3 = {
		Ingredients = {
			"Unknown Mushrooms",
		},
		Allergens = {
			"Fungi",
		},
	},
			

	MushroomGeneric4 = {
		Ingredients = {
			"Unknown Mushrooms",
		},
		Allergens = {
			"Fungi",
		},
	},
			

	MushroomGeneric5 = {
		Ingredients = {
			"Unknown Mushrooms",
		},
		Allergens = {
			"Fungi",
		},
	},
			

	MushroomGeneric6 = {
		Ingredients = {
			"Unknown Mushrooms",
		},
		Allergens = {
			"Fungi",
		},
	},
			

	MushroomGeneric7 = {
		Ingredients = {
			"Unknown Mushrooms",
		},
		Allergens = {
			"Fungi",
		},
	},
			

	Onion = {
		Ingredients = {
			"Onion",
		},
		Allergens = {
			"Vegetables",
		},
	},
			

	Lettuce = {
		Ingredients = {
			"Lettuce",
		},
		Allergens = {
			"Vegetables",
		},
	},
			

	BellPepper = {
		Ingredients = {
			"Bell Pepper",
		},
		Allergens = {
			"Vegetables",
		},
	},
			

	Avocado = {
		Ingredients = {
			"Avocado",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	Zucchini = {
		Ingredients = {
			"Zucchini",
		},
		Allergens = {
			"Vegetables",
		},
	},
			

	Peas = {
		Ingredients = {
			"Peas",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	Carrots = {
		Ingredients = {
			"Carrots",
		},
		Allergens = {
			"Roots",
		},
	},
			

	Broccoli = {
		Ingredients = {
			"Broccoli",
		},
		Allergens = {
			"Vegetables",
		},
	},
			

	Corn = {
		Ingredients = {
			"Corn",
		},
		Allergens = {
			"Vegetables",
		},
	},
			

	Eggplant = {
		Ingredients = {
			"Eggplant",
		},
		Allergens = {
			"Vegetables",
		},
	},
			

	Leek = {
		Ingredients = {
			"Leek",
		},
		Allergens = {
			"Vegetables",
		},
	},
			


	Lemon = {
		Ingredients = {
			"Lemon",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	BerryBlack = {
		Ingredients = {
			"BlackBerries",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	BerryBlue = {
		Ingredients = {
			"BlueBerries",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	BerryGeneric1 = {
		Ingredients = {
			"Unknown Berries",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	BerryGeneric2 = {
		Ingredients = {
			"Unknown Berries",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	BerryGeneric3 = {
		Ingredients = {
			"Unknown Berries",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	BerryGeneric4 = {
		Ingredients = {
			"Unknown Berries",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	BerryGeneric5 = {
		Ingredients = {
			"Unknown Berries",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	BerryPoisonIvy = {
		Ingredients = {
			"Unknown Berries",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	Peach = {
		Ingredients = {
			"Peach",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	Pineapple = {
		Ingredients = {
			"Pineapple",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	Cherry = {
		Ingredients = {
			"Cherry",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	Watermelon = {
		Ingredients = {
			"Watermelon",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	WatermelonSliced = {
		Ingredients = {
			"Watermelon",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	WatermelonSmashed = {
		Ingredients = {
			"Watermelon",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	Grapes = {
		Ingredients = {
			"Grapes",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	Orange = {
		Ingredients = {
			"Orange",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	Apple = {
		Ingredients = {
			"Apple",
		},
		Allergens = {
			"Fruits",
		},
	},
			

	Banana = {
		Ingredients = {
			"Banana",
		},
		Allergens = {
			"Fruits",
		},
	},
			


	Catfish = {
		Ingredients = {
			"Catfish",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	Bass = {
		Ingredients = {
			"Bass",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	Perch = {
		Ingredients = {
			"Perch",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	Crappie = {
		Ingredients = {
			"Crappie",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	Panfish = {
		Ingredients = {
			"Sunfish",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	Pike = {
		Ingredients = {
			"Pike",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	Trout = {
		Ingredients = {
			"Trout",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	BaitFish = {
		Ingredients = {
			"Unknown Fish",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	DeadRat = {
		Ingredients = {
			"Rat Meat",
		},
		Allergens = {
			"Meat",
		},
	},
			

	DeadMouse = {
		Ingredients = {
			"Mouse Meat",
		},
		Allergens = {
			"Meat",
		},
	},
			

	DeadRabbit = {
		Ingredients = {
			"Rabbit Meat",
		},
		Allergens = {
			"Meat",
		},
	},
			

	DeadSquirrel = {
		Ingredients = {
			"Squirrel Meat",
		},
		Allergens = {
			"Meat",
		},
	},
			

	DeadBird = {
		Ingredients = {
			"Unknown Bird Meat",
		},
		Allergens = {
			"Meat",
		},
	},
			

	FishFillet = {
		Ingredients = {
			"Unknown Fish",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	Hotdog = {
		Ingredients = {
			"Beef", 
			"Pork",
		},
		Allergens = {
			"Meat",
		},
	},
			

	MuttonChop = {
		Ingredients = {
			"Mutton",
		},
		Allergens = {
			"Meat",
		},
	},
			

	PorkChop = {
		Ingredients = {
			"Pork",
		},
		Allergens = {
			"Meat",
		},
	},
			

	Rabbitmeat = {
		Ingredients = {
			"Rabbit",
		},
		Allergens = {
			"Meat",
		},
	},
			

	Smallanimalmeat = {
		Ingredients = {
			"Unknown Animal Meat",
		},
		Allergens = {
			"Meat",
		},
	},
			

	Smallbirdmeat = {
		Ingredients = {
			"Unknown Bird Meat",
		},
		Allergens = {
			"Meat",
		},
	},
			

	ChickenFried = {
		Ingredients = {
			"Chicken", 
			"Bread Crumb", 
			"Egg Yolk",
		},
		Allergens = {
			"Meat", 
			"Gluten", 
			"Eggs",
		},
	},
			

	MeatPatty = {
		Ingredients = {
			"Beef",
		},
		Allergens = {
			"Meat",
		},
	},
			

	BeefJerky = {
		Ingredients = {
			"Beef", 
			"Salt",
		},
		Allergens = {
			"Meat",
		},
	},
			

	Corndog = {
		Ingredients = {
			"Beef", 
			"Pork", 
			"Bread Crumb", 
			"Wheat Flour", 
			"Canola Oil",
		},
		Allergens = {
			"Meat", 
			"Gluten",
		},
	},
			

	Tofu = {
		Ingredients = {
			"Tofu",
		},
		Allergens = {
			"Soy",
		},
	},
			

	FrogMeat = {
		Ingredients = {
			"Frog Meat",
		},
		Allergens = {
			"Meat",
		},
	},
			

	Steak = {
		Ingredients = {
			"Beef",
		},
		Allergens = {
			"Meat",
		},
	},
			

	Salmon = {
		Ingredients = {
			"Salmon",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	Egg = {
		Ingredients = {
			"Egg",
		},
		Allergens = {
			"Eggs",
		},
	},
			

	Chicken = {
		Ingredients = {
			"Chicken",
		},
		Allergens = {
			"Meat",
		},
	},
			

	Ham = {
		Ingredients = {
			"Pork",
		},
		Allergens = {
			"Meat",
		},
	},
			

	HamSlice = {
		Ingredients = {
			"Pork",
		},
		Allergens = {
			"Meat",
		},
	},
			


	WaterBleachBottle = {
		Ingredients = {
			"Water", 
			"Bleach",
		},
		Allergens = {
			"None",
		},
	},
			

	WaterBottleFull = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	WaterBowl = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	WaterMug = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	WaterTeacup = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	WaterMugRed = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	WaterMugWhite = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	WaterMugSpiffo = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	WaterPopBottle = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	WaterPot = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	WaterSaucepan = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	WhiskeyWaterFull = {
		Ingredients = {
			"Water", 
			"Barley",
		},
		Allergens = {
			"Barley", 
			"Alcohol",
		},
	},
			

	BeerWaterFull = {
		Ingredients = {
			"Water", 
			"Malt", 
			"Hops", 
			"Yeast",
		},
		Allergens = {
			"Gluten", 
			"Alcohol",
		},
	},
			

	Milk = {
		Ingredients = {
			"Milk",
		},
		Allergens = {
			"Dairy",
		},
	},
			

	CannedMilk = {
		Ingredients = {
			"Milk",
		},
		Allergens = {
			"Dairy",
		},
	},
			

	CannedMilkOpen = {
		Ingredients = {
			"Milk",
		},
		Allergens = {
			"Dairy",
		},
	},
			

	Bleach = {
		Ingredients = {
			"Bleach",
		},
		Allergens = {
			"None",
		},
	},
			

	JuiceBox = {
		Ingredients = {
			"Fruit Juice", 
			"Water", 
			"Sugar",
		},
		Allergens = {
			"None",
		},
	},
			

	WaterPotRice = {
		Ingredients = {
			"Water", 
			"Rice",
		},
		Allergens = {
			"None",
		},
	},
			

	WaterPotPasta = {
		Ingredients = {
			"Water", 
			"Pasta",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	HotDrinkTea = {
		Ingredients = {
			"Water", 
			"Tea Leaves",
		},
		Allergens = {
			"None",
		},
	},
			

	HotDrink = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	HotDrinkRed = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	ColdDrinkRed = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	HotDrinkWhite = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	ColdDrinkWhite = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	HotDrinkSpiffo = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	ColdDrinkSpiffo = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	WaterSaucepanRice = {
		Ingredients = {
			"Water", 
			"Rice",
		},
		Allergens = {
			"None",
		},
	},
			

	WaterSaucepanPasta = {
		Ingredients = {
			"Water", 
			"Pasta",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	WhiskeyFull = {
		Ingredients = {
			"Water", 
			"Barley",
		},
		Allergens = {
			"Barley", 
			"Alcohol",
		},
	},
			

	SoupBowl = {
		Ingredients = {
			"Varies by recipe",
		},
		Allergens = {
			"Varies by recipe",
		},
	},
			

	StewBowl = {
		Ingredients = {
			"Varies by recipe",
		},
		Allergens = {
			"Varies by recipe",
		},
	},
			

	PotOfSoup = {
		Ingredients = {
			"Varies by recipe",
		},
		Allergens = {
			"Varies by recipe",
		},
	},
			

	PotOfSoupRecipe = {
		Ingredients = {
			"Varies by recipe",
		},
		Allergens = {
			"Varies by recipe",
		},
	},
			

	PotOfStew = {
		Ingredients = {
			"Varies by recipe",
		},
		Allergens = {
			"Varies by recipe",
		},
	},
			

	Pop = {
		Ingredients = {
			"Water", 
			"Sugar", 
			"Aroma",
		},
		Allergens = {
			"None",
		},
	},
			

	Pop2 = {
		Ingredients = {
			"Water", 
			"Sugar", 
			"Aroma",
		},
		Allergens = {
			"None",
		},
	},
			

	Pop3 = {
		Ingredients = {
			"Water", 
			"Sugar", 
			"Aroma",
		},
		Allergens = {
			"None",
		},
	},
			

	PopBottle = {
		Ingredients = {
			"Water", 
			"Sugar", 
			"Orange Aroma",
		},
		Allergens = {
			"None",
		},
	},
			

	Mugfull = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	ColdCuppa = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	BeerCan = {
		Ingredients = {
			"Water", 
			"Malt", 
			"Hops", 
			"Yeast",
		},
		Allergens = {
			"Gluten", 
			"Alcohol",
		},
	},
			

	BeerBottle = {
		Ingredients = {
			"Water", 
			"Malt", 
			"Hops", 
			"Yeast",
		},
		Allergens = {
			"Gluten", 
			"Alcohol",
		},
	},
			

	Wine = {
		Ingredients = {
			"Grapes", 
			"Water",
		},
		Allergens = {
			"Alcohol",
		},
	},
			

	WineWaterFull = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	Wine2 = {
		Ingredients = {
			"Grapes", 
			"Water",
		},
		Allergens = {
			"Alcohol",
		},
	},
			

	Pancakes = {
		Ingredients = {
			"Flour", 
			"Eggs", 
			"Milk", 
			"Sugar", 
			"Baking Powder",
		},
		Allergens = {
			"Gluten", 
			"Eggs", 
			"Dairy",
		},
	},
			

	PancakesCraft = {
		Ingredients = {
			"Flour", 
			"Eggs", 
			"Milk", 
			"Sugar", 
			"Baking Powder",
		},
		Allergens = {
			"Gluten", 
			"Eggs", 
			"Dairy",
		},
	},
			

	PancakesRecipe = {
		Ingredients = {
			"Flour", 
			"Eggs", 
			"Milk", 
			"Sugar", 
			"Baking Powder",
		},
		Allergens = {
			"Gluten", 
			"Eggs", 
			"Dairy",
		},
	},
			

	Waffles = {
		Ingredients = {
			"Flour", 
			"Eggs", 
			"Milk", 
			"Sugar", 
			"Baking Powder",
		},
		Allergens = {
			"Gluten", 
			"Eggs", 
			"Dairy",
		},
	},
			

	WafflesRecipe = {
		Ingredients = {
			"Flour", 
			"Eggs", 
			"Milk", 
			"Sugar", 
			"Baking Powder",
		},
		Allergens = {
			"Gluten", 
			"Eggs", 
			"Dairy",
		},
	},
			

	Icecream = {
		Ingredients = {
			"Milk", 
			"Cream", 
			"Sugar", 
			"Eggs", 
			"Vanilla",
		},
		Allergens = {
			"Dairy", 
			"Eggs",
		},
	},
			

	IcecreamMelted = {
		Ingredients = {
			"Milk", 
			"Cream", 
			"Sugar", 
			"Eggs", 
			"Vanilla",
		},
		Allergens = {
			"Dairy", 
			"Eggs",
		},
	},
			

	Candycane = {
		Ingredients = {
			"Sugar", 
			"Corn Syrup", 
			"Peppermint Flavor",
		},
		Allergens = {
			"None",
		},
	},
			

	Peppermint = {
		Ingredients = {
			"Sugar", 
			"Corn Syrup", 
			"Peppermint Flavor",
		},
		Allergens = {
			"None",
		},
	},
			

	Cereal = {
		Ingredients = {
			"Corn", 
			"Sugar", 
			"Salt", 
			"Malt Flavoring",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	CerealBowl = {
		Ingredients = {
			"Corn", 
			"Sugar", 
			"Salt", 
			"Malt Flavoring", 
			"Milk",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	CookieChocolateChip = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Chocolate Chips", 
			"Eggs", 
			"Baking Soda",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	CookieJelly = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Jelly", 
			"Eggs", 
			"Baking Soda",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	SunflowerSeeds = {
		Ingredients = {
			"Sunflower Seeds",
		},
		Allergens = {
			"Seeds",
		},
	},
			

	MintCandy = {
		Ingredients = {
			"Sugar", 
			"Corn Syrup", 
			"Peppermint Flavor",
		},
		Allergens = {
			"None",
		},
	},
			

	Lollipop = {
		Ingredients = {
			"Sugar", 
			"Corn Syrup", 
			"Flavoring",
		},
		Allergens = {
			"None",
		},
	},
			

	CandyPackage = {
		Ingredients = {
			"Varies by candy",
		},
		Allergens = {
			"Varies by candy",
		},
	},
			

	Popcorn = {
		Ingredients = {
			"Corn", 
			"Salt", 
			"Oil",
		},
		Allergens = {
			"None",
		},
	},
			

	Cupcake = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Milk", 
			"Baking Powder", 
			"Vanilla",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	Chocolate = {
		Ingredients = {
			"Cocoa", 
			"Sugar", 
			"Milk",
		},
		Allergens = {
			"Dairy",
		},
	},
			

	WildGarlic2 = {
		Ingredients = {
			"Wild Garlic",
		},
		Allergens = {
			"None",
		},
	},
			

	CommonMallow = {
		Ingredients = {
			"Common Mallow",
		},
		Allergens = {
			"None",
		},
	},
			

	LemonGrass = {
		Ingredients = {
			"Lemon Grass",
		},
		Allergens = {
			"None",
		},
	},
			

	BlackSage = {
		Ingredients = {
			"Black Sage",
		},
		Allergens = {
			"None",
		},
	},
			

	Ginseng = {
		Ingredients = {
			"Ginseng",
		},
		Allergens = {
			"None",
		},
	},
			

	Worm = {
		Ingredients = {
			"Worm",
		},
		Allergens = {
			"None",
		},
	},
			

	Rosehips = {
		Ingredients = {
			"Rosehips",
		},
		Allergens = {
			"None",
		},
	},
			

	GrapeLeaves = {
		Ingredients = {
			"Grape Leaves",
		},
		Allergens = {
			"None",
		},
	},
			

	Violets = {
		Ingredients = {
			"Violets",
		},
		Allergens = {
			"None",
		},
	},
			

	WildEggs = {
		Ingredients = {
			"Wild Eggs",
		},
		Allergens = {
			"Eggs",
		},
	},
			

	Cockroach = {
		Ingredients = {
			"Cockroach",
		},
		Allergens = {
			"None",
		},
	},
			

	Cricket = {
		Ingredients = {
			"Cricket",
		},
		Allergens = {
			"None",
		},
	},
			

	Grasshopper = {
		Ingredients = {
			"Grasshopper",
		},
		Allergens = {
			"None",
		},
	},
			

	GrilledCheese = {
		Ingredients = {
			"Bread", 
			"Butter", 
			"Cheese",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	Salt = {
		Ingredients = {
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	Pepper = {
		Ingredients = {
			"Pepper",
		},
		Allergens = {
			"None",
		},
	},
			

	Dough = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	DoughRolled = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	BakingTrayBread = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	BeanBowl = {
		Ingredients = {
			"Beans", 
			"Water", 
			"Salt",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	Bread = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	Butter = {
		Ingredients = {
			"Cream", 
			"Salt",
		},
		Allergens = {
			"Dairy",
		},
	},
			

	Cheese = {
		Ingredients = {
			"Milk", 
			"Salt", 
			"Rennet",
		},
		Allergens = {
			"Dairy",
		},
	},
			

	CheeseSandwich = {
		Ingredients = {
			"Bread", 
			"Cheese", 
			"Butter",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	Crisps = {
		Ingredients = {
			"Potatoes", 
			"Salt", 
			"Oil",
		},
		Allergens = {
			"None",
		},
	},
			

	Crisps2 = {
		Ingredients = {
			"Potatoes", 
			"Salt", 
			"Oil",
		},
		Allergens = {
			"None",
		},
	},
			

	Crisps3 = {
		Ingredients = {
			"Potatoes", 
			"Salt", 
			"Oil",
		},
		Allergens = {
			"None",
		},
	},
			

	Crisps4 = {
		Ingredients = {
			"Potatoes", 
			"Salt", 
			"Oil",
		},
		Allergens = {
			"None",
		},
	},
			

	PeanutButter = {
		Ingredients = {
			"Peanuts", 
			"Salt",
		},
		Allergens = {
			"Peanuts",
		},
	},
			

	PeanutButterSandwich = {
		Ingredients = {
			"Bread", 
			"Peanut Butter",
		},
		Allergens = {
			"Gluten", 
			"Peanuts",
		},
	},
			

	Pie = {
		Ingredients = {
			"Flour", 
			"Butter", 
			"Sugar", 
			"Filling",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	PiePumpkin = {
		Ingredients = {
			"Pumpkin", 
			"Flour", 
			"Butter", 
			"Sugar", 
			"Spices",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	Peanuts = {
		Ingredients = {
			"Peanuts",
		},
		Allergens = {
			"Peanuts",
		},
	},
			

	Ramen = {
		Ingredients = {
			"Wheat Flour", 
			"Salt", 
			"Water",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	RamenBowl = {
		Ingredients = {
			"Ramen", 
			"Water", 
			"Broth",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	TVDinner = {
		Ingredients = {
			"Varies by recipe",
		},
		Allergens = {
			"Varies by recipe",
		},
	},
			

	EggCarton = {
		Ingredients = {
			"Eggs",
		},
		Allergens = {
			"Eggs",
		},
	},
			

	Rice = {
		Ingredients = {
			"Rice",
		},
		Allergens = {
			"None",
		},
	},
			

	Pasta = {
		Ingredients = {
			"Wheat Flour", 
			"Water",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	PastaPan = {
		Ingredients = {
			"Pasta", 
			"Water",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	RicePan = {
		Ingredients = {
			"Rice", 
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	Coffee2 = {
		Ingredients = {
			"Coffee Beans",
		},
		Allergens = {
			"None",
		},
	},
			

	Teabag2 = {
		Ingredients = {
			"Tea Leaves",
		},
		Allergens = {
			"None",
		},
	},
			

	PastaPot = {
		Ingredients = {
			"Pasta", 
			"Water",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	RicePot = {
		Ingredients = {
			"Rice", 
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	RiceBowl = {
		Ingredients = {
			"Rice",
		},
		Allergens = {
			"None",
		},
	},
			

	PastaBowl = {
		Ingredients = {
			"Pasta",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	PiePrep = {
		Ingredients = {
			"Flour", 
			"Butter", 
			"Sugar", 
			"Filling",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	CakePrep = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Milk", 
			"Baking Powder",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	FruitSalad = {
		Ingredients = {
			"Variety of Fruits",
		},
		Allergens = {
			"None",
		},
	},
			

	Oatmeal = {
		Ingredients = {
			"Oats", 
			"Water", 
			"Milk",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	Macandcheese = {
		Ingredients = {
			"Pasta", 
			"Cheese", 
			"Milk", 
			"Butter",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	Honey = {
		Ingredients = {
			"Honey",
		},
		Allergens = {
			"None",
		},
	},
			

	Sugar = {
		Ingredients = {
			"Sugar",
		},
		Allergens = {
			"None",
		},
	},
			

	Yoghurt = {
		Ingredients = {
			"Milk", 
			"Bacterial Cultures",
		},
		Allergens = {
			"Dairy",
		},
	},
			

	BreadDough = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	CakeSlice = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Milk", 
			"Baking Powder",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	PanFriedVegetables = {
		Ingredients = {
			"Variety of Vegetables", 
			"Oil", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	PanFriedVegetables2 = {
		Ingredients = {
			"Variety of Vegetables", 
			"Oil", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	GriddlePanFriedVegetables = {
		Ingredients = {
			"Variety of Vegetables", 
			"Oil", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	Mustard = {
		Ingredients = {
			"Mustard Seeds", 
			"Vinegar", 
			"Salt", 
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	Ketchup = {
		Ingredients = {
			"Tomatoes", 
			"Sugar", 
			"Vinegar", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	Marinara = {
		Ingredients = {
			"Tomatoes", 
			"Garlic", 
			"Olive Oil", 
			"Basil", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	OatsRaw = {
		Ingredients = {
			"Oats",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	PieWholeRaw = {
		Ingredients = {
			"Flour", 
			"Butter", 
			"Sugar", 
			"Filling",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	PieWholeRawSweet = {
		Ingredients = {
			"Flour", 
			"Butter", 
			"Sugar", 
			"Sweet Filling",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	CakeRaw = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Milk", 
			"Baking Powder",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	Processedcheese = {
		Ingredients = {
			"Milk", 
			"Salt", 
			"Enzymes",
		},
		Allergens = {
			"Dairy",
		},
	},
			

	Modjeska = {
		Ingredients = {
			"Sugar", 
			"Corn Syrup", 
			"Butter", 
			"Cream", 
			"Vanilla",
		},
		Allergens = {
			"Dairy",
		},
	},
			

	BreadSlices = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	Toast = {
		Ingredients = {
			"Bread",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	Sandwich = {
		Ingredients = {
			"Bread", 
			"Filling",
		},
		Allergens = {
			"Gluten", 
			"Varies by filling",
		},
	},
			

	BaguetteSandwich = {
		Ingredients = {
			"Baguette", 
			"Filling",
		},
		Allergens = {
			"Gluten", 
			"Varies by filling",
		},
	},
			

	Burger = {
		Ingredients = {
			"Bread", 
			"Beef Patty", 
			"Lettuce", 
			"Tomato", 
			"Cheese",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Meat",
		},
	},
			

	BurgerRecipe = {
		Ingredients = {
			"Bread", 
			"Beef Patty", 
			"Lettuce", 
			"Tomato", 
			"Cheese",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Meat",
		},
	},
			

	Pizza = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt", 
			"Tomato Sauce", 
			"Cheese",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	PizzaWhole = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt", 
			"Tomato Sauce", 
			"Cheese",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	PizzaRecipe = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt", 
			"Tomato Sauce", 
			"Cheese",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	Fries = {
		Ingredients = {
			"Potatoes", 
			"Oil", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	Pickles = {
		Ingredients = {
			"Cucumbers", 
			"Vinegar", 
			"Salt", 
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	BagelPlain = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	BagelPoppy = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt", 
			"Poppy Seeds",
		},
		Allergens = {
			"Gluten", 
			"Seeds",
		},
	},
			

	BagelSesame = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt", 
			"Sesame Seeds",
		},
		Allergens = {
			"Gluten", 
			"Seeds",
		},
	},
			

	Baguette = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	BaguetteDough  = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt",
		},
		Allergens = {
			"Gluten",
		},
	},
			

		Blackbeans = {
		Ingredients = {
			"Black Beans",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	Burrito = {
		Ingredients = {
			"Tortilla", 
			"Beef", 
			"Beans", 
			"Rice", 
			"Cheese",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Legumes",
		},
	},
			

	CakeBlackForest = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Chocolate", 
			"Cherries", 
			"Whipped Cream",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	CakeCarrot = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Carrots", 
			"Cream Cheese",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	CakeCheeseCake = {
		Ingredients = {
			"Cream Cheese", 
			"Sugar", 
			"Eggs", 
			"Butter", 
			"Graham Crackers",
		},
		Allergens = {
			"Dairy", 
			"Eggs", 
			"Gluten",
		},
	},
			

	CakeChocolate = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Chocolate", 
			"Baking Powder",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	CakeRedVelvet = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Cocoa Powder", 
			"Buttermilk", 
			"Cream Cheese",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	CakeStrawberryShortcake = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Strawberries", 
			"Whipped Cream",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	ChickenFoot = {
		Ingredients = {
			"Chicken Foot",
		},
		Allergens = {
			"Meat",
		},
	},
			

	ChocolateChips = {
		Ingredients = {
			"Chocolate",
		},
		Allergens = {
			"Dairy",
		},
	},
			

	CocoaPowder = {
		Ingredients = {
			"Cocoa Powder",
		},
		Allergens = {
			"None",
		},
	},
			

	CookiesChocolate = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Chocolate Chips",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	CookiesOatmeal = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Oats", 
			"Raisins",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	CookiesShortbread = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	Croissant = {
		Ingredients = {
			"Flour", 
			"Butter", 
			"Sugar", 
			"Yeast", 
			"Milk",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	Daikon = {
		Ingredients = {
			"Daikon",
		},
		Allergens = {
			"None",
		},
	},
			

	DoughnutChocolate = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Chocolate",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	DoughnutFrosted = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Icing",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	DoughnutJelly = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Jelly",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	DoughnutPlain = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	Edamame = {
		Ingredients = {
			"Edamame",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	EggBoiled = {
		Ingredients = {
			"Egg",
		},
		Allergens = {
			"Eggs",
		},
	},
			

	EggPoached = {
		Ingredients = {
			"Egg",
		},
		Allergens = {
			"Eggs",
		},
	},
			

	EggOmelette = {
		Ingredients = {
			"Eggs", 
			"Milk", 
			"Butter", 
			"Cheese",
		},
		Allergens = {
			"Eggs", 
			"Dairy",
		},
	},
			

	EggScrambled = {
		Ingredients = {
			"Eggs", 
			"Milk", 
			"Butter",
		},
		Allergens = {
			"Eggs", 
			"Dairy",
		},
	},
			

	FishRoe = {
		Ingredients = {
			"Fish Roe",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	GingerPickled = {
		Ingredients = {
			"Ginger", 
			"Vinegar", 
			"Sugar",
		},
		Allergens = {
			"None",
		},
	},
			

	Grapefruit = {
		Ingredients = {
			"Grapefruit",
		},
		Allergens = {
			"None",
		},
	},
			

	Hotsauce = {
		Ingredients = {
			"Chili Peppers", 
			"Vinegar", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	Icing = {
		Ingredients = {
			"Sugar", 
			"Butter", 
			"Milk",
		},
		Allergens = {
			"Dairy",
		},
	},
			

	Lime = {
		Ingredients = {
			"Lime",
		},
		Allergens = {
			"None",
		},
	},
			

	Lobster = {
		Ingredients = {
			"Lobster",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	Maki = {
		Ingredients = {
			"Rice", 
			"Nori", 
			"Fish", 
			"Vegetables",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	MapleSyrup = {
		Ingredients = {
			"Maple Syrup",
		},
		Allergens = {
			"None",
		},
	},
			

	MeatDumpling = {
		Ingredients = {
			"Flour", 
			"Meat", 
			"Water",
		},
		Allergens = {
			"Gluten", 
			"Meat",
		},
	},
			

	MeatSteamBun = {
		Ingredients = {
			"Flour", 
			"Meat", 
			"Water", 
			"Yeast",
		},
		Allergens = {
			"Gluten", 
			"Meat",
		},
	},
			

	MincedMeat = {
		Ingredients = {
			"Meat",
		},
		Allergens = {
			"Meat",
		},
	},
			

	MuffinFruit = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Milk", 
			"Fruit",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	MuffinGeneric = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Milk",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	NoodleSoup = {
		Ingredients = {
			"Noodles", 
			"Broth", 
			"Vegetables", 
			"Meat",
		},
		Allergens = {
			"Gluten", 
			"Meat",
		},
	},
			

	OilOlive = {
		Ingredients = {
			"Olive Oil",
		},
		Allergens = {
			"None",
		},
	},
			

	OilVegetable = {
		Ingredients = {
			"Vegetable Oil",
		},
		Allergens = {
			"None",
		},
	},
			

	Onigiri = {
		Ingredients = {
			"Rice", 
			"Nori", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	Oysters = {
		Ingredients = {
			"Oysters",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	Pear = {
		Ingredients = {
			"Pear",
		},
		Allergens = {
			"None",
		},
	},
			

	PepperHabanero = {
		Ingredients = {
			"Habanero Pepper",
		},
		Allergens = {
			"None",
		},
	},
			

	PepperJalapeno = {
		Ingredients = {
			"Jalapeno Pepper",
		},
		Allergens = {
			"None",
		},
	},
			

	RefriedBeans = {
		Ingredients = {
			"Beans", 
			"Lard", 
			"Salt",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	RicePaper = {
		Ingredients = {
			"Rice Flour", 
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	RiceVinegar = {
		Ingredients = {
			"Rice", 
			"Vinegar",
		},
		Allergens = {
			"None",
		},
	},
			

	Sausage = {
		Ingredients = {
			"Pork", 
			"Salt", 
			"Spices",
		},
		Allergens = {
			"Meat",
		},
	},
			

	Pepperoni = {
		Ingredients = {
			"Pork", 
			"Beef", 
			"Salt", 
			"Spices",
		},
		Allergens = {
			"Meat",
		},
	},
			

	Seaweed = {
		Ingredients = {
			"Seaweed",
		},
		Allergens = {
			"None",
		},
	},
			

	Shrimp = {
		Ingredients = {
			"Shrimp",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	ShrimpDumpling = {
		Ingredients = {
			"Flour", 
			"Shrimp", 
			"Water",
		},
		Allergens = {
			"Gluten", 
			"Seafood",
		},
	},
			

	ShrimpFried = {
		Ingredients = {
			"Shrimp", 
			"Breading", 
			"Oil",
		},
		Allergens = {
			"Seafood", 
			"Gluten",
		},
	},
			

	ShrimpFriedCraft = {
		Ingredients = {
			"Shrimp", 
			"Breading", 
			"Oil",
		},
		Allergens = {
			"Seafood", 
			"Gluten",
		},
	},
			

	Soysauce = {
		Ingredients = {
			"Soybeans", 
			"Wheat", 
			"Salt", 
			"Water",
		},
		Allergens = {
			"Soy", 
			"Gluten",
		},
	},
			

	Springroll = {
		Ingredients = {
			"Rice Paper", 
			"Vegetables", 
			"Meat",
		},
		Allergens = {
			"Meat",
		},
	},
			

	SugarBrown = {
		Ingredients = {
			"Sugar",
		},
		Allergens = {
			"None",
		},
	},
			

	SushiEgg = {
		Ingredients = {
			"Rice", 
			"Egg", 
			"Nori",
		},
		Allergens = {
			"Eggs",
		},
	},
			

	SushiFish = {
		Ingredients = {
			"Rice", 
			"Fish", 
			"Nori",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	Taco = {
		Ingredients = {
			"Tortilla", 
			"Meat", 
			"Cheese", 
			"Lettuce", 
			"Tomato",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Meat",
		},
	},
			

	TofuFried = {
		Ingredients = {
			"Tofu", 
			"Oil",
		},
		Allergens = {
			"Soy",
		},
	},
			

	Tortilla = {
		Ingredients = {
			"Corn Flour", 
			"Water", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	BurritoRecipe = {
		Ingredients = {
			"Tortilla", 
			"Beef", 
			"Beans", 
			"Rice", 
			"Cheese",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Legumes",
		},
	},
			

	TortillaChips = {
		Ingredients = {
			"Corn", 
			"Oil", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	Wasabi = {
		Ingredients = {
			"Wasabi Root", 
			"Water", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	Baloney = {
		Ingredients = {
			"Pork", 
			"Beef", 
			"Salt", 
			"Spices",
		},
		Allergens = {
			"Meat",
		},
	},
			

	BaloneySlice = {
		Ingredients = {
			"Pork", 
			"Beef", 
			"Salt", 
			"Spices",
		},
		Allergens = {
			"Meat",
		},
	},
			

	Biscuit = {
		Ingredients = {
			"Flour", 
			"Butter", 
			"Sugar", 
			"Milk", 
			"Baking Powder",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

		Muffintray_Biscuit = {
		Ingredients = {
			"Flour", 
			"Butter", 
			"Sugar", 
			"Milk", 
			"Baking Powder",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	Crackers = {
		Ingredients = {
			"Flour", 
			"Salt", 
			"Water", 
			"Oil",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	Cornbread = {
		Ingredients = {
			"Cornmeal", 
			"Flour", 
			"Eggs", 
			"Milk", 
			"Butter", 
			"Baking Powder",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	FishFried = {
		Ingredients = {
			"Fish", 
			"Flour", 
			"Oil", 
			"Salt",
		},
		Allergens = {
			"Seafood", 
			"Gluten",
		},
	},
			

	GrahamCrackers = {
		Ingredients = {
			"Graham Flour", 
			"Sugar", 
			"Butter",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	Gravy = {
		Ingredients = {
			"Meat Drippings", 
			"Flour", 
			"Salt", 
			"Pepper",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	Gum = {
		Ingredients = {
			"Gum Base", 
			"Sugar", 
			"Corn Syrup", 
			"Flavoring",
		},
		Allergens = {
			"None",
		},
	},
			

	JamFruit = {
		Ingredients = {
			"Fruit", 
			"Sugar", 
			"Pectin",
		},
		Allergens = {
			"None",
		},
	},
			

	JamMarmalade = {
		Ingredients = {
			"Citrus Fruit", 
			"Sugar", 
			"Pectin",
		},
		Allergens = {
			"None",
		},
	},
			

	Marshmallows = {
		Ingredients = {
			"Sugar", 
			"Corn Syrup", 
			"Gelatin", 
			"Vanilla",
		},
		Allergens = {
			"None",
		},
	},
			

	OystersFried = {
		Ingredients = {
			"Oysters", 
			"Flour", 
			"Oil",
		},
		Allergens = {
			"Seafood", 
			"Gluten",
		},
	},
			

	FriedOnionRings = {
		Ingredients = {
			"Onions", 
			"Flour", 
			"Eggs", 
			"Oil",
		},
		Allergens = {
			"Gluten", 
			"Eggs",
		},
	},
			

	FriedOnionRingsCraft = {
		Ingredients = {
			"Onions", 
			"Flour", 
			"Eggs", 
			"Oil",
		},
		Allergens = {
			"Gluten", 
			"Eggs",
		},
	},
			

	OnionRings = {
		Ingredients = {
			"Onions", 
			"Flour", 
			"Eggs", 
			"Oil",
		},
		Allergens = {
			"Gluten", 
			"Eggs",
		},
	},
			

	Salami = {
		Ingredients = {
			"Pork", 
			"Salt", 
			"Spices",
		},
		Allergens = {
			"Meat",
		},
	},
			

	SalamiSlice = {
		Ingredients = {
			"Pork", 
			"Salt", 
			"Spices",
		},
		Allergens = {
			"Meat",
		},
	},
			

	Smore = {
		Ingredients = {
			"Graham Crackers", 
			"Chocolate", 
			"Marshmallows",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	Squid = {
		Ingredients = {
			"Squid",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	SquidCalamari = {
		Ingredients = {
			"Squid", 
			"Flour", 
			"Oil",
		},
		Allergens = {
			"Seafood", 
			"Gluten",
		},
	},
			

	TacoShell = {
		Ingredients = {
			"Corn Flour", 
			"Water", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	TacoRecipe = {
		Ingredients = {
			"Tortilla", 
			"Meat", 
			"Cheese", 
			"Lettuce", 
			"Tomato",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Meat",
		},
	},
			

	OmeletteRecipe = {
		Ingredients = {
			"Eggs", 
			"Milk", 
			"Butter", 
			"Cheese",
		},
		Allergens = {
			"Eggs", 
			"Dairy",
		},
	},
			

	BakingTray_Muffin = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Milk",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	BakingTray_Muffin_Recipe = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Milk",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	Crayfish = {
		Ingredients = {
			"Crayfish",
		},
		Allergens = {
			"Seafood",
		},
	},
			

	Cone = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Eggs", 
			"Milk", 
			"Butter",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	ConeIcecream = {
		Ingredients = {
			"Cone", 
			"Ice Cream",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	ConeIcecreamToppings = {
		Ingredients = {
			"Cone", 
			"Ice Cream", 
			"Toppings",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	ConeIcecreamMelted = {
		Ingredients = {
			"Cone", 
			"Melted Ice Cream",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	GranolaBar = {
		Ingredients = {
			"Oats", 
			"Honey", 
			"Nuts", 
			"Dried Fruit",
		},
		Allergens = {
			"Gluten", 
			"Nuts",
		},
	},
			

	Mango = {
		Ingredients = {
			"Mango",
		},
		Allergens = {
			"None",
		},
	},
			

	Pumpkin = {
		Ingredients = {
			"Pumpkin",
		},
		Allergens = {
			"None",
		},
	},
			

	HalloweenPumpkin = {
		Ingredients = {
			"Pumpkin",
		},
		Allergens = {
			"None",
		},
	},
			

	ChickenNuggets = {
		Ingredients = {
			"Chicken", 
			"Breading", 
			"Oil",
		},
		Allergens = {
			"Meat", 
			"Gluten",
		},
	},
			

	DehydratedMeatStick = {
		Ingredients = {
			"Meat", 
			"Salt", 
			"Spices",
		},
		Allergens = {
			"Meat",
		},
	},
			

	CinnamonRoll = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Cinnamon", 
			"Milk", 
			"Eggs",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	Guacamole = {
		Ingredients = {
			"Avocado", 
			"Onions", 
			"Tomatoes", 
			"Lime Juice", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	LicoriceBlack = {
		Ingredients = {
			"Licorice Extract", 
			"Sugar", 
			"Wheat Flour",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	LicoriceRed = {
		Ingredients = {
			"Licorice Extract", 
			"Sugar", 
			"Wheat Flour",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	Painauchocolat = {
		Ingredients = {
			"Flour", 
			"Butter", 
			"Chocolate", 
			"Sugar", 
			"Yeast", 
			"Milk",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	Perogies = {
		Ingredients = {
			"Flour", 
			"Potatoes", 
			"Cheese", 
			"Onions", 
			"Butter",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	PotatoPancakes = {
		Ingredients = {
			"Potatoes", 
			"Flour", 
			"Eggs", 
			"Onions",
		},
		Allergens = {
			"Gluten", 
			"Eggs",
		},
	},
			

	SackProduce_Apple = {
		Ingredients = {
			"Apple",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_BellPepper = {
		Ingredients = {
			"Bell Pepper",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Broccoli = {
		Ingredients = {
			"Broccoli",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Cabbage = {
		Ingredients = {
			"Cabbage",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Carrot = {
		Ingredients = {
			"Carrot",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Cherry = {
		Ingredients = {
			"Cherry",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Corn = {
		Ingredients = {
			"Corn",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Eggplant = {
		Ingredients = {
			"Eggplant",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Grapes = {
		Ingredients = {
			"Grapes",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Leek = {
		Ingredients = {
			"Leek",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Lettuce = {
		Ingredients = {
			"Lettuce",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Onion = {
		Ingredients = {
			"Onion",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Peach = {
		Ingredients = {
			"Peach",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Pear = {
		Ingredients = {
			"Pear",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Potato = {
		Ingredients = {
			"Potato",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_RedRadish = {
		Ingredients = {
			"Red Radish",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Strawberry = {
		Ingredients = {
			"Strawberry",
		},
		Allergens = {
			"None",
		},
	},
			

	SackProduce_Tomato = {
		Ingredients = {
			"Tomato",
		},
		Allergens = {
			"None",
		},
	},
			

		DriedBlackBeans = {
		Ingredients = {
			"Black Beans",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	DriedChickpeas = {
		Ingredients = {
			"Chickpeas",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	DriedKidneyBeans = {
		Ingredients = {
			"Kidney Beans",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	DriedLentils = {
		Ingredients = {
			"Lentils",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	DriedSplitPeas = {
		Ingredients = {
			"Split Peas",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	DriedWhiteBeans = {
		Ingredients = {
			"White Beans",
		},
		Allergens = {
			"Legumes",
		},
	},
			

	Pretzel = {
		Ingredients = {
			"Flour", 
			"Water", 
			"Yeast", 
			"Salt",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	Allsorts = {
		Ingredients = {
			"Sugar", 
			"Wheat Flour", 
			"Licorice Extract", 
			"Coconut", 
			"Glucose Syrup",
		},
		Allergens = {
			"Gluten",
		},
	},
			

	BouillonCube = {
		Ingredients = {
			"Salt", 
			"Monosodium Glutamate", 
			"Vegetable Oil", 
			"Hydrolyzed Vegetable Protein", 
			"Sugar",
		},
		Allergens = {
			"None",
		},
	},
			

	CandyCorn = {
		Ingredients = {
			"Sugar", 
			"Corn Syrup", 
			"Confectioner's Glaze", 
			"Salt", 
			"Honey", 
			"Artificial Flavor",
		},
		Allergens = {
			"None",
		},
	},
			

	Acorn = {
		Ingredients = {
			"Acorn",
		},
		Allergens = {
			"None",
		},
	},
			

	BeautyBerry = {
		Ingredients = {
			"Beauty Berry",
		},
		Allergens = {
			"None",
		},
	},
			

	Dandelions = {
		Ingredients = {
			"Dandelions",
		},
		Allergens = {
			"None",
		},
	},
			

	Basil = {
		Ingredients = {
			"Basil",
		},
		Allergens = {
			"None",
		},
	},
			

	Chives = {
		Ingredients = {
			"Chives",
		},
		Allergens = {
			"None",
		},
	},
			

	Cilantro = {
		Ingredients = {
			"Cilantro",
		},
		Allergens = {
			"None",
		},
	},
			

	Oregano = {
		Ingredients = {
			"Oregano",
		},
		Allergens = {
			"None",
		},
	},
			

	Parsley = {
		Ingredients = {
			"Parsley",
		},
		Allergens = {
			"None",
		},
	},
			

	Rosemary = {
		Ingredients = {
			"Rosemary",
		},
		Allergens = {
			"None",
		},
	},
			

	Sage = {
		Ingredients = {
			"Sage",
		},
		Allergens = {
			"None",
		},
	},
			

	Thyme = {
		Ingredients = {
			"Thyme",
		},
		Allergens = {
			"None",
		},
	},
			

	HollyBerry = {
		Ingredients = {
			"Holly Berry",
		},
		Allergens = {
			"None",
		},
	},
			

	Nettles = {
		Ingredients = {
			"Nettles",
		},
		Allergens = {
			"None",
		},
	},
			

	GingerRoot = {
		Ingredients = {
			"Ginger Root",
		},
		Allergens = {
			"None",
		},
	},
			

	Thistle = {
		Ingredients = {
			"Thistle",
		},
		Allergens = {
			"None",
		},
	},
			

	WinterBerry = {
		Ingredients = {
			"Winter Berry",
		},
		Allergens = {
			"None",
		},
	},
			

	AmericanLadyCaterpillar = {
		Ingredients = {
			"Caterpillar",
		},
		Allergens = {
			"None",
		},
	},
			

	BandedWoolyBearCaterpillar = {
		Ingredients = {
			"Caterpillar",
		},
		Allergens = {
			"None",
		},
	},
			

	Centipede = {
		Ingredients = {
			"Centipede",
		},
		Allergens = {
			"None",
		},
	},
			

	Centipede2 = {
		Ingredients = {
			"Centipede",
		},
		Allergens = {
			"None",
		},
	},
			

	Maggots = {
		Ingredients = {
			"Maggots",
		},
		Allergens = {
			"None",
		},
	},
			

	Maggots2 = {
		Ingredients = {
			"Maggots",
		},
		Allergens = {
			"None",
		},
	},
			

	Millipede = {
		Ingredients = {
			"Millipede",
		},
		Allergens = {
			"None",
		},
	},
			

	Millipede2 = {
		Ingredients = {
			"Millipede",
		},
		Allergens = {
			"None",
		},
	},
			

	MonarchCaterpillar = {
		Ingredients = {
			"Caterpillar",
		},
		Allergens = {
			"None",
		},
	},
			

	Pillbug = {
		Ingredients = {
			"Pillbug",
		},
		Allergens = {
			"None",
		},
	},
			

	SawflyLarva = {
		Ingredients = {
			"Larva",
		},
		Allergens = {
			"None",
		},
	},
			

	SilkMothCaterpillar = {
		Ingredients = {
			"Caterpillar",
		},
		Allergens = {
			"None",
		},
	},
			

	SwallowtailCaterpillar = {
		Ingredients = {
			"Caterpillar",
		},
		Allergens = {
			"None",
		},
	},
			

	Termites = {
		Ingredients = {
			"Termites",
		},
		Allergens = {
			"None",
		},
	},
			

	Slug = {
		Ingredients = {
			"Slug",
		},
		Allergens = {
			"None",
		},
	},
			

	Slug2 = {
		Ingredients = {
			"Slug",
		},
		Allergens = {
			"None",
		},
	},
			

	Snail = {
		Ingredients = {
			"Snail",
		},
		Allergens = {
			"None",
		},
	},
			

	Lunchbag = {
		Ingredients = {
			"Varies by contents",
		},
		Allergens = {
			"Varies by contents",
		},
	},
			

	Lard = {
		Ingredients = {
			"Pork Fat",
		},
		Allergens = {
			"None",
		},
	},
			

	Margarine = {
		Ingredients = {
			"Vegetable Oil", 
			"Water", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},
			

	SugarPacket = {
		Ingredients = {
			"Sugar",
		},
		Allergens = {
			"None",
		},
	},
			

	CandyFruitSlices = {
		Ingredients = {
			"Sugar", 
			"Corn Syrup", 
			"Fruit Juice", 
			"Citric Acid", 
			"Natural Flavors",
		},
		Allergens = {
			"None",
		},
	},
			

	ChocolateCoveredCoffeeBeans = {
		Ingredients = {
			"Coffee Beans", 
			"Chocolate", 
			"Sugar",
		},
		Allergens = {
			"Dairy",
		},
	},
			

	GummyBears = {
		Ingredients = {
			"Sugar", 
			"Corn Syrup", 
			"Gelatin", 
			"Citric Acid", 
			"Natural Flavors",
		},
		Allergens = {
			"None",
		},
	},
			

	GummyWorms = {
		Ingredients = {
			"Sugar", 
			"Corn Syrup", 
			"Gelatin", 
			"Citric Acid", 
			"Natural Flavors",
		},
		Allergens = {
			"None",
		},
	},
			

	HardCandies = {
		Ingredients = {
			"Sugar", 
			"Corn Syrup", 
			"Flavoring",
		},
		Allergens = {
			"None",
		},
	},
			

	JellyBeans = {
		Ingredients = {
			"Sugar", 
			"Corn Syrup", 
			"Pectin", 
			"Citric Acid", 
			"Natural Flavors",
		},
		Allergens = {
			"None",
		},
	},
			

	Jujubes = {
		Ingredients = {
			"Sugar", 
			"Corn Syrup", 
			"Modified Corn Starch", 
			"Natural Flavors",
		},
		Allergens = {
			"None",
		},
	},
			

	RockCandy = {
		Ingredients = {
			"Sugar", 
			"Flavoring",
		},
		Allergens = {
			"None",
		},
	},
			

	CookiesSugar = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	CornFrozen = {
		Ingredients = {
			"Corn",
		},
		Allergens = {
			"None",
		},
	},
			

	MixedVegetables = {
		Ingredients = {
			"Carrots", 
			"Peas", 
			"Corn", 
			"Green Beans",
		},
		Allergens = {
			"None",
		},
	},
			

	PieApple = {
		Ingredients = {
			"Flour", 
			"Butter", 
			"Apples", 
			"Sugar", 
			"Cinnamon",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	PieBlueberry = {
		Ingredients = {
			"Flour", 
			"Butter", 
			"Blueberries", 
			"Sugar", 
			"Cinnamon",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	PieKeyLime = {
		Ingredients = {
			"Flour", 
			"Butter", 
			"Limes", 
			"Sugar", 
			"Eggs",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	PieLemonMeringue = {
		Ingredients = {
			"Flour", 
			"Butter", 
			"Lemons", 
			"Sugar", 
			"Eggs",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	ChocoCakes = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Cocoa Powder",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	HiHis = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Cocoa Powder",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	Plonkies = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Cocoa Powder",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	SnoGlobes = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Cocoa Powder",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	QuaggaCakes = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Cocoa Powder",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	Beverage = {
		Ingredients = {
			"Varies by beverage",
		},
		Allergens = {
			"Varies by beverage",
		},
	},
			

	Beverage2 = {
		Ingredients = {
			"Varies by beverage",
		},
		Allergens = {
			"Varies by beverage",
		},
	},
			

	CookieChocolateChipDough = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Chocolate Chips",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	CookiesChocolateDough = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Cocoa Powder",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	CookiesOatmealDough = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs", 
			"Oats",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	CookiesShortbreadDough = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter",
		},
		Allergens = {
			"Gluten", 
			"Dairy",
		},
	},
			

	CookiesSugarDough = {
		Ingredients = {
			"Flour", 
			"Sugar", 
			"Butter", 
			"Eggs",
		},
		Allergens = {
			"Gluten", 
			"Dairy", 
			"Eggs",
		},
	},
			

	GlassWineWater = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	GlassTumblerWater = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	PlasticCupWater = {
		Ingredients = {
			"Water",
		},
		Allergens = {
			"None",
		},
	},
			

	WineInGlass = {
		Ingredients = {
			"Wine",
		},
		Allergens = {
			"Alcohol",
		},
	},
			

	Beer = {
		Ingredients = {
			"Water", 
			"Malt", 
			"Hops", 
			"Yeast",
		},
		Allergens = {
			"Gluten", 
			"Alcohol",
		},
	},
			

	Beer2 = {
		Ingredients = {
			"Water", 
			"Malt", 
			"Hops", 
			"Yeast",
		},
		Allergens = {
			"Gluten", 
			"Alcohol",
		},
	},
			

	TomatoPaste = {
		Ingredients = {
			"Tomatoes", 
			"Salt",
		},
		Allergens = {
			"None",
		},
	},

	-- Aliments simulés pour les tests
	SimulatedAllergicFood = {
		Ingredients = { "Unknown" },
		Allergens = { "SimulatedAllergen" },
    },

    SimulatedIntolerantFood = {
        Ingredients = { "SimulatedIntolerance" },
        Allergens = { "None" },
    },
			
}