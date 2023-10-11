INSERT INTO `optic`.`addressDetails` (`id`, `street`, `number`, 
`floor`, `door`, `city`, `postal_Code`, `country`) 
VALUES (1, 'Cork', 4, 3, 2, 'Tasco', '35453', 'Plug'),
(2, 'Part', 2, 5, 1, 'Tirso', '25433', 'Halo'),
(3, 'Turk', 6, 1, 6, 'Plano', '95453', 'Pinto');

INSERT INTO `optic`.`client` (`id`, `client_name`, `client_adress_id`, 
`client_phone_number`, `client_email`, `referred_client_id`, 
`client_registration_date_time`) 
VALUES (1, 'Paco', 1, '7634743', 'paco@hotmail.com', 2, '2023-01-01 00:00:00'),
(2, 'Prince', 2, '6343743', 'prince@hotmail.com', 1, '2023-01-01 00:00:00');

INSERT INTO `optic`.`provider` (`id`, `provider_name`, `provider_address_id`, 
`provider_phone_number`, `provider_fax_number`, `provider_nif`) 
VALUES (1, 'FuelLens', 2, '3762483', '74638264', '83427647'),
(2, 'Glassesgo', 1, '3434243232', '12111212', '9843842');

INSERT INTO `optic`.`brand` (`id`, `brand_name`, `brand_provider_id`) 
VALUES (1, 'Armani Giorgio', 2),
(2, 'Frames of life', 1);

INSERT INTO `optic`.`glasses` (`id`, `product_brand_id`, `product_graduation_l`, 
`product_graduation_r`, `product_material`, `product_price`) 
VALUES (1, 1, 0.2, 1.0, 'platic', '400'),
(2, 2, 0.2, 1.0, 'metal', '120');

INSERT INTO `optic`.`sale` (`id`, `product_id`, `vendor_id`, `client_id`, 
`sale_invoice_number`, `sale_date_time`) 
VALUES (1, 1, 1, 1,'100', '2023-01-01 00:00:00'),
(2, 2, 1, 2, '101', '2023-01-01 00:00:00');
