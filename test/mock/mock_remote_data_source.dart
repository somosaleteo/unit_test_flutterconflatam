import 'dart:io';

import 'package:testing_flutter_conf_latam/repository/repository.dart';

class MockRemoteDataSourceSucess implements RemoteDataSource {
  @override
  Future<String> fecth() {
    return Future.value("Exitoso");
  }
}

class MockRemoteDataSourceFailed implements RemoteDataSource {
  @override
  Future<String> fecth() {
    throw const SocketException("Fallo");
  }
}
