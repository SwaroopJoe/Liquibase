CREATE OR REPLACE PROCEDURE public.GetUser(
	IN id integer)
LANGUAGE 'plpgsql'
AS $BODY$
begin
    -- subtracting the amount from the sender's account 
    select * from userdata where id = id;

   commit;
end;
$BODY$;