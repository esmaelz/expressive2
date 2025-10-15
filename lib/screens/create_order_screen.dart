import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:expressive2/theme/app_theme.dart';
import 'package:expressive2/models/client.dart';
import 'package:expressive2/widgets/client_selection_field.dart';
import 'package:expressive2/screens/client_search_screen.dart';

class CreateOrderScreen extends StatefulWidget {
  const CreateOrderScreen({super.key});

  @override
  State<CreateOrderScreen> createState() => _CreateOrderScreenState();
}

class _CreateOrderScreenState extends State<CreateOrderScreen> {
  final _formKey = GlobalKey<FormState>();
  DateTime _orderDate = DateTime.now();
  DateTime _validityDate = DateTime.now().add(const Duration(days: 30));
  DateTime _cardDate = DateTime.now();
  Client? _selectedClient;

  // Controllers for text fields
  final _cardNumberController = TextEditingController();
  final _pinController = TextEditingController();
  final _balanceController = TextEditingController();
  final _observationsController = TextEditingController();

  @override
  void dispose() {
    _cardNumberController.dispose();
    _pinController.dispose();
    _balanceController.dispose();
    _observationsController.dispose();
    super.dispose();
  }

  Future<void> _selectOrderDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _orderDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _orderDate) {
      setState(() {
        _orderDate = picked;
      });
    }
  }

  Future<void> _selectValidityDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _validityDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _validityDate) {
      setState(() {
        _validityDate = picked;
      });
    }
  }

  Future<void> _selectCardDate(BuildContext context) async {
    final theme = Theme.of(context);
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _cardDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
              primary: const Color(0xFF7b5500), // Cor da data selecionada
              onPrimary: Colors.white, // Texto sobre a cor da data selecionada
              surface: const Color(0xFFE8F4F8), // Background do calendário (azul claro)
              onSurface: const Color(0xFF314045), // Cor da fonte
              background: const Color(0xFFE8F4F8),
            ),
            dialogBackgroundColor: const Color(0xFFE8F4F8),
            dividerColor: Colors.transparent, // Remove o divisor
            datePickerTheme: DatePickerThemeData(
              backgroundColor: const Color(0xFFE8F4F8),
              headerBackgroundColor: const Color(0xFFE8F4F8),
              headerForegroundColor: const Color(0xFF314045),
              dividerColor: Colors.transparent, // Remove o divisor
              dayForegroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return Colors.white;
                }
                return const Color(0xFF314045);
              }),
              yearForegroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return Colors.white;
                }
                return const Color(0xFF314045);
              }),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFF967d3e), // Cor dos botões "Cancelar" e "OK"
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _cardDate) {
      setState(() {
        _cardDate = picked;
      });
    }
  }

  Future<void> _selectClient() async {
    final Client? result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ClientSearchScreen()),
    );

    if (result != null) {
      setState(() {
        _selectedClient = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateFormat = DateFormat('dd/MM/yyyy');

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Vale-presente'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Card principal com logo
            Container(
              padding: const EdgeInsets.all(32),
              margin: const EdgeInsets.only(bottom: 24),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest.withOpacity(0.6),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  // Logo placeholder
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        'A',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: theme.colorScheme.onSurface.withOpacity(0.6),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Americanas',
                    style: theme.textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Vale-presente',
                    style: theme.textTheme.headlineLarge,
                  ),
                ],
              ),
            ),

            // Form fields
            Form(
              key: _formKey,
              child: Column(
                children: [
                  // Client selection field
                  ClientSelectionField(
                    selectedClient: _selectedClient,
                    onTap: _selectClient,
                    label: 'Cliente',
                    hint: 'Selecione um cliente',
                  ),
                  const SizedBox(height: 24),

                  // Número do cartão field
                  _buildCustomTextField(
                    context: context,
                    controller: _cardNumberController,
                    label: 'Número do cartão',
                    hint: 'Digite o número do cartão',
                  ),
                  const SizedBox(height: 24),

                  // PIN field
                  _buildCustomTextField(
                    context: context,
                    controller: _pinController,
                    label: 'PIN',
                    hint: 'Digite o PIN',
                    obscureText: true,
                  ),
                  const SizedBox(height: 24),

                  // Saldo field
                  _buildCustomTextField(
                    context: context,
                    controller: _balanceController,
                    label: 'Saldo',
                    hint: 'Digite o saldo',
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 24),

                  // Data field
                  GestureDetector(
                    onTap: () => _selectCardDate(context),
                    child: AbsorbPointer(
                      child: _buildCustomTextField(
                        context: context,
                        controller: TextEditingController(
                          text: dateFormat.format(_cardDate),
                        ),
                        label: 'Data',
                        hint: 'Selecione a data',
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Observações field
                  _buildCustomTextField(
                    context: context,
                    controller: _observationsController,
                    label: 'Suas observações',
                    hint: 'Digite suas observações',
                    maxLines: 3,
                  ),
                  const SizedBox(height: 24),

                  // Informação adicional
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: theme.cardTheme.color ?? Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: theme.dividerColor.withOpacity(0.2)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Depois de adicionar seu vale-presente, o saldo dele vai aparecer em recursos como o Maps, o Shopping e outros. É possível desativar isso em ',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            height: 1.5,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigate to card management
                          },
                          child: Text(
                            'Gerenciar dados dos cartões',
                            style: TextStyle(
                              fontSize: 14,
                              color: theme.colorScheme.primary,
                              decoration: TextDecoration.underline,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Text(
                          ' ou nos detalhes do cartão.',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Mais usados na região section
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Mais usados na região',
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Card styled like "Minhas tarefas"
                  Container(
                    decoration: BoxDecoration(
                      color: theme.cardTheme.color ?? Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Card header
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Opções disponíveis',
                                style: theme.textTheme.titleLarge,
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.swap_vert,
                                      color: theme.colorScheme.onSurface.withOpacity(0.6),
                                      size: 22,
                                    ),
                                    onPressed: () {},
                                    constraints: const BoxConstraints(),
                                    padding: const EdgeInsets.all(8),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.more_vert,
                                      color: theme.colorScheme.onSurface.withOpacity(0.6),
                                      size: 22,
                                    ),
                                    onPressed: () {},
                                    constraints: const BoxConstraints(),
                                    padding: const EdgeInsets.all(8),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          // Card content area (placeholder for now)
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              'Selecione uma opção',
                              style: TextStyle(
                                fontSize: 14,
                                color: theme.colorScheme.onSurface.withOpacity(0.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomTextField({
    required BuildContext context,
    required TextEditingController controller,
    required String label,
    required String hint,
    bool obscureText = false,
    TextInputType? keyboardType,
    int maxLines = 1,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLines: maxLines,
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: AppTheme.getFormInputDecoration(
        label: label,
        hint: hint,
      ),
    );
  }
}