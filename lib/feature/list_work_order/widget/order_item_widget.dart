import 'package:app_test_demo/core/extensions/date_time_extension.dart';
import 'package:app_test_demo/index.dart';

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({super.key, this.workItemModel});

  final WorkItemModel? workItemModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.toWorkOrderDetailRoute(workItemModel: workItemModel),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(color: AppColors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    '#${workItemModel?.id}',
                    style: AppTextTheme.ts14w500(
                      context,
                    ).copyWith(color: AppColors.textPrimary),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                _buildStatusWidget(context, status: workItemModel?.statusEnum),
              ],
            ),
            SizedBox(height: 4),
            Text(
              workItemModel?.title ?? '',
              style: AppTextTheme.ts12w600(
                context,
              ).copyWith(color: AppColors.textPrimary),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 4),
            Text(
              workItemModel?.description ?? '',
              style: AppTextTheme.ts12w400(
                context,
              ).copyWith(color: AppColors.textPrimary),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Divider(color: AppColors.borderDivider),
            Row(
              children: [
                Expanded(
                  child: Text(
                    workItemModel?.email ?? '',
                    style: AppTextTheme.ts12w400(
                      context,
                    ).copyWith(color: AppColors.textPrimary),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  workItemModel?.createdAt?.dateTimeFormat ?? '',
                  style: AppTextTheme.ts12w400(
                    context,
                  ).copyWith(color: AppColors.textGray6),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildStatusWidget(BuildContext context, {WorkOrderStatus? status}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: status?.color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        status?.title ?? '',
        style: AppTextTheme.ts14w500(
          context,
        ).copyWith(color: AppColors.textInverse),
      ),
    );
  }
}
