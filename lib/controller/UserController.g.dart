// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserController.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$UserControllerRouter(UserController service) {
  final router = Router();
  router.add('GET', r'/', service.getTodos);
  router.add('GET', r'/<userId>', service.getUser);
  return router;
}
