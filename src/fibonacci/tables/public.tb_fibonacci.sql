/*
Purpose:
This a new table to show how auto documentation can add new objects quickly.

ChangeLog:
    Date    |    Author    |    Ticket    |    Modification
    2022-05-19    |  Jack Tripper  |   T-220    |    Initial Definition
*/

CREATE TABLE public.tb_fibonacci (
    id bigserial,
    value bigint
)

INSERT INTO public.tb_fibonacci (value) VALUES (
select fib INTO public.tb_fibonacci.value from public.fn_fibonacci()