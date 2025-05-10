create database projeto_individual;
use projeto_individual;

CREATE TABLE Usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Viagens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    destino VARCHAR(100) NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    descricao VARCHAR(45),
    status_id VARCHAR(45) NOT NULL,
    custo_estimado DECIMAL(10,2),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id)
);

CREATE TABLE Destinos_Visitados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    viagem_id INT NOT NULL,
    cidade VARCHAR(100),
    tipo_viagem VARCHAR(45),
    avaliacao INT NOT NULL,
    comentarios VARCHAR(100),
    FOREIGN KEY (viagem_id) REFERENCES Viagens(id)
  
);


