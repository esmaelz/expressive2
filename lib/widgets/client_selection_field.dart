import 'package:flutter/material.dart';
import 'package:expressive2/models/client.dart';
import 'package:expressive2/theme/app_theme.dart';

class ClientSelectionField extends StatefulWidget {
  final Client? selectedClient;
  final VoidCallback onTap;
  final String label;
  final String hint;

  const ClientSelectionField({
    super.key,
    this.selectedClient,
    required this.onTap,
    required this.label,
    required this.hint,
  });

  @override
  State<ClientSelectionField> createState() => _ClientSelectionFieldState();
}

class _ClientSelectionFieldState extends State<ClientSelectionField> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final customColors = context.customColors;

    return widget.selectedClient == null
        ? _buildEmptyState(theme, customColors)
        : _buildSelectedState(theme, customColors);
  }

  Widget _buildEmptyState(ThemeData theme, CustomColors customColors) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AbsorbPointer(
        child: TextFormField(
          style: theme.textTheme.bodyLarge,
          decoration: AppTheme.getFormInputDecoration(
            label: widget.label,
            hint: widget.hint,
          ).copyWith(
            suffixIcon: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: theme.colorScheme.onSurface.withOpacity(0.4),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSelectedState(ThemeData theme, CustomColors customColors) {
    final client = widget.selectedClient!;

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        color: theme.colorScheme.surface,
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Avatar
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withOpacity(0.1),
                shape: BoxShape.circle,
                border: Border.all(
                  color: theme.colorScheme.primary.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Center(
                child: client.avatarUrl != null
                    ? ClipOval(
                        child: Image.network(
                          client.avatarUrl!,
                          width: 46,
                          height: 46,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => _buildInitialsAvatar(client, theme),
                        ),
                      )
                    : _buildInitialsAvatar(client, theme),
              ),
            ),
            const SizedBox(width: 12),

            // Client info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Label above the info
                  Text(
                    widget.label,
                    style: TextStyle(
                      color: customColors.textLabel,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 2),
                  // Client name
                  Text(
                    client.name,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  // CNPJ
                  Text(
                    client.formattedCnpj,
                    style: TextStyle(
                      fontSize: 13,
                      color: theme.colorScheme.onSurface.withOpacity(0.7),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  // Location with icon
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: theme.colorScheme.onSurface.withOpacity(0.6),
                      ),
                      const SizedBox(width: 4),
                      Flexible(
                        child: Text(
                          client.location,
                          style: TextStyle(
                            fontSize: 13,
                            color: theme.colorScheme.onSurface.withOpacity(0.7),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Arrow icon
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: theme.colorScheme.onSurface.withOpacity(0.4),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInitialsAvatar(Client client, ThemeData theme) {
    return Text(
      client.initials,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: theme.colorScheme.primary,
      ),
    );
  }
}