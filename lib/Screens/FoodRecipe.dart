import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simpleapp/http/network_service.dart';
import 'package:simpleapp/model/FoodRecipes.dart';

class FoodRecipePage extends StatefulWidget {
  const FoodRecipePage({super.key});

  @override
  State<FoodRecipePage> createState() => _FoodRecipePageState();
}

class _FoodRecipePageState extends State<FoodRecipePage> {
  late Future<FoodRecipePage> FoodRecipesDetails;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          Icon(Icons.restaurant_menu),
          Text("FoodRecipe"),
        ],
      )),
    );
  }
}
