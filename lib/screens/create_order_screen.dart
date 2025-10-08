import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreateOrderScreen extends StatefulWidget {
  const CreateOrderScreen({super.key});

  @override
  State<CreateOrderScreen> createState() => _CreateOrderScreenState();
}

class _CreateOrderScreenState extends State<CreateOrderScreen> {
  final _formKey = GlobalKey<FormState>();
  DateTime _orderDate = DateTime.now();
  DateTime _validityDate = DateTime.now().add(const Duration(days: 30));

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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateFormat = DateFormat('dd/MM/yyyy');

    return Scaffold(
      backgroundColor: const Color(0xFFF1FAFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1FAFF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87, size: 24),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Vale-presente',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
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
                color: const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  // Logo placeholder
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        'A',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Americanas',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Vale-presente',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

            // Form fields
            Form(
              key: _formKey,
              child: Column(
                children: [
                  // Número do cartão field
                  _buildCustomTextField(
                    controller: _cardNumberController,
                    label: 'Número do cartão',
                    hint: 'Digite o número do cartão',
                  ),
                  const SizedBox(height: 24),

                  // PIN field
                  _buildCustomTextField(
                    controller: _pinController,
                    label: 'PIN',
                    hint: 'Digite o PIN',
                    obscureText: true,
                  ),
                  const SizedBox(height: 24),

                  // Saldo field
                  _buildCustomTextField(
                    controller: _balanceController,
                    label: 'Saldo',
                    hint: 'Digite o saldo',
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 24),

                  // Observações field
                  _buildCustomTextField(
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE0E0E0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Depois de adicionar seu vale-presente, o saldo dele vai aparecer em recursos como o Maps, o Shopping e outros. É possível desativar isso em ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                            height: 1.5,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigate to card management
                          },
                          child: const Text(
                            'Gerenciar dados dos cartões',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF1976D2),
                              decoration: TextDecoration.underline,
                              height: 1.5,
                            ),
                          ),
                        ),
                        const Text(
                          ' ou nos detalhes do cartão.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                            height: 1.5,
                          ),
                        ),
                      ],
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
      style: const TextStyle(
        fontSize: 15,
        color: Colors.black87,
        fontFamily: 'Roboto',
      ),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        labelStyle: const TextStyle(
          color: Color(0xFF757575),
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        hintStyle: const TextStyle(
          color: Color(0xFF9E9E9E),
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        floatingLabelStyle: const TextStyle(
          color: Color(0xFF757575),
          fontSize: 15,
        ),
        filled: true,
        fillColor: const Color(0xFFF1FAFF),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xFF78868A), // Cinza quando não selecionado
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xFF6D4E05), // Marrom/dourado escuro quando focado
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
