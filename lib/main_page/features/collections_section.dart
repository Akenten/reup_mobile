import 'package:flutter/material.dart';
import 'collection.dart';

class CollectionsSection extends StatelessWidget {
  const CollectionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Collection(
            data: CollectionData('Название коллекции', 'бренд',
                Image.asset('assets/images/reup_collection.jpg')),
          ),
          Collection(
            data: CollectionData('Название коллекции', 'бренд',
                Image.asset('assets/images/reup_collection.jpg')),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Collection(
            data: CollectionData('Название коллекции', 'бренд',
                Image.asset('assets/images/reup_collection.jpg')),
          ),
          Collection(
            data: CollectionData('Название коллекции', 'бренд',
                Image.asset('assets/images/reup_collection.jpg')),
          ),
        ],
      ),
    ]);
  }
}
