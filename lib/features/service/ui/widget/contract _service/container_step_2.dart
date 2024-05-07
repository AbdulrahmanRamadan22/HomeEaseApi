import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/features/service/logic/company_cubit.dart';
import 'package:home_ease/features/service/logic/company_state.dart';
import 'package:home_ease/features/service/ui/widget/card_detils_step2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerStepTowContractService extends StatelessWidget {
  const ContainerStepTowContractService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyCubit, CompanyState>(
      builder: (context, state) {
        var categories =
            BlocProvider.of<CompanyCubit>(context).contractCompanies;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Fliter'.tr(), style: TextStyles.font16Black700),
            SizedBox(height: 8.h),
            SizedBox(
              height: 28.h,
            ),
            if (state is GetContractAllCompaniesLoading)
              const Center(
                  child: CircularProgressIndicator(
                color: ColorsApp.mainGreen,
              )),
            if (state is GetContractAllCompaniesSuccess)
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (itemBuilder, index) {
                  return CardDetails(
                    companies: categories[index],
                  );
                },
                separatorBuilder: (separatorBuilder, index) {
                  return SizedBox(
                    height: 18.h,
                  );
                },
                itemCount: categories.length,
              ),
            SizedBox(
              height: 40.h,
            ),
          ],
        );
      },
    );
  }
}
