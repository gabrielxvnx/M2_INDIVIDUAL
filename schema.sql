-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS resiliadata;
USE resiliadata;

-- Criar tabela empresa
CREATE TABLE empresa(
  id_empresa int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome varchar(255) NOT NULL,
  cnpj varchar(20) NOT NULL,
  localizacao varchar(255) NOT NULL,
  contato varchar(255) NOT NULL,
  email varchar(255) NOT NULL
);

-- Criar tabela tecnologia
CREATE TABLE tecnologia(
  id_tec int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome varchar(255) NOT NULL,
  status varchar(25) NOT NULL
);

-- Criar tabela colaborador
CREATE TABLE colaborador(
  id_colaborador int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome varchar(255) NOT NULL,
  cargo varchar(255) NOT NULL,
  disponibilidade varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  id_empresa int(11) NOT NULL,
  CONSTRAINT fk_id_empresa FOREIGN KEY (id_empresa) REFERENCES empresa (id_empresa)
);

-- Criar tabela registro
CREATE TABLE registro(
  id_registro int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  pesquisa varchar(10) NOT NULL,
  id_empresa int(11) NOT NULL,
  id_tec int(11) NOT NULL,
  area varchar(30) NOT NULL,
  versao_tec varchar(20) NOT NULL,
  CONSTRAINT fk_emp FOREIGN KEY (id_empresa) REFERENCES empresa (id_empresa),
  CONSTRAINT fk_tec FOREIGN KEY (id_tec) REFERENCES tecnologia (id_tec)
);

-- Inserir dados na tabela tecnologia
INSERT INTO tecnologia (nome, status) VALUES
('React', 'Ativo'),
('Node.js', 'Ativo'),
('Java', 'Ativo'),
('Python', 'Ativo'),
('SQL', 'Ativo'),
('Marketing Cloud', 'Ativo'),
('Salesforce', 'Ativo'),
('Angular', 'Ativo'),
('Vue.js', 'Ativo'),
('Docker', 'Ativo');

-- Inserir empresas brasileiras
INSERT INTO empresa (nome, cnpj, localizacao, contato, email) VALUES
('Banco do Brasil', '00.000.000/0001-91', 'Brasília, DF, Brasil', '+55 (61) 1234-5678', 'contato@bb.com.br'),
('Itaú Unibanco', '00.000.000/0002-54', 'São Paulo, SP, Brasil', '+55 (11) 9876-5432', 'contato@itau.com.br'),
('Banco Bradesco', '00.000.000/0003-97', 'Osasco, SP, Brasil', '+55 (11) 8765-4321', 'contato@bradesco.com.br'),
('Ambev', '00.000.000/0004-30', 'São Paulo, SP, Brasil', '+55 (11) 4567-8901', 'contato@ambev.com.br');

-- Inserir registros
INSERT INTO registro (pesquisa, id_empresa, id_tec, area, versao_tec) VALUES
('2022/1', 1, 4, 'Dados', '18.0.0'),
('2022/1', 4, 3, 'Dados', '18.0.0'),
('2022/1', 3, 1, 'Jogos', '18.0.0'),
('2022/1', 1, 2, 'Webdev', '18.0.0'),
('2022/1', 2, 1, 'Aplicações corporativas', '18.0.0'),
('2022/1', 3, 3, 'Dados', '18.0.0'),
('2022/1', 1, 3, 'Marketing', '18.0.0'),
('2022/1', 2, 2, 'back-end', '18.0.0'),
('2022/1', 4, 3, 'Marketing', '18.0.0'),
('2022/1', 1, 3, 'Marketing', '18.0.0'),
('2022/2', 3, 1, 'Webdev', '18.0.0'),
('2022/2', 1, 2, 'Data Science', '3.10.0'),
('2022/2', 5, 3, 'Dados', '18.0.0'),
('2022/2', 3, 1, 'E-commerce', '18.0.0'),
('2022/2', 1, 2, 'Aplicações de IoT', '18.0.0'),
('2022/2', 2, 3, 'Webdev', '18.0.0'),
('2022/2', 3, 6, 'Webdev', '3.2.3'),
('2022/2', 4, 7, 'Operações', '2023.1'),
('2022/2', 2, 5, 'Dados', '18.0.0'),
('2022/2', 4, 4, 'machine learning', '3.10.0');

