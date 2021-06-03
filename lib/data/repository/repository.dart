import 'package:hs_training/data/model/model.dart';

import '../database.dart';

abstract class Repository <T extends Model>{
  Future<bool> create(final T model);

  ///
  Future<List<T>> findAll();

  ///
  Future<T> findBy(final String id);

  ///
  Future<bool> update(final T model);

  ///
  Future<bool> delete(final String id);
}

abstract class HttpRepository<T> extends Repository {

  //Future getDB() async {
  //  return createDb();
  //}
}
