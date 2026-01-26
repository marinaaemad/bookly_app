import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key, required this.boxNumber});
  final int boxNumber;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: boxNumber,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
