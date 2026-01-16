# Erros de Segurança em APIs – Diagnóstico e Ação. 

Erros de segurança em APIs estão entre os mais comuns em ambientes corporativos
e, ao mesmo tempo, entre os mais mal diagnosticados.

Este módulo consolida os principais cenários de erro relacionados a
autenticação e autorização, com foco em leitura correta, causa raiz
e ação adequada.

---

## 🚦 Erros mais comuns relacionados à segurança:  

### 🔴 401 – Unauthorized

**Significado técnico:**  
A requisição não possui credenciais válidas.

**Causas frequentes:**
- Token não enviado
- Token expirado
- Token inválido
- Assinatura inválida
- Token emitido por outro ambiente

**Ação correta:**
- Validar envio do header Authorization
- Conferir validade (`exp`)
- Verificar origem do token
- Solicitar renovação do token

⚠️ Importante:  
Erro 401 **não indica falha no backend**, mas falha na autenticação.

---

### 🔴 403 – Forbidden

**Significado técnico:**  
O cliente está autenticado, mas não tem permissão para acessar o recurso.

**Causas frequentes:**
- Escopo insuficiente
- Role incorreta
- Regra de autorização bloqueando o acesso

**Ação correta:**
- Validar permissões atribuídas ao token
- Conferir regras de acesso do endpoint

⚠️ Importante:  
Erro 403 **não deve ser tratado como erro de autenticação**.

---

## 🔁 Diferença crítica: 401 x 403. 

| Código | Autenticado | Autorizado | Problema |
|------|-------------|------------|---------|
| 401 | ❌ | ❌ | Credencial inválida |
| 403 | ✅ | ❌ | Permissão insuficiente |

Saber essa diferença evita escalonamentos indevidos.

---

## 🔍 Cenários reais de diagnóstico: 

### Cenário 1 – Integração parou de funcionar. 

**Sintoma:**  
API retorna 401 após período de funcionamento normal.

**Diagnóstico provável:**  
Token expirado ou não renovado.

**Ação:**  
Validar fluxo de renovação de token (OAuth).

---

### Cenário 2 – Usuário acessa algumas APIs, mas não outras. 

**Sintoma:**  
Alguns endpoints funcionam, outros retornam 403.

**Diagnóstico provável:**  
Permissão específica ausente.

**Ação:**  
Validar escopos e roles associados ao token.

---

### Cenário 3 – Erro intermitente de acesso. 

**Sintoma:**  
Requisições falham de forma intermitente.

**Diagnóstico provável:**  
- Cache de token
- Diferença de horário entre sistemas
- Token próximo da expiração

**Ação:**  
Analisar logs e métricas de autenticação.

---

## 📊 Segurança e Observabilidade: 

Ambientes maduros monitoram segurança por meio de:

- Logs de falha de autenticação. 
- Métricas de erros 401 e 403. 
- Alertas de anomalias de acesso. 
- Auditoria de tentativas inválidas. 

Picos de erro podem indicar:
- Problemas operacionais. 
- Erros de configuração. 
- Tentativas de uso indevido. 

---

## 🎯 Papel do profissional técnico: 

Um profissional preparado:

- Não trata erro de segurança como bug. 
- Investiga causa raiz antes de escalar. 
- Comunica claramente para desenvolvimento. 
- Atua de forma preventiva. 

Esse comportamento reduz incidentes e aumenta confiabilidade. 

---

## ✅ Conclusão:  

Erros de segurança não são exceções, são parte do funcionamento normal
de APIs protegidas.

Saber interpretá-los corretamente é essencial para:
- Suporte técnico.
- Sustentação de sistemas.
- Ambientes críticos e regulados.
