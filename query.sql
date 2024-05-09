-- 1. Qual empresa utiliza o maior número de tecnologias na última pesquisa (2/2022)?;
select * from resiliadata.MaiorNumeroTecnologias
LIMIT 1;

-- 2. Qual empresa utilizava o menor número de tecnologias na pesquisa anterior (1/2022)?
select * from resiliadata.MenorNumeroTecnologias
LIMIT 1;

-- 3. Quantas empresas utilizam tecnologias na área de “Dados” atualmente?;
select * from resiliadata.EmpresasDeDados;

-- 4. Quantas empresas utilizam tecnologias que não são da área de “Dados” atualmente?
select * from resiliadata.EmpresasSemDados;
