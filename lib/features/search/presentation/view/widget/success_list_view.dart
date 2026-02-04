import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class SuccessListView extends StatelessWidget {
  const SuccessListView({
    super.key,
    required this.booksCount,
    required this.allBooks,
  });
  final int booksCount;
  final List<BookModel> allBooks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: booksCount,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(book: allBooks[index]),
        );
      },
    );
  }
}
