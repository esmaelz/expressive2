import 'package:flutter/material.dart';

/// Este arquivo contém a definição completa do tema do aplicativo.
/// 
/// O tema foi criado com base na análise das telas fornecidas, onde identificamos:
/// - Cor primária: marrom escuro (#6B5D3F aproximadamente) usado em botões principais,
///   estados de foco, elementos selecionados e indicadores de ação
/// - Cor de fundo: azul claro suave (#E8F4F8) que cria uma base calma
/// - Superfícies: branco/cinza muito claro para cards e diálogos
/// - Secundária: roxo (#9C7FB2) para elementos de destaque como avatares
/// - Terciária: laranja/pêssego (#FFB74D) para FABs e elementos de ação alternativa
class AppTheme {
  // Não permitimos instanciar esta classe, ela serve apenas como container
  // para nossas definições de tema
  AppTheme._();

  /// Define a cor primária do aplicativo - aquele marrom escuro que vimos
  /// nos botões "Salvar", nos elementos selecionados do calendário e nas
  /// bordas dos campos de texto ativos
  static const Color _primaryColor = Color(0xFF6B5D3F);

  /// A cor que fica sobre elementos primários. Como o marrom é escuro,
  /// precisamos de uma cor clara para o texto ficar legível
  static const Color _onPrimaryColor = Color(0xFFfdfefc);

  /// Container primário é uma versão mais suave da cor primária, usada
  /// quando queremos destacar algo sem usar a cor primária intensa
  static const Color _primaryContainer = Color(0xFFE8DCC8);

  /// Texto sobre o container primário pode ser mais escuro já que o fundo
  /// é claro
  static const Color _onPrimaryContainer = Color(0xFF3A3020);

  /// Cor secundária - aquele roxo que aparece no círculo de adicionar foto
  /// e no avatar do usuário
  static const Color _secondaryColor = Color(0xFF9C7FB2);

  /// Texto sobre elementos secundários precisa ser claro para contrastar
  static const Color _onSecondaryColor = Color(0xFFFFFFFF);

  /// Container secundário é uma versão pastel do roxo, criando aquele
  /// círculo roxo claro que vimos na tela de criar contato
  static const Color _secondaryContainer = Color(0xFFE8DBEF);

  /// Sobre o container secundário usamos um roxo mais escuro
  static const Color _onSecondaryContainer = Color(0xFF4A3A5C);

  /// Cor terciária - o laranja/pêssego do FAB, adicionando variedade visual
  /// sem competir com as cores primária e secundária
  static const Color _tertiaryColor = Color(0xFFFFB74D);

  /// Texto sobre elementos terciários
  static const Color _onTertiaryColor = Color(0xFF4A3020);

  /// Container terciário é uma versão mais suave do laranja
  static const Color _tertiaryContainer = Color(0xFFFFE0B2);

  /// Texto sobre o container terciário
  static const Color _onTertiaryContainer = Color(0xFF4A3020);

  /// A cor de fundo geral do app - aquele azul claro suave que vimos em
  /// todas as telas, criando uma atmosfera calma e profissional
  static const Color _backgroundColor = Color(0xFFE8F4F8);

  /// Texto sobre o fundo precisa ter bom contraste
  static const Color _onBackgroundColor = Color(0xFF1A1C1E);

  /// Surface é a cor dos cards, diálogos e outros componentes elevados.
  /// É ligeiramente diferente do background para criar profundidade
  static const Color _surfaceColor = Color(0xFFF5F9FB);

  /// Texto sobre superfícies
  static const Color _onSurfaceColor = Color(0xFF1A1C1E);

  /// Surface variant é uma variação da superfície, usada para criar
  /// ainda mais níveis de hierarquia visual quando necessário
  static const Color _surfaceVariant = Color(0xFFE0E9EC);

  /// Texto sobre surface variant
  static const Color _onSurfaceVariant = Color(0xFF44474A);