-- Inserir colaboradores
INSERT INTO colaborador (nome, cargo, disponibilidade, email, id_empresa) VALUES
('João Silva', 'Desenvolvedor Frontend', 'Integral', 'joao.silva@bb.com.br', 1),
('Maria Santos', 'Analista de Dados', 'Integral', 'maria.santos@bb.com.br', 1),
('Pedro Souza', 'Desenvolvedor Backend', 'Integral', 'pedro.souza@itau.com.br', 2),
('Ana Oliveira', 'Engenheira de Dados', 'Integral', 'ana.oliveira@itau.com.br', 2),
('Lucas Pereira', 'Analista de Sistemas', 'Integral', 'lucas.pereira@bradesco.com.br', 3),
('Camila Lima', 'Analista de Segurança da Informação', 'Integral', 'camila.lima@bradesco.com.br', 3),
('Thiago Costa', 'Desenvolvedor Full Stack', 'Integral', 'thiago.costa@ambev.com.br', 4),
('Carla Rodrigues', 'Cientista de Dados', 'Integral', 'carla.rodrigues@ambev.com.br', 4),
('Gustavo Santos', 'Engenheiro de Software', 'Integral', 'gustavo.santos@bb.com.br', 1),
('Fernanda Oliveira', 'Analista de Negócios', 'Integral', 'fernanda.oliveira@bb.com.br', 1),
('Rodrigo Almeida', 'Analista de Sistemas', 'Integral', 'rodrigo.almeida@itau.com.br', 2),
('Juliana Costa', 'Engenheira de Dados', 'Integral', 'juliana.costa@itau.com.br', 2),
('Marcos Silva', 'Desenvolvedor Frontend', 'Integral', 'marcos.silva@bradesco.com.br', 3),
('Isabela Santos', 'Analista de Dados', 'Integral', 'isabela.santos@bradesco.com.br', 3),
('Mariana Oliveira', 'Desenvolvedora Full Stack', 'Integral', 'mariana.oliveira@ambev.com.br', 4),
('Roberto Nunes', 'Cientista de Dados', 'Integral', 'roberto.nunes@ambev.com.br', 4),
('Rafaela Costa', 'Analista de Sistemas', 'Integral', 'rafaela.costa@bb.com.br', 1),
('Carlos Lima', 'Analista de Segurança da Informação', 'Integral', 'carlos.lima@bb.com.br', 1),
('Renata Almeida', 'Desenvolvedora Full Stack', 'Integral', 'renata.almeida@itau.com.br', 2),
('André Santos', 'Analista de Negócios', 'Integral', 'andre.santos@itau.com.br', 2);


-- 1. Qual empresa utiliza o maior número de tecnologias na última pesquisa (2/2022)?;

CREATE VIEW MaiorNumeroTecnologias AS
SELECT emp.nome AS nome, COUNT(reg.id_registro) AS `Quantidade de tecnologias 2/2022`
FROM empresa as emp
INNER JOIN registro as reg ON emp.id_empresa = reg.id_empresa
WHERE reg.pesquisa = '2022/2'
GROUP BY nome
ORDER BY COUNT(reg.id_registro) DESC;

-- 2. Qual empresa utilizava o menor número de tecnologias na pesquisa anterior (1/2022)?

CREATE VIEW MenorNumeroTecnologias AS
SELECT emp.nome AS nome, COUNT(reg.id_registro) AS `Quantidade de tecnologias 1/2022`
FROM empresa as emp
LEFT JOIN registro as reg ON emp.id_empresa = reg.id_empresa
WHERE reg.pesquisa = '2022/1'
GROUP BY nome
ORDER BY COUNT(reg.id_registro) ASC;

-- 3. Quantas empresas utilizam tecnologias na área de “Dados” atualmente?;
CREATE VIEW EmpresasDeDados AS
SELECT COUNT(DISTINCT reg.id_empresa) AS 'Empresas que usam tecnlogias para dados'
FROM registro AS reg
WHERE reg.area = 'Dados';

-- 4. Quantas empresas utilizam tecnologias que não são da área de “Dados” atualmente?
CREATE VIEW EmpresasSemDados AS
SELECT COUNT(DISTINCT reg.id_empresa) AS 'Empresas que não usam tecnlogias para dados'
FROM registro AS reg
WHERE reg.area != 'Dados';
