import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hs_training/data/model/model.dart';
import 'package:hs_training/data/repository/home/home_repository.dart';
import 'package:hs_training/data/repository/launch/launch_repository.dart';

import 'HomeViewModel.dart';

final homeViewModel = HomeViewModel(HomeRepository());
final homeViewModelProvider = StateNotifierProvider((_) => homeViewModel);

T useChangeNotifierListenableState<T extends ChangeNotifier>(T data) {
  final state = useState<T>(data);
  return useListenable(state.value);
}

//This is home page
class HomeView extends HookWidget {
  //Textfield controller for subject and note
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final searchChangeNotifier = useChangeNotifierListenableState(
      HomeChangeNotifier(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Training on how save in SQLite'),
      ),
      body: Column(
        children: [
          TextFormField(
              controller: _subjectController,
              decoration: InputDecoration(
                hintText: 'Subject',
              )),
          TextFormField(
              controller: _noteController,
              decoration: InputDecoration(
                hintText: 'Notes',
              )),
          FutureBuilder(
              future: useProvider(homeViewModelProvider).findAll(),
              builder: (context, snapshot) {
                //If has data, this text will show
                if (snapshot.hasData) {
                  final List<Model> listData = snapshot.data as List<Model>;
                  return Text(
                    'Data insert count: ${listData.length}',
                    style: TextStyle(fontSize: 24),
                  );
                }
                //If has no data, this text will show
                return Text('Error');
              })
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // for every press, it save to the database
          homeViewModel.createData(
              _subjectController.text, _noteController.text);
          searchChangeNotifier.reloadState();
          _subjectController.text = "";
          _noteController.text = "";
        },
        label: const Text('Add new data'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
    ;
  }
}
