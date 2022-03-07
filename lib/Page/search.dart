import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:test_flutter/Components/recipeSearchWidget.dart';
import 'package:test_flutter/model/recipe.dart';
import 'package:provider/provider.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final FloatingSearchBarController controller = FloatingSearchBarController();

  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text("Search our recipes", style: TextStyle(color: Colors.black)),
    ),
      body: Center(child: ChangeNotifierProvider(
        create: (context) => RecipeModel(),
        child: Consumer<RecipeModel>(
          builder: (context, model, _) => FloatingSearchBar(
            hint: 'Search recipes',
            controller: controller,
            scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
            transitionDuration: const Duration(milliseconds: 800),
            transitionCurve: Curves.easeInOut,
            physics: const BouncingScrollPhysics(),
            axisAlignment: isPortrait ? 0.0 : -1.0,
            openAxisAlignment: 0.0,
            width: isPortrait ? 600 : 500,
            debounceDelay: const Duration(milliseconds: 500),
            onQueryChanged: model.onQueryChanged,
            transition: CircularFloatingSearchBarTransition(),
            progress: model.isLoading,
            actions: [
              FloatingSearchBarAction(
                showIfOpened: false,
                child: CircularButton(
                  icon: const Icon(Icons.cancel, color: Colors.red),
                  onPressed: () {},
                ),
              ),
              FloatingSearchBarAction.searchToClear(
                showIfClosed: false,
              ),
            ],
            builder: (context, transition) {
              return Container(
                color: Colors.white,
                child: ListView(
                  shrinkWrap: true,
                  children: recipeSearchfromList(model.suggestions),
                )
              );
            },
          ),
        ),
      ))
    );
  }
}

