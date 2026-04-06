# Plano de Ação para Correções no App Finanças

Este documento detalha um plano de ação para implementar os itens não cumpridos ou parcialmente cumpridos identificados no `checklist.md`. O foco é alinhar o aplicativo com os requisitos funcionais e não-funcionais do documento de projeto.

## Prioridades
1. **Alta**: Concluir RF005 (Funcionalidades específicas) - Essencial para a pontuação máxima.
2. **Média**: RF006 (Caixa de Diálogo) - Melhora UX e conformidade.
3. **Baixa**: Gerenciamento de Estado - Pode ser implementado junto com novas funcionalidades.

## Plano de Ação por Item



### RF005 - Funcionalidades Específicas (Parcialmente Implementado)
**Objetivo**: Implementar pelo menos 5 funcionalidades específicas para o tema "finanças", cada uma em arquivo Dart separado, com interfaces próprias.

**Funcionalidades Sugeridas** (baseadas no exemplo de controle de tarefas, adaptado para finanças):
1. ~~Adicionar Receita/Despesa~~ (Já implementado)
2. Listar Transações (expandir a existente para um Histórico completo)
3. Editar Transação
4. Excluir Transação
5. Relatório de Gastos (ex.: gráfico detalhado ou resumo mensal)

**Passos**:
1. Para cada funcionalidade:
   - Criar arquivo separado em `lib/view/` (ex.: `list_transactions_view.dart`).
   - Implementar UI com `StatefulWidget` ou `StatelessWidget`.
   - Usar dados mockados inicialmente.
   - Adicionar navegação do `home_view.dart` (ex.: botões ou menu).
2. Atualizar `home_view.dart` para incluir links para as novas telas (ex.: Drawer ou BottomNavigationBar).
3. Garantir que cada tela seja independente e em arquivo separado.
4. Para listagem (RF007): Expandir o `ListView` existente ou criar novo com `GridView` se aplicável.

**Arquivos a Criar**:
- `lib/view/list_transactions_view.dart`
- `lib/view/edit_transaction_view.dart`
- `lib/view/delete_transaction_view.dart` (ou integrar em list)
- `lib/view/report_view.dart`
- Editar: `lib/view/home_view.dart` (adicionar navegação)

**Tempo Estimado**: 8-12 horas (2 horas por funcionalidade).

### RF006 - Caixa de Diálogo (Parcialmente Implementado)
**Objetivo**: Substituir containers customizados por `AlertDialog` ou `SnackBar` para mensagens de confirmação, erro e aviso.

**Passos**:
1. Identificar locais com containers customizados: `login_view.dart`, `register_view.dart`, `forgot_password_view.dart`.
2. Substituir por:
   - `SnackBar` para mensagens rápidas (ex.: sucesso/erro de login).
   - `AlertDialog` para confirmações (ex.: antes de excluir transação).
3. Usar `ScaffoldMessenger.of(context).showSnackBar()` ou `showDialog()` com `AlertDialog`.
4. Testar em diferentes cenários (sucesso, erro, validação).

**Arquivos a Editar**:
- `lib/view/login_view.dart`
- `lib/view/register_view.dart`
- `lib/view/forgot_password_view.dart`
- Adicionar em novas telas (ex.: confirmação de exclusão).

**Tempo Estimado**: 2-3 horas.

### Gerenciamento de Estado (Não Implementado)
**Objetivo**: Implementar `ChangeNotifier` para gerenciar estado dos dados (ex.: lista de transações, saldo).

**Passos**:
1. Criar modelo em `lib/model/` (ex.: `transaction_model.dart` para representar transações).
2. Criar controller com `ChangeNotifier` (ex.: `transaction_controller.dart`).
3. Usar `Provider` ou similar para fornecer o controller na árvore de widgets (adicionar em `main.dart`).
4. Atualizar views para consumir o estado via `Consumer` ou `context.watch`.
5. Migrar dados mockados para o controller.

**Arquivos a Criar/Editar**:
- Novo: `lib/model/transaction_model.dart`
- Novo: `lib/controller/transaction_controller.dart`
- Editar: `lib/main.dart` (adicionar Provider)
- Editar: `lib/view/home_view.dart` e novas views (integrar estado)

**Tempo Estimado**: 4-6 horas.

## Cronograma Sugerido
- **Dia 1**: ~~Implementar RF004 (Sobre) e RF005 (Adicionar)~~ (OK).
- **Dia 2-3**: Implementar restante das funcionalidades de RF005.
- **Dia 4**: Implementar restante de RF005 e RF006.
- **Dia 5**: Implementar gerenciamento de estado e testes finais.

## Validação
- Após cada implementação, executar o app e verificar conformidade.
- Usar `flutter run` para testar navegação e UI.
- Atualizar `checklist.md` com status após correções.

## Recursos Necessários
- Flutter SDK e Dart.
- Conhecimento de Material Design e widgets Flutter.
- Testes em emulador/dispositivo.

Este plano visa corrigir as lacunas de forma incremental, priorizando itens de maior peso na avaliação.