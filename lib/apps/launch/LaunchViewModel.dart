import 'package:hs_training/data/repository/launch/launch_repository.dart';
import 'package:state_notifier/state_notifier.dart';



class LaunchViewModel extends StateNotifier<LaunchRepository> {
  LaunchViewModel(this.launchRepository) : super(LaunchRepository());
  final LaunchRepository launchRepository;

}
