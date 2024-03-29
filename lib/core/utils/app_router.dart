import 'package:go_router/go_router.dart';

import '../../Featuer/Auth/forgetpassword/presentation/view/forgetpassowrd_view.dart';
import '../../Featuer/Auth/forgetpassword/presentation/view/resetpassword._view.dart';
import '../../Featuer/Auth/forgetpassword/presentation/view/veirfycode_view.dart';
import '../../Featuer/Auth/login/presentation/view/login_view.dart';
import '../../Featuer/Auth/regiseter/presentaiton/view/rigester_view.dart';

abstract class AppRouter {
  static const kRigesterView = '/rigesterView';
  static const kForgetView = '/forgetpassowrdView';
  static const kResetpasswordView = '/resetpasswordView';
  static const kVeirfycodeView = '/veirfycodeView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginView(),
      ),
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
    ],
  );
}
