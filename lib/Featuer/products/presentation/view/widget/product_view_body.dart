import 'package:eghypt_c/Featuer/cart/presentation/view/cart_view.dart';
import 'package:eghypt_c/Featuer/products/presentation/view/product_view.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double cardMargin =
        screenWidth * 0.05; // 5% of screen width for card margin
    double borderRadius =
        screenWidth * 0.02; // 2% of screen width for border radius
    double buttonHeight =
        screenHeight * 0.06; // Button height is 6% of screen height
    double paddingAllSides =
        screenWidth * 0.02; // Padding for all sides is 2% of screen width

    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        String imageAssetPath = 'assets/images/boy.png';
        String details = 'تفاصيل المنتج $index';
        String heroTag = 'product_$index';

        return Card(
          margin: EdgeInsets.all(cardMargin),
          child: Row(
            children: [
              Hero(
                tag: heroTag,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(borderRadius),
                  // child: Image.asset(
                  //   imageAssetPath,
                  //   width: imageSize,
                  //   height: imageSize,
                  // ),
                ),
              ),
              SizedBox(width: paddingAllSides),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'تمور الملكة _ 700جم علبة $index',
                      style: TextStyle(
                        fontSize: screenWidth *
                            0.04, // 4% of screen width for font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: paddingAllSides),
                    Row(
                      children: [
                        Text('20' 'ج',
                            style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey)),
                        const Spacer(),
                        Text('${(index + 1) * 10}' 'ج',
                            style: TextStyle(
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.bold,
                                color: Colors.green)),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(borderRadius),
                            color: const Color.fromARGB(255, 175, 220, 177),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              'عرض خاص',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.02,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(flex: 12)
                      ],
                    ),
                    SizedBox(height: paddingAllSides),
                    SizedBox(height: paddingAllSides),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Add product to cart functionality
                            (context.findAncestorStateOfType<
                                    ProductPageViewState>()!)
                                .addToCart(Product(
                              name: 'تمور الملكة _ 700جم علبة $index',
                              price: (index + 1) * 10.0,
                              imageAssetPath: imageAssetPath,
                              details: details,
                            ));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius),
                            ),
                            minimumSize: Size(
                                screenWidth * 0.5, buttonHeight), // Button size
                          ),
                          child: Text(
                            '+ اضافة الي السلة',
                            style: TextStyle(
                              fontSize: screenWidth *
                                  0.035, // 3.5% of screen width for font size
                              color: const Color.fromARGB(255, 222, 222, 222),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'ينتهي بعد 10 ايام',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: screenWidth * 0.03,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: paddingAllSides),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
