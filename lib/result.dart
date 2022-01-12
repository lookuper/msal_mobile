import 'exception.dart';
import 'payload.dart';

class MsalMobileResult {
  final bool isSuccess;
  final MsalMobileException? exception;
  final MsalMobileException? innerException;

  MsalMobileResult(
      {required this.isSuccess, this.exception, this.innerException});

  MsalMobileResult.nullResponse() :
      isSuccess = false,
      exception = MsalMobileException(message: "response is null"),
      innerException = MsalMobileException(message: "response is null", innerException: MsalMobileException(message: "null"));

  MsalMobileResult.fromJson(Map<String, dynamic> json)
      : isSuccess = json['isSuccess'],
        exception = json['exception'] != null
            ? MsalMobileException.fromJson(
                (json['exception'] as Map<String, dynamic>))
            : null,
        innerException = json['innerException'] != null
            ? MsalMobileException.fromJson(
                (json['innerException'] as Map<String, dynamic>))
            : null;
}

class MsalMobileGetAccountResult implements MsalMobileResult {
  final bool isSuccess;
  final MsalMobileGetAccountResultPayload? payload;
  final MsalMobileException? exception;
  final MsalMobileException? innerException;

  MsalMobileGetAccountResult.nullResponse() :
      isSuccess = false,
      payload = null,
      exception = MsalMobileException(message: "response is null"),
      innerException = MsalMobileException(message: "response is null");

  MsalMobileGetAccountResult.fromJson(Map<String, dynamic> json)
      : isSuccess = json['isSuccess'],
        payload = json['payload'] != null
            ? MsalMobileGetAccountResultPayload.fromJson(
                (json['payload'] as Map<String, dynamic>))
            : null,
        exception = json['exception'] != null
            ? MsalMobileException.fromJson(
                (json['exception'] as Map<String, dynamic>))
            : null,
        innerException = json['innerException'] != null
            ? MsalMobileException.fromJson(
                (json['innerException'] as Map<String, dynamic>))
            : null;
}

class MsalMobileAuthenticationResult implements MsalMobileResult {
  final bool isSuccess;
  final MsalMobileAuthenticationResultPayload? payload;
  final MsalMobileException? exception;
  final MsalMobileException? innerException;
  final bool? isUiRequired;

  MsalMobileAuthenticationResult.nullResponse() :
        isSuccess = false,
        isUiRequired = false,
        payload = null,
        exception = MsalMobileException(message: "response is null"),
        innerException = MsalMobileException(message: "response is null");

  MsalMobileAuthenticationResult.fromJson(Map<String, dynamic> json)
      : isSuccess = json['isSuccess'],
        isUiRequired = json['isUiRequired'],
        payload = json['payload'] != null
            ? MsalMobileAuthenticationResultPayload.fromJson(
                (json['payload'] as Map<String, dynamic>))
            : null,
        exception = json['exception'] != null
            ? MsalMobileException.fromJson(
                (json['exception'] as Map<String, dynamic>))
            : null,
        innerException = json['innerException'] != null
            ? MsalMobileException.fromJson(
                (json['innerException'] as Map<String, dynamic>))
            : null;
}
