import 'package:flutter/material.dart';

class MobileGridView extends StatelessWidget {
  const MobileGridView({super.key});

  final List<Map<String, String>> mobileData = const [
    {
      'name': 'iPhone 14',
      'brand': 'Apple',
      'image': 'https://picsum.photos/id/1011/300/300'
    },
    {
      'name': 'Galaxy S23',
      'brand': 'Samsung',
      'image': 'https://picsum.photos/id/1025/300/300'
    },
    {
      'name': 'Pixel 7',
      'brand': 'Google',
      'image': 'https://picsum.photos/id/1015/300/300'
    },
    {
      'name': 'OnePlus 11',
      'brand': 'OnePlus',
      'image': 'https://picsum.photos/id/1020/300/300'
    },
    {
      'name': 'Redmi Note 12',
      'brand': 'Xiaomi',
      'image': 'https://picsum.photos/id/1044/100/100'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid View Images')),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: mobileData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1, 
        ),
        itemBuilder: (context, index) {
          final phone = mobileData[index];
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 4,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        phone['image']!,
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) =>
                            const Icon(Icons.image_not_supported),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      phone['name']!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text(
                      phone['brand']!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
