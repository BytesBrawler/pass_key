abstract class BaseApiService {
  Future<dynamic> postApi(
    dynamic data,
    String url,
  );
  Future<dynamic> getApi(
    String url,
  );
  Future<dynamic> postApiwithToken(
    dynamic data,
    String url,
    String token,
  );
  Future<dynamic> getApiwithToken(
    String url,
    String token,
  );
  //Future<dynamic> postApi(dynamic data , String url , String token);
}
