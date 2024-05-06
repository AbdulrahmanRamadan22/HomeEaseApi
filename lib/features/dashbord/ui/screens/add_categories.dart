// // ignore_for_file: non_constant_identifier_names

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:home_ease/core/helpers/navigation_extensions.dart';
// import 'package:home_ease/core/theming/colors.dart';
// import 'package:home_ease/core/theming/text_styles%20.dart';
// import 'package:home_ease/core/widgets/app_text_form_field.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:home_ease/core/widgets/custom_button.dart';
// import 'package:home_ease/features/categorie/logic/categorie_cubit.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class AddCategores extends StatelessWidget {
//   const AddCategores({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CategorieCubit(),
//       child: BlocConsumer<CategorieCubit, CategorieState>(
//         listener: (context, state) {
//           if (state is UpdateCategorieSuccessState) {
//             context.pop();
//           }
//           if (state is UpdateCategorieLoadingState) {
//             const Center(
//               child: CircularProgressIndicator(
//                 color: ColorsApp.mainGreen,
//               ),
//             );
//           }
//         },
//         builder: (context, state) {
//           final Cubit = BlocProvider.of<CategorieCubit>(context);

//           var categoryImage = Cubit.categoryImage;

//           // if (state is UpdateCategorieLoadingState) {
//           //   return const Center(
//           //       child: CircularProgressIndicator(
//           //     color: ColorsApp.mainGreen,
//           //   ));
//           // }

//           return Scaffold(
//             appBar: AppBar(
//               centerTitle: true,
//               elevation: 1,
//               title: Text('Add Categores', style: TextStyles.font18Black700),
//             ),
//             body: Form(
//               key: Cubit.formKey,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
//                 child: ListView(
//                   children: [
//                     SizedBox(height: 10.h),
//                     if (state is UpdateCategorieLoadingState)
//                       const LinearProgressIndicator(
//                         color: ColorsApp.mainGreen,
//                       ),
//                     SizedBox(
//                       height: 40.h,
//                     ),
//                     Stack(
//                       alignment: AlignmentDirectional.center,
//                       children: [
//                         // state is ProfileUpdateLoadingState

//                         if (categoryImage != null)
//                           Container(
//                             height: 200.0.h,
//                             width: 300.w,
//                             decoration: BoxDecoration(
//                               borderRadius: const BorderRadius.only(
//                                 topLeft: Radius.circular(
//                                   4.0,
//                                 ),
//                                 topRight: Radius.circular(
//                                   4.0,
//                                 ),
//                               ),
//                               //  if(categoryImage!=null)
//                               image: DecorationImage(
//                                 image: FileImage(categoryImage),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         IconButton(
//                           icon: const CircleAvatar(
//                             backgroundColor: ColorsApp.mainGreen,
//                             radius: 40.0,
//                             child: Icon(
//                               Icons.add_a_photo,
//                               color: ColorsApp.white,
//                               // IconBroken.Indicator,
//                               // IconBroken.Camera,
//                               size: 30.0,
//                             ),
//                           ),
//                           onPressed: () {
//                             Cubit.getCategoryImageGallery();
//                             //  BlocProvider.of<ProfileCubit>(context)
//                             //   .getCoverImageGallery();
//                           },
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 40.h,
//                     ),
//                     AppTextFormField(
//                       hintText: 'Enter Categores Name',
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please Enter Categores Name';
//                         } else if (value.length < 3) {
//                           return 'Please Enter Valid Categores Name';
//                         }
//                       },
//                       controller: Cubit.titleController,
//                     ),
//                     SizedBox(
//                       height: 40.h,
//                     ),
//                     if (state is UpdateCategorieLoadingState)
//                       const LinearProgressIndicator(
//                         color: ColorsApp.mainGreen,
//                       ),
//                     SizedBox(
//                       height: 10.h,
//                     ),
//                     SizedBox(height: 20.h),
//                     CustomButton(
//                       text: 'Add Categores',
//                       onPressed: () {
//                         validateThenAddCategory(context);
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   void validateThenAddCategory(BuildContext context) {
//     if (context.read<CategorieCubit>().formKey.currentState!.validate()) {
//       if (context.read<CategorieCubit>().categoryImage != null) {
//         context.read<CategorieCubit>().addAndUpdateCategorie();
//       }
//     }
//   }
// }
