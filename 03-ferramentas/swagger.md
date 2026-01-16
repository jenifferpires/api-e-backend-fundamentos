# Swagger e OpenAPI – Contrato, Documentação e Governança.

Swagger e OpenAPI estão diretamente ligados à padronização, documentação
e governança de APIs.

Entender esse conceito é fundamental para quem atua com desenvolvimento,
suporte, integração e sustentação de sistemas.

---

## 🧩 O que é OpenAPI?

OpenAPI é uma **especificação** que define como uma API deve ser descrita,
independente de linguagem ou tecnologia.

Ela documenta:
- Endpoints
- Métodos HTTP
- Parâmetros
- Headers
- Payloads
- Respostas
- Códigos de erro

Ou seja, OpenAPI é o **contrato da API**.

---

## 🔍 O que é Swagger?

Swagger é um **conjunto de ferramentas** que utiliza a especificação OpenAPI.

Ele inclui:
- Swagger UI (interface visual)
- Swagger Editor
- Swagger Codegen

Swagger **implementa** OpenAPI, mas não substitui a especificação.

---

## 🧠 Por que contrato é importante?

Uma API sem contrato claro gera:
- Integrações frágeis. 
- Erros recorrentes.  
- Dificuldade de suporte.  
- Quebra de compatibilidade.  

Com OpenAPI:
- Expectativas ficam claras.  
- Mudanças são controladas.  
- Comunicação entre times melhora.  

---

## 🔁 Swagger na prática. 

O Swagger UI permite:

- Visualizar todos os endpoints.  
- Entender payloads esperados.  
- Testar requisições.  
- Validar autenticação.  
- Reproduzir erros.  

Ele funciona como uma ponte entre documentação e execução.

---

## 🔐 Segurança no OpenAPI. 

APIs seguras descrevem no contrato:

- Tipo de autenticação.  
- Headers obrigatórios.  
- Formato do token. 
- Escopos necessários.  

Isso reduz erros de uso e falhas de integração.

---

## 🚦 Swagger como ferramenta de diagnóstico. 

Swagger ajuda a identificar:

- Endpoint incorreto.  
- Método HTTP errado.  
- Payload malformado.  
- Campo obrigatório ausente.  

Se a chamada falha no Swagger:
- O problema está na API ou no contrato.  

Se funciona no Swagger e não no cliente:
- O problema está no uso da API.  

---

## 📊 Governança e observabilidade. 

Em ambientes maduros, o OpenAPI é usado para:

- Controle de versão.  
- Validação automática. 
- Geração de métricas.  
- Auditoria de mudanças.  

Swagger se torna parte do ciclo de vida da API.

---

## ⚠️ Boas práticas: 

- Manter contrato sempre atualizado.  
- Versionar APIs.  
- Não expor dados sensíveis.  
- Documentar erros.  
- Validar impacto antes de mudanças.  

---

## ✅ Conclusão: 

Swagger e OpenAPI não são apenas documentação.  
Eles representam maturidade técnica, padronização
e governança em APIs modernas.  
