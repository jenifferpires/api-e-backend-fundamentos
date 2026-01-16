# REST vs SOAP – Estilos de Integração em APIs.

Este módulo apresenta uma comparação entre REST e SOAP, dois estilos amplamente
utilizados para integração entre sistemas.

O objetivo não é definir qual é “melhor”, mas compreender **quando e por que cada
abordagem é utilizada**, especialmente em ambientes corporativos, legados e financeiros.

---

## 🔌 O que é REST?

REST (Representational State Transfer) é um estilo arquitetural baseado nos princípios
do protocolo HTTP.

APIs REST utilizam:
- Verbos HTTP (GET, POST, PUT, DELETE)
- URLs para representar recursos
- JSON como formato de dados (principalmente)
- Comunicação simples e sem estado (stateless)

REST é amplamente adotado em aplicações modernas por sua simplicidade e flexibilidade.

---

## 🧩 Características do REST.

- Leve e fácil de consumir
- Alto desempenho
- Boa legibilidade
- Fácil integração com aplicações web e mobile
- Forte aderência ao HTTP

REST é especialmente comum em:
- Sistemas web
- Aplicações mobile
- Microsserviços
- Integrações B2C

---

## 📜 O que é SOAP?

SOAP (Simple Object Access Protocol) é um protocolo de comunicação baseado em XML,
com regras rígidas de estrutura e validação.

APIs SOAP utilizam:
- XML como formato de mensagem
- Contratos formais (WSDL)
- Padrões bem definidos de comunicação
- Maior controle e padronização

SOAP foi amplamente adotado em sistemas corporativos e ainda é utilizado em muitos
ambientes legados.

---

## 🧱 Características do SOAP.

- Estrutura rígida e bem definida
- Forte padronização
- Maior controle de contrato
- Mensagens mais verbosas
- Maior complexidade de implementação

SOAP é comum em:
- Sistemas legados
- Integrações corporativas
- Ambientes que exigem contratos rígidos
- Plataformas financeiras tradicionais

---

## ⚖️ Comparação prática.

| Característica | REST | SOAP |
|----------------|------|------|
| Protocolo | HTTP | HTTP / outros |
| Formato | JSON (principal) | XML |
| Complexidade | Baixa | Alta |
| Flexibilidade | Alta | Baixa |
| Contrato formal | Opcional | Obrigatório (WSDL) |
| Uso atual | Alto | Legado / corporativo |

---

## 🧠 Visão Sistêmica para Integrações.

Em ambientes reais, especialmente corporativos, é comum encontrar **REST e SOAP
coexistindo**.

Um profissional maduro entende que:
- REST é ideal para novos serviços
- SOAP é comum em sistemas existentes
- Integrações precisam respeitar o contexto
- Migrações devem ser planejadas, não forçadas

Essa visão evita decisões técnicas baseadas apenas em tendência.

---

## 🎯 Importância para Analistas e Suporte.

Conhecer REST e SOAP permite:
- Diagnosticar integrações com mais precisão
- Interpretar mensagens corretamente
- Entender limitações de sistemas legados
- Facilitar comunicação entre times
- Atuar com mais segurança em ambientes críticos

---

## ✅ Conclusão: 

REST e SOAP são soluções para contextos diferentes.  
Compreender ambos é essencial para profissionais que atuam com APIs, integrações e
sistemas corporativos.

A escolha entre eles deve ser técnica, contextual e alinhada às necessidades do sistema.
