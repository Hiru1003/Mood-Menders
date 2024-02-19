class LinearMood {
  final int year;
  final int mood;

  LinearMood(this.year, this.mood);
}

List<charts.Series<LinearMood, int>> _createSampleData() {
  final data = [
    LinearMood(0, 5),
    LinearMood(1, 25),
    LinearMood(2, 100),
    LinearMood(3, 75),
    LinearMood(4, 50),
    LinearMood(5, 85),
    LinearMood(6, 40),
  ];

  return [
    charts.Series<LinearMood, int>(
      id: 'Mood',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      areaColorFn: (_, __) =>
          charts.MaterialPalette.blue.shadeDefault.lighter,
      domainFn: (LinearMood mood, _) => mood.year,
      measureFn: (LinearMood mood, _) => mood.mood,
      data: data,
    )
  ];
}