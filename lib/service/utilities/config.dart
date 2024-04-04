class Config {
  static const String _baseUrl = "http://192.168.100.88:8080";
  static const String _signupEndpoint = "signup";
  static String getSignupEndpoint() => '$_baseUrl/$_signupEndpoint';

}
