// class CategoryModel {
//    int? id;
//    String? name;
//    String? path;

//   CategoryModel({this.id, this.name, this.path});

//   factory CategoryModel.fromJson(Map<String, dynamic> json) {
//     return CategoryModel(
//         id: json['id'], name: json['name'], path: json['path']);
//   }
// }



// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  int? status;
  String? message;

  @JsonKey(name:'categories')
   List<Categories>? categories;

  // bool? status;

  CategoryModel({this.message, this.categories, this.status,});

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
@JsonSerializable()
class Categories {
   int? id;
   String? name;
   String? path;

  Categories({
    this.id,
    this.name,
    this.path
 
  });

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
}