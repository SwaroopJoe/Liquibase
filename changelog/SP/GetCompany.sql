CREATE OR REPLACE PROCEDURE public.GetCompany(
	IN id integer)
LANGUAGE 'plpgsql'
AS $BODY$
begin
    -- subtracting the amount from the sender's account 
    select * from company where id = id;

   commit;
end;
$BODY$;