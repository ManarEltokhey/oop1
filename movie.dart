
class Movie {
  String title;
  String studio;
  String rating;
  Movie(this.title, this.studio, {this.rating = "PG"});
  List<Movie> getPG(List<Movie> movies) {
    List<Movie> pgMovies = [];
    for (int i = 0; i < movies.length; i++) {
      if (movies[i].rating.contains("PG")) {
        pgMovies.add(movies[i]);
      }
    }
    return pgMovies;
  }
}
void main() {
  Movie m1 = Movie("Casino Royale", "Eon Productions", rating: "PG13");
  Movie m2 = Movie("Movie 2", "Studio 2");
  Movie m3 = Movie("Movie 3", "Studio 3", rating: "PG");
  Movie m4 = Movie("Movie 4", "Studio 4", rating: "R");
  List<Movie> movies = [m1, m2, m3, m4];
  List<Movie> result = m1.getPG(movies);
  for (int i = 0; i < result.length; i++) {
    print(result[i].title);
    print(result[i].rating);
  }
}
