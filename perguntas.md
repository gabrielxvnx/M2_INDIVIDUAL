# Perguntas

## Quais são as entidades necessárias?
1. **Empresa**: Representa as empresas parceiras que utilizam o sistema.
2. **Tecnologia**: Descreve as tecnologias disponíveis.
3. **Tecnologia_Empresa**: Associa empresas a tecnologias e registra o nível de utilização.
4. **Colaborador**: Armazena informações sobre os colaboradores das empresas.

## Quais são os principais campos e seus respectivos tipos?
### Empresa
- `id_empresa` (INT, PK): Identificador único da empresa.
- `nome_empresa` (VARCHAR(255)): Nome da empresa.
- `endereco` (VARCHAR(255)): Endereço da empresa.
- `telefone` (VARCHAR(20)): Número de telefone da empresa.

### Tecnologia
- `id_tecnologia` (INT, PK): Identificador único da tecnologia.
- `area` (VARCHAR(50)): Área à qual a tecnologia pertence (por exemplo, "Web Development").
- `nome_tecnologia` (VARCHAR(255)): Nome da tecnologia (por exemplo, "HTML/CSS").

### Tecnologia_Empresa
- `id_empresa` (INT, FK referenciando Empresa): Chave estrangeira para a tabela Empresa.
- `id_tecnologia` (INT, FK referenciando Tecnologia): Chave estrangeira para a tabela Tecnologia.
- `nivel_utilizacao` (INT): Nível de utilização da tecnologia pela empresa.

### Colaborador
- `id_colaborador` (INT, PK): Identificador único do colaborador.
- `nome` (VARCHAR(255)): Nome do colaborador.
- `cargo` (VARCHAR(50)): Cargo do colaborador.
- `id_empresa` (INT, FK referenciando Empresa): Chave estrangeira para a tabela Empresa.

## Como essas entidades estão relacionadas?
- Relacionamento N:N entre Empresa e Colaborador.
- Relacionamento N:N entre Empresa e Tecnologias através da tabela Tecnologia_Empresa.

## Simule 2 registros para cada entidade.
### Empresa
1. PinkMello
   - Endereço: 123 Main Street
   - Telefone: 555-1234
2. WebZoom
   - Endereço: 456 Oak Avenue
   - Telefone: 555-5678

### Tecnologia
1. HTML/CSS (Área: Web Development)
2. Python (Área: Data Science)

### Tecnologia_Empresa
- PinkMello utiliza HTML/CSS (Nível de utilização: 4)
- PinkMello utiliza Python (Nível de utilização: 3)
- WebZoom utiliza HTML/CSS (Nível de utilização: 5)
- WebZoom utiliza Python (Nível de utilização: 2)

### Colaborador
1. John Doe (Cargo: Developer, Empresa: PinkMello)
2. Jane Smith (Cargo: Data Scientist, Empresa: WebZoom)
