import 'package:app_test_demo/feature/home/cubit/home_cubit.dart';
import 'package:app_test_demo/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late ListWorkCubit _listWorkCubit;
  @override
  void initState() {
    super.initState();
    _listWorkCubit = context.read<ListWorkCubit>();
    _listWorkCubit.initialize();
  }
  final List<Widget> _screens = [
    const ListWordOrderScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.primary,
      bottomNavigationBar: BottomNavigationWidget(),
      body: SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return IndexedStack(index: state.selectedIndex, children: _screens);
          },
        ),
      ),
    );
  }
}
