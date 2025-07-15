import 'package:app_test_demo/index.dart';

class ListWordOrderScreen extends StatelessWidget {
  const ListWordOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              S.of(context).workOrders,
              style: AppTextTheme.ts32w600(
                context,
              ).copyWith(color: AppColors.textInverse),
            ),
          ),
        ),
        buildListWork(),
      ],
    );
  }

  Expanded buildListWork() {
    return Expanded(
      child: Container(
        // padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(color: AppColors.backgroundColor),
        child: BlocBuilder<ListWorkCubit, ListWorkState>(
          buildWhen: (previous, current) =>
              previous.loadState != current.loadState,
          builder: (context, state) {
            final List<WorkItemModel> listWorkOrder =
                state.listWorkOrder ?? <WorkItemModel>[];
            if (state.loadState == LoadState.loading) {
              return Center(child: CircularProgressIndicator());
            }
            if (state.loadState == LoadState.failure) {
              return Center(
                child: Text(state.message ?? S.of(context).loadingDataError),
              );
            }
            if (state.loadState == LoadState.success &&
                (listWorkOrder.isEmpty ?? false)) {
              return Center(child: Text(S.of(context).emptyData));
            }
            return ListView.separated(
              padding: EdgeInsets.zero,

              itemBuilder: (context, index) {
                final workItemModel = listWorkOrder[index];
                return OrderItemWidget(workItemModel: workItemModel);
              },
              separatorBuilder: (context, index) => SizedBox(height: 8),
              itemCount: listWorkOrder.length,
            );
          },
        ),
      ),
    );
  }
}
