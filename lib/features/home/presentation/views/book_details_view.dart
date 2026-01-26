import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
        body: BookDetailsViewBody(),
      ),
    );
  }
}
