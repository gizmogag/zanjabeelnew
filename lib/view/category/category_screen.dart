import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zanjabeel/constants/app_colors.dart';
import 'package:zanjabeel/view/cart/cart_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final categories = [
    {
      'name': 'Breakfast',
      'price': '10.00 QAR',
      'image': 'assets/images/dummyfdimg.jpeg',
      'subtext':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ',
      'rating': '4.5',
    },
    {
      'name': 'Burgers',
      'price': '15.00 QAR',
      'image': 'assets/images/dummyfdimg.jpeg',
      'subtext': 'Juicy and delicious',
      'rating': '4.7',
    },
    {
      'name': 'Appetizers',
      'price': '8.00 QAR',
      'image': 'assets/images/dummyfdimg.jpeg',
      'subtext': 'Light & tasty bites',
      'rating': '4.3',
    },
    {
      'name': 'Desserts',
      'price': '12.00 QAR',
      'image': 'assets/images/dummyfdimg.jpeg',
      'subtext': 'Sweet endings',
      'rating': '4.8',
    },
    {
      'name': 'Appetizers',
      'price': '8.00 QAR',
      'image': 'assets/images/dummyfdimg.jpeg',
      'subtext': 'Light & tasty bites',
      'rating': '4.3',
    },
    {
      'name': 'Desserts',
      'price': '12.00 QAR',
      'image': 'assets/images/dummyfdimg.jpeg',
      'subtext': 'Sweet endings',
      'rating': '4.8',
    },
    {
      'name': 'Appetizers',
      'price': '8.00 QAR',
      'image': 'assets/images/dummyfdimg.jpeg',
      'subtext': 'Light & tasty bites',
      'rating': '4.3',
    },
    {
      'name': 'Desserts',
      'price': '12.00 QAR',
      'image': 'assets/images/dummyfdimg.jpeg',
      'subtext': 'Sweet endings',
      'rating': '4.8',
    },
    {
      'name': 'Appetizers',
      'price': '8.00 QAR',
      'image': 'assets/images/dummyfdimg.jpeg',
      'subtext': 'Light & tasty bites',
      'rating': '4.3',
    },
    {
      'name': 'Desserts',
      'price': '12.00 QAR',
      'image': 'assets/images/dummyfdimg.jpeg',
      'subtext': 'Sweet endings',
      'rating': '4.8',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _buildAppBar(context),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      'Featured Items',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFDB1F40),
                        fontFamily: "Texturina",
                      ),
                    ),
                    const SizedBox(height: 10),
                    _buildSearchRow(),
                    _buildCategoryGrid(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: const BoxDecoration(
        color: Colors.white,
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.3),
                        ),
                        padding: const EdgeInsets.all(7),
                        child:
                            const Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Home',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontFamily: "Texturina",
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                                size: 23,
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Street 510, Al-Sadi',
                            style: TextStyle(
                              fontSize: 9,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchRow() {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
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
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.primaryRed, width: 0.5),
          ),
          child: Image.asset('assets/images/filter.png', height: 30, width: 30),
        ),
      ],
    );
  }

  Widget _buildCategoryGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 14,
        mainAxisSpacing: 6,
        childAspectRatio: 0.92,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final item = categories[index];
        return InkWell(
          onTap: () => _showProductBottomSheet(context, item),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    item['image']!,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    item['name']!,
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: "Texturina",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                  child: Text(
                    item['price']!,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 209, 26, 60),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showProductBottomSheet(BuildContext context, Map<String, String> item) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.5,
          minChildSize: 0.3,
          maxChildSize: 0.9,
          builder: (_, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      item['image']!,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    item['name']!,
                    style: const TextStyle(
                      fontSize: 15,
                      fontFamily: "Texturina",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item['subtext']!,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, size: 16, color: Colors.red),
                      const SizedBox(width: 4),
                      Text(
                        item['rating']!,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    item['price']!,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFDB1F40),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 180, 180, 180),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: const Icon(Icons.remove,
                              color: Colors.white, size: 18),
                        ),
                      ),
                      const SizedBox(width: 18),
                      const Text("1"),
                      const SizedBox(width: 18),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.primaryRed,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: const Icon(Icons.add,
                              color: Colors.white, size: 18),
                        ),
                      ),
                      const SizedBox(width: 32),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(CartScreen());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryRed,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                          ),
                          child: const Text(
                            'Add to Cart',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
