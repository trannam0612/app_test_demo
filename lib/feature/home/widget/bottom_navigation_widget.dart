import 'package:app_test_demo/index.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          previous.selectedIndex != current.selectedIndex,
      builder: (context, state) {
        final int selectedIndex = state.selectedIndex ?? 0;
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) => context.read<HomeCubit>().onTabTapped(value),
          selectedItemColor: AppColors.textBlue,
          unselectedItemColor: AppColors.textPrimary,
          selectedLabelStyle: AppTextTheme.ts12w600(
            context,
          ).copyWith(inherit: true, color: AppColors.textBlue),

          unselectedLabelStyle: AppTextTheme.ts12w600(
            context,
          ).copyWith(inherit: true, color: AppColors.textPrimary),
          items: [
            buildBottomNavigationBarItem(
              title: S.of(context).order,
              iconSelected: Assets.iconsIcBriefcaseSelected,
              icUnselected: Assets.iconsIcBriefcaseUnselect,
            ),
            buildBottomNavigationBarItem(
              title: S.of(context).profile,
              iconSelected: Assets.iconsIcUserCircleSelected,
              icUnselected: Assets.iconsIcUserCircleUnselect,
            ),
          ],
        );
      },
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem({
    required String title,
    required String iconSelected,
    required String icUnselected,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(icUnselected),
      label: title,
      activeIcon: SvgPicture.asset(iconSelected, width: 24, height: 24),
    );
  }
}
