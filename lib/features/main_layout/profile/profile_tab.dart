import 'package:evently_online_sat/core/resources/assets_manager.dart';
import 'package:evently_online_sat/core/resources/colors_manager.dart';
import 'package:evently_online_sat/features/main_layout/profile/custom_drop_down_item.dart';
import 'package:evently_online_sat/l10n/app_localizations.dart' show AppLocalizations;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: REdgeInsets.symmetric(horizontal: 16, vertical: 16),
          width: double.infinity,

          decoration: BoxDecoration(
            color: ColorsManager.blue,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36.r)),
          ),
          child: SafeArea(
            bottom: false,
            left: false,
            right: false,
            child: Row(
              children: [
                Image.asset(ImageAssets.profileImage),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Moo Saad",
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: ColorsManager.white,
                        ),
                      ),
                      Text(
                        "moosaad@gmail.com",
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorsManager.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 24.h),
       CustomDropDownItem(label:appLocalizations.theme,selectedLabel: appLocalizations.light,menuItems: [appLocalizations.light, appLocalizations.dark],),
        SizedBox(height: 16.h,),
        CustomDropDownItem(label: appLocalizations.language,selectedLabel: "English",menuItems: ["English", "Arabic"],)

        ,Spacer(
          flex: (3.h).toInt(),
        )
        ,Container(
          margin: REdgeInsets.symmetric(horizontal: 16),
       child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: REdgeInsets.symmetric(horizontal: 16, vertical: 16),
                backgroundColor: ColorsManager.red,
                foregroundColor: ColorsManager.white,
                textStyle:  GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w400, color: ColorsManager.white)
              ),
              onPressed: (){}, child: Row(
         children: [
           Icon(Icons.logout),

           SizedBox(width: 8.h,),
           Text(appLocalizations.logout,)
         ],
       )),
     ),
        Spacer(
          flex: (3.h).toInt(),
        )


      ],
    );
  }
}
