import 'package:dio/dio.dart';

void main(List<String> arguments) async {
  String url = 'https://dummyjson.com/products';
  Dio client = Dio();

  var response = await client.get(url);
  Map<String, dynamic> data = response.data;
  int sum = 0;
  List<dynamic> products = data['products'];

  List<int> kolichestvo = products.map((p) => p['stock'] as int).toList();

  sum = kolichestvo.reduce((a, p) => a + p);
  print('all stock $sum');
}
