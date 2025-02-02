# Projeto API Shop

Este projeto foi proposto como um desafio no curso de Backend Ruby da FAP/Softex.

## Descrição

A API Shop permite obter informações sobre produtos e detalhes da loja. Abaixo estão os métodos disponíveis:

### Métodos da API

- **findAllProducts**: Obter todos os produtos.
  - **Endpoint**: `/products`
  - **Resposta**: Lista de produtos com detalhes como nome, preço, imagem e se está em promoção.

- **findShopInformations**: Obter informações da loja.
  - **Endpoint**: `/info`
  - **Resposta**: Informações da loja, incluindo nome, cor, proprietário e departamento.

## Exemplos de Uso

### Curl

Para obter todos os produtos:
```sh
curl -X GET -H "Accept: application/json" "http://localhost:8080/products"
```

Para obter informações da loja:
```sh
curl -X GET -H "Accept: application/json" "http://localhost:8080/info"
```

## Projetos do backend

- [Felipe Rocha Silveira](https://github.com/Rochafelip/api_shop_descount)

## Documentação do Rails
[Documentação API Rails: Passo a passo](https://docs.google.com/document/d/1yIWf4GYfvrR5bY7T6LVmlSd0OINGqeAPOfdIkxH_qIE/edit?usp=sharing)
