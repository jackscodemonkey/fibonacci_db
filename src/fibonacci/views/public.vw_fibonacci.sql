/*
Purpose:
This a new view to show how auto documentation can add new objects quickly.
Dependent Objects:
    Type    |Name
    Table   |public.tb_fibonacci
ChangeLog:
    Date    |    Author    |    Ticket    |    Modification
    2022-05-19    |  Jack Tripper  |   T-220    |    Initial Definition
*/

CREATE OR REPLACE VIEW public.vw_fibonacci AS
 SELECT value, id FROM public.tb_fibonacci;
END;