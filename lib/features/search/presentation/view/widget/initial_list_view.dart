import 'package:bookly_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialListView extends StatelessWidget {
  const InitialListView({
    super.key,
    required this.recentSearchesCount,
    required this.allRecentSearches,
  });
  final int recentSearchesCount;
  final List<String> allRecentSearches;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            BlocProvider.of<SearchCubit>(context).cLearALL();
          },
          child: Text('Clear All'),
        ),
        ListView.builder(
          itemCount: recentSearchesCount,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {},
              child: ListTile(
                title: Text(allRecentSearches[index]),
                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
              ),
            );
          },
        ),
      ],
    );
  }
}
