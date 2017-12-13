DELETE snapshot,damage FROM inspection_damage_snapshot_id snapshot, as_order as_order, inspection_damage damage where as_order.id=damage.order_id and snapshot.damage_id=damage.id and as_order.sa_id=17;

DELETE item,base_info from inspection_item item,as_order as_order, inspection_base_info base_info
  where as_order.id=base_info.order_id and item.pre_inspection_info_id=base_info.id and as_order.sa_id=17;

DELETE FROM inspection_base_info WHERE EXISTS(SELECT 1 FROM as_order WHERE as_order.id=inspection_base_info.order_id AND as_order.sa_id=17);

DELETE kdm_details,cart_item FROM shopping_cart_item cart_item, as_order as_order, shopping_cart_item_kdm_details kdm_details
where as_order.id=cart_item.order_id and cart_item.id=kdm_details.item_id and as_order.sa_id=17;


DELETE  FROM as_order WHERE as_order.sa_id=17;
