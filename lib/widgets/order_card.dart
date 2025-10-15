import 'package:flutter/material.dart';
import 'package:expressive2/models/order.dart';
import 'package:expressive2/theme/app_theme.dart';
import 'package:intl/intl.dart';

class OrderCard extends StatelessWidget {
  final Order order;
  final bool isFirst;
  final bool isLast;

  const OrderCard({
    super.key,
    required this.order,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final customColors = context.customColors;
    final currencyFormat = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    final dateFormat = DateFormat('dd/MM/yyyy');

    // Apply rounded corners to first and last cards
    final borderRadius = BorderRadius.only(
      topLeft: Radius.circular(isFirst ? 20 : 0),
      topRight: Radius.circular(isFirst ? 20 : 0),
      bottomLeft: Radius.circular(isLast ? 20 : 0),
      bottomRight: Radius.circular(isLast ? 20 : 0),
    );

    return Container(
      decoration: BoxDecoration(
        color: customColors.cardBackground,
        borderRadius: borderRadius,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Order ID badge and date on the left
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: customColors.orderBadge,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        order.id,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: customColors.badgeText,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    // Date below the order ID
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          size: 14,
                          color: theme.colorScheme.onSurface.withOpacity(0.6),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          dateFormat.format(order.date),
                          style: TextStyle(
                            fontSize: 12,
                            color: theme.colorScheme.onSurface.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 12),
                // Customer details in the middle
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          // Customer name
                          Text(
                            order.customerName,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: customColors.textPrimary,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 6),
                          // Seller info
                          Text(
                            order.seller,
                            style: TextStyle(
                              fontSize: 11,
                              color: theme.colorScheme.onSurface.withOpacity(0.6),
                              fontStyle: FontStyle.italic,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    // Value and status on the right
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          currencyFormat.format(order.value),
                          style: TextStyle(
                            color: customColors.success,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: customColors.statusBadgeBackground,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            order.status,
                            style: TextStyle(
                              color: customColors.statusBadgeText,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
      );
  }
}