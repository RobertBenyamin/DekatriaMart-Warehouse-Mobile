import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dekatriamart_warehouse/models/item.dart';

class DetailItemPage extends StatelessWidget {
  final Fields fields;

  DetailItemPage({super.key, required this.fields});

  final formatter = NumberFormat.decimalPattern('id');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Item'),
        backgroundColor: const Color(0xFF1f2937),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    const Icon(
                      Icons.image_rounded,
                      size: 64.0,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      fields.name,
                      style: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              const Text(
                "Harga",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.monetization_on,
                  ),
                  const SizedBox(width: 2.0),
                  Text('Rp${formatter.format(fields.price)}'),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "Jumlah",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.storage_rounded,
                  ),
                  const SizedBox(width: 2.0),
                  Text("${fields.amount}"),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "Deskripsi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                fields.description,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
