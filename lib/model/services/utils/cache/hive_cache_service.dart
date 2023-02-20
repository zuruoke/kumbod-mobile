import 'package:hive_flutter/hive_flutter.dart';

abstract class HiveService {
  addInfo({required Map<String, String> payload});
  dynamic getInfo({required String pathName});
  updateInfo({required String pathName});
  deleteInfo({required List<dynamic> payload});
  // dynamic isActive();
}

class HiveCacheService extends HiveService {
  late Box<dynamic> box;
  String boxName;

  HiveCacheService(this.boxName) {
    box = Hive.box(boxName);
  }

  @override
  addInfo({required Map<String, dynamic> payload}) {
    payload.forEach((key, value) {
      box.put(key, value);
    });
  }

  @override
  dynamic getInfo({required String pathName}) {
    final item = box.get(pathName);
    return item ?? "";
  }

  @override
  updateInfo({required String pathName}) {
    throw UnimplementedError();
  }

  @override
  deleteInfo({required List<dynamic> payload}) {
    for (var key in payload) {
      box.delete(key);
    }
  }

  close() {
    Hive.close();
  }
}