  /// A cor usada para erros, validações falhadas e alertas importantes
  static const Color _errorColor = Color(0xFFBA1A1A);

  /// Texto sobre elementos de erro
  static const Color _onErrorColor = Color(0xFFFFFFFF);

  /// Container de erro é uma versão mais suave do vermelho
  static const Color _errorContainer = Color(0xFFFFDAD6);

  /// Texto sobre containers de erro
  static const Color _onErrorContainer = Color(0xFF410002);

  /// Outline é usada especificamente para bordas de componentes, divisores
  /// e linhas de separação. Vimos isso nas bordas dos campos de texto que
  /// não estão em foco
  static const Color _outlineColor = Color(0xFF74777A);

  /// Outline variant é uma versão ainda mais sutil da outline
  static const Color _outlineVariant = Color(0xFFC4C7CA);

  /// Shadow é a cor das sombras dos componentes elevados
  static const Color _shadowColor = Color(0xFF000000);

  /// Scrim é usado para overlays escuros, como o fundo semi-transparente
  /// que aparece atrás de diálogos
  static const Color _scrimColor = Color(0xFF000000);

  /// Surface tint é usado para criar variações sutis de cor em superfícies
  /// elevadas, dando uma leve indicação de elevação
  static const Color _surfaceTint = Color(0xFF6B5D3F);

  /// Inverse surface é usado quando precisamos inverter o esquema de cores,
  /// como em snackbars ou tooltips
  static const Color _inverseSurface = Color(0xFF2F3033);

  /// Texto sobre inverse surface
  static const Color _onInverseSurface = Color(0xFFF1F0F4);

  /// Primary inverse é usado em situações onde precisamos da cor primária
  /// sobre um fundo invertido
  static const Color _inversePrimary = Color(0xFFD4C5A6);

  /// Este é o ColorScheme completo que o Flutter vai usar em todo o app.
  /// Quando você passa isso para o ThemeData, todos os componentes automaticamente
  /// pegam as cores certas baseadas em sua função semântica.
  static ColorScheme get lightColorScheme {
    return const ColorScheme(
      // Definimos que este é um tema claro (em oposição a escuro)
      brightness: Brightness.light,
      
      // Cores primárias - o marrom que vimos nos botões e elementos selecionados
      primary: _primaryColor,
      onPrimary: _onPrimaryColor,
      primaryContainer: _primaryContainer,
      onPrimaryContainer: _onPrimaryContainer,
      
      // Cores secundárias - o roxo dos avatares e círculos de ação
      secondary: _secondaryColor,
      onSecondary: _onSecondaryColor,
      secondaryContainer: _secondaryContainer,
      onSecondaryContainer: _onSecondaryContainer,
      
      // Cores terciárias - o laranja/pêssego do FAB
      tertiary: _tertiaryColor,
      onTertiary: _onTertiaryColor,
      tertiaryContainer: _tertiaryContainer,
      onTertiaryContainer: _onTertiaryContainer,
      
      // Cores de erro - mantemos um vermelho padrão do Material Design
      error: _errorColor,
      onError: _onErrorColor,
      errorContainer: _errorContainer,
      onErrorContainer: _onErrorContainer,
      
      // Cores de superfície e fundo - o azul claro e variações
      surface: _surfaceColor,
      onSurface: _onSurfaceColor,
      surfaceContainerHighest: _surfaceVariant,
      onSurfaceVariant: _onSurfaceVariant,
      
      // Cores auxiliares para bordas, sombras e overlays
      outline: _outlineColor,
      outlineVariant: _outlineVariant,
      shadow: _shadowColor,
      scrim: _scrimColor,
      surfaceTint: _surfaceTint,
      
      // Cores inversas para casos especiais
      inverseSurface: _inverseSurface,
      onInverseSurface: _onInverseSurface,
      inversePrimary: _inversePrimary,
    );
  }

