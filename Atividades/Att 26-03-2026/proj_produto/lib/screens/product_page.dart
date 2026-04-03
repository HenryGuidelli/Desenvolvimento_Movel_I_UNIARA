import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/product_service.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final ProductService _service = ProductService();
  late Future<List<Product>> _futureProducts;

  @override
  void initState() {
    super.initState();
    _refreshList();
  }

  void _refreshList() {
    setState(() {
      // Apenas atribua o Future, sem 'await' e sem 'async' no setState
      _futureProducts = _service.fetchProducts();
    });
  }

  void _showForm() {
    final nameCtrl = TextEditingController();
    final priceCtrl = TextEditingController();
    final descCtrl = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 20,
          right: 20,
          top: 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameCtrl,
              decoration: const InputDecoration(labelText: "Nome"),
            ),
            TextField(
              controller: priceCtrl,
              decoration: const InputDecoration(labelText: "Preço"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: descCtrl,
              decoration: const InputDecoration(labelText: "Descrição"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await _service.addProduct(
                  Product(
                    name: nameCtrl.text,
                    price: double.tryParse(priceCtrl.text) ?? 0.0,
                    description: descCtrl.text,
                  ),
                );
                if (mounted) Navigator.pop(context);
                _refreshList();
              },
              child: const Text("Salvar"),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produtos"),
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: _refreshList),
        ],
      ),
      body: FutureBuilder<List<Product>>(
        future: _futureProducts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return const Center(child: CircularProgressIndicator());
          if (snapshot.hasError) return Center(child: Text("Erro ao carregar"));

          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, i) {
              final p = snapshot.data![i];
              return ListTile(
                title: Text(p.name),
                subtitle: Text("R\$ ${p.price}"),
                onTap: () => showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text(p.name),
                    content: Text(p.description),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("OK"),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showForm,
        child: const Icon(Icons.add),
      ),
    );
  }
}
