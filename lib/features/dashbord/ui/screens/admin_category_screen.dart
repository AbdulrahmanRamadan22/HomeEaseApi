// // ignore_for_file: non_constant_identifier_names

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:home_ease/core/helpers/navigation_extensions.dart';
// import 'package:home_ease/core/routing/routes.dart';
// import 'package:home_ease/core/theming/colors.dart';
// import 'package:home_ease/core/theming/text_styles%20.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:home_ease/core/widgets/build_grid_view.dart';
// import 'package:home_ease/features/categorie/logic/categorie_cubit.dart';
// import 'package:home_ease/features/home/data/models/categorie_model.dart';
// import 'package:home_ease/features/home/ui/widgets/build_category_item.dart';
// import 'package:home_ease/translations/locale_keys.g.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class AdminCategoriesScreen extends StatelessWidget {
//   const AdminCategoriesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CategorieCubit(),
//       child: BlocConsumer<CategorieCubit, CategorieState>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           final Cubit = BlocProvider.of<CategorieCubit>(context);

//           return Scaffold(
//             backgroundColor: ColorsApp.lightGreen,
//             appBar: AppBar(
//               // leading: const SizedBox(),
//               title: Text(
//                 LocaleKeys.categories.tr(),
//                 // 'Categories'.tr()
//               ),
//               centerTitle: true,
//             ),
//             floatingActionButton: FloatingActionButton(
//               backgroundColor: ColorsApp.mainGreen,
//               onPressed: () {
//                 context.pushNamed(Routes.addcategoriesdashbordscreen);

//                 // Cubit.addCategory();
//               },
//               child: const Icon(Icons.add, color: Colors.white),
//             ),
//             body: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20.w),
//               child: ListView(
//                 children: [
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   StreamBuilder<List<Category>>(
//                     stream: Cubit.getCategories(),
//                     builder: (context, snapshot) {
//                       if (snapshot.connectionState == ConnectionState.active) {
//                         final category = snapshot.data;
//                         if (category == null || category.isEmpty) {
//                           return Center(
//                             child: Text('No Data Available!',
//                                 style: TextStyles.font24Black700.copyWith(color: Colors.red)),
//                           );
//                         }
//                         return BuildGridView(
//                           itemCount: category.length,
//                           itemBuilder: (context, index) {
//                             return BuildCategoryItem(
//                               category: category[index],
//                             );
//                           },
//                         );
//                       }
//                       return const Center(
//                         child: CircularProgressIndicator(
//                           color: ColorsApp.mainGreen,
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
