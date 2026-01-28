import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection timeout With ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send timeout With ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive timeout With ApiServer');
      //here there is an response returned already but bad have an error msg we need to get this mag to display
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Requesr to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'Connection Error');
      case DioExceptionType.unknown:
        return ServerFailure(
          errorMessage: 'Unexpected Error, please try  again later!',
        );
      default:
        return ServerFailure(
          errorMessage: 'Oops threre was an error please try again later',
        );
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    String message = 'Unexpected error';

    try {
      if (response is Map<String, dynamic>) {
        message =
            response['message'] ??
            response['error'] ??
            _extractFromErrors(response['errors']) ??
            'Unknown server error';
      } else if (response is String) {
        message = 'Server returned non-JSON response: $response';
      }
    } catch (_) {
      message = 'Error parsing server response';
    }

    return ServerFailure(errorMessage: message);
  }

  static String? _extractFromErrors(dynamic errors) {
    if (errors is Map && errors.isNotEmpty) {
      final firstError = errors.values.first;
      if (firstError is List && firstError.isNotEmpty) {
        return firstError.first.toString();
      }
      if (firstError is String) return firstError;
    }
    return null;
  }
}
