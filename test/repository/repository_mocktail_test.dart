import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testing_flutter_conf_latam/model/speaker_model.dart';
import 'package:testing_flutter_conf_latam/repository/repository.dart';

class MockRemoteDataSource extends Mock implements RemoteDataSource {}

void main() {
  test("Llamado al servidor correcto", () async {
    final mock = MockRemoteDataSource();
    Repository repository = Repository(mock);

    when(
      () => mock.fecth(),
    ).thenAnswer((_) => Future.value("Exitoso"));

    final result = await repository.fecth();

    expect(result, isA<SpeakerModel>());
  });
}
