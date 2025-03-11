select 
    p.nome as produto,
    count(a.id_produto) as quantidade
from 
    agedamento a
join 
    produto p on a.id_produto = p.id
where 
    a.id = @pedido_id
group by 
    p.nome;

create procedure LimitarPedidosMesasEmAtendimento()
begin
    update mesa
    set status = 'closed'
    where status = 'open';
end //