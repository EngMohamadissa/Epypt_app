import 'package:eghypt_c/constant.dart';

validateFunction(String val, int max, int min) {
  (val) {
    if (val!.isEmpty) {
      return 'field is required';
    }
    return null;
  };
  if (val.length > max) {
    return "$messageValidMax $max";
  }
  if (val.length < min) {
    return "$messageValidMin $min";
  }
}