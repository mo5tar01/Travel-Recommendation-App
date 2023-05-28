import 'package:flutter/material.dart';
import 'package:udemy_flutter/modules/shop_app/Main/Home_Screen.dart';
import 'package:udemy_flutter/shared/components/components.dart';

class CategorySlidersPage extends StatefulWidget {
  const CategorySlidersPage({Key? key}) : super(key: key);

  @override
  _CategorySlidersPageState createState() => _CategorySlidersPageState();
}

class _CategorySlidersPageState extends State<CategorySlidersPage> {
  double natureParksValue = 0.0;
  double sightsLandmarksValue = 0.0;
  double museumsValue = 0.0;
  double waterAmusementParksValue = 0.0;
  double shoppingValue = 0.0;
  double zoosAquariumsValue = 0.0;
  double travelerResourcesValue = 0.0;
  double toursValue = 0.0;
  double concertsShowsValue = 0.0;
  double nightlifeValue = 0.0;
  double funGamesValue = 0.0;
  double foodDrinkValue = 0.0;
  double transportationValue = 0.0;
  double otherValue = 0.0;
  double spasWellnessValue = 0.0;
  double outdoorActivitiesValue = 0.0;
  double eventsValue = 0.0;
  double classesWorkshopsValue = 0.0;
  double casinosGamblingValue = 0.0;


  @override
  Widget build(BuildContext context) {
  return Scaffold(
  // appBar: AppBar(
  // title:
  //   centerTitle: true,
  // ),
  body: SingleChildScrollView(
  child: Padding(
  padding: const EdgeInsets.all(16.0),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Center(
      child: Text("Great job! \n Now let's add ratings to get your prefrences !",
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.black, // Highlighted category name color

      ),
      textAlign: TextAlign.center,
      maxLines: 3,),
    ),
  SizedBox(height: 20,),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Nature & Parks', natureParksValue),
    Divider(
      color: Colors.blue,
    ),
  _buildSlider('Sights & Landmarks', sightsLandmarksValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Museums', museumsValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Water & Amusement Parks', waterAmusementParksValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Shopping', shoppingValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Zoos & Aquariums', zoosAquariumsValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Traveler Resources', travelerResourcesValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Tours', toursValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Concerts & Shows', concertsShowsValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Nightlife', nightlifeValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Fun & Games', funGamesValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Food & Drink', foodDrinkValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Transportation', transportationValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Other', otherValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Spas & Wellness', spasWellnessValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Outdoor Activities', outdoorActivitiesValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Events', eventsValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Classes & Workshops', classesWorkshopsValue),
    Divider(
      color: Colors.blue,
    ),
    _buildSlider('Casinos & Gambling', casinosGamblingValue),
    Divider(
      color: Colors.blue,
    ),
    SizedBox(height: 24), // Add space between sliders and button
    ElevatedButton(
      child: Text(
        'Continue',
        style: TextStyle(fontSize: 18),
      ),
      onPressed: () {
        
        print("$natureParksValue");
        print("$sightsLandmarksValue");
        print("$museumsValue");
        print("$waterAmusementParksValue");
        print("$shoppingValue");
        print("$zoosAquariumsValue");
        print("$travelerResourcesValue");
        print("$toursValue");
        print("$concertsShowsValue");
        print("$nightlifeValue");
        print("$funGamesValue");
        print("$foodDrinkValue");
        print("$otherValue");
        print("$spasWellnessValue");
        print("$outdoorActivitiesValue");
        print("$eventsValue");
        print("$classesWorkshopsValue");
        print("$casinosGamblingValue");

        // navigateAndFinish(context, ShopHomeScreen());
        // Perform actions when the button is pressed
      },
    ),

  ],

  ),
  ),
  ),
  );
  }

  Widget _buildSlider(String category, double value) {
  return Column(
  children: [
  Text(
  category,
  style: TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Colors.blue, // Highlighted category name color
  ),
  ),
  Slider(
  value: value,
  min: 0,
  max: 5,
   // divisions: 20,
  onChanged: (newValue) {
  setState(() {
  if (category == 'Nature & Parks') {
  natureParksValue = newValue;
  } else if (category == 'Sights & Landmarks') {
  sightsLandmarksValue = newValue;
  } else if (category == 'Museums') {
  museumsValue = newValue;
  } else if (category == 'Water & Amusement Parks') {
  waterAmusementParksValue = newValue;
  } else if (category == 'Shopping') {
  shoppingValue = newValue;
  } else if (category == 'Zoos & Aquariums') {
  zoosAquariumsValue = newValue;
  } else if (category == 'Traveler Resources') {
  travelerResourcesValue = newValue;
  } else if (category == 'Tours') {
  toursValue = newValue;
  } else if (category == 'Concerts & Shows') {
  concertsShowsValue = newValue;
  } else if (category == 'Nightlife') {
  nightlifeValue = newValue;
  } else if (category == 'Fun & Games') {
  funGamesValue = newValue;
  } else if (category == 'Food & Drink') {
  foodDrinkValue = newValue;
  } else if (category == 'Transportation') {
  transportationValue = newValue;
  } else if (category == 'Other') {
  otherValue = newValue;
  } else if (category == 'Spas & Wellness') {
  spasWellnessValue = newValue;
  } else if (category == 'Outdoor Activities') {
  outdoorActivitiesValue = newValue;
  } else if (category == 'Events') {
  eventsValue = newValue;
  } else if (category == 'Classes & Workshops') {
  classesWorkshopsValue = newValue;
  } else if (category == 'Casinos & Gambling') {
  casinosGamblingValue = newValue;
  }
  });
  },
  ),
  Text(
  value.toStringAsFixed(0),
  style: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  ),
  ),
  SizedBox(height: 16), // Add space between sliders
  ],
  );
  }
  }
