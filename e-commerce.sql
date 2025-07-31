CREATE TABLE fornecedor (
    idfornecedor INT PRIMARY KEY,
    razao_social VARCHAR(45),
    cnpj VARCHAR(45)
);

CREATE TABLE produto (
    idproduto INT PRIMARY KEY,
    categoria VARCHAR(45),
    valor INT,
    descricao VARCHAR(45)
);

CREATE TABLE fornecedor_has_produto (
    fornecedor_idfornecedor INT,
    produto_idproduto INT,
    PRIMARY KEY (fornecedor_idfornecedor, produto_idproduto),
    FOREIGN KEY (fornecedor_idfornecedor) REFERENCES fornecedor(idfornecedor),
    FOREIGN KEY (produto_idproduto) REFERENCES produto(idproduto)
);

CREATE TABLE entrega (
    identrega INT PRIMARY KEY,
    status ENUM('PROCESSAMENTO','DESLOCAMENTO','ENTREGUE'),
    tempo_estimado INT
);

CREATE TABLE produto_has_entrega (
    produto_idproduto INT,
    entrega_identrega INT,
    quantidade INT,
    PRIMARY KEY (produto_idproduto, entrega_identrega),
    FOREIGN KEY (produto_idproduto) REFERENCES produto(idproduto),
    FOREIGN KEY (entrega_identrega) REFERENCES entrega(identrega)
);

CREATE TABLE terceiro_vendedor (
    idterceiro_vendedor INT PRIMARY KEY,
    razao_social VARCHAR(45),
    cnpj VARCHAR(45),
    quantidade INT
);

CREATE TABLE terceiro_vendedor_has_produto (
    terceiro_vendedor_idterceiro_vendedor INT,
    produto_idproduto INT,
    PRIMARY KEY (terceiro_vendedor_idterceiro_vendedor, produto_idproduto),
    FOREIGN KEY (terceiro_vendedor_idterceiro_vendedor) REFERENCES terceiro_vendedor(idterceiro_vendedor),
    FOREIGN KEY (produto_idproduto) REFERENCES produto(idproduto)
);

CREATE TABLE cliente (
    idcliente INT PRIMARY KEY,
    CPF_cnpj_cliente VARCHAR(45),
    nome_cliente VARCHAR(45),
    endereco_cliente VARCHAR(45),
    telefone_cliente VARCHAR(45)
);

CREATE TABLE pedido (
    idpedido INT PRIMARY KEY,
    data_pedido VARCHAR(45),
    descricao VARCHAR(45),
    cliente_idcliente INT,
    entrega_identrega INT,
    FOREIGN KEY (cliente_idcliente) REFERENCES cliente(idcliente),
    FOREIGN KEY (entrega_identrega) REFERENCES entrega(identrega)
);

CREATE TABLE produto_has_pedido (
    produto_idproduto INT,
    pedido_idpedido INT,
    PRIMARY KEY (produto_idproduto, pedido_idpedido),
    FOREIGN KEY (produto_idproduto) REFERENCES produto(idproduto),
    FOREIGN KEY (pedido_idpedido) REFERENCES pedido(idpedido)
);

CREATE TABLE pagamento (
    idpagamento INT PRIMARY KEY,
    tipo_pagamento INT,
    cliente_idcliente INT,
    FOREIGN KEY (cliente_idcliente) REFERENCES cliente(idcliente)
);
