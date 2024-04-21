import 'package:flutter/material.dart';
import '../../../../../core/widget/custom-text-field.dart';
import 'elevated_botton_data.dart';

class MyDataViewBody extends StatefulWidget {
  const MyDataViewBody({
    super.key,
  });

  @override
  State<MyDataViewBody> createState() => _MyDataViewBodyState();
}

class _MyDataViewBodyState extends State<MyDataViewBody> {
  bool _isEditable = false;
  String? selectedProduct;
  String buttonText = 'تعديل البيانيات';
  void Function(String?)? onChanged;

  void _toggleState() {
    setState(() {
      _isEditable = !_isEditable;

      buttonText =
          buttonText == 'تعديل البيانيات' ? 'حفظ البيانيات' : 'تعديل البيانيات';

      onChanged = onChanged == null
          ? (String? newValue) {
              selectedProduct = newValue;
            }
          : null;
    });
  }

  List<String> products = [
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
  ];

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final Size screenSize = MediaQuery.of(context).size;

    // Calculate horizontal padding as a percentage of the screen width
    final double horizontalPadding =
        screenSize.width * 0.05; // Example: 5% of screen width

    // Calculate the text scale factor
    final double textScaleFactor =
        screenSize.width < 600 ? 0.9 : 1.1; // Smaller scale for smaller screens
    return ListView(
      children: [
        const SizedBox(
          height: 16,
        ),
        CustomTextfield(
          readOnly: true,
          hintText: '099877765',
          hintStyle: const TextStyle(color: Colors.grey),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: 'الهاتف',
          isDense: true,
          label: const Text(
            'رقم الهاتف',
          ),
          labelStyle: TextStyle(
            color: Colors.blue[300],
          ),
          floatingLabelStyle: TextStyle(color: Colors.blue[300]),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width < 600
              ? 16
              : 24, // Adjust height based on screen width
        ),
        CustomTextfield(
          readOnly: !_isEditable,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: false,
          label: const Text('الأسم الثلاثي'),
          hintText: 'محمد',
          labelStyle: TextStyle(
            color: Colors.blue[300],
          ),
          floatingLabelStyle: TextStyle(color: Colors.blue[300]),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width < 600
              ? 16
              : 24, // Adjust height based on screen width
        ),
        CustomTextfield(
          readOnly: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          label: const Text('اسم المحل'),
          hintText: 'تجار',
          labelStyle: TextStyle(
            color: Colors.blue[300],
          ),
          floatingLabelStyle: TextStyle(color: Colors.blue[300]),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width < 600
              ? 16
              : 24, // Adjust height based on screen width
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
          child: Container(
            height: MediaQuery.of(context).size.width < 600
                ? 40
                : 60, // Adjust height based on screen width
            width: double.infinity, // Set width to fill available space
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 205, 203, 203),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: DropdownButton<String>(
                iconEnabledColor: Colors.black,
                value: selectedProduct,
                isExpanded: true,
                iconSize: 24,
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                ),
                onChanged: onChanged,
                items: products.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width < 600
              ? 16
              : 24, // Adjust height based on screen width
        ),
        CustomTextfield(
          readOnly: true,
          hintText: 'الاسكندرية',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          label: const Text('المحافظة'),
          labelStyle: TextStyle(
            color: Colors.blue[300],
          ),
          floatingLabelStyle: TextStyle(color: Colors.blue[300]),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width < 600
              ? 16
              : 24, // Adjust height based on screen width
        ),
        CustomTextfield(
          readOnly: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          hintText: 'الهانوفيل',
          label: const Text('المنطقة'),
          labelStyle: TextStyle(
            color: Colors.blue[300],
          ),
          floatingLabelStyle: TextStyle(color: Colors.blue[300]),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width < 600
              ? 16
              : 24, // Adjust height based on screen width
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(255, 220, 213, 213),
            ),
            height: 50, // Consider making the height responsive if needed
            child: Center(
              child: Text(
                'حدد موقع المنشأة',
                style: TextStyle(
                  fontSize: 20 * textScaleFactor, // Apply the scale factor
                  fontWeight: FontWeight.bold,
                  // Apply other styles as needed
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width < 600
              ? 16
              : 24, // Adjust height based on screen width
        ),
        CustomTextfield(
          readOnly: !_isEditable,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          hintText: 'شارع 17',
          label: const Text('العنوان'),
          labelStyle: TextStyle(
            color: Colors.blue[300],
          ),
          floatingLabelStyle: TextStyle(color: Colors.blue[300]),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width < 600
              ? 16
              : 24, // Adjust height based on screen width
        ),
        CustomTextfield(
          readOnly: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          hintText: '<NA>',
          label: const Text('الكود(اختياري)'),
          labelStyle: TextStyle(
            color: Colors.blue[300],
          ),
          floatingLabelStyle: TextStyle(color: Colors.blue[300]),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width < 600
              ? 16
              : 24, // Adjust height based on screen width
        ),
        ElevatedBottonData(
          data: buttonText,
          onLongPress: () {
            _toggleState();
          },
          backgroundColor: Colors.green,
        ),
        ElevatedBottonData(
          onLongPress: () {},
          data: 'تغيير الرقم السري',
          backgroundColor: Colors.yellow,
        ),
        ElevatedBottonData(
          onLongPress: () {},
          data: 'تسجيل الخروج',
          backgroundColor: Colors.red,
        )
      ],
    );
  }
}





























  // void _toggleEdit() {
  //   setState(() {
  //     _isEditable = !_isEditable;
  //   });
  // }

  // void _namebotton() {
  //   print('121231232');
  //   setState(() {
  //     if (buttonText == 'تعديل البيانيات') {
  //       buttonText = 'حفظ البيانيات';
  //     } else {
  //       buttonText = 'تعديل البيانيات';
  //     }
  //   });
  // }

  // void iconbotton() {
  //   if (onChanged == null) {
  //     onChanged = (String? newValue) {
  //       setState(() {
  //         selectedProduct = newValue;
  //       });
  //     };
  //   } else {
  //     onChanged = null;
  //   }
  // }