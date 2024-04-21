
// import 'package:flutter/material.dart';

// import '../../../../../core/styles.dart';
// import '../../../../products/presentation/view/product_view.dart';

// class CartViewBody extends StatelessWidget {
//   const CartViewBody({
//     super.key,
//     required this.cartItems,
//     required this.total,
//   });

//   final List<Product> cartItems;
//   final double total;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: ListView.builder(
//             itemCount: cartItems.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 leading:
//                     Image.asset(cartItems[index].imageAssetPath), // عرض الصورة
//                 title: Text(cartItems[index].name),
//                 subtitle: Text(cartItems[index].details), // عرض التفاصيل
//                 trailing: Text('${cartItems[index].price} ج'),
//               );
//             },
//           ),
//         ),
//         Text('الإجمالي: $total ج', style: Styles.textStyle20),
//       ],
//     );
//   }
// }
