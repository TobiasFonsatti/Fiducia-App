## Parte 1

# Projeto Prático

**Objetivo**
Desenvolver um aplicativo multiplataforma de acordo com o tema de sua preferência.
**Objetivos Específicos**
● Elaborar todas as interfaces gráficas do aplicativo (UI).
● Implementar o flux o de navegação entre as interfaces.
● Realizar o gerenciamento de estado dos dados com _ChangeNotifier_.

## Requisitos Funcionais

```
RF001 Login
O aplicativo deve disponibilizar uma tela de autenticação (Login) para acesso às
funcionalidades do sistema.
A tela de login deve apresentar os seguintes elementos de interface:
● Um campo para informação do e-mail do usuário;
● Um campo para informação da senha;
● Uma imagem representando o logotipo da aplicação;
● Um botão "Entrar" para realizar a autenticação no sistema;
● Um link ou botão para Cadastro de Usuário;
● Um link ou botão para a funcionalidade "Esqueceu a senha?".
Ao acionar o botão "Entrar", o aplicativo deve:
```
1. Verificar se os campos e-mail e senha foram preenchidos;
2. Validar se o e-mail informado possui formato válido;
3. Caso alguma validação falhe, o sistema deve exibir uma mensagem de erro
    apropriada ao usuário;
4. Caso as credenciais sejam válidas, o usuário deve ser autenticado e
    direcionado para a tela principal do aplicativo.


A partir da tela de login, o usuário também deve poder acessar:
● a funcionalidade de cadastro de novo usuário;
● a funcionalidade de recuperação de senha.
**RF002 Cadastro de Usuário**
O aplicativo deve permitir o cadastro de novos usuários no sistema.
A tela de cadastro deve apresentar, no mínimo, os seguintes campos:
● Nome do usuário;
● E-mail;
● Número de telefone;
● Senha;
● Confirmação de senha.
Outros campos adicionais poderão ser incluídos conforme os objetivos específicos
do projeto.
A tela de cadastro deve conter um botão para confirmação do cadastro (por exemplo,
"Cadastrar" ou "Criar conta").
Ao solicitar o cadastro, o aplicativo deve realizar as seguintes validações:

1. Verificar se todos os campos obrigatórios foram preenchidos;
2. Validar se o e-mail informado possui formato válido;
3. Verificar se os campos senha e confirmação de senha possuem valores iguais;
4. Caso alguma validação falhe, o sistema deve exibir uma mensagem de erro
    apropriada ao usuário.
Após o preenchimento correto das informações e a validação dos dados, o sistema
deve permitir seu acesso ao aplicativo.
**RF003 Esqueceu a senha**
O aplicativo deve disponibilizar uma funcionalidade de recuperação de senha para
usuários que não se lembram de suas credenciais de acesso.
A funcionalidade deve ser acessível a partir da tela de login, por meio da opção
“Esqueceu a senha?”.


Ao selecionar essa opção, o aplicativo deve apresentar uma tela contendo:
● Um campo para informação do e-mail cadastrado pelo usuário;
● Um botão para solicitar a recuperação da senha.
Ao solicitar a recuperação, o aplicativo deve:

1. Verificar se o campo de e-mail foi preenchido;
2. Validar se o e-mail informado possui formato válido;
3. Caso o e-mail seja válido e esteja associado a uma conta cadastrada, o
    sistema deve iniciar o processo de recuperação de senha, enviando instruções
    de redefinição para o e-mail informado;
4. Caso ocorra alguma inconsistência (campo vazio ou e-mail inválido), o sistema
    deve exibir uma mensagem de erro apropriada ao usuário.
**RF004 Sobre**
O aplicativo deve disponibilizar uma tela de informações sobre o projeto.
A tela “Sobre” deve apresentar informações institucionais do aplicativo, incluindo, no
mínimo:
● Objetivo do aplicativo;
● Nome dos integrantes da equipe de desenvolvimento.
Outras informações adicionais poderão ser incluídas, tais como:
● nome da disciplina;
● nome da instituição;
● nome do professor;
● versão do aplicativo.
A localização da funcionalidade no aplicativo (por exemplo, menu principal, menu
lateral ou outra área de navegação) poderá ser definida pela equipe de
desenvolvimento.


**RF005 Outras funcionalidades**
O aplicativo deve conter as seguintes funcionalidades obrigatórias:
● Login de usuário;
● Cadastro de usuário;
● Recuperação de senha ("Esqueceu a senha");
● Tela de informações sobre o projeto ("Sobre")
Além das funcionalidades obrigatórias, o aplicativo deve implementar
funcionalidades específicas relacionadas ao tema escolhido pela equipe. Para essas
funcionalidades específicas, devem ser atendidas as seguintes regras:

