# karate-api-prueba

Proyecto de pruebas automatizadas de API usando [Karate](https://docs.karatelabs.io/) para la API de [AutomationExercise](https://automationexercise.com/api_list).

## APIs probadas

| API | Método | Endpoint | Descripción |
|-----|--------|----------|-------------|
| 11  | POST   | `/api/createAccount` | Crear/Registrar cuenta de usuario |
| 12  | DELETE | `/api/deleteAccount` | Eliminar cuenta de usuario |
| 13  | PUT    | `/api/updateAccount` | Actualizar cuenta de usuario |
| 14  | GET    | `/api/getUserDetailByEmail` | Obtener detalle de usuario por email |

## Estructura del proyecto

```
src/test/java/
├── karate-config.js                          # Configuración global de Karate
├── examples/
│   ├── ExamplesTest.java                     # Runner paralelo general
│   └── users/
│       ├── UsersRunner.java                  # Runner general con métodos por cada API
│       ├── CreateAccountRunner.java          # Runner individual - API 11
│       ├── DeleteAccountRunner.java          # Runner individual - API 12
│       ├── UpdateAccountRunner.java          # Runner individual - API 13
│       ├── GetUserDetailByEmailRunner.java   # Runner individual - API 14
│       ├── createAccount.feature             # Feature API 11 - Crear usuario
│       ├── deleteAccount.feature             # Feature API 12 - Eliminar usuario
│       ├── updateAccount.feature             # Feature API 13 - Actualizar usuario
│       └── getUserDetailByEmail.feature      # Feature API 14 - Obtener usuario por email
```

## Requisitos previos

- **Java 17** o superior
- **Maven 3.8+**

## Cómo ejecutar los tests

### Ejecutar todos los tests

```bash
mvn test
```

### Ejecutar todos los tests de usuarios (UsersRunner)

```bash
mvn test -Dtest=examples.users.UsersRunner
```

### Ejecutar cada API con su runner individual

```bash
# API 11 - Crear usuario
mvn test -Dtest=examples.users.CreateAccountRunner

# API 12 - Eliminar usuario
mvn test -Dtest=examples.users.DeleteAccountRunner

# API 13 - Actualizar usuario
mvn test -Dtest=examples.users.UpdateAccountRunner

# API 14 - Obtener usuario por email
mvn test -Dtest=examples.users.GetUserDetailByEmailRunner
```

### Ejecutar un método específico del UsersRunner

```bash
mvn test -Dtest=examples.users.UsersRunner#createUser
mvn test -Dtest=examples.users.UsersRunner#deleteUser
mvn test -Dtest=examples.users.UsersRunner#updateUser
mvn test -Dtest=examples.users.UsersRunner#getUserByEmail
```
## Reportes

Después de ejecutar los tests, los reportes HTML se generan automáticamente en:

```
target/karate-reports/karate-summary.html
```

Abre el archivo en un navegador para ver el resultado detallado de cada prueba.

## Documentación de referencia

- [Karate - Getting Started](https://docs.karatelabs.io/getting-started/why-karate)
- [AutomationExercise - API List](https://automationexercise.com/api_list)
