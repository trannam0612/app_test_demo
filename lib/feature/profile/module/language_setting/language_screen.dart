import 'package:app_test_demo/index.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).language), centerTitle: true),
      body: BlocBuilder<AppCubit, AppState>(
        buildWhen: (previous, current) =>
            previous.languageEnum != current.languageEnum,
        builder: (context, state) {
          final LanguageEnum? languageEnum = state.languageEnum;
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _buildLanguageItem(
                  context,
                  title: S.of(context).viLanguage,
                  icFlag: Assets.iconsIcFlagVi,
                  isSelected: languageEnum == LanguageEnum.vi,
                  onTap: () {
                    context.read<AppCubit>().changeLanguage(LanguageEnum.vi);
                  },
                ),
                const SizedBox(height: 16),
                _buildLanguageItem(
                  context,
                  title: S.of(context).enLanguage,
                  icFlag: Assets.iconsIcFlagEn,
                  isSelected: languageEnum == LanguageEnum.en,
                  onTap: () {
                    context.read<AppCubit>().changeLanguage(LanguageEnum.en);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  _buildLanguageItem(
    BuildContext context, {
    required String title,
    required String icFlag,
    bool isSelected = false,
    Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.borderColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              isSelected
                  ? Assets.iconsIcRadioSelected
                  : Assets.iconsIcRadioUnselected,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: AppTextTheme.ts16w600(context).copyWith(
                  color: isSelected
                      ? AppColors.primary
                      : AppColors.textPrimaryNew,
                ),
              ),
            ),
            SvgPicture.asset(icFlag, width: 24, height: 24),
          ],
        ),
      ),
    );
  }
}
