# API de Produtos

Esta é uma API simples para gerenciar produtos. A API permite criar, listar, atualizar e deletar produtos, além de permitir a aplicação de filtros e ordenações.

## Pré-requisitos

Certifique-se de ter os seguintes softwares instalados em sua máquina:

- [Ruby](https://www.ruby-lang.org/en/)
- [Rails](https://rubyonrails.org/)
- [SQLite3](https://www.sqlite.org/)

## Configuração do Projeto

1. Clone este repositório para sua máquina local:

    ```sh
    git clone https://github.com/seu_usuario/seu_projeto.git
    cd seu_projeto
    ```

2. Instale as dependências do projeto:

    ```sh
    bundle install
    ```

3. Crie e configure o banco de dados:

    ```sh
    rails db:create
    rails db:migrate
    ```

4. Popule o banco de dados com dados iniciais:

    ```sh
    rails db:seed
    ```

5. Inicie o servidor Rails:

    ```sh
    rails server
    ```

## Estrutura do Banco de Dados

O banco de dados contém uma tabela `products` com os seguintes campos:

- `name` (string): O nome do produto.
- `price` (float): O preço do produto.
- `photo` (string): A URL da imagem do produto.
- `on_promotion` (boolean): Indica se o produto está em promoção.
- `created_at` (datetime): A data e hora de criação do registro.
- `updated_at` (datetime): A data e hora de atualização do registro.

## Modelo Product

O modelo `Product` é definido como segue:

```ruby
class Product < ApplicationRecord
end
```
## Como iniciar a API em uma máquina nova?
Iniciando a API na máquina
```
rails db:migrate
rails db:seed
rails server or rails s
```

## OBS!
Ao iniciar o server, para testar se a API está funcionando testar os seguintes destinos
```
/products

/info
```
