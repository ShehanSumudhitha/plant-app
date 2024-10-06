import 'package:flutter/material.dart';
import 'package:live_score/models/constants.dart';
import 'package:live_score/models/onboarding_model.dart';
import 'package:live_score/plants_home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller = PageController();
  int currentIndex = 0;
  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          if (currentIndex < pOnBoarding.length - 1)
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PlantsHomeScreen(),
                  ),
                );
                //we make it functional later
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey.shade800,
              ),
              child: const Text(
                "Skip",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height:
                  630, //all this value make it final by using hit and trial method
              child: PageView.builder(
                controller: controller,
                onPageChanged: (value) => setState(() {
                  currentIndex = value;
                }),
                itemCount: pOnBoarding.length,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.asset(
                          pOnBoarding[index].image,
                          fit: BoxFit.fitHeight,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              pOnBoarding.length,
                              (index) => AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    margin: EdgeInsets.only(right: 4),
                                    width: index == currentIndex ? 18 : 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: index == currentIndex
                                            ? primaryColor
                                            : Colors.grey.shade400),
                                  )),
                        ),
                        SizedBox(height: 40),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: pOnBoarding[index].title1,
                                  style: const TextStyle(
                                    fontSize: 45,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                const TextSpan(
                                  text: " Plants",
                                  style: TextStyle(
                                    fontSize: 45,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: InkWell(
                onTap: () async {
                  if (currentIndex == (pOnBoarding.length)) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const PlantsHomeScreen()),
                    );
                  } else {
                    await controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 50,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
