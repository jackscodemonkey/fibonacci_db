/*
 Parameters:
 Name | Type | Description

 Return: Table
 Purpose:
 This is an example of a function
         - Function business logic
         - Transformation rules
         - Here is a bit more text.
 Dependent Objects:
     Type    |Name
     Table   |public.tb_fibonacci

 ChangeLog:
     Date  |  Author  |  Ticket  |  Modification
     2022-05-19  |  Jack Tripper  |  T-220  |  Initial Definition
 */

CREATE OR REPLACE FUNCTION public.fn_fibonacci(debug BOOLEAN = TRUE)
RETURNS TABLE (fib bigint) AS
    $$
    BEGIN
RETURN QUERY
        WITH RECURSIVE Fibonacci (PrevN, N) AS
(
     SELECT 0, 1
     UNION ALL
     SELECT N, PrevN + N
     FROM Fibonacci
     WHERE N < 1000000000
)
SELECT PrevN::bigint as Fibo
     FROM Fibonacci;

    END;
    $$
LANGUAGE plpgsql;