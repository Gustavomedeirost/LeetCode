+-------------+---------+
| Nome da coluna | Tipo |
+-------------+---------+
| id | int |
| email | varchar |
+-------------+---------+
O campo "id" é a chave primária (coluna com valores únicos) desta tabela.
Cada linha desta tabela contém um endereço de e-mail. Os endereços de e-mail não conterão letras maiúsculas.
 

Escreva uma solução para gerar um relatório com todos os e-mails duplicados. Observe que é garantido que o campo de e-mail não seja nulo.

Retorne a tabela de resultados em qualquer ordem .

O formato do resultado está no exemplo a seguir.

 

Exemplo 1:

Entrada: 
Tabela de pessoas:
+----+---------+
| id | e-mail |
+----+---------+
| 1 | a@b.com |
| 2 | c@d.com |
| 3 | a@b.com |
+----+---------+
Saída: 
+---------+
| E-mail |
+---------+
| a@b.com |
+---------+
Explicação: a@b.com se repete duas vezes.
Para gerar um relatório com todos os e-mails duplicados, você pode usar a seguinte consulta SQL:
```sql
SELECT email
FROM pessoas
GROUP BY email
HAVING COUNT(email) > 1;
```