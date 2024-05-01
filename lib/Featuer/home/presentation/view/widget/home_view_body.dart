import 'dart:async';
import 'package:eghypt_c/core/styles.dart';
import 'package:eghypt_c/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'row_indecator_page_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  var selectIndex = 0;
  final List<String> imageUrls = [
    'assets/images/test_image.png',
    'assets/images/test_image.png',
    'assets/images/test_image.png',

    // Add more image URLs
  ];

  final PageController _pageController = PageController();
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_pageController.page?.round() == imageUrls.length - 1) {
        _pageController.animateToPage(
          0,
          duration: const Duration(milliseconds: 900),
          curve: Curves.easeInToLinear,
        );
      } else {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 900),
          curve: Curves.linear,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6.0),
          height: MediaQuery.of(context).size.width < 600
              ? 150
              : 200, // Adjust height based on screen width
          width: MediaQuery.of(context).size.width < 600
              ? 200
              : 250, // Adjust width based on screen width
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                selectIndex = index;
              });
            },
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width < 600
                        ? 12.0
                        : 24.0), // Adjust horizontal margin based on screen width
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(imageUrls[index]),
                  ),
                ),
              );
            },
          ),
        ),
        RowIndecatorPageView(
          imageUrls: imageUrls,
          selectIndex: selectIndex,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.width < 600
                ? 16
                : 20), // Adjust height based on screen width
        const Text(
          'هتعمل فاتورتك منين انهارده؟',
          style: Styles.textStyle20,
          textAlign: TextAlign.center,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.width < 600
                ? 50
                : 70), // Adjust height based on screen width
        const ColumnCircleAvatarItem(
          text: 'شركات',
          subText: 'من الشركة لمحلك',
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height < 600 ? 8.0 : 10.4,
          ),
          child: Container(
            color: Colors.grey,
            height: MediaQuery.of(context).size.height < 600 ? 2 : 2.6,
            width: 1,
          ),
        ),
        const ColumnCircleAvatarItem(
          text: 'تجار',
          subText: 'اشتري من تاجرك',
        ),
      ],
    );
  }
}

class ColumnCircleAvatarItem extends StatelessWidget {
  const ColumnCircleAvatarItem({
    super.key,
    required this.text,
    required this.subText,
  });

  final String text;
  final String subText;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final circleAvatarRadius = screenWidth < 600 ? 70.0 : 90.0;
    final circleAvatarBackgroundSize = screenWidth < 600 ? 75.0 : 85.0;
    const textStyle20 = Styles.textStyle20;
    final subTextStyle20 =
        Styles.textStyle20.copyWith(fontWeight: FontWeight.w600);

    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.khomepagemasaView);
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: circleAvatarRadius,
            backgroundColor: Colors.yellow,
            child: CircleAvatar(
              radius: circleAvatarBackgroundSize,
              backgroundImage: const AssetImage('assets/images/boy.png'),
            ),
          ),
          Text(
            text,
            style: textStyle20,
          ),
          Text(
            subText,
            style: subTextStyle20,
          ),
        ],
      ),
    );
  }
}
