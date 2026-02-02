import 'package:bookly_app/core/utils/colors/app_colors.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              textButton: 'Free',
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: book.volumeInfo!.previewLink != null
                  ? () async {
                      Uri uri = Uri.parse(book.volumeInfo!.previewLink!);
                      if (await canLaunchUrl(uri)) {
                        print('${book.volumeInfo!.previewLink}');
                        await launchUrl(uri);
                      }
                    }
                  : null,
              backgroundColor: AppColors.liteOrangeColor,
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              textButton: 'Free preview ',
            ),
          ),
        ],
      ),
    );
  }
}
