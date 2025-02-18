import 'package:ecommerce/presentation/utility/assets_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utility/app_colors.dart';

class WishlistScreen extends StatelessWidget {
  WishlistScreen({super.key});

  // final List<Map<String, String>> WishListItems = [
  //   {"Electronics": "images/imac-1.png"},
  //   {"Food": "images/fruits-1.png"},
  //   {"Fashion": "images/diamond-1.png"},
  //   {"Furniture": "images/bed-1.png"},
  //   {"Electronics": "images/imac-1.png"},
  //   {"Food": "images/fruits-1.png"},
  //   {"Fashion": "images/diamond-1.png"},
  //   {"Furniture": "images/bed-1.png"},
  //   {"Electronics": "images/imac-1.png"},
  //   {"Food": "images/fruits-1.png"},
  //   {"Fashion": "images/diamond-1.png"},
  //   {"Furniture": "images/bed-1.png"},
  //   {"Electronics": "images/imac-1.png"},
  //   {"Food": "images/fruits-1.png"},
  //   {"Fashion": "images/diamond-1.png"},
  //   {"Furniture": "images/bed-1.png"},
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WishList_appBar(context),
      body: _WishList_Body(context),
    );
  }
}

PreferredSizeWidget WishList_appBar(BuildContext context) {
  return AppBar(
    title: const Text(
      "Wish List",
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

Widget _WishList_Body(BuildContext context) {
  return SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.85, // Aspect ratio ঠিক করুন
        ),
        itemCount: 16,
        itemBuilder: (context, index) {
          return SizedBox(
            // height: 150,
            child: Card(
              elevation: 4,
              child: Column(
                children: [
                  Container(
                    // height: 80,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor.withOpacity(0.1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(AssetsPath.sliderImage),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "New Year Special Shoes 30",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Row(
                      children: [
                        Text(
                          "\$100",
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                              size: 14,
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 20,
                              width: 25,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColor.primaryColor,
                                  // ব্যাকগ্রাউন্ড রঙ
                                  borderRadius: BorderRadius.circular(
                                      5), // বর্ডার রেডিয়াস (Corner round)
                                ),
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}
