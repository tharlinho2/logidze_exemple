## Versões
* ruby: 2.7.7
* rails: 6.1
* postgresql: 14-3.2
* bootstrap: 5


## Instalando Sistema

1. Primeiro execute

    ```
    bundle install
    ```

2. Crie o banco de dados, migração

    ```
    foreman start
    ```

3. Agora execute o projeto

    ```
    rails db:create
    ```
    ```
    rails db:migrate
    ```
