import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter_conf_latam/model/speaker_model.dart';
import 'package:testing_flutter_conf_latam/repository/repository.dart';

import '../mock/mock_remote_data_source.dart';

void main() {
  test("Llamado al servidor correcto", () async {
    Repository repository = Repository(MockRemoteDataSourceSucess());

    final result = await repository.fecth();

    expect(result, isA<SpeakerModel>());
  });

  test("Llamado al servidor caido", () async {
    Repository repository = Repository(MockRemoteDataSourceFailed());

    expect(repository.fecth(), throwsException);
  });
}
