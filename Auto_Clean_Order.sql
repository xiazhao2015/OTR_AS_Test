SELECT DISTINCT snapshot.damage_id
from as_order as_order, inspection_damage damage,inspection_damage_snapshot_id  snapshot
where as_order.id=damage.order_id and snapshot.damage_id=damage.id and as_order.sa_id=17
DELETE FROM inspection_damage_snapshot_id WHERE damage_id IN ()

select DISTINCT item.pre_inspection_info_id
from as_order as_order, inspection_base_info base_info,inspection_item  item
where as_order.id=base_info.order_id and base_info.id=item.pre_inspection_info_id and as_order.sa_id=17

DELETE from inspection_item WHERE pre_inspection_info_id IN ()


DELETE FROM inspection_base_info WHERE EXISTS(SELECT 1 FROM as_order WHERE as_order.id=inspection_base_info.order_id AND as_order.sa_id=17)


DELETE FROM inspection_damage WHERE EXISTS(SELECT 1 FROM as_order WHERE as_order.id=inspection_damage.order_id AND as_order.sa_id=17)

DELETE FROM shopping_cart_item WHERE EXISTS(SELECT 1 FROM as_order WHERE as_order.id=shopping_cart_item.order_id AND as_order.sa_id=17)


DELETE  FROM as_order WHERE as_order.sa_id=17