  /// Este método retorna o ThemeData completo que você vai passar para o
  /// MaterialApp. Aqui não só definimos o ColorScheme, mas também podemos
  /// customizar aspectos específicos de componentes individuais.
  static ThemeData get lightTheme {
    return ThemeData(
      // Usamos o Material Design 3, que é a versão mais moderna e que
      // utiliza melhor o sistema de ColorScheme
      useMaterial3: true,
      
      // Aqui passamos nosso ColorScheme personalizado
      colorScheme: lightColorScheme,
      
      // Podemos definir a família de fontes. Se você não especificar,
      // o Flutter usa Roboto no Android e San Francisco no iOS
      // fontFamily: 'Roboto',
      
      // Customização da AppBar. Aqui definimos que ela usa a cor
      // surface ao invés da primary, criando aquele visual mais clean
      appBarTheme: AppBarTheme(
        backgroundColor: _surfaceColor,
        foregroundColor: _onSurfaceColor,
        elevation: 0, // Remove a sombra para um visual mais plano
        centerTitle: false, // Alinha o título à esquerda (padrão Android)
        iconTheme: IconThemeData(color: _onSurfaceColor),
      ),
      
      // Customização dos botões elevados (ElevatedButton)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          // O Flutter já aplica as cores certas, mas podemos ajustar
          // padding, forma e elevação
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Bordas mais arredondadas
          ),
          elevation: 2, // Elevação sutil
        ),
      ),
      
      // Customização dos TextButtons (como os botões Cancelar e OK)
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      
      // Customização dos campos de texto (TextField/TextFormField)
      inputDecorationTheme: InputDecorationTheme(
        // Definimos que os campos usam outline (borda ao redor)
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: _outlineColor),
        ),
        // Borda quando o campo está em foco (usa a cor primária)
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _primaryColor, width: 2),
        ),
        // Borda em estado de erro
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _errorColor),
        ),
        // Padding interno dos campos
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        // Cor do label quando o campo está em foco
        floatingLabelStyle: const TextStyle(color: _primaryColor),
      ),
      
      // Customização dos cards
      cardTheme: CardThemeData (
        elevation: 1, // Elevação sutil
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: _surfaceColor,
      ),
      
      // Customização do FloatingActionButton
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _tertiaryContainer,
        foregroundColor: _onTertiaryContainer,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      
      // Customização dos checkboxes
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          // Quando marcado, usa a cor primária
          if (states.contains(WidgetState.selected)) {
            return _primaryColor;
          }
          // Quando não marcado, usa outline
          return null;
        }),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      
      // Customização do DatePicker (seletor de data)
      datePickerTheme: DatePickerThemeData(
        backgroundColor: _surfaceColor,
        headerBackgroundColor: _primaryContainer,
        headerForegroundColor: _onPrimaryContainer,
        dayForegroundColor: WidgetStateProperty.resolveWith((states) {
          // Dia selecionado usa a cor onPrimary (branco)
          if (states.contains(WidgetState.selected)) {
            return _onPrimaryColor;
          }
          // Dias normais usam onSurface
          return _onSurfaceColor;
        }),
        dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
          // Dia selecionado usa a cor primária como fundo
          if (states.contains(WidgetState.selected)) {
            return _primaryColor;
          }
          // Dias normais sem fundo
          return null;
        }),
        todayForegroundColor: WidgetStateProperty.all(_primaryColor),
        todayBorder: const BorderSide(color: _primaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      
      // Customização dos diálogos
      dialogTheme: DialogThemeData(
        backgroundColor: _surfaceColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        elevation: 6,
      ),
      
      // Customização das tabs (abas)
      tabBarTheme: TabBarThemeData(
        labelColor: _primaryColor,
        unselectedLabelColor: _onSurfaceVariant,
        indicatorColor: _primaryColor,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }

  /// Se você quiser criar também um tema escuro, pode usar este método
  /// como ponto de partida e ajustar as cores para funcionarem bem em
  /// fundos escuros
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColor,
        brightness: Brightness.dark,
      ),
    );
  }
}
