// ignore_for_file: file_names

import '../../../all_export.dart';

class CitiesData {
  Crud crud;
  CitiesData(this.crud);
  get() async {
    var response = await crud.postData(AppLink.addressAdd, {});
    return response.fold((l) => l, (r) => r);
  }
}
