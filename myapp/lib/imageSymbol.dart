import 'dart:math';
import 'dart:ui';

import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageSymbolRenderer extends charts.CircleSymbolRenderer {
  final ui.Image image;

  ImageSymbolRenderer(this.image);

  @override
  void paint(charts.ChartCanvas canvas, Rectangle<num> bounds,
      {List<int>? dashPattern,
      charts.Color? fillColor,
      charts.FillPatternType? fillPattern,
      charts.Color? strokeColor,
      double? strokeWidthPx}) {
    super.paint(canvas, bounds,
        dashPattern: dashPattern,
        fillColor: fillColor,
        fillPattern: fillPattern,
        strokeColor: strokeColor,
        strokeWidthPx: strokeWidthPx);
    canvas.drawImage(image, Point(bounds.left - image.width / 2, bounds.top - image.height / 2));
  }
}