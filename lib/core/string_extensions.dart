extension StringExtensions on String {
  String get firstLetterUpper => this[0].toUpperCase() + this.substring(1);
}
