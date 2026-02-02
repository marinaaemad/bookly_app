import 'package:get_storage/get_storage.dart';

class SearchLocalDataSource {
  static const _key = 'recent_searches';
  final GetStorage box;

  SearchLocalDataSource({required this.box});
  List<String> getRecentSearches() {
    return List<String>.from(box.read(_key) ?? []);
  }

  void saveSearches(String query) {
    final searches = getRecentSearches();
    searches.remove(query);
    searches.insert(0, query);
    if (searches.length > 8) {
      searches.removeLast();
    }
    box.write(_key, searches);
  }

  void clearSearches() {
    box.remove(_key);
  }
}
