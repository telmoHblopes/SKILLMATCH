create database SKILLMATCH;
use SKILLMATCH;

CREATE TABLE EMPRESA (
    id_empresa INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100),
    requisito TEXT,
    salario DECIMAL(10,2),
    status VARCHAR(20)
);

-- Tabela VAGA
CREATE TABLE VAGA (
    id_vaga INT AUTO_INCREMENT PRIMARY KEY,
    empresa INT,
    titulo VARCHAR(100),
    requisitos TEXT,
    FOREIGN KEY (empresa) REFERENCES EMPRESA(id_empresa)
);

CREATE TABLE CANDIDATOS (
    id_candidatos INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20)
);

CREATE TABLE CANDIDATURA (
    id_candidatura INT AUTO_INCREMENT PRIMARY KEY,
    candidato INT,
    vaga INT,
    data_inscrição DATE,
    status VARCHAR(20),
    FOREIGN KEY (candidato) REFERENCES CANDIDATOS(id_candidatos),
    FOREIGN KEY (vaga) REFERENCES VAGA(id_vaga)
);
