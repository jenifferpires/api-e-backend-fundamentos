# JWT na Prática – Conceito, Estrutura e Diagnóstico.

JWT (JSON Web Token) é um padrão utilizado para representar credenciais
de forma segura, compacta e transportável entre sistemas.

Ele é amplamente usado em APIs modernas como mecanismo de autenticação
e autorização, especialmente em arquiteturas REST e distribuídas.

---

## 🧩 Por que JWT é usado?

JWT resolve problemas comuns em sistemas modernos:

- Elimina dependência de sessão no servidor (stateless)
- Facilita escalabilidade horizontal
- Permite autenticação entre sistemas diferentes
- Reduz chamadas ao servidor de autenticação

Em ambientes com múltiplos serviços e APIs, JWT é essencial.

---

## 🔐 JWT x Sessão Tradicional.  

| Sessão Tradicional | JWT |
|-------------------|-----|
| Estado no servidor | Stateless |
| Escala limitada | Alta escalabilidade |
| Dependente de storage | Autocontido |
| Mais simples | Mais flexível |

JWT carrega as informações necessárias para validação diretamente no token.  

---

### 🧱 Estrutura de um JWT. 

Um JWT é composto por três partes, separadas por ponto (`.`):

HEADER.PAYLOAD.SIGNATURE  

### 1️⃣ Header.  
Contém informações sobre o tipo do token e algoritmo de assinatura.  

Exemplo:   
```json
{
  "alg": "HS256",
  "typ": "JWT"
}
```

### 2️⃣ Payload.

Contém as claims (informações sobre o usuário e permissões).

Exemplo:
```json
{
  "sub": "123456",
  "role": "admin",
  "exp": 1700000000
}
```

#### ⚠️ Importante:  
O payload não é criptografado, apenas codificado.  
Nunca deve conter dados sensíveis.  

### 3️⃣ Signature.  

Garante a integridade do token.  

Ela valida que:  

O token não foi alterado.  
Ele foi emitido por quem deveria.  
Se a assinatura falhar, o token é rejeitado.  

#### 🔁 JWT e OAuth 2.0.  

Na prática:   

OAuth define como o token é emitido.  
JWT define o formato do token.   

Ou seja:  

OAuth é o protocolo, JWT é o tipo de token mais comum. 

#### 🚦 JWT e erros HTTP. 

`401 – Unauthorized`

Causas comuns: 

Token ausente.  
Token expirado (exp).  
Token inválido. 
Assinatura incorreta.  

`403 – Forbidden` 

Causas comuns:  

Token válido, mas sem permissão.  
Role ou escopo insuficiente.  

### 🔍 Visão de suporte e observabilidade.  

Um profissional experiente sabe que JWT deve ser observado por: 

Logs de validação de token.  
Métricas de falha por expiração.  
Alertas de aumento de 401.   
Auditoria de claims e escopos.  

Problemas frequentes:  

Tokens com tempo de vida muito curto.  
Diferença de horário entre sistemas.  
Cache de token no cliente.  

### ⚠️ Boas práticas de segurança com JWT:  

Nunca armazenar dados sensíveis no payload.

Definir tempo de expiração adequado.  
Utilizar HTTPS sempre.  
Rotacionar chaves de assinatura.  
Validar token em todas as requisições protegidas.  

### ✅ Conclusão:  

JWT é um componente crítico da segurança em APIs modernas.  

Entender sua estrutura e funcionamento permite:   

Diagnosticar falhas rapidamente.  
Garantir segurança e escalabilidade.  
Atuar com maturidade técnica em ambientes críticos.  
