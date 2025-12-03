import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zanjabeel/constants/app_colors.dart';

class LanguageSelectingScreen extends StatefulWidget {
  const LanguageSelectingScreen({super.key});

  @override
  State<LanguageSelectingScreen> createState() =>
      _LanguageSelectingScreenState();
}

class _LanguageSelectingScreenState extends State<LanguageSelectingScreen> {
  final List<Map<String, String>> languages = [
    {"code": "en", "name": "English", "native": "English"},
    {"code": "ar", "name": "Arabic", "native": "العربية"},
    {"code": "fr", "name": "French", "native": "Français"},
    {"code": "es", "name": "Spanish", "native": "Español"},
  ];

  String selectedCode = "en";

  @override
  Widget build(BuildContext context) {
    final selectedLanguage =
        languages.firstWhere((lang) => lang["code"] == selectedCode);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                        color: Colors.grey[300],
                        child: const Center(child: Text('App Bar Image')),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 16),
                  child: InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.3),
                      ),
                      padding: const EdgeInsets.all(7),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Language",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryRed,
                    fontFamily: "Texturina",
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: Color.fromARGB(255, 73, 73, 73), thickness: 0.1),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              itemCount: languages.length,
              separatorBuilder: (context, index) => const Divider(
                color: Color.fromARGB(255, 73, 73, 73),
                thickness: 0.1,
              ),
              itemBuilder: (context, index) {
                final lang = languages[index];
                final isSelected = selectedCode == lang["code"];

                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedCode = lang["code"]!;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.primaryRed
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: isSelected
                                      ? AppColors.primaryRed
                                      : Colors.grey,
                                  width: 1,
                                ),
                              ),
                              child: isSelected
                                  ? const Icon(
                                      Icons.check,
                                      size: 14,
                                      color: Colors.white,
                                    )
                                  : null,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              lang["name"]!,
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(221, 99, 99, 99),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          lang["native"]!,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(221, 99, 99, 99),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
