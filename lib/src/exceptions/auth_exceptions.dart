

class AuthExceptions implements Exception{

final String message;

AuthExceptions({required this.message});
}

final class AuthError extends AuthExceptions{
  AuthError({required super.message});
}

final class AuthUnauthorizedExcpetion extends AuthExceptions{
  AuthUnauthorizedExcpetion() : super(message:'');
}