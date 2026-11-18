-- Export do sistema antigo (MySQL), abandonado em 2024. Usar como referência, não como verdade.

CREATE TABLE clientes (
  email VARCHAR(100) PRIMARY KEY,
  nome VARCHAR(200),
  documento VARCHAR(20),
  telefone VARCHAR(30),
  endereco TEXT
);

CREATE TABLE contratos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cliente_email VARCHAR(100),
  equipamentos TEXT,           -- lista separada por ponto e vírgula
  inicio DATE,
  devolucao DATE,
  ano_contrato YEAR,
  valor FLOAT
);

CREATE TABLE equipamentos (
  patrimonio VARCHAR(10) PRIMARY KEY,
  tipo VARCHAR(100),
  preco_diaria FLOAT,
  preco_semanal FLOAT,
  preco_mensal FLOAT
);
