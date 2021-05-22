import 'package:get_it/get_it.dart';

import 'models/IOCModel.dart';

class IOCContainer {
  static addIOC<T extends IOCModel>(T iocModel) {
    GetIt.I.registerSingleton<T>(iocModel);
  }
  static T getInstance<T extends IOCModel>() {
    return GetIt.instance<T>();
  }
}
