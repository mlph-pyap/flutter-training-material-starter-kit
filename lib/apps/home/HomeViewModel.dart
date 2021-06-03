import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hs_training/data/model/home/note_db_value_object.dart';
import 'package:hs_training/data/model/model.dart';
import 'package:hs_training/data/repository/home/home_repository.dart';
import 'package:state_notifier/state_notifier.dart';

class HomeChangeNotifier extends ChangeNotifier {
  ///Reload the state using ChangeNotifier
  Future<void> reloadState() async {
    notifyListeners();
  }
}

class HomeViewModel extends StateNotifier<HomeRepository> {
  HomeViewModel(this.launchRepository) : super(HomeRepository());
  final HomeRepository launchRepository;

  //save the data using repository
  Future<void> createData(String subject, String note) async {
    launchRepository.create(NoteDbValueObject(subject, note, true));
  }

  //Get the data on repository
  Future<List<Model>> findAll() async => launchRepository.findAll();
}
