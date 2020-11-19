import 'package:app_restaurant/app/models/restaurant_model.dart';
import 'package:flutter/material.dart';

class ItemRestaurant extends StatelessWidget {
  final RestaurantModel restaurantModel;

  const ItemRestaurant({Key key, this.restaurantModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                child: Visibility(
                  visible: restaurantModel.restaurant.thumb != "",
                  child: Image.network(restaurantModel.restaurant.thumb),
                  replacement: Image.asset('assets/images/no_image.png'),
                ),
              ),
              Text(restaurantModel.restaurant.name),
            ],
          ),
        ),
      ),
    );
  }
}
