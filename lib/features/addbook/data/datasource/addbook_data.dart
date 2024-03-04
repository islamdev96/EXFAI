import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../all_export.dart';

class AddBookData {
  Crud crud;
  AddBookData(this.crud);
  Future<dynamic> getData(String id, String userid) async {
    var response = await crud
        .postData(AppLink.addbook, {"id": id.toString(), "usersid": userid});
    return response.fold((l) => l, (r) => r);
  }

  get() async {
    var response = await crud.postData(AppLink.addbookView, {});
    return response.fold((l) => l, (r) => r);
  }

  add(Map data, File file) async {
    var response =
        await crud.addRequestWithImageOne(AppLink.addbookAdd, data, file);
    return response.fold((l) => l, (r) => r);
  }

  delete(Map data) async {
    var response = await crud.postData(AppLink.addbookDelete, data);
    return response.fold((l) => l, (r) => r);
  }

  edit(Map data, [File? file]) async {
    Either<StatusRequest, Map> response;
    if (file == null) {
      response = await crud.postData(AppLink.addbookEdit, data);
    } else {
      response =
          await crud.addRequestWithImageOne(AppLink.categoriesEdit, data, file);
    }
    return response.fold((l) => l, (r) => r);
  }
}
