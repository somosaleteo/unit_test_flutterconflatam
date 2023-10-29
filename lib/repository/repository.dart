import 'dart:io';

import 'package:testing_flutter_conf_latam/model/speaker_model.dart';

HttpClient httpClient = HttpClient();

class Repository {
  Repository(this.remoteDataSource);
  final RemoteDataSource remoteDataSource;

  Future<SpeakerModel> fecth() async {
    late String result;

    try {
      result = await remoteDataSource.fecth();
    } catch (e) {
      throw Exception();
    }

    final speaker = SpeakerModel.fromString(result);

    return speaker;
  }
}

class RemoteDataSource {
  Future<String> fecth() async {
    final result = await httpClient.get('', 0, '');
    return result.toString();
  }
}
