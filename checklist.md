# Checklist de Conformidade com o Documento de Requisitos

Este documento verifica se a codebase do aplicativo Flutter "app_financas" está em conformidade com os requisitos funcionais e não-funcionais especificados no documento "Flutter - Projeto Prático - Parte 1 (2026).pdf".

## Requisitos Funcionais

### RF001 - Login
- **Conforme**: Sim
  - Tela de login implementada em `login_view.dart`.
  - Campos: e-mail e senha presentes.
  - Imagem do logotipo: Usa `Image.asset('assets/images/logo.png')` com fallback para ícone.
  - Botão "Entrar": Presente.
  - Link para cadastro: "Criar conta".
  - Link para "Esqueceu a senha?": Presente.
  - Validações: Campos preenchidos e e-mail válido.
  - Autenticação: Simula com credenciais hardcoded (admin@financas.com / 1234).
  - Navegação: Para `HomeView` em caso de sucesso.

### RF002 - Cadastro de Usuário
- **Conforme**: Sim
  - Tela de cadastro em `register_view.dart`.
  - Campos: Nome, e-mail, telefone, senha, confirmação de senha.
  - Validações: Todos os campos obrigatórios, e-mail válido, senhas iguais, telefone válido.
  - Botão "Cadastrar": Presente (usando `ElevatedButton`).
  - Após validação: Mensagem de sucesso e navegação para `HomeView`.
  - Nota: Lógica de cadastro na view, sem controller separado.

### RF003 - Esqueceu a senha
- **Conforme**: Sim
  - Tela em `forgot_password_view.dart`.
  - Campo: E-mail.
  - Botão: "Solicitar recuperação".
  - Validações: Campo preenchido e e-mail válido.
  - Simulação: Envio de instruções (sempre sucesso se e-mail válido).
  - Navegação: Volta para tela anterior após sucesso.

### RF004 - Sobre
- **Conforme**: Sim
  - Tela "Sobre" implementada em `about_view.dart`.
  - Acessível via Drawer no menu da `home_view.dart`.

### RF005 - Outras funcionalidades
- **Conforme**: Parcialmente
  - Funcionalidades obrigatórias de fundação já implementadas.
  - Funcionalidade do tema (finanças): Tela principal (`home_view.dart`) com visual reformulado e tela de Adicionar Transação (`add_transaction_view.dart`) operantes.
  - Ainda faltam algumas funcionalidades isoladas para completar a exigência de 5 em arquivos separados.
  - Exemplos do que falta para finanças: listar histórico completo, editar, excluir, relatórios detalhados, etc.
  - Cada funcionalidade deve ter interface própria e arquivo separado.

### RF006 - Caixa de Diálogo
- **Conforme**: Parcialmente
  - Usa `SnackBar` em `home_view.dart` para mensagens (ex.: FAB).
  - Em outras telas (login, register, forgot): Usa containers customizados para mensagens, não `AlertDialog` ou `SnackBar`.
  - Requisito: Usar `AlertDialog` ou `SnackBar` para confirmações, avisos, erros.

### RF007 - Listagem de dados
- **Conforme**: Sim
  - Usa `ListView` em `home_view.dart` para listar transações recentes.
  - Dados estáticos (mockados), conforme permitido.

## Requisitos Não-Funcionais

### Desenvolvimento com Flutter e Dart
- **Conforme**: Sim
  - Projeto usa Flutter SDK e Dart.

### Gerenciamento de Estado
- **Conforme**: Não
  - Requisito: Usar `ChangeNotifier` para gerenciar estado.
  - Atual: Controllers são classes simples sem `ChangeNotifier`. Não há provider ou similar implementado.

### Design e Navegação
- **Conforme**: Sim
  - Interface segue Material Design.
  - Navegação clara e fluida com `Navigator.push` e `MaterialPageRoute`.
  - Botões e controles identificáveis.

## Resumo Geral
- **Pontuação Estimada**: Baseado nos pesos (RF001-003: 25%, RF004: 5%, RF005: 50%, RF006: 5%, RF007: 15%).
  - Conforme total: ~55% (login/register/forgot + listagem + home remodelada + add transação + sobre).
  - Faltam: Restante de 4 funcionalidades separadas, uso correto de diálogos via Flutter de forma nativa e gerenciamento de estado.
- **Observações**:
  - O app já apresenta um fluxo de entrada 100% completo, junto de uma tela Sobre e funções de Nova transação prontas.
  - Adicionar telas que fecham o ciclo de vida do dinheiro (ex: `list_transactions_view.dart`, etc).
  - Implementar `ChangeNotifier` nos controllers para estado.
  - Substituir containers customizados por `SnackBar` ou `AlertDialog`.
  - Criar `about_view.dart` com informações do projeto.