create table `book` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(256) NOT NULL,
    `created` DATETIME NOT NULL,
    `updated` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=Innodb DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci;
