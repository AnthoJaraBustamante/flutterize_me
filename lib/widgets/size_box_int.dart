import 'package:flutter/material.dart';

extension IntExtensions on int? {
  /// Validate given int is not null and returns given value if null.
  int validate({int value = 0}) {
    return this ?? value;
  }

  /// Leaves given height of space
  Widget get height => SizedBox(height: this?.toDouble());
  Widget get width => SizedBox(width: this?.toDouble());
  Widget get square => SizedBox(
        width: this?.toDouble(),
        height: this?.toDouble(),
      );
}
