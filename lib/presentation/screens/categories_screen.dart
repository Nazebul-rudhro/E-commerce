import 'package:ecommerce/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  // Define the categoryItems list
  final List<Map<String, String>> categoryItems = [
    {"Electronics": "images/imac-1.png"},
    {"Food": "images/fruits-1.png"},
    {"Fashion": "images/diamond-1.png"},
    {"Furniture": "images/bed-1.png"},
    {"Electronics": "images/imac-1.png"},
    {"Food": "images/fruits-1.png"},
    {"Fashion": "images/diamond-1.png"},
    {"Furniture": "images/bed-1.png"},
    {"Electronics": "images/imac-1.png"},
    {"Food": "images/fruits-1.png"},
    {"Fashion": "images/diamond-1.png"},
    {"Furniture": "images/bed-1.png"},
    {"Electronics": "images/imac-1.png"},
    {"Food": "images/fruits-1.png"},
    {"Fashion": "images/diamond-1.png"},
    {"Furniture": "images/bed-1.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: categoryAppBar(context),
      body: _categoryBody(context),
    );
  }

  // The method should use the categoryItems variable from the class
  Widget _categoryBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // 4 items per row
          crossAxisSpacing: 10, // Spacing between items horizontally
          mainAxisSpacing: 10, // Spacing between items vertically
          childAspectRatio: 1, // Items should be square-shaped
        ),
        itemCount: categoryItems.length,
        itemBuilder: (context, index) {
          String categoryName = categoryItems[index].keys.first;
          String imagePath = categoryItems[index][categoryName]!;
          return Column(
            children: [
              Container(
                height: 85, // Container height
                width: 120,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor.withOpacity(0.1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(imagePath),
                ),
              ),
              SizedBox(height: 5), // Space between image and text
              Text(
                categoryName,
                // Replace this with dynamic category name if needed
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          );
        },
      ),
    );
  }

  PreferredSizeWidget categoryAppBar(BuildContext context) {
    return AppBar(
      title: const Text(
        "Categories",
        style: TextStyle(fontSize: 16),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 8,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
