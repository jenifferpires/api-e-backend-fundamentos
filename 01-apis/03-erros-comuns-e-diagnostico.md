# Erros Comuns em APIs e Diagnóstico Técnico,

Este módulo aborda os erros mais comuns em APIs REST e como diagnosticá-los de forma
estruturada, considerando não apenas o código de retorno HTTP, mas também o contexto,
o impacto sistêmico e os sinais de observabilidade.

O foco é desenvolver um raciocínio técnico que permita reduzir o tempo de resolução
de incidentes (MTTR) e evitar escalonamentos desnecessários.

---

## 🔍 Classificação dos erros em APIs,

Erros em APIs podem ser classificados em três grandes grupos:

1. Erros de uso (cliente)
2. Erros de autenticação e autorização
3. Erros de backend ou infraestrutura

Identificar corretamente a categoria do erro é o primeiro passo para um diagnóstico eficaz.

---

## 🚫 Erros de uso da API (4xx).

### 400 – Bad Request

**Descrição:**  
A requisição foi recebida, mas contém dados inválidos ou incompletos.

**Causas comuns:**
- Campos obrigatórios ausentes
- Formato de dados incorreto
- Tipos inválidos (string em vez de número)

**Diagnóstico:**
- Validar payload enviado
- Conferir contrato da API

**Ação recomendada:**
- Orientar correção da requisição
- Não escalar como erro de código

---

### 404 – Not Found

**Descrição:**  
O recurso solicitado não existe.

**Causas comuns:**
- Endpoint incorreto
- ID inexistente
- Versão errada da API

**Diagnóstico:**
- Conferir URL e parâmetros
- Validar existência do recurso no banco

---

## 🔐 Erros de autenticação e autorização.

### 401 – Unauthorized

**Descrição:**  
Falha na autenticação.

**Causas comuns:**
- Token expirado
- Token inválido
- Header de autenticação ausente

**Diagnóstico:**
- Validar token
- Conferir tempo de expiração
- Verificar header Authorization

---

### 403 – Forbidden

**Descrição:**  
Usuário autenticado, mas sem permissão para acessar o recurso.

**Causas comuns:**
- Perfil sem acesso
- Regra de autorização mal configurada

**Diagnóstico:**
- Validar roles e permissões
- Conferir política de acesso da API

---

## 💥 Erros de backend e infraestrutura (5xx).

### 500 – Internal Server Error

**Descrição:**  
Erro inesperado no backend.

**Causas comuns:**
- Exceções não tratadas
- Falha de integração
- Erro de código

**Diagnóstico:**
- Analisar logs da aplicação
- Correlacionar com requisição

---

### 502 / 504 – Bad Gateway / Gateway Timeout

**Descrição:**  
Falha de comunicação entre serviços.

**Causas comuns:**
- Serviço downstream indisponível
- Lentidão excessiva
- Timeout de integração

**Diagnóstico:**
- Verificar dependências
- Analisar latência
- Conferir saúde dos serviços integrados

---

## ⏱️ Erros de performance e latência.

Nem todo problema gera erro HTTP.

### Cenários comuns:
- API responde 200, mas com alta latência
- Timeout no cliente
- Degradação gradual do serviço

**Diagnóstico:**
- Monitorar tempo de resposta
- Avaliar volume de requisições
- Analisar comportamento por endpoint

---

## 📊 Correlação com observabilidade.

Para um diagnóstico completo, é necessário correlacionar:

- Status codes
- Logs da aplicação
- Métricas de performance
- Volume de tráfego
- Eventos recentes (deploys, picos)

Essa correlação permite identificar a causa raiz com mais precisão.

---

## 🧠 Raciocínio esperado de um Analista Pleno.

Diante de um erro em API, o analista deve se perguntar:

- É erro isolado ou recorrente?
- Afeta todos os usuários ou um grupo?
- Está relacionado a autenticação, uso ou backend?
- Houve mudança recente no ambiente?

Esse raciocínio evita respostas reativas e acelera a resolução do incidente.

---

## ✅ Conclusão

Diagnosticar erros em APIs exige mais do que identificar um status code.
Exige entendimento do funcionamento do sistema, análise de contexto e uso de sinais
de observabilidade.

Esse conjunto de habilidades é essencial para profissionais que atuam com APIs,
integrações e ambientes críticos.
