import 'dart:async';

import 'package:functions_framework/functions_framework.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

@CloudFunction()
FutureOr<Response> function(Request request) async{

  final router = Router();

  router.get('/', (Request request){
    return Response.ok("Index");
  });

  router.get('/user/<id>', (Request request, String id){
    return Response.ok("usuario id: $id");
  });

  return router(request);

}
