class MealDataModel { 
  final String mealname;
  String? mealImages;
  final int? no_of_meals;
  final int? calories;
   String? time;
  MealDataModel({this. time,required this.mealname, this.no_of_meals, this.calories,this.mealImages});


}
class myList{



  static List <MealDataModel> meal_breakfast_list = [
    MealDataModel(mealname: 'Salmon Nigri', time: '7 AM',mealImages:'assets/meal_icon/food1'),
    MealDataModel(mealname: 'LowFat Milk',time: '8 AM',mealImages:'assets/meal_icon/food1'),
    MealDataModel(mealname: 'salad',time: '8 AM',mealImages:'assets/meal_icon/food1'),
     MealDataModel(mealname: 'Almond',time: '7 AM',mealImages:'assets/meal_icon/food1'),
  ];



List<MealDataModel> meal_lunch_list = [
    MealDataModel(mealname: 'Salmon Nigri', time: '7 AM'),
    MealDataModel(mealname: 'LowFat Milk',time: '8 AM'),
    MealDataModel(mealname: 'salad',time: '8 AM'),
     MealDataModel(mealname: 'Almond',time: '7 AM'),
  ];

List<MealDataModel> meal_dinner_list = [
    MealDataModel(mealname: 'Salmon Nigri', time: '7 AM'),
    MealDataModel(mealname: 'LowFat Milk',time: '8 AM'),
    MealDataModel(mealname: 'salad',time: '8 AM'),
     MealDataModel(mealname: 'Almond',time: '7 AM'),
  ];
}