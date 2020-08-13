import 'package:filmeInfo/components/genre_card.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class Genres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Açao",
      "Crime",
      "Comédia",
      "Drama",
      "Horror",
      "Animação"
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => GenreCard(genre: genres[index]),
      ),
    );
  }
}
