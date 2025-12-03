import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:zanjabeel/constants/app_colors.dart';
import 'package:zanjabeel/view/category/category_list_screen.dart';
import 'package:zanjabeel/view/category/category_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 110,
            decoration: const BoxDecoration(
              color: const Color.fromARGB(255, 250, 250, 250), // Fallback color
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/images/appbar.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: const Color.fromARGB(255, 250, 250, 250),
                        child: const Center(child: Text('App Bar Image')),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/location.png',
                                height: 25,
                                width: 25,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 6),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Home',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontFamily: "Texturina",
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color:
                                            Color.fromARGB(255, 247, 247, 247),
                                        size: 23,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Street 510, Al-Sadi',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromARGB(255, 238, 238, 238),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(0.3),
                                ),
                                padding: const EdgeInsets.all(7),
                                child: Image.asset(
                                  'assets/images/listw.png',
                                  height: 22,
                                  width: 22,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(0.3),
                                ),
                                padding: const EdgeInsets.all(4),
                                child: Image.asset(
                                  'assets/images/carticon.png',
                                  height: 25,
                                  width: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(4, (index) {
                        final items = [
                          {
                            'selectedIcon': 'assets/images/deliveryw.png',
                            'unselectedIcon': 'assets/images/delivery.png',
                            'label': 'Delivery'
                          },
                          {
                            'selectedIcon': 'assets/images/takeawayw.png',
                            'unselectedIcon': 'assets/images/takeaway.png',
                            'label': 'Take Away'
                          },
                          {
                            'selectedIcon': 'assets/images/dinningw.png',
                            'unselectedIcon': 'assets/images/dinning.png',
                            'label': 'Dinning'
                          },
                          {
                            'selectedIcon': 'assets/images/carw.png',
                            'unselectedIcon': 'assets/images/car.png',
                            'label': 'Car Pickup'
                          },
                        ];

                        final isSelected = selectedIndex == index;
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          borderRadius: BorderRadius.circular(50),
                          child: Column(
                            children: [
                              Container(
                                width: 58,
                                height: 58,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isSelected
                                      ? const Color(0xFFDB1F40)
                                      : Colors.white,
                                  border: isSelected
                                      ? null
                                      : Border.all(
                                          color: Colors.grey.shade400,
                                          width: 0.7),
                                ),
                                padding: const EdgeInsets.all(14),
                                child: Image.asset(
                                  isSelected
                                      ? items[index]['selectedIcon']!
                                      : items[index]['unselectedIcon']!,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                items[index]['label']!,
                                style: TextStyle(
                                  fontSize: 10,
                                  color:
                                      isSelected ? Colors.black : Colors.grey,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 3),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Craving Something Truly Delicious?',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFDB1F40),
                              fontFamily: "Texturina"),
                        ),
                        const SizedBox(height: 24),
                        _buildSearchRow(),
                        const SizedBox(height: 0),
                        _buildCategoryGrid(),
                        const SizedBox(height: 18),
                        _buildFooterSection(),
                        const SizedBox(height: 18),
                      ],
                    ),
                  ),
                  _buildBottomYellowSection(),
                  _buildBottomWhiteSection(),
                  _buildBottomYellowSection(),
                  _buildBottomWhiteSection(),
                  _buildbgSection(),
                  SizedBox(
                    height: 20,
                  ),
                  _buildBottomYellowSection(),
                  _buildBottomWhiteSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem({required String title, required String subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 4,
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(1, 1),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 4,
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(1, 1),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSearchRow() {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.primaryRed, width: 0.5),
            ),
            child: const Row(
              children: [
                Icon(Icons.search, color: Color.fromARGB(255, 92, 92, 92)),
                SizedBox(width: 10),
                Text(
                  'Search for dishes...',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromARGB(255, 107, 107, 107),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.primaryRed, width: 0.5),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/filter.png',
                height: 30,
                width: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryGrid() {
    final categories = [
      'Breakfast',
      'Burgers',
      'Appetizers',
      'Fries',
      'Salads',
      'Desserts',
      'Combos',
      'Beverages',
    ];

    final imagePath = 'assets/images/dummyfdimg.jpeg';

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 14,
        childAspectRatio: 0.75,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 📦 Image Card
            Container(
              height: 75,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 6),

            Text(
              categories[index],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 10,
                fontFamily: "Texturina",
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 209, 26, 60),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildFooterSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.orange[50],
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          'assets/images/dummybanner.jpeg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: 140,
        ),
      ),
    );
  }

  Widget _buildBottomYellowSection() {
    final items = [
      {'title': 'Beef Shawarma', 'image': 'assets/images/dummyfdimg.jpeg'},
      {'title': 'Burger', 'image': 'assets/images/dummyfdimg.jpeg'},
      {'title': 'Pasta', 'image': 'assets/images/dummyfdimg.jpeg'},
      {'title': 'Sandwich', 'image': 'assets/images/dummyfdimg.jpeg'},
      {'title': 'Dessert', 'image': 'assets/images/dummyfdimg.jpeg'},
    ];

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/home_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured Items',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFDB1F40),
                    fontFamily: "Texturina",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(CategoryScreen());
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFDB1F40),
                      fontFamily: "Texturina",
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 123,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16, right: 8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Container(
                  width: 150,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(7),
                        ),
                        child: Image.asset(
                          item['image']!,
                          height: 90,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 6),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item['title']!,
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(221, 82, 82, 82),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomWhiteSection() {
    final items = [
      {'title': 'Beef Shawarma', 'image': 'assets/images/dummyfdimg.jpeg'},
      {'title': 'Burger', 'image': 'assets/images/dummyfdimg.jpeg'},
      {'title': 'Pasta', 'image': 'assets/images/dummyfdimg.jpeg'},
      {'title': 'Sandwich', 'image': 'assets/images/dummyfdimg.jpeg'},
      {'title': 'Dessert', 'image': 'assets/images/dummyfdimg.jpeg'},
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 6,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'What’s New',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFDB1F40),
                    fontFamily: "Texturina",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(CategoryListScreen());
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFDB1F40),
                      fontFamily: "Texturina",
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 135,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16, right: 8, bottom: 8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Container(
                  width: 150,
                  margin: const EdgeInsets.only(right: 12, bottom: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(66, 124, 124, 124),
                        blurRadius: 8,
                        spreadRadius: 1,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(7),
                        ),
                        child: Image.asset(
                          item['image']!,
                          height: 90,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 6),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item['title']!,
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(221, 82, 82, 82),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildbgSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.orange[50],
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/images/home_bg2.jpeg',
            fit: BoxFit.fill,
            width: double.infinity,
            height: 140,
          ),
        ),
      ),
    );
  }
}
