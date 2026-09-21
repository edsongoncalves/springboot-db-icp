# Spring Boot + MySQL - Produtos

Exemplo extremamente simples de uma API Spring Boot que conecta em um banco MySQL usando variaveis de ambiente.

## Variaveis

```env
DBHOST=127.0.0.1
DBPORT=3306
DBUSER=root
DBPASS=123456
DB=produtos_db
```

## Banco

Execute:

```text
sql/produtos.sql
```

## Compilar

Requer Java 21 e Maven.

```bash
mvn clean package
```

O JAR sera criado em:

```text
target/produtos-0.0.1-SNAPSHOT.jar
```

## Executar

```bash
java -jar target/produtos-0.0.1-SNAPSHOT.jar
```

## Endpoint

```text
GET http://localhost:8080/produtos
```

Exemplo de resposta:

```json
[
  {
    "id": 1,
    "nome": "Teclado",
    "preco": 150.0
  }
]
```

## ICP

No ICP, defina estas variaveis de ambiente:

```text
DBHOST
DBPORT
DBUSER
DBPASS
DB
```

A aplicacao usa:

```properties
spring.datasource.url=jdbc:mysql://${DBHOST}:${DBPORT}/${DB}
spring.datasource.username=${DBUSER}
spring.datasource.password=${DBPASS}
```
