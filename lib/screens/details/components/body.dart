import 'package:filmeInfo/constants.dart';
import 'package:filmeInfo/models/movie.dart';
import 'package:flutter/material.dart';
import 'backdrop_rating.dart';
import 'cast_and_crew.dart';
import 'genres.dart';
import 'title_duration_and_fav_btn.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BackdropAndRating(size: size, movie: movie),
              SizedBox(height: kDefaultPadding / 2),
              TitleDurationAndFabBtn(movie: movie),
              Genres(movie: movie),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding / 2,
                  horizontal: kDefaultPadding,
                ),
                child: Text(
                  "Resumo",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  movie.plot,
                  style: TextStyle(
                    color: Color(0xFF737599),
                  ),
                ),
              ),
              CastAndCrew(casts: movie.cast),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: AppBar(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () => Navigator.pop(context)),
              ),
              elevation: 0.0,
              backgroundColor: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
