# Sistema RESILIADATA
O **Sistema RESILIADATA** é um banco de dados desenvolvido para armazenar informações críticas utilizadas por empresas parceiras para avaliar tecnologias e gerenciar colaboradores.

## Entidades do Projeto
- **Empresas Parceiras**: Cadastro das empresas que utilizam o sistema.
- **Tecnologias**: Cadastro das tecnologias com opções de áreas como webdev, dados, marketing, etc.
- **Tecnologias Utilizadas**: Tabela que registra quais tecnologias as empresas estão utilizando.
- **Colaboradores**: Tabela para cadastro de colaboradores das empresas parceiras.

## Campos Principais
- **Empresa**: Nome, endereco, telefone.
- **Tecnologias**: Nome, Área.
- **Tecnologias_Empresa**: Empresa, Tecnologia, Nivel de utilização.
- **Colaborador**: Nome, Cargo, Empresa.

## Relacionamentos
- **Empresas Parceiras** ↔ **Tecnologias Utilizadas**: Relacionamento muitos-para-muitos.
- **Tecnologias Utilizadas** ↔ **Tecnologias**: Relacionamento muitos-para-um.
- **Colaboradores** ↔ **Empresas Parceiras**: Relacionamento muitos-para-um.

## Como Executar
1. Clone o repositório do GitHub.
2. Importe o modelo de banco de dados para a ferramenta de sua escolha.
3. Execute as migrações para criar as tabelas no banco de dados.
4. Inicie o sistema e realize os cadastros necessários.
