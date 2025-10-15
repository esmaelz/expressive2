import 'package:flutter/material.dart';
import 'package:expressive2/models/order.dart';
import 'package:expressive2/widgets/order_card.dart';
import 'package:expressive2/screens/create_order_screen.dart';
import 'package:expressive2/theme/app_theme.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({super.key});

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  int _selectedBottomNavIndex = 0;

  // Sample data - replace with real data
  final List<Order> _orders = [
    Order(
      id: 'S01139',
      customerName: 'ADIR BUENO DE OLIVEIRA',
      date: DateTime(2025, 9, 1),
      value: 175.82,
      seller: 'MAICON BRIZOLA D...',
      status: 'Cotação',
    ),
    Order(
      id: 'S01132',
      customerName: 'CHICO VERDURAS',
      date: DateTime(2025, 9, 1),
      value: 36340.00,
      seller: 'FERNANDO MARTIN...',
      status: 'Cotação',
    ),
    Order(
      id: 'S01122',
      customerName: 'FABRICIO LIMA DOS SANTOS E O...',
      date: DateTime(2025, 9, 1),
      value: 330.30,
      seller: 'FERNANDO RODRIG...',
      status: 'Cotação',
    ),
    Order(
      id: 'S01108',
      customerName: 'JEFERSON DOS SANTOS ALMEID...',
      date: DateTime(2025, 8, 29),
      value: 874.05,
      seller: 'WILLIANS YOSHI FU...',
      status: 'Cotação',
    ),
    Order(
      id: 'S01100',
      customerName: 'MARCELO RODRIGUES MOR...',
      date: DateTime(2025, 8, 29),
      value: 760.00,
      seller: 'WILLIANS YOSHI FU...',
      status: 'Cotação',
    ),
    Order(
      id: 'S01099',
      customerName: 'FATIMA APARECIDA DE B...',
      date: DateTime(2025, 8, 29),
      value: 10006.25,
      seller: 'WILLIANS YOSHI FU...',
      status: 'Cotação',
    ),
    Order(
      id: 'S01079',
      customerName: 'EZEQUIEL RODRIGUES DE S...',
      date: DateTime(2025, 8, 27),
      value: 332.78,
      seller: 'FERNANDO MARTIN...',
      status: 'Cotação',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final customColors = context.customColors;

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: SafeArea(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _searchController,
                style: TextStyle(
                  color: customColors.textSecondary,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  hintText: 'Pesquisar pedidos',
                  hintStyle: TextStyle(
                    color: customColors.textTertiary,
                    fontSize: 16,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: customColors.textTertiary,
                  ),
                  filled: true,
                  fillColor: customColors.searchBarFill,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
            ),
            // Tab Bar
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: customColors.divider,
                    width: 1,
                  ),
                ),
              ),
              child: TabBar(
                controller: _tabController,
                labelColor: customColors.tabSelected,
                unselectedLabelColor: customColors.tabUnselected,
                indicatorColor: customColors.tabIndicator,
                tabs: const [
                  Tab(text: 'Cotações'),
                  Tab(text: 'Pedidos'),
                ],
              ),
            ),
            // Order List
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Cotações Tab
                  ListView(
                    padding: const EdgeInsets.only(top: 16, bottom: 80),
                    children: [
                      Column(
                        children: List.generate(_orders.length, (index) {
                          return OrderCard(
                            order: _orders[index],
                            isFirst: index == 0,
                            isLast: index == _orders.length - 1,
                          );
                        }),
                      ),
                    ],
                  ),
                  // Pedidos Tab (empty for now)
                  Center(
                    child: Text(
                      'Nenhum pedido',
                      style: TextStyle(
                        color: theme.colorScheme.onSurface.withOpacity(0.6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Floating Action Button
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateOrderScreen(),
            ),
          );
        },
        backgroundColor: customColors.fabBackground,
        icon: const Icon(Icons.add),
        label: const Text('Nova cotação'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // Bottom Navigation Bar
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedBottomNavIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedBottomNavIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.receipt_long),
            selectedIcon: Icon(Icons.receipt_long),
            label: 'Pedidos',
          ),
          NavigationDestination(
            icon: Icon(Icons.inventory_2_outlined),
            selectedIcon: Icon(Icons.inventory_2),
            label: 'Produtos',
          ),
        ],
      ),
    );
  }
}