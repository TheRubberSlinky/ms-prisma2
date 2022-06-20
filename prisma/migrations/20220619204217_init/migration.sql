-- CreateTable
CREATE TABLE `Player` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(191) NOT NULL,
    `firstName` VARCHAR(191) NOT NULL,
    `lastName` VARCHAR(191) NOT NULL,
    `displayName` VARCHAR(191) NOT NULL,
    `isVip` BOOLEAN NOT NULL,

    UNIQUE INDEX `Player_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_PlayerFollows` (
    `A` INTEGER NOT NULL,
    `B` INTEGER NOT NULL,

    UNIQUE INDEX `_PlayerFollows_AB_unique`(`A`, `B`),
    INDEX `_PlayerFollows_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `_PlayerFollows` ADD CONSTRAINT `_PlayerFollows_A_fkey` FOREIGN KEY (`A`) REFERENCES `Player`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_PlayerFollows` ADD CONSTRAINT `_PlayerFollows_B_fkey` FOREIGN KEY (`B`) REFERENCES `Player`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
