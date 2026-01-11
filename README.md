# CoinMaster

Aplicativo Flutter para listagem e consulta de criptomoedas, desenvolvido com foco em arquitetura escalável e boas práticas de engenharia de software. 

## Arquitetura

O projeto segue os princípios da **Clean Architecture**, dividindo as responsabilidades em camadas desacopladas: 

- **Presentation:** Gerenciamento de estado com BLoC e UI.
- **Domain:** Regras de negócio, Entidades e Contratos (UseCases/Repositories).
- **Data:** Implementação de repositórios, Datasources e comunicação com API externa.

## Tech Stack & Bibliotecas

Este projeto utiliza as versões mais recentes do ecossistema Flutter:

- **Gerência de Estado:** `flutter_bloc` 
- **Injeção de Dependência:** `get_it` & `injectable`
- **Networking:** `dio` & `retrofit`
- **Imutabilidade & Code Gen:** `freezed` & `json_serializable`
- **Programação Funcional:** `dartz

## Como Rodar o Projeto

Este projeto utiliza geração de código.  Siga os passos abaixo para executar:

### 1. Clone o repositório:
```bash
git clone https://github.com/lucassousaan/coinmaster.git
cd coinmaster
```

### 2. Instale as dependências:
```bash
flutter pub get
```

### 3. IMPORTANTE:  Gere os arquivos de código (Freezed/Retrofit/Injectable)
Sem este passo, o projeto não irá compilar. 

```bash
dart run build_runner build --delete-conflicting-outputs
```

### 4. Execute o App:
```bash
flutter run
```

## Testes

(Em breve - A ser implementado)

## 👨‍💻 Autor

Desenvolvido por [lucassousaan](https://github.com/lucassousaan)