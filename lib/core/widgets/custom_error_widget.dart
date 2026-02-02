import 'package:bookly_app/core/utils/styles/style.dart';
import 'package:flutter/widgets.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMesg});
  final String errMesg;

  @override
  Widget build(BuildContext context) {
    return Text(errMesg, style: Style.textStyle18SemiBold);
  }
}
