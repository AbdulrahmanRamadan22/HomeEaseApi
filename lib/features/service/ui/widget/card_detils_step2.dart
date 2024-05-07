// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/helpers/constants.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/features/service/data/models/product_company.dart';

class CardDetails extends StatelessWidget {
  final Companies? companies;

  const CardDetails({super.key, this.companies});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorsApp.white,
          border: Border.all(color: ColorsApp.gray),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 12.h),
            ListTile(
              leading: Image.network(
                "$serverPhotoURL/${companies!.path}",
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${companies!.name}', style: TextStyles.font16Black700),
                  const Text("⭐⭐⭐⭐⭐"),
                ],
              ),
              subtitle: Text(
                '${companies!.description}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Column(
                children: [
                  Text("Price", style: TextStyles.font14Bgray500),
                  Text('${companies!.price}', style: TextStyles.font16Black700),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Row(
                children: [
                  Text("${companies!.nationality}",
                      style: TextStyles.font14Black500),
                  const Spacer(),
                  Image.asset("assets/images/Group1.png"),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text("${companies!.name}", style: TextStyles.font14Black500),
                  const Spacer(),
                  const Icon(Icons.watch_later_outlined),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    "${companies!.numbers} Months",
                  ),
                ],
              ),
            )

            // Row(
            //   children: [
            //     Text("${companies!.nationality}",
            //         style: TextStyles.font14Black500),
            //     SizedBox(
            //       width: 8.w,
            //     ),
            //     const Spacer(),
            //     Image.asset("assets/images/Group1.png"),
            //     SizedBox(
            //       width: 8.w,
            //     ),
            //     Text("${companies!.name}", style: TextStyles.font14Black500),
            //     const Spacer(),
            //     const Icon(Icons.hourglass_bottom_outlined),
            //     Text(
            //       "${companies!.numbers} ${companies!.tybe}",
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
