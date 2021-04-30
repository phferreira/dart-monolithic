import 'dart:async';
import 'dart:convert';

import 'package:postgres/postgres.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
part 'UserController.g.dart';

class UserController {
  @Route.get('/')
  FutureOr<Response> getTodos(Request request) async {
    final connection = PostgreSQLConnection('localhost', 4321, 'dados', username: 'postgres', password: '123456');
    await connection.open();

    List<Map<String, Map<String, dynamic>>> result = await connection.mappedResultsQuery('select * from tb_pessoa as t');

    await connection.close();

    return Response.ok(json.encode(result));
  }

  @Route.get('/<userId>')
  FutureOr<Response> getUser(Request request, String userId) {
    return Response.ok('Retorna usuario: $userId');
  }

  Router get router {
    return _$UserControllerRouter(this);
  }
}
