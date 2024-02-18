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

void main() {
  Poll poll = Poll(question: 'Question?', options: ['Option 1', 'Option 2', 'Option 3']);

  // Simulate votes
  for (int i = 0; i < 100; i++) {
    if (i < 40) {
      poll.vote(0); // 40 votes for Option 1
    } else if (i < 70) {
      poll.vote(1); // 30 votes for Option 2
    } else {
      poll.vote(2); // 30 votes for Option 3
    }
  }

  print('Percentage for Option 1: ${poll.percentage(0)}%');
}