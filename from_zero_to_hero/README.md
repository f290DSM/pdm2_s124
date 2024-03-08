# From Zero to Hero

Este projeto tem por objetivo dar um boost na utilização do Flutter para aplicativos moveis com a possibilidade de utilização de múltiplas plataformas.

Vamos criar um projeto que irá focar no app como front-end utilizando também gerencia de estado para  desacoplamento das camadas do aplicativo.

Iremos consumir o serviço de produtos [DummyJSON](https://dummyjson.com/docs/products).

## Criando o Projeto 

A partir do diretorio de sua preferencia execute o comando abaixo.

```shell
flutter create --project-name=from_zero_to_hero --org=br.gov.sp.fatecararas --platforms=web,android from_zero_to_hero
```

## Incluindo as dependencias

Iremos utilizar alguns pacotes de terceiros que irão facilitar o nosso desenvolvimento.

### Dependencias Padrão

Em outro momento discutiremos todas estas dependencias detalhadamente; hoje é dia de **Hands ON**!

```shell
flutter pub add flutter_riverpod riverpod_annotation freezed_annotation json_annotation dio
```

### Dependencias com geração de código automático

```shell
dart pub add --dev build_runner custom_lint riverpod_generator riverpod_lint freezed json_serializable
```

#### Ajustando os warnings de geraçã de código automática

Inclua no arquivo `analysis_options.yaml` o código abaixo.

```yml
analyzer:
  plugins: 
    - custom_lint
  exclude:
    - "**/*.g.dart"
    - "**/*.freezed.dart"
```

## O que iremos fazer?

Basicamente iremos consumir inicialmente 2 end-points do `DummyJSON`, **/products/categories** e **/products/categoty/{categoty_id}**.

### Estrutura da respostas das requisições 

Abaixo teremos as requisições que iremos consumir assim como as respostas das mesmas; com base nestas informações iremos criar as funcionalidades de nosso App.

### Categorias de produtos

#### Request
```shell
curl -X GET https://dummyjson.com/products/categories
``` 

#### Response

```json
[
  "smartphones",
  "laptops",
  "fragrances",
  "skincare",
  "groceries",
  "home-decoration",
  "furniture",
  "tops",
  "womens-dresses",
  "womens-shoes",
  "mens-shirts",
  "mens-shoes",
  "mens-watches",
  "womens-watches",
  "womens-bags",
  "womens-jewellery",
  "sunglasses",
  "automotive",
  "motorcycle",
  "lighting"
]
```

### Produtos por categoria

#### Request
```shell
curl -X GET https://dummyjson.com/products/category/groceries
``` 

#### Response

```json
{
  "products": [
    {
      "id": 21,
      "title": "- Daal Masoor 500 grams",
      "description": "Fine quality Branded Product Keep in a cool and dry place",
      "price": 20,
      "discountPercentage": 4.81,
      "rating": 4.44,
      "stock": 133,
      "brand": "Saaf & Khaas",
      "category": "groceries",
      "thumbnail": "https://cdn.dummyjson.com/product-images/21/thumbnail.png",
      "images": [
        "https://cdn.dummyjson.com/product-images/21/1.png",
        "https://cdn.dummyjson.com/product-images/21/2.jpg",
        "https://cdn.dummyjson.com/product-images/21/3.jpg"
      ]
    },
    ...
  ],
  "total": 5,
  "skip": 0,
  "limit": 5
}
```


