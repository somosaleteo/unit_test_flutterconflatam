import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter_conf_latam/discount.dart';

void main() {
  late Discount discount;
  setUp(() {
    discount = Discount();
  });

  group('Discount of clothes', () {
    test('Discount 25% of clothes of 10000 should be 7500', () {
      //Arrange

      //Act
      final result = discount.clothes(10000);

      //Assert
      expect(result, 7500);
    });

    test('Discount 25% of clothes of 1000 should be 750', () {
      //Arrange

      //Act
      final result = discount.clothes(1000);

      //Assert
      expect(result, 750);
    });
  });

  test('Discount percentage value is 0.25', () {
    //Arrange

    //Act

    //Assert
    expect(Discount.percentage, 0.25);
  });
}
