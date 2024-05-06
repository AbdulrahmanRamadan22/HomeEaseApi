// // ignore_for_file: prefer_typing_uninitialized_variables

// import 'dart:developer';
// import 'dart:io';

// import 'package:bloc/bloc.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:home_ease/core/networking/remote/firebase_path.dart';
// import 'package:home_ease/core/networking/remote/firestore_services.dart';
// import 'package:home_ease/features/home/data/models/categorie_model.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

// part 'categorie_state.dart';

// class CategorieCubit extends Cubit<CategorieState> {
//   CategorieCubit() : super(CategorieInitial());

//   Category? categoryModel;


//   Stream<List<Category>> getCategories() => _service.collectionsStream(
// <<<<<<<<<<<<<<  ✨ Codeium Command 🌟 >>>>>>>>>>>>>>>>
// +        /// Streams a list of [Category] objects from the Firestore database
// +        ///
// +        /// The stream emits a list of [Category] objects ordered by their creation time in descending order
// +        ///
//         path: FaireBasePath.Categories(),
//         builder: (data, documentId) => Category.fromMap(data!, documentId),
//         // queryBuilder: (query) => query.where('discountValue', isNotEqualTo: 0),
//       );

// <<<<<<<  c8fbbfc6-7715-481a-aec6-1baff266b5ac  >>>>>>>
//   // Future<void> setCategory(Category category) async {
//   //   _service.setData(path: "categories/${category.id}", data: category.toMap());
//   // }

//   var picker = ImagePicker();

//   File? categoryImage;

//   Future<void> getCategoryImageGallery() async {
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       categoryImage = File(pickedFile.path);
//       emit(GetCategorieImagePickedSuccessState());
//     } else {
//       log('No image selected.');

//       emit(GetCategorieImagePickedErrorState());
//     }
//   }

//   final titleController = TextEditingController();

//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   String categoryImageUrl = "";

//   String get documentId => DateTime.now().toIso8601String();

//   void addAndUpdateCategorie() {
//     emit(UpdateCategorieLoadingState());

//     firebase_storage.FirebaseStorage.instance
//         .ref()
//         .child('categories/${Uri.file(categoryImage!.path).pathSegments.last}')
//         .putFile(categoryImage!)
//         .then((value) {
//       value.ref.getDownloadURL().then((value) {
//         log(value);
//         _service.setData(path: "categories/$documentId",
        
//          data: Category(
//             id: documentId,
//             title: titleController.text,
//             imgUrl: value,
//           ).toMap(),
//          ).then((value){
//            emit(UpdateCategorieSuccessState());
//          }).catchError( (error){
//            emit(UpdateCategorieErrorState());
//          });
//       }).catchError((error) {
//         emit(UploadCategorieImageErrorState());
//       });
//     }).catchError((error) {
//       emit(UploadCategorieImageErrorState());
//     });
//   }

//   // Future<void> addCategory() async {
//   //   emit(UpdateCategorieLoadingState());

//   //   // Get a reference to the categories collection in Firestore
//   //   final collection = FirebaseFirestore.instance.collection('categories');
//   //   await collection
//   //       .add(Category(
//   //     id: documentId,
//   //     title: titleController.text,
//   //     imgUrl: categoryImageUrl,
//   //   ).toMap())
//   //       .then((value) {
//   //     emit(UpdateCategorieSuccessState());
//   //     log('Added category with ID: ${collection.id}');
//   //   }).catchError((error) {
//   //     emit(UpdateCategorieErrorState());
//   //     log('Error adding category: $error');
//   //   });
//   // }

//   // Future<void> updateCategory({
//   //   String? image,
//   // }) async {
//   //   setCategory(Category(
//   //     id: categoryModel!.id,
//   //     title: titleController.text,
//   //     imgUrl: image ?? categoryModel!.imgUrl.toString(),
//   //   ))
//   //       .then((value) => {
//   //             emit(UpdateCategorieSuccessState()),
//   //           })
//   //       // ignore: invalid_return_type_for_catch_error
//   //       .catchError((error) => emit(UpdateCategorieErrorState()));
//   // }
// }
