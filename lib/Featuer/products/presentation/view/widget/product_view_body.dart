import 'package:flutter/material.dart';
import '../../../../../core/styles.dart';
import '../../../../cart/presentation/view/cart_view.dart';
import '../product_view.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        String imageAssetPath = 'assets/images/test_image.png';
        String details = 'تفاصيل المنتج $index';
        return Card(
          margin: const EdgeInsets.all(10),
          child: Expanded(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/test_image.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(' تمور الملكة  _ 700جم علبة $index',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      const Text('7   خصم', style: Styles.textStyle14),
                      const SizedBox(height: 5),
                      Text('ج ${(index + 1) * 10}', style: Styles.textStyle18),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          (context.findAncestorStateOfType<MyHomePageState>()!)
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
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          '+  اضافة الي السلة',
                          style: Styles.textStyle14.copyWith(
                              color: const Color.fromARGB(255, 222, 222, 222)),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
