CREATE TABLE IF NOT EXISTS `car` (
	`id` INT NOT NULL,
	`licensePlate` CHAR(3) NOT NULL,
	`color` CHAR(3) NOT NULL,
	`size` CHAR(3) NOT NULL,
	`year` CHAR(3) NOT NULL,
	PRIMARY KEY(`id`)
);
