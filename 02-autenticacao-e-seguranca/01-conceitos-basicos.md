# Autenticação e Segurança em APIs – Conceitos Fundamentais.

Este módulo apresenta os conceitos fundamentais de autenticação e autorização em APIs,
essenciais para garantir acesso seguro a sistemas, dados e serviços, especialmente em
ambientes críticos como o setor financeiro.

O objetivo é compreender como o controle de acesso funciona, como interpretar falhas
de segurança e como esses mecanismos se integram ao fluxo HTTP.

---

## 🔐 Por que segurança é essencial em APIs?

APIs expõem funcionalidades e dados sensíveis.
Sem mecanismos adequados de segurança, elas podem ser exploradas para:

- Acesso indevido a dados. 
- Fraudes. 
- Vazamento de informações. 
- Quebra de integridade do sistema. 

Por isso, segurança não é um detalhe técnico, mas um requisito essencial de arquitetura.

---

## 🧩 Autenticação x Autorização.

Embora frequentemente confundidos, são conceitos distintos.

### Autenticação
Responde à pergunta:
> **Quem é você?**

Exemplos:
- Login e senha
- Token
- Certificado

### Autorização
Responde à pergunta:
> **Você pode acessar isso?**

Exemplos:
- Perfis de acesso
- Roles
- Permissões

Um usuário pode estar autenticado, mas não autorizado a acessar determinado recurso.

---

## 🔁 Segurança no fluxo HTTP.

Em APIs, a segurança geralmente acontece logo após o recebimento da requisição:

1. Cliente envia requisição HTTP.  
2. API valida credenciais (autenticação).  
3. API verifica permissões (autorização).  
4. Requisição é processada ou rejeitada. 

Falhas nesse fluxo resultam em erros específicos.  

---

## 🚦 Status Codes relacionados à segurança.  

### 401 – Unauthorized

**Significado:**  
A requisição não possui credenciais válidas.

**Causas comuns:**
- Token ausente
- Token expirado
- Token inválido

**Interpretação correta:**  
Erro de autenticação.

---

### 403 – Forbidden

**Significado:**  
O cliente está autenticado, mas não possui permissão para acessar o recurso.

**Causas comuns:**
- Perfil inadequado
- Regra de acesso bloqueando a operação

**Interpretação correta:**  
Erro de autorização.

---

## 🔑 Credenciais e Tokens.  

Em APIs modernas, o uso de tokens é o padrão para autenticação.

Tokens permitem:
- Comunicação sem estado (stateless)
- Maior escalabilidade
- Menor exposição de credenciais sensíveis

Eles normalmente são enviados no header HTTP:

Authorization: Bearer <token>

---

## 🧠 Visão de Segurança para Analistas de Sistemas.  

Um analista com visão madura entende que:
- Erros 401 e 403 não são falhas de sistema, mas de acesso
- Segurança deve ser monitorada continuamente
- Logs de autenticação são críticos para auditoria
- Qualquer falha de acesso em ambiente financeiro deve ser tratada com atenção

Essa visão é fundamental para atuar em sistemas sensíveis e regulados.

---

## 🎯 Importância desses conceitos.  

Dominar autenticação e autorização permite:
- Diagnosticar falhas de acesso rapidamente
- Evitar escalonamentos indevidos
- Garantir integridade e confidencialidade dos dados
- Apoiar decisões técnicas e de segurança
- Atuar de forma responsável em ambientes críticos

---

## ✅ Conclusão: 

Autenticação e autorização são pilares da segurança em APIs.  
Compreender esses conceitos é essencial para qualquer profissional que atue com
integrações, sistemas distribuídos e aplicações financeiras.