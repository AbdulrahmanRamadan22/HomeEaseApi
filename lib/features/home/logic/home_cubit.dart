// // ignore_for_file: non_constant_identifier_names

// import 'package:bloc/bloc.dart';
// import 'package:home_ease/core/networking/remote/firebase_path.dart';
// import 'package:home_ease/core/networking/remote/firestore_services.dart';
// import 'package:home_ease/features/home/data/models/categorie_model.dart';
// import 'package:meta/meta.dart';

// part 'home_state.dart';

// class HomeCubit extends Cubit<HomeState> {
//   HomeCubit() : super(HomeInitial());

//   final _service = FirestoreServices.instance;


//     Stream<List<Category>> getCategories() => _service.collectionsStream(
//         path: FaireBasePath.Categories(),
//         builder: (data, documentId) => Category.fromMap(data!, documentId),
//         // queryBuilder: (query) => query.where('discountValue', isNotEqualTo: 0),
//       );

  
// }
