

const apiKey = 'f2d56b9baf69e3f26bac55544c957fff';
const baseUrl = 'https://api.themoviedb.org/3';
const imageBaseUrl = 'https://image.tmdb.org/t/p/w500';

class ApiEndPoints {
  static const downloads = '$baseUrl/trending/all/day?api_key=$apiKey';
  static const homepage = '$baseUrl/movie/popular?api_key=$apiKey';
}
