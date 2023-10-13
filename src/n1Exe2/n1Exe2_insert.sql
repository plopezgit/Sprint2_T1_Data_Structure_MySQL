INSERT INTO `pizza`.`province` (`id`, `province_name`) VALUES (1, 'Brio'), (2, 'Clio');

INSERT INTO `pizza`.`locality` (`id`, `locality_name`, `province_id`) 
VALUES (1, 'Brionte', 1), (2,'Cliotild', 2);

INSERT INTO `pizza`.`client` (`id`, `client_name`, `client_surname`, `client_adress`, `client_post_code`, `client_locality_id`, `client_province_id`) 
VALUES (1, 'Solis', 'Bol', 'adress1', '3423', 1, 2),
(2, 'Bull', 'Cal', 'adress2', '3422', 1, 2),
(3, 'Bliss', 'Ful', 'adress3', '6455', 2, 1);

INSERT INTO `pizza`.`store` (`id`, `store_address`, `store_post_code`, `store_locality_id`, `store_province_id`) 
VALUES (1, 'Colliure', '3545', 1, 2),
(2, 'Posture', '3252', 2, 1);

INSERT INTO `pizza`.`vendor` (`id`, `vendor_name`, `vendor_surname`, `vendor_nif`, `vendor_phone_number`, `vendor_type`, `vendor_store_id`) 
VALUES (1, 'Al', 'Gus', '3225454', '8875674', 'Cook', 1),
(2, 'Hio', 'Kal', '3287685', '96456353', 'Delivery', 2);

INSERT INTO `pizza`.`product_category` (`id`, `product_category_name`) 
VALUES (1, 'pizza+wings'),
(2, 'pizza+ham'),
(3, 'drink');

INSERT INTO `pizza`.`product` (`id`, `product_category_id`, `product_name`, `product_description`, `product_image`, `product_price`) 
VALUES (1, 1, 'Combo1', 'Deli', '/img.png', 12),
(2, 2, 'Combo2', 'Promo', '/img.png', 10),
(3, 3, 'Beer', 'Bruna', '/img.png', 1.5);

INSERT INTO `pizza`.`order` (`id`, `order_product_id`, `order_local_date_time`, `order_type`, `order_quantity`, `order_vendor_id`, `order_client_id`, `order_invoice_number`, `store_id`) 
VALUES (1, 1, '2023-01-01 00:00:00', 'Delivery', 3, 1, 1, '434'),
(2, 2, '2023-01-01 00:00:00', 'Delivery',2, 1, 2, '435', 1),
(3, 1, '2023-01-01 00:00:00', 'Delivery',2, 1, 2, '436', 1);


INSERT INTO `pizza`.`product_has_order` (`product_id`, `order_id`)
VALUES (1, 1),
(2, 1),
(3, 3);

INSERT INTO `pizza`.`delivery_details` (`id`, `delivery_vendor_id`, `delivery_order_id`, `delivery_local_date_time`) 
VALUES (1, 1, 1, '2023-01-01 00:00:00'),
(2, 2, 2, '2023-01-01 00:00:00');