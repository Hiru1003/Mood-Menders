class Poll {
  String question;
  List<String> options;
  List<int> votes;
  int selectedOptionIndex;

  Poll({required this.question, required this.options, this.selectedOptionIndex = -1})
      : votes = List.filled(options.length, 0);

  void vote(int optionIndex) {
    if (optionIndex >= 0 && optionIndex < options.length) {
      votes[optionIndex]++;
    }
  }

  double percentage(int optionIndex) {
    int totalVotes = votes.reduce((a, b) => a + b);
    return totalVotes == 0 ? 0 : (votes[optionIndex] / totalVotes) * 100;
  }
}

