import 'package:flutter/material.dart';
import '../screens/categories_screen.dart';
import '../screens/category_meals_screen.dart';
import 'package:flutter/cupertino.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItem(this.title, this.color, this.id);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryMealscreen.routeName, 
      arguments: {
      'id': id,
      'title': title,
    }
        //
        // Platform.isIOS
        //     ? CupertinoPageRoute(
        //         builder: (_) {
        //           return CategoryMealsScreen(id,title);
        //         },
        //       )
        //     : MaterialPageRoute(
        //         builder: (_) {
        //           return CategoryMealsScreen(id,title);
        //         },
        //       ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.7),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
