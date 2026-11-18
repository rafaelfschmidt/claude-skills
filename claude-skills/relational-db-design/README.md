# relational-db-design

Uma skill para o Claude que modela um banco de dados relacional do zero, com método.

Pedir para uma IA "criar o banco de dados" costuma gerar um modelo que parece pronto, mas carrega erros sutis: chave primária num campo que muda, relação perdida quando a regra de negócio está espalhada, cardinalidade errada, restrições esquecidas. Esta skill obriga o Claude a seguir um método antes de gerar qualquer tabela.

## Como funciona

A skill trabalha uma fase por vez e para em cada uma para você revisar:

0. **Escopo:** para que serve o banco, quem usa e quais insumos existem.
1. **Requisitos:** regras de negócio em frases curtas e numeradas.
2. **Entidades, atributos e tipos.**
3. **Chaves primárias**, cada uma justificada.
4. **Relações**, escritas em duas frases com mínimo e máximo.
5. **Cardinalidade, chaves estrangeiras e junções.**
6. **Normalização (BCNF).**
7. **Restrições, segurança, RLS e índices.**
8. **Diagrama entidade-relacionamento** (Mermaid, crow's foot).
9. **Brief para o Claude Code** criar o banco no Supabase, com migrations, seed e testes.

Princípios que valem em todas as fases:

- **Não inventa regra de negócio.** Quando os requisitos não dizem algo, pergunta ou registra como pendência.
- **O design vive em texto** (`design.md`), não na memória da conversa.
- **Autochecagem:** antes de mostrar cada fase, confere os erros que o livro documentou quando colocou uma IA para modelar um banco.

## Entregáveis

- `design.md`: a especificação completa, fonte da verdade do projeto
- `erd.md`: o diagrama entidade-relacionamento
- `CLAUDE_CODE_BRIEF.md`: instrução para o Claude Code implementar o banco no Supabase

## Como instalar

**No Claude (claude.ai ou app):** compacte a pasta `relational-db-design` em um `.zip` e envie em *Configurações › Skills*. Depois é só pedir, num chat, para modelar um banco de dados.

**No Claude Code:** copie a pasta `relational-db-design` para `~/.claude/skills/`.

## Exemplo para testar

A pasta [`exemplo/`](exemplo/) tem os insumos de uma locadora de equipamentos **fictícia**: transcrição de entrevista, duas planilhas e o schema de um sistema antigo, todos com problemas reais de dados. Anexe os quatro arquivos num chat e peça para modelar o banco.

## Créditos

O método vem do livro *Grokking Relational Database Design*, de Qiang Hao e Michail Tsikerdekis (Manning, 2025), capítulos 3 a 8. A skill descreve o método com palavras próprias e não reproduz o conteúdo do livro. Os pontos marcados com **[Supabase]** são adaptações minhas para Postgres e Supabase.

Recomendo a leitura do livro para quem trabalha com dados ou processos, mesmo sem ser da área técnica.

## Licença

MIT. Veja [LICENSE](../LICENSE).
