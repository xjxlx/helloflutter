import 'package:http/http.dart' as http;

void main(List<String> args) async {
  var url = "http://www.baidu.com/";

  final uri = Uri.parse(url);
  var response = await http.get(uri);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
}
