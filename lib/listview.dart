import 'package:flutter/material.dart';

class MobileListView extends StatelessWidget {
  const MobileListView({super.key});

  final List<Map<String, String>> mobileData = const [
    {
      'name': 'iPhone 14',
      'brand': 'Apple',
      'image': 'https://picsum.photos/id/1011/100/100'
    },
    {
      'name': 'Galaxy S23',
      'brand': 'Samsung',
      'image': 'https://picsum.photos/id/1025/100/100'
    },
    {
      'name': 'Pixel 7',
      'brand': 'Google',
      'image': 'https://picsum.photos/id/1015/100/100'
    },
    {
      'name': 'OnePlus 11',
      'brand': 'OnePlus',
      'image': 'https://picsum.photos/id/1020/100/100'
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
      appBar: AppBar(title: const Text('List View Images')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: mobileData.length,
        itemBuilder: (context, index) {
          final phone = mobileData[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(2, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    phone['image']!,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        const Icon(Icons.image_not_supported),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(phone['name']!,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Text(phone['brand']!,
                          style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
