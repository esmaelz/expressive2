import 'package:flutter/material.dart';
import 'app_theme.dart'; // Importa nosso arquivo de tema

/// Este é um exemplo completo de como usar o tema que criamos.
/// Você pode copiar este arquivo e adaptá-lo para ser o ponto de entrada
/// do seu aplicativo.
void main() {
  runApp(const MeuAplicativo());
}

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App com Tema Personalizado',
      
      // Aqui aplicamos o tema que definimos no arquivo app_theme.dart
      // Todos os widgets do app vão automaticamente usar essas cores
      theme: AppTheme.lightTheme,
      
      // Se você implementar o tema escuro, pode passar aqui também
      darkTheme: AppTheme.darkTheme,
      
      // Esta opção faz o app seguir a preferência de tema do sistema
      themeMode: ThemeMode.system,
      
      // Remove o banner de debug no canto
      debugShowCheckedModeBanner: false,
      
      home: const PaginaExemplo(),
    );
  }
}

/// Esta página demonstra como os diferentes componentes pegam
/// automaticamente as cores corretas do tema
class PaginaExemplo extends StatefulWidget {
  const PaginaExemplo({super.key});

  @override
  State<PaginaExemplo> createState() => _PaginaExemploState();
}

class _PaginaExemploState extends State<PaginaExemplo> {
  bool _tarefaConcluida = false;
  final _nomeController = TextEditingController();
  DateTime _dataSelecionada = DateTime.now();

  @override
  void dispose() {
    _nomeController.dispose();
    super.dispose();
  }

  Future<void> _selecionarData(BuildContext context) async {
    // Quando você usa showDatePicker, ele automaticamente aplica
    // as cores do datePickerTheme que definimos no tema
    final DateTime? dataSelecionada = await showDatePicker(
      context: context,
      initialDate: _dataSelecionada,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      locale: const Locale('pt', 'BR'),
    );

    if (dataSelecionada != null && dataSelecionada != _dataSelecionada) {
      setState(() {
        _dataSelecionada = dataSelecionada;
      });
    }
  }

  void _mostrarDialogo(BuildContext context) {
    // Este diálogo automaticamente usa as cores do dialogTheme
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Exemplo de Diálogo'),
        content: const Text(
          'Este diálogo está usando automaticamente as cores do tema '
          'que definimos, incluindo o fundo da surface e o texto onSurface.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Confirmar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Pegamos o ColorScheme do tema atual para usar quando necessário
    final cores = Theme.of(context).colorScheme;
    
    return Scaffold(
      // A AppBar automaticamente pega as cores do appBarTheme
      appBar: AppBar(
        title: const Text('Demonstração do Tema'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () => _mostrarDialogo(context),
            tooltip: 'Mostrar diálogo',
          ),
        ],
      ),
      
      // O corpo da página usa automaticamente a cor de background
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Card usa automaticamente a cor surface do tema
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Card com Surface',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Este card automaticamente usa a cor surface do tema. '
                      'O texto está usando a cor onSurface para garantir contraste.',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Container usando a cor secondaryContainer
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cores.secondaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 48,
                    color: cores.onSecondaryContainer,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      'Container Secundário',
                      style: TextStyle(
                        color: cores.onSecondaryContainer,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 16),
            
            // TextField usa automaticamente o inputDecorationTheme
            TextField(
              controller: _nomeController,
              decoration: const InputDecoration(
                labelText: 'Nome',
                hintText: 'Digite seu nome',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Outro TextField para mostrar como fica quando não está em foco
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Digite seu email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // CheckboxListTile usa o checkboxTheme
            CheckboxListTile(
              title: const Text('Tarefa concluída'),
              subtitle: const Text('Checkbox usa a cor primária quando marcado'),
              value: _tarefaConcluida,
              onChanged: (valor) {
                setState(() {
                  _tarefaConcluida = valor ?? false;
                });
              },
            ),
            
            const SizedBox(height: 16),
            
            // Botão que abre o date picker
            ElevatedButton.icon(
              onPressed: () => _selecionarData(context),
              icon: const Icon(Icons.calendar_today),
              label: Text(
                'Selecionar Data: ${_dataSelecionada.day}/${_dataSelecionada.month}/${_dataSelecionada.year}',
              ),
            ),
            
            const SizedBox(height: 8),
            
            // ElevatedButton usa automaticamente a cor primary
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Botão primário pressionado!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: const Text('Botão Primário'),
            ),
            
            const SizedBox(height: 8),
            
            // TextButton usa cores mais sutis
            TextButton(
              onPressed: () {},
              child: const Text('Botão de Texto'),
            ),
            
            const SizedBox(height: 8),
            
            // OutlinedButton tem apenas a borda colorida
            OutlinedButton(
              onPressed: () {},
              child: const Text('Botão com Borda'),
            ),
            
            const SizedBox(height: 16),
            
            // Exemplo de chips que usam cores do tema
            Wrap(
              spacing: 8,
              children: [
                Chip(
                  label: const Text('Chip Normal'),
                  avatar: const Icon(Icons.tag, size: 18),
                ),
                Chip(
                  label: const Text('Chip Colorido'),
                  backgroundColor: cores.tertiaryContainer,
                  labelStyle: TextStyle(color: cores.onTertiaryContainer),
                ),
              ],
            ),
          ],
        ),
      ),
      
      // O FAB usa o floatingActionButtonTheme que definimos
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('FAB usa a cor terciária!'),
              duration: Duration(seconds: 2),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
