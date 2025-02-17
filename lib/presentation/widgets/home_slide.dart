import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/presentation/utility/app_colors.dart';
import 'package:ecommerce/presentation/utility/assets_path.dart';
import 'package:flutter/material.dart';

class HomeSlide extends StatefulWidget {
  const HomeSlide({super.key});

  @override
  State<HomeSlide> createState() => _HomeSlideState();
}

class _HomeSlideState extends State<HomeSlide> {
  final List<String> sliderList = [
    AssetsPath.sliderImage,
    AssetsPath.sliderImage,
    AssetsPath.sliderImage,
    AssetsPath.sliderImage,
  ];

  final ValueNotifier<int> _selectedPageIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCarouselSlider(),
        const SizedBox(height: 8),
        _buildDotIndicator(),
      ],
    );
  }

  Widget _buildCarouselSlider() {
    return CarouselSlider(
      items: sliderList.map((slider) {
        return Builder(
          builder: (context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: AppColor.primaryColor, // Use defined color
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(slider),
                  ),
                  Expanded(
                    flex: 3,
                    child: _buildProductDescription(),
                  )
                ],
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 180,
        viewportFraction: 1,
        onPageChanged: (index, _) {
          _selectedPageIndex.value = index;
        },
      ),
    );
  }

  Widget _buildDotIndicator() {
    return ValueListenableBuilder<int>(
      valueListenable: _selectedPageIndex,
      builder: (context, currentPage, _) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < sliderList.length; i++) // Loop condition fixed
              Container(
                width: i == currentPage ? 12 : 8,
                height: i == currentPage ? 12 : 8,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // Ensuring it is circular
                  color: i == currentPage ? AppColor.primaryColor : Colors.grey,
                  // Fixed assignment issue
                  border: Border.all(
                    color:
                        i == currentPage ? AppColor.primaryColor : Colors.grey,
                    width: 1,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildProductDescription() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Happy New Year. \nSpecial Deal \nSave 30%",
            maxLines: 3,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: AppColor.primaryColor,
                padding: const EdgeInsets.symmetric(vertical: 6),
                textStyle:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              child: const Text("Buy Now"),
            ),
          ),
        ],
      ),
    );
  }
}
