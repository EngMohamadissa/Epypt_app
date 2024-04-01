import 'package:eghypt_c/core/styles.dart';
import 'package:eghypt_c/core/widget/custom-text-field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyData extends StatelessWidget {
  const MyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.phone_callback_outlined),
        ),
        title: Text(
          'بياناتي',
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 16,
          ),
          CustomTextfield(
            isDense: true,
            label: const Text(
              'رقم الهاتف',
            ),
            labelStyle: TextStyle(
              color: Colors.blue[300],
            ),
            floatingLabelStyle: TextStyle(color: Colors.blue[300]),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextfield(
            isDense: true,
            label: const Text('الأسم الثلاثي'),
            labelStyle: TextStyle(
              color: Colors.blue[300],
            ),
            floatingLabelStyle: TextStyle(color: Colors.blue[300]),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextfield(
            isDense: true,
            label: const Text('اسم المحل'),
            labelStyle: TextStyle(
              color: Colors.blue[300],
            ),
            floatingLabelStyle: TextStyle(color: Colors.blue[300]),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextfield(
            isDense: true,
            label: const Text('نوع المحل'),
            labelStyle: TextStyle(
              color: Colors.blue[300],
            ),
            floatingLabelStyle: TextStyle(color: Colors.blue[300]),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextfield(
            isDense: true,
            label: const Text('المحافظة'),
            labelStyle: TextStyle(
              color: Colors.blue[300],
            ),
            floatingLabelStyle: TextStyle(color: Colors.blue[300]),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextfield(
            isDense: true,
            label: const Text('المنطقة'),
            labelStyle: TextStyle(
              color: Colors.blue[300],
            ),
            floatingLabelStyle: TextStyle(color: Colors.blue[300]),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 220, 213, 213)),
              height: 50,
              child: Center(
                child: Text(
                  'حدد موقع المنشأة',
                  style:
                      Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextfield(
            isDense: true,
            label: const Text('العنوان'),
            labelStyle: TextStyle(
              color: Colors.blue[300],
            ),
            floatingLabelStyle: TextStyle(color: Colors.blue[300]),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextfield(
            isDense: true,
            label: const Text('الكود(اختياري)'),
            labelStyle: TextStyle(
              color: Colors.blue[300],
            ),
            floatingLabelStyle: TextStyle(color: Colors.blue[300]),
          ),
          const SizedBox(
            height: 16,
          ),
          const ElevatedBottonData(
            data: 'تعديل البيانيات',
            backgroundColor: Colors.green,
          ),
          const ElevatedBottonData(
            data: 'تغيير الرقم السري',
            backgroundColor: Colors.yellow,
          ),
          const ElevatedBottonData(
            data: 'تسجيل الخروج',
            backgroundColor: Colors.red,
          )
        ],
      ),
    );
  }
}

class ElevatedBottonData extends StatelessWidget {
  const ElevatedBottonData(
      {super.key, this.backgroundColor, required this.data});
  final Color? backgroundColor;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            minimumSize: Size(150, 35),
          ),
          onPressed: () {},
          child: Text(
            data,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          )),
    );
  }
}
