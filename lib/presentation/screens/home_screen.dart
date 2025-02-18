import 'package:ecommerce/presentation/screens/wishlist_screen.dart';
import 'package:ecommerce/presentation/widgets/home_slide.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../utility/app_colors.dart';
import '../utility/assets_path.dart';
import '../widgets/app_bar_icon_button.dart';
import 'categories_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              _buildSearchTextField(),
              const SizedBox(
                height: 16,
              ),
              HomeSlide(),
              _categoryWidget(),
              _popularWidget(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchTextField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: Colors.grey.shade200,
        filled: true,
        prefixIcon: Icon(Icons.search),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetsPath.appLogoSvg,
        height: 30,
        width: 40,
      ),
      actions: [
        AppBarIconButton(icon: Icons.person, onTap: () {}),
        const SizedBox(
          width: 8,
        ),
        AppBarIconButton(
          icon: Icons.call,
          onTap: () {},
        ),
        const SizedBox(
          width: 8,
        ),
        AppBarIconButton(
          icon: Icons.notifications_active_outlined,
          onTap: () {},
        ),
      ],
    );
  }

  Widget _categoryWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "All Categories",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoriesScreen()),
                  );
                },
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width / 4) - 20,
                    height: 120,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        AssetsPath.electronics,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Electronics",
                    style: TextStyle(
                      color: AppColor.primaryColor,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width / 4) - 20,
                    height: 120,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        AssetsPath.fruits,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Food",
                    style: TextStyle(
                      color: AppColor.primaryColor,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width / 4) - 20,
                    height: 120,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        AssetsPath.fashion,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Fashion",
                    style: TextStyle(
                      color: AppColor.primaryColor,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width / 4) - 20,
                    height: 120,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        AssetsPath.furniture,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Furniture",
                    style: TextStyle(
                      color: AppColor.primaryColor,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _popularWidget(BuildContext context) {
    // Context Pass করতে হবে
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Text Alignment ঠিক করা
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WishlistScreen(),
                    ),
                  );
                },
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Card(
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // Content Left Align হবে
                      children: [
                        Container(
                          width: (MediaQuery.of(context).size.width / 3) - 25,
                          height: 120,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Image.asset(AssetsPath.sliderImage),
                            ),
                          ),
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5),
                            SizedBox(
                                width: (MediaQuery.of(context).size.width / 3) -
                                    25, // Text Overflow Fix
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "New Year Special Shoe 30",
                                    style: TextStyle(
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    maxLines: 1,
                                  ),
                                )),
                            SizedBox(
                              height: 5,
                              width: 5,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "\$100",
                                    style: TextStyle(
                                      color: AppColor.primaryColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amberAccent,
                                      size: 14,
                                    ),
                                    Text(
                                      "4.8",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 8),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.circular(
                                        4), // Icon Rounded
                                  ),
                                  child: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Card(
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // Content Left Align হবে
                      children: [
                        Container(
                          width: (MediaQuery.of(context).size.width / 3) - 25,
                          height: 120,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Image.asset(AssetsPath.sliderImage),
                            ),
                          ),
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5),
                            SizedBox(
                                width: (MediaQuery.of(context).size.width / 3) -
                                    25, // Text Overflow Fix
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "New Year Special Shoe 30",
                                    style: TextStyle(
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    maxLines: 1,
                                  ),
                                )),
                            SizedBox(
                              height: 5,
                              width: 5,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "\$100",
                                    style: TextStyle(
                                      color: AppColor.primaryColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amberAccent,
                                      size: 14,
                                    ),
                                    Text(
                                      "4.8",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 8),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.circular(
                                        4), // Icon Rounded
                                  ),
                                  child: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Card(
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // Content Left Align হবে
                      children: [
                        Container(
                          width: (MediaQuery.of(context).size.width / 3) - 25,
                          height: 120,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Image.asset(AssetsPath.sliderImage),
                            ),
                          ),
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5),
                            SizedBox(
                                width: (MediaQuery.of(context).size.width / 3) -
                                    25, // Text Overflow Fix
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "New Year Special Shoe 30",
                                    style: TextStyle(
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    maxLines: 1,
                                  ),
                                )),
                            SizedBox(
                              height: 5,
                              width: 5,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "\$100",
                                    style: TextStyle(
                                      color: AppColor.primaryColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amberAccent,
                                      size: 14,
                                    ),
                                    Text(
                                      "4.8",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 8),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.circular(
                                        4), // Icon Rounded
                                  ),
                                  child: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
