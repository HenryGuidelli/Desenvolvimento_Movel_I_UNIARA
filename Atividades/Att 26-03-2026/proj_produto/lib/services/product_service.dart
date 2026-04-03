import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ProductService {
  final String baseUrl =
      "https://69cf1f66a4647a9fc6751d70.mockapi.io/produtos/PRODUTO";

  Future<List<Product>> fetchProducts() async {
    try {
      final response = await http
          .get(Uri.parse(baseUrl))
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);
        return jsonResponse.map((data) => Product.fromJson(data)).toList();
      } else {
        throw Exception('Erro do Servidor: ${response.statusCode}');
      }
    } catch (e) {
      // Captura erros de DNS, falta de internet ou timeout
      print("Erro capturado no Service: $e");
      return []; // Retorna lista vazia em vez de quebrar o app
    }
  }

  Future<void> addProduct(Product product) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(product.toJson()),
    );
    if (response.statusCode != 201)
      throw Exception('Erro ao cadastrar produto');
  }
}
