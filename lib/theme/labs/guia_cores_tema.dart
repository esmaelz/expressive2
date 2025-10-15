/// GUIA DE REFERÊNCIA RÁPIDA - SISTEMA DE CORES DO TEMA FLUTTER
/// 
/// Este arquivo serve como referência rápida para você entender onde cada
/// cor do ColorScheme é aplicada no seu aplicativo. Use isso como consulta
/// sempre que precisar ajustar uma cor específica.

/*
═══════════════════════════════════════════════════════════════════════════
CORES PRIMÁRIAS (PRIMARY)
═══════════════════════════════════════════════════════════════════════════

A cor primária é a identidade visual do seu app. É a cor mais usada e que
representa sua marca.

ONDE É APLICADA AUTOMATICAMENTE:
  • ElevatedButton (fundo)
  • FloatingActionButton (fundo) - pode ser sobrescrito
  • ProgressIndicator (circular e linear)
  • Tabs selecionadas (indicador e texto)
  • Switch ativo (trilho e botão)
  • Radio button selecionado
  • Checkbox marcado
  • TextField em foco (borda e label)
  • Slider (trilho ativo e botão)
  • AppBar (pode ser sobrescrito no appBarTheme)
  • Date picker (dia selecionado)
  • Time picker (hora selecionada)

ACESSANDO PROGRAMATICAMENTE:
  final corPrimaria = Theme.of(context).colorScheme.primary;

QUANDO USAR MANUALMENTE:
  • Quando quiser destacar um elemento importante
  • Para indicar estado ativo ou selecionado
  • Em ícones que representam ações principais

═══════════════════════════════════════════════════════════════════════════
ON-PRIMARY
═══════════════════════════════════════════════════════════════════════════

Esta cor fica sobre elementos que têm o fundo primary. O Flutter escolhe
automaticamente uma cor que contrasta bem.

ONDE É APLICADA AUTOMATICAMENTE:
  • Texto em ElevatedButton
  • Ícone em FloatingActionButton
  • Texto em elementos com fundo primary
  • Número do dia selecionado no date picker

ACESSANDO:
  final corSobrePrimaria = Theme.of(context).colorScheme.onPrimary;

═══════════════════════════════════════════════════════════════════════════
PRIMARY CONTAINER
═══════════════════════════════════════════════════════════════════════════

Versão mais suave da cor primária, usada quando você quer destacar algo
sem usar a cor primária intensa.

ONDE É APLICADA AUTOMATICAMENTE:
  • FilterChip selecionado
  • NavigationRail item selecionado (fundo)
  • Alguns estados hover de botões

QUANDO USAR MANUALMENTE:
  • Containers que precisam destaque leve
  • Fundos de seções importantes mas não críticas
  • Estados hover customizados

═══════════════════════════════════════════════════════════════════════════
CORES SECUNDÁRIAS (SECONDARY)
═══════════════════════════════════════════════════════════════════════════

Complementa a cor primária, usada em elementos menos proeminentes.

ONDE É APLICADA AUTOMATICAMENTE:
  • TextButton (cor do texto)
  • FilterChip não selecionado (borda)
  • Alguns ícones em estados menos importantes
  • Elementos de navegação secundários

QUANDO USAR MANUALMENTE:
  • Elementos que precisam destaque mas não são a ação principal
  • Avatares e círculos de perfil
  • Badges e indicadores secundários

═══════════════════════════════════════════════════════════════════════════
CORES TERCIÁRIAS (TERTIARY)
═══════════════════════════════════════════════════════════════════════════

Adiciona variedade visual sem competir com primary e secondary.

ONDE É APLICADA AUTOMATICAMENTE:
  • Alguns estados de foco
  • Elementos de contraste adicional

QUANDO USAR MANUALMENTE:
  • FABs alternativos
  • Elementos de destaque que não são nem primários nem secundários
  • Tags, chips ou badges que precisam de cor diferenciada
  • Chamadas de atenção para novidades

═══════════════════════════════════════════════════════════════════════════
SURFACE E BACKGROUND
═══════════════════════════════════════════════════════════════════════════

SURFACE (cor de superfície):
  • Card (fundo)
  • Dialog (fundo)
  • BottomSheet (fundo)
  • AppBar (quando configurado para usar surface)
  • Menu (fundo)
  • DataTable (fundo)

BACKGROUND (cor de fundo):
  • Fundo do Scaffold
  • Fundo geral da tela atrás dos componentes
  • Áreas que não são cards ou componentes elevados

A diferença entre surface e background cria profundidade sutil. Geralmente
surface é um pouco mais clara (em temas claros) ou mais escura (em temas
escuros) que background.

═══════════════════════════════════════════════════════════════════════════
ON-SURFACE E ON-BACKGROUND
═══════════════════════════════════════════════════════════════════════════

ON-SURFACE:
  • Texto em Cards
  • Ícones em Dialogs
  • Texto em elementos com fundo surface
  • ListTile (título e ícones)

ON-BACKGROUND:
  • Texto no corpo principal do app
  • Ícones em áreas de background

═══════════════════════════════════════════════════════════════════════════
SURFACE VARIANT E ON-SURFACE VARIANT
═══════════════════════════════════════════════════════════════════════════

SURFACE VARIANT:
  • Fundos que precisam ser distinguidos de surface normal
  • Cabeçalhos de seções
  • Elementos que precisam ser um pouco diferentes da surface

ON-SURFACE VARIANT:
  • Texto secundário ou de menor importância
  • Labels de campos de texto não focados
  • Texto de ajuda (hint text)
  • Captions e subtítulos

═══════════════════════════════════════════════════════════════════════════
ERROR
═══════════════════════════════════════════════════════════════════════════

Usada para estados de erro, validações e alertas.

ONDE É APLICADA AUTOMATICAMENTE:
  • TextField com erro (borda)
  • Mensagens de erro de validação
  • SnackBar de erro
  • Ícones de alerta

QUANDO USAR MANUALMENTE:
  • Indicadores de erro customizados
  • Alertas visuais importantes
  • Botões de ação destrutiva (deletar, remover)

═══════════════════════════════════════════════════════════════════════════
OUTLINE E OUTLINE VARIANT
═══════════════════════════════════════════════════════════════════════════

OUTLINE:
  • Bordas de TextField não focado
  • Bordas de OutlinedButton
  • Divisores e separadores
  • Bordas de componentes em estado normal

OUTLINE VARIANT:
  • Divisores mais sutis
  • Bordas que precisam ser quase imperceptíveis
  • Linhas de separação delicadas

═══════════════════════════════════════════════════════════════════════════
CORES INVERSAS
═══════════════════════════════════════════════════════════════════════════

Usadas quando você precisa inverter o esquema de cores, como em SnackBars
ou tooltips que aparecem sobre o conteúdo normal.

INVERSE SURFACE:
  • SnackBar (fundo)
  • Tooltip (fundo)
  • Elementos que aparecem sobre o conteúdo com esquema invertido

ON INVERSE SURFACE:
  • Texto em SnackBar
  • Texto em Tooltip

INVERSE PRIMARY:
  • Elementos primários sobre fundo invertido
  • Botões em SnackBar

═══════════════════════════════════════════════════════════════════════════
SHADOW, SCRIM E SURFACE TINT
═══════════════════════════════════════════════════════════════════════════

SHADOW:
  • Sombras de componentes elevados
  • Geralmente preta com opacidade

SCRIM:
  • Overlay escuro atrás de diálogos
  • Fundo semi-transparente de modais
  • Geralmente preta com opacidade

SURFACE TINT:
  • Tom aplicado em superfícies elevadas no Material 3
  • Cria indicação sutil de elevação através de cor
  • Geralmente usa a cor primary

═══════════════════════════════════════════════════════════════════════════
COMO ACESSAR AS CORES NO CÓDIGO
═══════════════════════════════════════════════════════════════════════════

Dentro do método build de qualquer Widget:

  // Pegar o ColorScheme completo
  final cores = Theme.of(context).colorScheme;
  
  // Usar cores específicas
  Container(
    color: cores.primary,
    child: Text(
      'Texto sobre primary',
      style: TextStyle(color: cores.onPrimary),
    ),
  )

═══════════════════════════════════════════════════════════════════════════
DICAS IMPORTANTES
═══════════════════════════════════════════════════════════════════════════

1. SEMPRE use pares "on-" correspondentes:
   • Se o fundo é primary, o texto deve ser onPrimary
   • Se o fundo é surface, o texto deve ser onSurface
   • Isso garante contraste adequado e acessibilidade

2. EVITE cores hardcoded:
   • Ruim: Color(0xFF6B5D3F)
   • Bom: Theme.of(context).colorScheme.primary
   • Isso permite que o tema seja alterado facilmente

3. USE ColorScheme.fromSeed para gerar paletas harmoniosas:
   • O Flutter cria automaticamente todas as cores necessárias
   • Garante que as cores trabalham bem juntas
   • Mantém contraste adequado

4. TESTE em modo claro E escuro:
   • Algumas cores funcionam bem em modo claro mas não em escuro
   • Sempre crie ambos os temas desde o início

5. CONSIDERE acessibilidade:
   • Use as cores "on-" para garantir contraste
   • Teste com ferramentas de contraste de cores
   • WCAG recomenda contraste mínimo de 4.5:1 para texto normal

═══════════════════════════════════════════════════════════════════════════
EXEMPLO PRÁTICO DE USO COMPLETO
═══════════════════════════════════════════════════════════════════════════
*/

