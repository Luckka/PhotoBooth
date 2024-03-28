import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:photo_booth/app/core/shared/app_routes.dart';
import 'package:photo_booth/app/core/theme/app_text_styles.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with TickerProviderStateMixin {
  late PageController _pageViewController;
  int _currentPageIndex = 0;
  late TabController _tabController;

  void _handlePageViewChanged(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _tabController.index = index;
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
           
            child: PageView(
              onPageChanged: _handlePageViewChanged,
              controller: _pageViewController,
              children: const [
                SizedBox(
                   width: double.maxFinite,
                  height: double.maxFinite,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/bg_onboarding1.jpg'))
                ),
                SizedBox(
                   width: double.maxFinite,
                  height: double.maxFinite,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/bg_onboarding2.jpg'))
                ),
                SizedBox(
                   width: double.maxFinite,
                  height: double.maxFinite,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/bg_onboarding3.jpg'))
                ),
              ],
            ),
          ),
          PageIndicator(
            tabController: _tabController,
            currentPageIndex: _currentPageIndex,
            onUpdateCurrentPageIndex: _updateCurrentPageIndex,
        
          ),
        ],
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.tabController,
    required this.currentPageIndex,
    required this.onUpdateCurrentPageIndex,
  });

  final int currentPageIndex;
  final TabController tabController;
  final void Function(int) onUpdateCurrentPageIndex;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: 250,
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          color: Color(0xff5669FF)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
    
        children: [
          currentPageIndex == 0
              ? Text(
                  "Explore Upcoming and\n Nearby Events",
                  style: AppTextStyles.appBarTitle,
                  textAlign: TextAlign.center,
                )
              : currentPageIndex == 1
                  ? Text('Web Have Modern Events Calendar Feature',
                      style: AppTextStyles.appBarTitle,
                      textAlign: TextAlign.center)
                  : Text('To Look Up More Events or Activities Nearby By Map',
                      style: AppTextStyles.appBarTitle,
                      textAlign: TextAlign.center),
              SizedBox(height: 10,),
          currentPageIndex == 0
              ? Text(
                  " In publishing and graphic design, Lorem is\n a placeholder text commonly ",style: AppTextStyles.bodySmall,textAlign: TextAlign.center,)
              : currentPageIndex == 1
                  ? Text(' You can go a lot of places and\n make your party happen ',style: AppTextStyles.bodySmall,textAlign: TextAlign.center,)
                  : Text('Make the moments be worth and\n everything gonna be magical',style: AppTextStyles.bodySmall,textAlign: TextAlign.center,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                splashRadius: 16.0,
                padding: EdgeInsets.zero,
                onPressed: () {
                  if (currentPageIndex == 0) {
                    return;
                  }
                  onUpdateCurrentPageIndex(currentPageIndex - 1);
                },
                icon: const Icon(
                  Icons.arrow_left_rounded,
                  color: Colors.amber,
                  size: 42.0,
                ),
              ),
              TabPageSelector(
                  controller: tabController,
                  color: Colors.white10,
                  selectedColor: Colors.white),
              IconButton(
                splashRadius: 16.0,
                padding: EdgeInsets.zero,
                onPressed: () {
                  if (currentPageIndex == 2) {
                    Modular.to.navigate(AppRoutes.login);
                  }
                  onUpdateCurrentPageIndex(currentPageIndex + 1);
                },
                icon: const Icon(
                  Icons.arrow_right_rounded,
                  size: 42.0,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
