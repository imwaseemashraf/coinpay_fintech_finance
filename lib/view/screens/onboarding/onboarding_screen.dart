import '../../../dev_export/dev_export.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController pageController = PageController();
  int currentIndex = 0;
  final List<OnboardingPage> onboardingPages = [
    OnboardingPage(
      imagePath: AppAssets.onboardingOne,
      title: 'Trusted by millions of people, part of one part',
    ),
    OnboardingPage(
      imagePath: AppAssets.onboardingTwo,
      title: 'Spend money abroad, and track your expense',
    ),
    OnboardingPage(
      imagePath: AppAssets.onboardingThree,
      title: 'Receive Money From Anywhere In The World',
    ),
  ];
  void nextPage() {
    if (currentIndex < onboardingPages.length - 1) {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                itemCount: onboardingPages.length,
                controller: pageController,
                onPageChanged: (index) {
                  currentIndex = index;
                  setState(() {});
                },
                itemBuilder: (context, index) {
                  final page = onboardingPages[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 20,
                    ),
                    child: Column(
                      spacing: 20,
                      children: <Widget>[
                        Gap(40),
                        Image.asset(page.imagePath, height: 250),
                        Gap(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(onboardingPages.length, (i) {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              width: currentIndex == i ? 15 : 25,
                              height: 5,
                              decoration: BoxDecoration(
                                color:
                                    currentIndex == i
                                        ? Colors.blue
                                        : Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            );
                          }),
                        ),
                        Text(
                          page.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                minimumSize: Size(appWidth(context) * 0.8, 40),
              ),
              onPressed: nextPage,
              child: const Text(
                "Next",
                style: TextStyle(color: AppColors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