import 'package:flutter/material.dart';

class ExemploUsoCompleto extends StatelessWidget {
  const ExemploUsoCompleto({super.key});

  @override
  Widget build(BuildContext context) {
    final cores = Theme.of(context).colorScheme;

    return Scaffold(
      // AppBar - geralmente usa surface ou primary
      appBar: AppBar(
        title: const Text('Exemplo de Uso de Cores'),
        backgroundColor: cores.surface,
        foregroundColor: cores.onSurface,
      ),

      // Body - usa background
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Card com surface
            Card(
              color: cores.surface, // Já é o padrão
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Card com surface',
                  style: TextStyle(color: cores.onSurface),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Container com primaryContainer
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cores.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Container primário',
                style: TextStyle(color: cores.onPrimaryContainer),
              ),
            ),

            const SizedBox(height: 16),

            // Container com secondaryContainer
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cores.secondaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Container secundário',
                style: TextStyle(color: cores.onSecondaryContainer),
              ),
            ),

            const SizedBox(height: 16),

            // Container com tertiaryContainer
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cores.tertiaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Container terciário',
                style: TextStyle(color: cores.onTertiaryContainer),
              ),
            ),

            const SizedBox(height: 16),

            // Botão com cor primary (padrão do ElevatedButton)
            ElevatedButton(
              onPressed: () {},
              // Cor primary é aplicada automaticamente
              child: const Text('Botão Primário'),
            ),

            const SizedBox(height: 8),

            // Botão customizado com cor terciária
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: cores.tertiary,
                foregroundColor: cores.onTertiary,
              ),
              child: const Text('Botão Terciário'),
            ),

            const SizedBox(height: 16),

            // Container de erro
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cores.errorContainer,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: cores.error),
              ),
              child: Row(
                children: [
                  Icon(Icons.error_outline, color: cores.error),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Mensagem de erro',
                      style: TextStyle(color: cores.onErrorContainer),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Divider usando outline
            Divider(color: cores.outline, thickness: 1),

            const SizedBox(height: 16),

            // Texto com diferentes níveis de ênfase
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Texto primário (onSurface)',
                  style: TextStyle(
                    color: cores.onSurface,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Texto secundário (onSurfaceVariant)',
                  style: TextStyle(
                    color: cores.onSurfaceVariant,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Texto terciário com outline para indicar baixa importância',
                  style: TextStyle(
                    color: cores.outline,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // FAB com cor terciária customizada
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: cores.tertiaryContainer,
        foregroundColor: cores.onTertiaryContainer,
        child: const Icon(Icons.add),
      ),
    );
  }
}

/*
═══════════════════════════════════════════════════════════════════════════
TABELA DE DECISÃO RÁPIDA
═══════════════════════════════════════════════════════════════════════════

QUANDO USAR CADA COR:

Elemento                          | Cor Recomendada
----------------------------------|----------------------------------------
Botão de ação principal           | primary / onPrimary
Botão secundário                  | secondary / onSecondary
FAB alternativo                   | tertiary / onTertiary
Card, Dialog                      | surface / onSurface
Fundo da tela                     | background / onBackground
Container de destaque leve        | primaryContainer / onPrimaryContainer
Avatar, círculo de perfil         | secondaryContainer / onSecondaryContainer
Badge, chip especial              | tertiaryContainer / onTertiaryContainer
Borda de campo de texto           | outline
Texto secundário                  | onSurfaceVariant
Erro, validação                   | error / onError
Alerta de erro                    | errorContainer / onErrorContainer
Divisor, separador                | outline ou outlineVariant
SnackBar                          | inverseSurface / onInverseSurface

═══════════════════════════════════════════════════════════════════════════
*/
