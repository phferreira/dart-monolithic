import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
part 'UserController.g.dart';

class UserController{

  @Route.get('/')
  FutureOr<Response> getTodos(Request request){
    return Response.ok('Retorna todos');
  }

  @Route.get('/<userId>')
  FutureOr<Response> getUser(Request request, String userId){
    return Response.ok('Retorna usuario: $userId');
  }

  Router get router{
    return _$UserControllerRouter(this);
  }
}
