import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zanjabeel/constants/app_colors.dart';
import 'package:zanjabeel/view/account/about_us_screen.dart';
import 'package:zanjabeel/view/account/edite_profile_screen.dart';
import 'package:zanjabeel/view/account/help_and_support_screen.dart';
import 'package:zanjabeel/view/account/language_secting_screen.dart';
import 'package:zanjabeel/view/account/my_orders.dart';
import 'package:zanjabeel/view/address/my_address_screen.dart';
import 'package:zanjabeel/view/auth/login_screen.dart';
import 'package:zanjabeel/view/favorites/favorites.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 110,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: ClipRRect(
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
                    color: Colors.grey[300],
                    child: const Center(child: Text('App Bar Image')),
                  );
                },
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: const Color.fromARGB(255, 187, 187, 187),
                          width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shannon Ava',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Texturina",
                                  color: AppColors.primaryRed),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'sh@gmail.com | 123-456-7890',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 114, 114, 114),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(EditProfileScreen());
                          },
                          child: Icon(
                            Icons.edit_note_outlined,
                            color: AppColors.primaryRed,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(LanguageSelectingScreen());
                        },
                        child: buildListRow(
                          icon: Icons.language,
                          title: "Language",
                          trailing: const Text(
                            "English",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.primaryRed,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 73, 73, 73),
                        thickness: 0.1,
                      ),
                      buildListRow(
                        icon: Icons.local_offer_outlined,
                        title: "Offers",
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 73, 73, 73),
                        thickness: 0.1,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(FavoritesScreen());
                        },
                        child: buildListRow(
                          icon: Icons.favorite_border,
                          title: "Favorites",
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 73, 73, 73),
                        thickness: 0.1,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(MyAddressScreen());
                        },
                        child: buildListRow(
                          icon: Icons.place_outlined,
                          title: "My Address",
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 73, 73, 73),
                        thickness: 0.1,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(MyOrdersScreen());
                        },
                        child: buildListRow(
                          icon: Icons.list_alt_outlined,
                          title: "My Orders",
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 73, 73, 73),
                        thickness: 0.1,
                      ),
                      buildListRow(
                        icon: Icons.card_giftcard_outlined,
                        title: "Z Rewards",
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 73, 73, 73),
                        thickness: 0.1,
                      ),
                      buildListRow(
                        icon: Icons.card_membership,
                        title: "My Cards",
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 73, 73, 73),
                        thickness: 0.1,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(HelpAndSupportScreen());
                        },
                        child: buildListRow(
                          icon: Icons.live_help_outlined,
                          title: "Help & Support",
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 73, 73, 73),
                        thickness: 0.1,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(AboutUsScreen());
                        },
                        child: buildListRow(
                          icon: Icons.info_outline_rounded,
                          title: "About Us",
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 73, 73, 73),
                        thickness: 0.1,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(LoginScreen());
                        },
                        child: buildListRow(
                          icon: Icons.logout_outlined,
                          iconcolor: AppColors.primaryRed,
                          title: "Logout",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListRow({
    required IconData icon,
    Color? iconcolor,
    required String title,
    Widget? trailing,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: Row(
        children: [
          Icon(icon, color: iconcolor ?? Colors.grey[600], size: 20),
          const SizedBox(width: 18),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                color: Color.fromARGB(221, 99, 99, 99),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (trailing != null) trailing,
        ],
      ),
    );
  }
}
