import 'package:flutter/material.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';

class RestaurantCategoeyItem extends StatelessWidget {
  const RestaurantCategoeyItem({
    super.key,
    required this.e,
  });

  final RestaurantModel e;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 110,
      child: SizedBox(
        width: double.infinity, // Set a maximum width for the container
        child: Row(
          children: [
            Expanded(
              child: Wrap(
                children: e.category
                    .asMap()
                    .entries
                    .map(
                      (entry) => Row(
                        mainAxisSize: MainAxisSize
                            .min, // Ensure that each category row takes minimum space
                        children: [
                          Text(
                            entry.value.trim() +
                                (entry.key != e.category.length - 1
                                    ? ', '
                                    : ''), // Add comma if it's not the last item
    
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontSize: 11),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

