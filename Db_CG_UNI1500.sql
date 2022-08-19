Create Database CG_UNI1500

Create Table Tb_Moeda (Id INT PRIMARY KEY, Nome VARCHAR (255))
Create Table Tb_Banco (Id INT PRIMARY KEY, Nome VARCHAR (255),Tp_Conta VARCHAR (255), FK_Moeda INT FOREIGN KEY REFERENCES Tb_Moeda(Id))
Create Table Tb_Contas_Contabeis (Id INT PRIMARY KEY, Lucro MONEY, Despesas MONEY, FK_Banco INT FOREIGN KEY REFERENCES Tb_Banco(Id))

Create Table Tb_Empresa (Id INT PRIMARY KEY, Nome VARCHAR (255), CNPJ INT, Endereco Varchar (255), FK_Contas_Contabeis INT FOREIGN KEY REFERENCES Tb_Contas_Contabeis(Id))
Create Table Tb_Pais (Id INT PRIMARY KEY, Nome VARCHAR (255))
Create Table Tb_Cliente (CPF INT PRIMARY KEY, NOME VARCHAR (255), Telefone INT, FK_Pais INT FOREIGN KEY REFERENCES Tb_Pais(Id))
Create Table Tb_Funcionario (Matricula INT PRIMARY KEY, Nome VARCHAR (255), CPF INT,  FK_Empresa INT FOREIGN KEY REFERENCES Tb_Empresa(Id))
Create Table Tb_Projeto (Id INT PRIMARY KEY, Nome VARCHAR(255), CPF INT, FK_Cliente INT FOREIGN KEY REFERENCES Tb_Cliente(CPF), FK_Funcionario INT FOREIGN KEY REFERENCES Tb_Funcionario(Matricula))




