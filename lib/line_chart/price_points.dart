import 'package:collection/collection.dart';

class PricePoint {
  final double x;
  final double y;

  PricePoint({required this.x, required this.y});
}

List<PricePoint> pricePoints() {
  final data = <double>[2, 4, 6, 11, 3, 6, 4];
  return data
      .mapIndexed(
        // x-axis is according to the index(number of elements) in list of data
        // y-axis is according to the elements(integers or doubles) in list of data
        (index, element) => PricePoint(x: index.toDouble(), y: element),
      )
      .toList();
}
