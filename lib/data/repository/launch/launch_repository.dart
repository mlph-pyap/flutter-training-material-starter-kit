import 'package:hs_training/data/model/home/note_db_value_object.dart';
import 'package:hs_training/data/model/model.dart';
import 'package:hs_training/data/database/database.dart';
import 'package:hs_training/data/repository/repository.dart';

class LaunchRepository extends HttpRepository {
  @override
  Future<bool> create(Model model) async {
    //Save the data on sqlite
    NoteDbValueObject noteDbValueObject = model as NoteDbValueObject;
    final notes = Note();
    notes.subject = noteDbValueObject.subject;
    notes.notes = noteDbValueObject.notes;
    notes.save();
    return true;
  }

  @override
  Future<bool> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<Model>> findAll() async {
    List<NoteDbValueObject> listData = [];
    //Access the data in SQLITE
    final notesList = await Note().select().toList();
    //Map the data in the list
    notesList.forEach((element) {
      String subject = element.subject!;
      String notes = element.notes!;
      bool isActive = element.isActive!;
      listData.add(NoteDbValueObject(subject, notes, isActive));
    });

    return listData;
  }

  @override
  Future<Model> findBy(String id) {
    // TODO: implement findBy
    throw UnimplementedError();
  }

  @override
  Future<bool> update(Model model) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
