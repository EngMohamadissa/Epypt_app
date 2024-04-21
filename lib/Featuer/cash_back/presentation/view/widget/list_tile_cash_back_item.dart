import 'package:flutter/material.dart';
import '../../../../../core/styles.dart';

class ListTileCashBackItem extends StatelessWidget {
  const ListTileCashBackItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        title: Text(
          'فوري',
          style: Styles.textStyle18,
        ),
        leading: Text('image'),
        subtitle: Text(
          'تقدر تستفيد من الكاش باك عن  طريق فوري خلال الفترة المحددة.هيوصلك  كود من فوري الي تقدر تستلم بيه',
          style: Styles.textStyle14,
        ),
      ),
    );
  }
}
