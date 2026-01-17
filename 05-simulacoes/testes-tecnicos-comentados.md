# Testes Técnicos Comentados – Raciocínio e Comunicação.  

Este documento apresenta exemplos de perguntas técnicas comuns em processos
seletivos para áreas de backend, APIs e suporte técnico, acompanhadas de
respostas comentadas.

O foco não está apenas na resposta final, mas no **raciocínio utilizado
para chegar até ela**.

---

## 🧩 Pergunta 1 – Qual a diferença entre erro 401 e 403?

### Resposta técnica:  
- 401 Unauthorized indica falha de autenticação.  
- 403 Forbidden indica falha de autorização.  

### Raciocínio:  
Primeiro identifico se o usuário está autenticado.
Se não estiver, o erro é 401.
Se estiver autenticado, mas sem permissão, o erro é 403.

### Visão prática:  
Essa distinção evita diagnósticos incorretos e escalonamentos desnecessários.

---

## 🧩 Pergunta 2 – Uma API está lenta, por onde você começa a análise?

### Resposta técnica:  
Começo avaliando métricas de:
- tempo de resposta.  
- taxa de erro.  
- volume de requisições.  

### Raciocínio:  
Lentidão pode vir de:
- banco de dados.  
- lógica de negócio.  
- volume excessivo de dados. 
- infraestrutura.  

Uso observabilidade para reduzir o escopo antes de investigar código.

---

## 🧩 Pergunta 3 – Quando usar OAuth2 Client Credentials?

### Resposta técnica:  
Quando a comunicação ocorre entre sistemas,
sem envolvimento de usuário final.

### Raciocínio:  
Esse flow é mais simples, seguro e adequado para integrações backend-to-backend.

---

## 🧩 Pergunta 4 – Por que evitar SELECT * em APIs?

### Resposta técnica:  
Porque retorna mais dados do que o necessário.

### Raciocínio:  
Isso impacta:
- performance
- consumo de memória
- tempo de resposta da API

Selecionar colunas específicas demonstra cuidado com desempenho.

---

## 🧩 Pergunta 5 – O que fazer diante de um erro 500?

### Resposta técnica:  
Erro 500 indica falha interna do backend.

### Raciocínio:  
Analiso logs, payload da requisição e contexto.
Erro 500 nunca deve ser tratado como erro do usuário.

---

## 🧩 Pergunta 6 – Como diferenciar problema de API e problema de cliente?

### Resposta técnica:  
Reproduzo a chamada usando Postman ou Swagger.

### Raciocínio:  
- Se funciona fora do cliente, o problema está no uso da API
- Se falha também, o problema é backend

Isso isola rapidamente a causa.

---

## 🧩 Pergunta 7 – Qual a importância da observabilidade?

### Resposta técnica:  
Permite entender o comportamento do sistema em produção.

### Raciocínio:  
Logs, métricas e dashboards reduzem tempo de diagnóstico
e permitem atuação preventiva.

---

## 🎯 O que essas respostas demonstram?

- Clareza técnica.  
- Pensamento estruturado.  
- Capacidade de diagnóstico.  
- Comunicação objetiva.  
- Maturidade profissional.  

---

## ✅ Conclusão:  

Testes técnicos não avaliam apenas conhecimento,
mas a forma como o candidato pensa, investiga e se comunica.

Esse tipo de abordagem demonstra preparo real para atuar
em ambientes corporativos e críticos.
