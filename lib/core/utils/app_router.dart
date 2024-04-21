import 'package:eghypt_c/Featuer/bill_view/presentation/view/bill_view.dart';

import 'package:go_router/go_router.dart';
import 'package:eghypt_c/Featuer/home/presentation/view/home_view.dart';

import '../../Featuer/Auth/forgetpassword/presentation/view/forgetpassowrd_view.dart';
import '../../Featuer/Auth/forgetpassword/presentation/view/resetpassword._view.dart';
import '../../Featuer/Auth/forgetpassword/presentation/view/veirfycode_view.dart';
import '../../Featuer/Auth/regiseter/presentaiton/view/rigester_view.dart';
import '../../Featuer/my_data/presentation/view/my_data_view.dart';

abstract class AppRouter {
  static const kLoginView = '/';
  static const kRigesterView = '/rigesterView';
  static const kForgetView = '/forgetpassowrdView';
  static const kResetpasswordView = '/resetpasswordView';
  static const kVeirfycodeView = '/veirfycodeView';
  static const kHomeView = '/homeView';
  static const kMyDataView = '/mydataView';
  static const kBillsView = '/billsView';
  static const kOrderView = '/orderView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const MyData()),
      GoRoute(
        path: kRigesterView,
        builder: (context, state) => const RigesterView(),
      ),
      GoRoute(
        path: kForgetView,
        builder: (context, state) => const ForgetpassowrdView(),
      ),
      GoRoute(
        path: kResetpasswordView,
        builder: (context, state) => const ResetpasswordView(),
      ),
      GoRoute(
        path: kVeirfycodeView,
        builder: (context, state) => const VeirfyCodeView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kMyDataView,
        builder: (context, state) => const MyData(),
      ),
      GoRoute(
        path: kBillsView,
        builder: (context, state) => const BillsView(),
      ),
    ],
  );
}
