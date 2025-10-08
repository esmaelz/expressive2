class Order {
  final String id;
  final String customerName;
  final DateTime date;
  final double value;
  final String seller;
  final String status;

  const Order({
    required this.id,
    required this.customerName,
    required this.date,
    required this.value,
    required this.seller,
    required this.status,
  });
}
