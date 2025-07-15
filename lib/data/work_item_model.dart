import '../core/constant/enum.dart';

class WorkItemModel {
  final String? id;
  final String? title;
  final String? description;
  final String? email;
  final String? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  WorkItemModel({
    this.id,
    this.title,
    this.description,
    this.email,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory WorkItemModel.fromJson(Map<String, dynamic> json) {
    return WorkItemModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      status: json['status'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'status': status,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }

  List<WorkItemModel> mockList() {
    return [
      WorkItemModel(
        id: 'Abc123',
        title: 'Work Item 1',
        description: 'Description for work item 1',
        status: 'pending',
        email: 'user1@gmail.com',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      WorkItemModel(
        id: 'Abc124',
        title: 'Work Item 2',
        description: 'Description for work item 2',
        status: 'inProgress',
        createdAt: DateTime.now(),
        email: 'user2@gmail.com',
        updatedAt: DateTime.now(),
      ),
      WorkItemModel(
        id: 'Abc122',
        title: 'Work Item 3',
        description: 'Description for work item 3',
        status: 'cancelled',
        email: 'user3@gmail.com',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      WorkItemModel(
        id: 'Abc123',
        title: 'Work Item 1',
        description: 'Description for work item 1',
        status: 'completed',
        email: 'user1@gmail.com',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      WorkItemModel(
        id: 'Abc124',
        title: 'Work Item 2',
        description: 'Description for work item 2',
        status: 'inProgress',
        createdAt: DateTime.now(),
        email: 'user2@gmail.com',
        updatedAt: DateTime.now(),
      ),
      WorkItemModel(
        id: 'Abc122',
        title: 'Work Item 3',
        description: 'Description for work item 3',
        status: 'pending',
        email: 'user3@gmail.com',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
    ];
  }
}

extension WorkItemModelExtension on WorkItemModel {
  WorkOrderStatus get statusEnum => WorkOrderStatus.values.firstWhere(
    (status) => status.value == this.status,
    orElse: () => WorkOrderStatus.pending,
  );

  String get dateTimeFormat {
    if (createdAt != null) {
      return '${createdAt!.day}/${createdAt!.month}/${createdAt!.year}';
    }
    return '';
  }
}
