import 'dart:async';
import 'package:eghypt_c/core/styles.dart';
import 'package:flutter/material.dart';
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
          height: 200,
          width: 250,
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
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      imageUrls[index],
                    ),
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
        const SizedBox(
          height: 20,
        ),
        // const SizedBox(
        //   height: 50,
        // ),
        const Text(
          'هتعمل فاتورتك منين انهارده؟',
          style: Styles.textStyle20,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 70),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const ColumnCircleAvatarItem(
              text: 'شركات',
              subText: 'من الشركة لمحلك',
            ),
            Container(
              color: Colors.grey,
              height: 260,
              width: 1,
            ),
            const ColumnCircleAvatarItem(
              text: 'تجار',
              subText: 'اشتري من تاجرك',
            ),
          ],
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
    return Column(
      children: [
        const CircleAvatar(
          radius: 90,
          backgroundColor: Colors.yellow,
          child: CircleAvatar(
            radius: 85,
            backgroundImage: AssetImage(
              'assets/images/test_image.png',
            ),
          ),
        ),
        Text(
          text,
          style: Styles.textStyle20,
        ),
        Text(
          subText,
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
