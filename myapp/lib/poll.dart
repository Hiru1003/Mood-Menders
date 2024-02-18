class Poll {
  String question;
  List<String> options;
  int selectedOptionIndex;

  Poll({required this.question, required this.options, this.selectedOptionIndex = -1});
}
