import 'package:pass_key/data/network/network_api_service.dart';
import 'package:pass_key/data/urls.dart';

class AppRepository {
  final _apiservice = NetworkApiService();

  Future loginAPi(var data) async {
    dynamic response = await _apiservice.postApi(
      data,
      AppUrl.loginApiUrl,
    );

    return response;
  }
}