1. O aplicativo deve conter no mínimo 5 (cinco) funcionalidades específicas
    relacionadas ao tema do projeto;
2. Cada funcionalidade específica deve possuir uma interface gráfica própria;
3. Cada funcionalidade deve ser implementada em um arquivo Dart separado;
4. As interfaces podem ser implementadas utilizando widgets do tipo
    _StatelessWidget_ ou _StatefulWidget_.
A equipe poderá utilizar outros widgets, bibliotecas ou plugins disponíveis para
Flutter, sendo essa escolha de responsabilidade da equipe de desenvolvimento.
**_Exemplo:_** _Em um aplicativo com o tema controle de tarefas, funcionalidades específicas
poderiam incluir: cadastrar tarefa, listar tarefas, editar tarefa, marcar tarefa como
concluída e excluir tarefa._
**RF006 Caixa de Diálogo**
O aplicativo deve exibir mensagens informativas ao usuário por meio de caixas de
diálogo da interface gráfica.P ara isso, devem ser utilizados componentes
disponibilizados pelo framework Flutter, tais como:
● AlertDialog;
● SnackBar.
Esses componentes devem ser utilizados para apresentar mensagens relacionadas a:
● confirmação de ações realizadas pelo usuário;
● avisos ou informações importantes;
● mensagens de erro ou validação de dados.


```
A escolha do tipo de componente de diálogo a ser utilizado em cada situação
poderá ser definida pela equipe de desenvolvimento, de acordo com a necessidade
da funcionalidade implementada.
RF007 Listagem de dados
O aplicativo deve apresentar uma lista de dados em pelo menos uma das
funcionalidades específicas do sistema.
Para a implementação dessa funcionalidade, deve ser utilizado um dos seguintes
widgets do Flutter:
● ListView – utilizado para exibir uma lista rolável de widgets organizados de
forma linear (vertical ou horizontal);
● GridView – utilizado para exibir elementos organizados em uma grade
bidimensional.
A escolha entre ListView ou GridView deve ser definida pela equipe de
desenvolvimento, de acordo com as necessidades da funcionalidade implementada.
Nesta etapa do projeto, podem ser utilizados dados estáticos (mockados) apenas
para demonstrar o funcionamento da interface e do widget de listagem.
```
## Requisitos Não-Funcionais

```
■ O aplicativo deve ser desenvolvido utilizando o Flutter SDK e a linguagem de
programação Dart.
■ O aplicativo deve implementar mecanismos de gerenciamento de estado para
controlar e atualizar os dados exibidos na interface do usuário. A escolha da
abordagem ou biblioteca de gerenciamento de estado (por exemplo, Provider,
Riverpod, Bloc, MobX ou outra solução compatível com Flutter) poderá ser
definida pela equipe de desenvolvimento.
■ A interface do aplicativo deve apresentar design intuitivo e de fácil utilização,
contendo botões, ícones e controles claramente identificáveis, de forma a
```

```
facilitar a interação do usuário com o sistema. O design da interface deve
seguir as diretrizes do Material Design utilizadas pelo Flutter.
■ O aplicativo deve possuir navegação clara e fluida entre as telas, seguindo as
boas práticas de navegação recomendadas pelo Material Design.
```
## O que deverá ser entregue?

```
O aplicativo poderá ser desenvolvido individualmente ou em dupla.
A entrega do projeto deverá ser realizada por meio de um repositório público no GitHub.
Para isso, os alunos devem:
```
1. Criar um repositório público no GitHub;
2. Disponibilizar no repositório todo o código-fonte do aplicativo, devidamente
    organizado;
3. Garantir que o projeto possa ser compilado e executado a partir dos arquivos
    disponibilizados no repositório.
4. O link do repositório deve estar acessível publicamente no momento da
    correção.
Deverá ser elaborado um vídeo de apresentação do aplicativo, com duração máxima de
4 (quatro) minutos, contendo:
● Demonstração do aplicativo em funcionamento;
● Apresentação de trechos do código-fonte, com foco nas partes relacionadas aos
critérios de avaliação (rubricas) do projeto.
● O vídeo deve ser entregue por meio do link do Youtube, GDrive, ou similar.
A entrega será realizada por meio de **um arquivo de texto** contendo as seguintes
informações:
● Nome completo dos alunos;
● Código de matrícula dos alunos;
● Link para o repositório do projeto no GitHub.
● Link para o vídeo
**Importante** : projetos entregues sem o vídeo de apresentação terão a nota zerada.


**Critérios de Avaliação Peso**
RF001, RF002 e RF003 25%
RF004 05%
RF005 50%
RF006 05%
RF007 15%
A identificação de cópias indiscriminadas de código-fonte da internet, ou de colegas da turma,
ocasionará na perda da pontuação.


