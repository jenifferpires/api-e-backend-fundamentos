# APIs na Prática – Testes, Diagnóstico e Análise Técnica.

Este módulo aborda o uso prático de APIs REST, com foco em testes, análise de falhas
e raciocínio técnico aplicado a ambientes de produção e sustentação de sistemas.

O objetivo é demonstrar como analisar o comportamento de uma API a partir de suas
requisições, respostas e códigos HTTP.

---

## 🧪 O que significa “testar uma API”?

Testar uma API significa simular requisições HTTP para validar:
- Se o endpoint está acessível
- Se a autenticação funciona corretamente
- Se os dados retornados são consistentes
- Se os erros são tratados de forma adequada

Essa validação pode ser feita de forma independente do frontend, utilizando ferramentas
como Postman ou curl.

---

## 🔧 Estrutura de uma requisição na prática

Uma requisição HTTP completa é composta por:

- Método HTTP (GET, POST, PUT, DELETE)
- Endpoint (URL)
- Headers
- Body (quando aplicável)

Exemplo:

```http
GET /api/clientes/123
Authorization: Bearer <token>
```

Essa chamada solicita os dados do cliente identificado pelo ID 123.

## 📦 Analisando a resposta da API

Toda resposta HTTP deve ser analisada considerando dois pontos principais:

Status Code
Conteúdo do body (quando houver).

Exemplo de resposta bem-sucedida: 

```http
{
  "id": 123,
  "nome": "Empresa X",
  "ativo": true
}
```

Um status `200 OK` indica que a requisição foi processada com sucesso.

## 🚦 Diagnóstico baseado em Status Code:

Os códigos HTTP são o primeiro indicador de falha ou sucesso.

`400 – Bad Request`

Indica erro na requisição enviada, como:

Dados inválidos.
Campos obrigatórios ausentes.
Formato incorreto do payload.

`401 – Unauthorized`

Indica falha de autenticação:

Token inválido.
Token expirado.
Token ausente.

`403 – Forbidden`

Indica falta de permissão:

Usuário autenticado, mas sem acesso ao recurso

`404 – Not Found`

Indica recurso inexistente: 

Endpoint incorreto. 
Registro não encontrado. 

`5xx – Erro de Servidor`

Indica falha no backend: 

Erro de código. 
Falha de integração. 
Serviço indisponível. 

🔍 Exemplo de cenário real de diagnóstico.  
Cenário:  

Erro ao atualizar cadastro de cliente.  

Requisição: 
```http
PUT /api/clientes/123
Authorization: Bearer <token>
Content-Type: application/json


Body:

{
  "nome": "Empresa X",
  "email": "email_invalido"
}

``` 

Resposta:

`400 Bad Request`  
Essa chamada solicita os dados do cliente identificado pelo ID 123.

## 📦 Analisando a resposta da API.

Toda resposta HTTP deve ser analisada considerando dois pontos principais: 

Status Code. 
Conteúdo do body (quando houver). 

Exemplo de resposta bem-sucedida: 
```http
{
  "id": 123,
  "nome": "Empresa X",
  "ativo": true
}
```

Um status `200 OK` indica que a requisição foi processada com sucesso.

## 🚦 Diagnóstico baseado em Status Code.

Os códigos HTTP são o primeiro indicador de falha ou sucesso.

`400 – Bad Request`

Indica erro na requisição enviada, como:  

Dados inválidos.      
Campos obrigatórios ausentes.    
Formato incorreto do payload.    
 
`401 – Unauthorized`  

Indica falha de autenticação:  

Token inválido.   
Token expirado.   
Token ausente.   

`403 – Forbidden`

Indica falta de permissão:

Usuário autenticado, mas sem acesso ao recurso.

`404 – Not Found`

Indica recurso inexistente:  

Endpoint incorreto.  
Registro não encontrado.  

`5xx – Erro de Servidor`

Indica falha no backend:  

Erro de código.  
Falha de integração.  

Serviço indisponível. 

## 🔍 Exemplo de cenário real de diagnóstico.  
Cenário:   

Erro ao atualizar cadastro de cliente.   

Requisição:  
```http 
PUT /api/clientes/123
Authorization: Bearer <token>
Content-Type: application/json


Body:

{
  "nome": "Empresa X",
  "email": "email_invalido"
}

```

Resposta:

`400 Bad Request`


#### Análise:

O erro indica problema no payload enviado, não no backend.

#### Ação:

Validar o formato dos dados antes de escalar o incidente.

## 🧠 Raciocínio esperado de um Analista de Sistemas.

Ao analisar uma falha em uma API, o profissional deve avaliar:  

A requisição foi montada corretamente?  
O token está válido?  
O erro é consistente ou intermitente?  
Outros endpoints estão sendo afetados?  
Há impacto para mais usuários?  

Esse tipo de análise evita diagnósticos precipitados e acelera a resolução do problema.  

## 🎯 Boas práticas no uso e análise de APIs.  

Sempre validar o status code antes do body.  
Evitar assumir erro de backend sem evidências.    
Utilizar logs para complementar a análise.  
Documentar comportamentos inesperados.  
Pensar em impacto sistêmico.  

## ✅ Conclusão:

Trabalhar com APIs na prática exige mais do que saber consumir endpoints.
Exige capacidade de análise, interpretação de erros e visão sistêmica.

Essas habilidades são essenciais para atuação em ambientes modernos baseados em APIs,
especialmente em sistemas críticos e financeiros.