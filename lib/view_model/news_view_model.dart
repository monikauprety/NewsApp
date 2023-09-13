import 'package:newsapp/models/News_channel_headlines_models.dart';
import 'package:newsapp/models/category_new_model.dart';
import 'package:newsapp/repository/news_repository.dart';

class NewsViewModel {
  final _rep = NewsRepository();
  Future<NewsChannelHeadlineModel> fetchNewUserLineApi(
      String channelName) async {
    final response = await _rep.fetchNewUserLineApi(channelName);
    return response;
  }

  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category) async {
    final response = await _rep.fetchCategoriesNewsApi(category);
    return response;
  }
}
