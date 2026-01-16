-- =====================================================
-- EXEMPLOS PRÁTICOS DE SQL APLICADO A BACKEND E APIs.
-- =====================================================

-- Este arquivo contém consultas SQL comentadas,
-- simulando cenários reais encontrados em APIs
-- e ambientes corporativos.

-- =====================================================
-- 1. CONSULTA SIMPLES (ENDPOINT GET).
-- =====================================================

-- Cenário:
-- Endpoint que retorna dados básicos de clientes.

SELECT
    id,
    nome,
    email
FROM clientes
WHERE ativo = true;

-- Observações:
-- - Seleção explícita de colunas
-- - Filtro aplicado
-- - Evita SELECT *

-- =====================================================
-- 2. CONSULTA COM FILTRO ESPECÍFICO.
-- =====================================================

-- Cenário:
-- API busca um cliente específico pelo ID.

SELECT
    id,
    nome,
    email,
    data_criacao
FROM clientes
WHERE id = 123;

-- Observações:
-- - Uso de chave primária
-- - Retorno de apenas um registro
-- - Ideal para endpoints GET /clientes/{id}

-- =====================================================
-- 3. JOIN ENTRE TABELAS.
-- =====================================================

-- Cenário:
-- Endpoint retorna pedidos com dados do cliente.

SELECT
    p.id AS pedido_id,
    p.valor_total,
    p.data_pedido,
    c.nome AS cliente_nome
FROM pedidos p
JOIN clientes c ON c.id = p.cliente_id
WHERE p.status = 'CONFIRMADO';

-- Observações:
-- - JOIN explícito e claro
-- - Alias melhora leitura
-- - JOINs impactam performance se mal usados

-- =====================================================
-- 4. PAGINAÇÃO (ENDPOINT DE LISTAGEM).
-- =====================================================

-- Cenário:
-- API lista pedidos recentes com paginação.

SELECT
    id,
    valor_total,
    data_pedido
FROM pedidos
ORDER BY data_pedido DESC
LIMIT 20 OFFSET 0;

-- Observações:
-- - Essencial para APIs de listagem
-- - Evita retorno excessivo de dados
-- - OFFSET deve ser usado com cuidado em grandes volumes

-- =====================================================
-- 5. INSERT (ENDPOINT POST).
-- =====================================================

-- Cenário:
-- Criação de um novo cliente.

INSERT INTO clientes (nome, email, ativo, data_criacao)
VALUES ('Cliente Exemplo', 'cliente@exemplo.com', true, NOW());

-- Observações:
-- - Campos explícitos
-- - Evita dependência de ordem da tabela

-- =====================================================
-- 6. UPDATE (ENDPOINT PUT / PATCH).
-- =====================================================

-- Cenário:
-- Atualização de status de pedido.

UPDATE pedidos
SET status = 'CANCELADO'
WHERE id = 456;

-- Observações:
-- - WHERE obrigatório
-- - UPDATE sem filtro é erro crítico

-- =====================================================
-- 7. DELETE CONTROLADO.
-- =====================================================

-- Cenário:
-- Remoção lógica (soft delete) recomendada.

UPDATE clientes
SET ativo = false
WHERE id = 789;

-- Observações:
-- - Evita DELETE físico
-- - Preserva histórico
-- - Boa prática em sistemas corporativos

-- =====================================================
-- 8. CONSULTA POTENCIALMENTE PROBLEMÁTICA.
-- =====================================================

-- Exemplo de query que pode causar lentidão:

SELECT *
FROM logs
WHERE data_evento >= '2024-01-01';

-- Problemas:
-- - SELECT *
-- - Alto volume de dados
-- - Possível ausência de índice

-- Ajuste recomendado:
-- - Selecionar colunas
-- - Aplicar limite
-- - Criar índice

-- =====================================================
-- 9. CONSULTA PARA DIAGNÓSTICO.
-- =====================================================

-- Cenário:
-- Identificar registros recentes para investigação.

SELECT
    id,
    tipo_evento,
    data_evento
FROM logs
ORDER BY data_evento DESC
LIMIT 10;

-- Observações:
-- - Muito usada em suporte
-- - Apoia análise rápida de incidentes

-- =====================================================
-- FIM DOS EXEMPLOS.
-- =====================================================
