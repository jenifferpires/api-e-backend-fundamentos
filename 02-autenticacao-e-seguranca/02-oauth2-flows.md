# OAuth 2.0 – Conceito e Fluxos de Autenticação.

OAuth 2.0 é um protocolo de autorização amplamente utilizado para permitir
acesso seguro a APIs sem a necessidade de compartilhar credenciais sensíveis,
como usuário e senha.

Ele é um dos pilares da segurança em aplicações modernas, especialmente em
ambientes corporativos, financeiros e distribuídos.

---

## 🧩 Por que o OAuth 2.0 existe?

Antes do OAuth, sistemas costumavam:
- Compartilhar login e senha entre aplicações.  
- Manter credenciais armazenadas em múltiplos lugares.  
- Criar riscos elevados de vazamento e fraude.  

O OAuth resolve esse problema ao permitir que:

- Um sistema autorize outro a acessar recursos.  
- Sem revelar credenciais do usuário.  
- Com escopo, validade e controle bem definidos.  

---

## 🔐 OAuth não é autenticação (conceitualmente).

Um ponto crítico de entendimento:

> **OAuth 2.0 é um protocolo de AUTORIZAÇÃO.**

Ele define:
- Quem pode acessar.  
- O que pode acessar.  
- Por quanto tempo.  

A autenticação (quem é o usuário) normalmente ocorre **antes** ou **junto**
ao fluxo OAuth, mas não é o foco principal do protocolo.

---

## 🧠 Componentes do OAuth 2.0.

Todo fluxo OAuth envolve alguns elementos fundamentais:

- **Resource Owner**: dono do recurso (usuário). 
- **Client**: aplicação que deseja acessar a API.  
- **Authorization Server**: responsável por autenticar e emitir tokens.  
- **Resource Server**: API que protege os recursos.  

Entender esses papéis é essencial para interpretar erros e fluxos quebrados.

---

## 🔁 O que são OAuth Flows?

Os *flows* (ou grant types) definem **como** o token será obtido,
dependendo do tipo de aplicação, nível de confiança e cenário de uso.

Cada flow resolve um problema específico.

---

## 🔑 Principais OAuth Flows.

### 1️⃣ Authorization Code Flow

**Uso típico:**
- Aplicações web. 
- Sistemas com backend confiável. 

**Características:**
- Fluxo em duas etapas. 
- Maior segurança. 
- Token não é exposto diretamente ao navegador. 

**Visão de suporte:**
- Falhas costumam ocorrer na troca do authorization code pelo token. 
- Erros de redirect URI são comuns. 

---

### 2️⃣ Client Credentials Flow.

**Uso típico:**
- Comunicação entre sistemas.  
- Integrações backend-to-backend. 

**Características:**
- Não envolve usuário final. 
- Autenticação baseada em client_id e client_secret.  

**Visão de suporte:**
- Muito comum em integrações corporativas.  
- Erros geralmente relacionados a permissão ou escopo.  

---

### 3️⃣ Resource Owner Password Credentials (ROPC).

**Uso típico:**
- Sistemas legados.  
- Cenários altamente controlados.  

**Características:**
- Usuário e senha são enviados diretamente.  
- Menor nível de segurança.  

**Observação importante:**
Este flow é considerado **não recomendado** em arquiteturas modernas.

---

### 4️⃣ Implicit Flow (obsoleto).

**Uso típico:**
- Aplicações antigas SPA.  

**Estado atual:**
- Considerado inseguro.  
- Substituído por Authorization Code + PKCE.  

---

## 🧭 OAuth e APIs REST.

Em APIs REST, o OAuth é aplicado da seguinte forma:

1. Cliente obtém um token via Authorization Server.  
2. Token é enviado no header da requisição.  
3. API valida o token antes de processar a requisição.  

Exemplo de header:

Authorization: Bearer <access_token>

---

## 🚦 Relação entre OAuth e erros HTTP.

Problemas em OAuth se refletem diretamente nos status codes:

- **401 Unauthorized**
  - Token ausente
  - Token inválido
  - Token expirado

- **403 Forbidden**
  - Token válido, mas sem escopo/permissão.  

Saber diferenciar esses cenários evita diagnósticos incorretos.

---

## 🔍 Visão de observabilidade e suporte.

Em ambientes maduros, OAuth é monitorado por meio de:

- Logs de autenticação.  
- Métricas de falha por flow. 
- Alertas de token expirado.  
- Auditoria de escopos.  

Um aumento de erros 401 pode indicar:
- Problema no Authorization Server.  
- Tokens expirando antes do esperado.  
- Erro de configuração em integrações.  

---

## ✅ Conclusão:

OAuth 2.0 é um padrão essencial para segurança em APIs modernas.
Entender seus flows permite:

- Escolher a abordagem correta por cenário.  
- Diagnosticar falhas com precisão.  
- Atuar com segurança em ambientes críticos.  
- Evoluir arquiteturas de forma sustentável.  
