import 'package:eghypt_c/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Product {
  final String name;
  final double price;
  final String imageAssetPath;
  final String details;
  int quantity; // حقل الكمية

  Product(
      {required this.name,
      required this.price,
      required this.imageAssetPath,
      required this.details,
      this.quantity = 1});
}

class CartPage extends StatefulWidget {
  final List<Product> cartItems;

  const CartPage({super.key, required this.cartItems});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  void _removeCartItem(int index) {
    Product removedItem = widget.cartItems[index];

    setState(() {
      widget.cartItems.removeAt(index);
    });

    _listKey.currentState?.removeItem(
      index,
      (context, animation) =>
          _buildRemovedItem(removedItem, context, animation),
      duration: const Duration(milliseconds: 350),
    );
  }

  Widget _buildRemovedItem(
      Product item, BuildContext context, Animation<double> animation) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(animation),
      child: CartItem(
        cartItem: item,
        onDelete: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double total = widget.cartItems.fold(0, (sum, item) => sum + item.price);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text('سلة الطلبات', style: Styles.textStyle24),
      ),
      body: Column(
        children: [
          Expanded(
            child: AnimatedList(
              key: _listKey,
              initialItemCount: widget.cartItems.length,
              itemBuilder: (context, index, animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, -1),
                    end: Offset.zero,
                  ).animate(animation),
                  child: CartItem(
                    cartItem: widget.cartItems[index],
                    onDelete: () => _removeCartItem(index),
                  ),
                );
              },
            ),
          ),
          Text('الإجمالي: $total ج', style: Styles.textStyle20),
        ],
      ),
    );
  }
}

// ... CartItem and QuantitySelector remain unchanged

class CartItem extends StatelessWidget {
  final Product cartItem;
  final VoidCallback onDelete;

  const CartItem({
    super.key,
    required this.cartItem,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Row(
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset(cartItem.imageAssetPath, fit: BoxFit.cover),
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  cartItem.name,
                  style:
                      Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    const Text('7   خصم', style: Styles.textStyle14),
                    const SizedBox(height: 5),
                    Text('${cartItem.price} ج', style: Styles.textStyle18),
                    const SizedBox(height: 10),
                    const QuantitySelector(),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: onDelete,
            ),
          ],
        ),
      ),
    );
  }
}

// ... QuantitySelector remains unchanged

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key});

  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  final TextEditingController _controller = TextEditingController(text: '1');

  void _increment() {
    setState(() {
      int currentValue = int.parse(_controller.text);
      currentValue++;
      _controller.text = currentValue.toString();
    });
  }

  void _decrement() {
    setState(() {
      int currentValue = int.parse(_controller.text);
      if (currentValue > 1) {
        currentValue--;
        _controller.text = currentValue.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Row(
        children: [
          FloatingActionButton(
            mini: true,
            backgroundColor: Colors.pinkAccent,
            onPressed: _decrement,
            child: const Icon(Icons.remove, color: Colors.white),
          ),
          Expanded(
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              textAlign: TextAlign.center,
            ),
          ),
          FloatingActionButton(
            mini: true,
            backgroundColor: Colors.blueAccent,
            onPressed: _increment,
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
