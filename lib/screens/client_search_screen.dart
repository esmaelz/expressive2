import 'package:flutter/material.dart';
import 'package:expressive2/models/client.dart';
import 'package:expressive2/theme/app_theme.dart';

class ClientSearchScreen extends StatefulWidget {
  const ClientSearchScreen({super.key});

  @override
  State<ClientSearchScreen> createState() => _ClientSearchScreenState();
}

class _ClientSearchScreenState extends State<ClientSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Client> _allClients = [];
  List<Client> _filteredClients = [];

  @override
  void initState() {
    super.initState();
    _loadClients();
    _searchController.addListener(_filterClients);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _loadClients() {
    _allClients = Client.getMockClients();
    _filteredClients = _allClients;
    setState(() {});
  }

  void _filterClients() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filteredClients = _allClients;
      } else {
        _filteredClients = _allClients.where((client) {
          return client.name.toLowerCase().contains(query) ||
              client.cnpj.contains(query) ||
              client.city.toLowerCase().contains(query) ||
              client.state.toLowerCase().contains(query);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final customColors = context.customColors;

    return Scaffold(
      backgroundColor: theme.cardTheme.color ?? customColors.white,
      appBar: AppBar(
        backgroundColor: theme.cardTheme.color ?? customColors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Selecionar cliente'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          // Search bar
          Container(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Pesquisar por nome, CNPJ ou cidade...',
                hintStyle: TextStyle(
                  color: customColors.searchHint,
                ),
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                        },
                      )
                    : null,
                filled: true,
                fillColor: customColors.searchFill,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              ),
            ),
          ),

          // Results count
          if (_searchController.text.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Text(
                    '${_filteredClients.length} ${_filteredClients.length == 1 ? 'resultado' : 'resultados'}',
                    style: TextStyle(
                      fontSize: 14,
                      color: theme.colorScheme.onSurface.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),

          // Client list
          Expanded(
            child: _filteredClients.isEmpty
                ? _buildEmptyState(theme)
                : ListView.builder(
                    padding: const EdgeInsets.only(bottom: 16),
                    itemCount: _filteredClients.length,
                    itemBuilder: (context, index) {
                      final client = _filteredClients[index];
                      return _buildClientTile(client, theme);
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState(ThemeData theme) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off,
            size: 64,
            color: theme.colorScheme.onSurface.withOpacity(0.3),
          ),
          const SizedBox(height: 16),
          Text(
            'Nenhum cliente encontrado',
            style: TextStyle(
              fontSize: 16,
              color: theme.colorScheme.onSurface.withOpacity(0.6),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Tente buscar por outro termo',
            style: TextStyle(
              fontSize: 14,
              color: theme.colorScheme.onSurface.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClientTile(Client client, ThemeData theme) {
    final customColors = context.customColors;
    return Container(
      color: theme.cardTheme.color ?? customColors.white,
      child: Material(
        color: customColors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.pop(context, client);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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

                // Client details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name
                      Text(
                        client.name,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      // CNPJ
                      Text(
                        'CNPJ: ${client.formattedCnpj}',
                        style: TextStyle(
                          fontSize: 13,
                          color: theme.colorScheme.onSurface.withOpacity(0.7),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      // Location
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 14,
                            color: theme.colorScheme.onSurface.withOpacity(0.5),
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              client.location,
                              style: TextStyle(
                                fontSize: 12,
                                color: theme.colorScheme.onSurface.withOpacity(0.6),
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

                // Selection indicator
                Icon(
                  Icons.chevron_right,
                  color: theme.colorScheme.onSurface.withOpacity(0.3),
                ),
              ],
            ),
          ),
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