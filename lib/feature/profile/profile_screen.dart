import 'package:app_test_demo/index.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 72,
          width: double.infinity,
          color: AppColors.primary, // header nền xanh
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: AppColors.backgroundColor),
            child: Column(
              children: [buildUserInfo(context), _buildListItem(context)],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildUserInfo(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -40),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: const Color(0x261F1F1F),
                offset: Offset(0, 0),
                blurRadius: 32,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(Assets.imagesImgAvatar),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thủy Tiên',
                      style: AppTextTheme.ts20w600(
                        context,
                      ).copyWith(color: AppColors.textPrimary),
                    ),
                    Text(
                      'vanmach@gmail.com',
                      style: AppTextTheme.ts14w600(
                        context,
                      ).copyWith(color: AppColors.textGray),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildListItem(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<AppCubit, AppState>(
          buildWhen: (previous, current) =>
              previous.languageEnum != current.languageEnum,
          builder: (context, state) {
            final LanguageEnum? languageEnum = state.languageEnum;
            return _buildItemWidget(
              context,
              icon: Assets.iconsIcLanguage,
              title: S.of(context).language,
              subTitle: languageEnum?.title,
              onTap: () {
                context.toLanguageSettingRoute();
              },
              isShowArrow: true,
            );
          },
        ),
        SizedBox(height: 8),
        _buildItemWidget(
          context,
          icon: Assets.iconsIcLogout,
          title: S.of(context).logOut,
          onTap: () {},
        ),
      ],
    );
  }

  _buildItemWidget(
    BuildContext context, {
    required String icon,
    required String title,
    String? subTitle,
    bool? isShowArrow = false,
    required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: AppColors.white),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(icon, width: 24, height: 24),
                SizedBox(width: 8),
                Text(
                  title,
                  style: AppTextTheme.ts16w600(
                    context,
                  ).copyWith(color: AppColors.textPrimaryNew),
                ),
              ],
            ),
            Row(
              children: [
                if (subTitle != null && subTitle.isNotEmpty) ...[
                  Text(
                    subTitle,
                    style: AppTextTheme.ts16w600(
                      context,
                    ).copyWith(color: AppColors.textPrimaryNew),
                  ),
                  SizedBox(width: 8),
                ],
                if (isShowArrow ?? false)
                  SvgPicture.asset(
                    Assets.iconsIcArrowRight,
                    width: 24,
                    height: 24,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
