import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/models/News_channel_headlines_models.dart';
import 'package:newsapp/models/category_new_model.dart';

class NewsRepository {
  Future<NewsChannelHeadlineModel> fetchNewUserLineApi(
      String channelName) async {
    String url =
        'https://newsapi.org/v2/top-headlines?sources=${channelName}&apiKey=a52f65f95a354827967d770915cf0bd3';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsChannelHeadlineModel.fromJson(body);
    }
    throw Exception('Error');
  }

  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category) async {
    String url =
        'https://newsapi.org/v2/everything?q=${category}&apiKey=a52f65f95a354827967d770915cf0bd3';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return CategoriesNewsModel.fromJson(body);
    }
    throw Exception('Error');
  }
}
