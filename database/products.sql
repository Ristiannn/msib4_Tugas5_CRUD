-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 06:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommercedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `stock_status` enum('instock','outofstock') NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Colorful Pattern Shirts', 'ut-possimus-eveniet-voluptate-et-nostrum', 'Quae est deserunt occaecati porro atque. Necessitatibus aperiam nihil aspernatur id quam. Veniam sit consectetur et reiciendis quis voluptate ut. Nihil in dolorem laborum sunt.', 'Nemo ullam corrupti aperiam nam eum ipsum quam. Voluptatem omnis perspiciatis vitae provident eum. Dolorem quia ducimus harum ut modi quidem cum. Nihil sit occaecati voluptatum et voluptas magni nostrum. Est autem laborum ipsa ex ut officiis ipsam. Totam sed repudiandae sit accusamus pariatur voluptates repellat est. Ducimus qui eligendi reprehenderit aliquam ad sint. Qui voluptatem excepturi perferendis ad saepe atque in recusandae.', '255.00', NULL, 'PRD121', 'instock', 0, 30, 'product-11', NULL, 4, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(2, 'Plain Color Pocket Shirts', 'autem-nihil-perspiciatis-odit-impedit-suscipit', 'Ut deleniti voluptate quo voluptatem ea autem quia. Repudiandae quae ut beatae facere pariatur. Nesciunt similique ut quaerat qui. Fugit occaecati repellat ducimus laborum sequi dolor dicta et.', 'Dolorem et rerum assumenda incidunt sunt quam voluptas. Consequatur quas deleniti deserunt quam quae voluptatem illum. Odio tempora molestiae sit voluptatibus est aspernatur. Consequatur quibusdam nobis laboriosam ab iste. Est ut numquam ex. Nobis cum sit nulla et. Consequatur quas quia cumque velit voluptate rerum. Qui labore optio enim ducimus explicabo ipsa quo fuga. Vitae eos eveniet ut et repellat nam. Quia incidunt ex cupiditate vitae quos ab. Omnis voluptatem quae ipsam ut ut.', '469.00', NULL, 'PRD149', 'instock', 0, 35, 'product-9', NULL, 5, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(3, 'Vintage Floral Oil Shirts', 'quam-ad-magnam-repellat-quaerat-voluptatem', 'Rerum fugit illo ea natus. Eius esse blanditiis quos excepturi iusto inventore ad.', 'Ad praesentium qui voluptatum et quia sed quidem. Placeat enim omnis dolor ut nihil velit. Tenetur repellendus sint beatae. Dolore ullam soluta eum non blanditiis aut quis laborum. Nihil quibusdam expedita nostrum modi non id ea. Nobis ut sit nemo tenetur dolorem qui quia. Vitae quia ipsam possimus. Earum ut ex voluptatem aut natus dolores. Sint esse possimus aut ut.', '160.00', NULL, 'PRD479', 'instock', 0, 38, 'product-1', NULL, 4, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(4, 'Colorful Hawaiian Shirts', 'vel-deserunt-dicta-dolore-deleniti-harum', 'Aut commodi ratione suscipit alias nulla accusantium qui. Voluptatum vel consequatur qui praesentium est. Quis qui deserunt perspiciatis sunt. Hic corrupti sed ratione.', 'Minima molestiae assumenda voluptatum delectus vel molestiae et. Reiciendis magni facilis qui est odio et provident. Veritatis nisi eius ut. Recusandae nesciunt suscipit ducimus amet officiis. Asperiores reprehenderit qui magnam libero libero soluta. Nemo esse odio dolore nam. Maiores qui officia dolor ut. Consequatur alias sapiente velit sit ipsa. Nemo officia dolorem deleniti quas fuga et. Odit at ut fugit dicta itaque.', '219.00', NULL, 'PRD489', 'instock', 0, 22, 'product-16', NULL, 2, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(5, 'Flowers Sleeve Lapel Shirt', 'commodi-quibusdam-qui-accusamus-animi-autem', 'Ut eaque sunt voluptas omnis sunt quia non. Nihil quia ullam qui ipsam non. Maxime eos unde est fugiat.', 'Qui perspiciatis consequatur fuga sed velit. Similique ut fugiat nihil et sit beatae aut. Sint incidunt nihil reiciendis aliquid nesciunt eius. Maiores error saepe error. Dolore ducimus sit est consequatur. Tempora qui exercitationem veritatis velit. Officiis fuga nam velit sed.', '471.00', NULL, 'PRD374', 'instock', 0, 34, 'product-10', NULL, 4, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(6, 'Ethnic Floral Casual Shirts', 'est-officia-eos-rerum-molestiae-beatae', 'Unde facere et eveniet eos et. Voluptatem et reiciendis aut fugiat nihil aut. Possimus optio qui architecto tempora deleniti itaque qui. Deleniti enim voluptas blanditiis iure rerum.', 'Qui voluptatem consequatur qui error voluptatem provident. Molestias sit eos nam assumenda perspiciatis quos natus qui. Cumque cum dolores dolor dignissimos rerum. Asperiores voluptates explicabo non. Blanditiis sit vitae vel dolorem voluptatem non. Perspiciatis fugit quam omnis ut beatae quia voluptas rerum. Veritatis sint inventore quo voluptates accusantium illum sint. Commodi omnis et fuga et praesentium.', '174.00', NULL, 'PRD347', 'instock', 0, 39, 'product-15', NULL, 5, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(7, 'Stiching Hole Sandals', 'reprehenderit-sint-sed-molestiae-sit-et', 'Ipsam esse ea reprehenderit eos sed mollitia. Beatae et corrupti quos. Voluptates et sed autem. Voluptas autem blanditiis ullam architecto nam non et minima.', 'Voluptatibus dicta eligendi accusantium quam omnis est repudiandae. Molestiae laudantium iusto et expedita minima facere deserunt. Quasi enim voluptas laborum in dolorem. Quasi ex consequatur ex quasi. Eius odio beatae perspiciatis vitae. Ullam qui voluptatem eaque accusantium tempora quod aut. Ipsa autem dolorem consequuntur quia. Et voluptatem est tenetur veritatis ut.', '59.00', NULL, 'PRD349', 'instock', 0, 19, 'product-13', NULL, 3, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(8, 'Mens Porcelain Shirt', 'mollitia-ut-tempora-alias-facilis-illum', 'Quia eaque vitae ad ratione enim. Incidunt qui rerum sed neque itaque. Mollitia cupiditate natus voluptas voluptas occaecati. Sunt commodi culpa illo ipsa vel repudiandae nihil.', 'Nobis magni exercitationem dolores quisquam quas. Libero eos consectetur sed qui qui sed sint ut. Iste et nemo suscipit explicabo. Ex consequatur harum similique quia. Commodi numquam ut perspiciatis sit nemo quia molestiae. Qui quos quae similique distinctio illum ullam amet. Repellendus consequatur repudiandae aut assumenda rerum cupiditate voluptate.', '249.00', NULL, 'PRD105', 'instock', 0, 30, 'product-13', NULL, 1, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(9, 'Black Gray Shoes', 'sapiente-dolore-aut-sit-aperiam-sed', 'Aut necessitatibus unde temporibus. Dolores molestias facilis et dolore vel. Dolores quod nam aperiam qui sint voluptas commodi. Qui et quo aliquam recusandae dicta rerum corrupti.', 'Et aliquid dolores voluptas error. Sed accusantium rerum illo vitae officiis alias et. Minus qui voluptate voluptatem sunt tempore. Voluptatum et molestiae ex velit. Laudantium tempora asperiores sunt ut dignissimos omnis. Ut et repellendus nam ut ipsum explicabo. Cumque eos quis aut et aut perspiciatis. Aut fugiat sunt aliquid rem quis magni consequuntur. Delectus dolorem nam velit a recusandae voluptas autem. Dolorem eos optio ut aut. Ut voluptatem magni odit accusantium.', '65.00', NULL, 'PRD200', 'instock', 0, 11, 'product-3', NULL, 5, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(10, 'Gray and Purple trousers', 'nihil-ducimus-aperiam-non-accusamus-consectetur', 'Amet ut illo libero et. Dolor quia numquam debitis non architecto sunt quia. Maiores est iusto est voluptatum ut hic sit. Ullam tempora id magnam consectetur quibusdam a.', 'Fugit non dolores explicabo fuga quisquam adipisci consectetur. Modi quas totam iusto magnam. Et et et pariatur voluptatibus reprehenderit in aut impedit. Reiciendis qui et error similique architecto dolorum impedit. Pariatur rerum sit in est commodi. Rerum quos recusandae voluptatem ducimus quam qui. Rerum ut hic reiciendis fuga aspernatur architecto eos aliquid. Sit velit neque adipisci ratione laboriosam. Provident exercitationem est quidem. Dolor officia aliquam voluptas eum.', '478.00', NULL, 'PRD368', 'instock', 0, 36, 'product-14', NULL, 5, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(11, 'Patterned Clothes', 'rerum-nemo-necessitatibus-iste-quas-sint', 'Odio laudantium magnam quasi magni. Sed maxime deleniti minus animi omnis fuga saepe nemo. Et recusandae distinctio nisi hic soluta vitae tempore.', 'Nesciunt voluptatem et dolor neque repellat. Reprehenderit veritatis non cum placeat. Accusantium non consequuntur quos. Quaerat voluptatem quibusdam illum ex. Exercitationem consequatur molestiae suscipit sed. Et voluptatem dolorem possimus incidunt possimus dolorem delectus. Id omnis fugiat et et. Delectus eveniet sunt velit. Est debitis similique culpa.', '155.00', NULL, 'PRD210', 'instock', 0, 47, 'product-16', NULL, 4, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(12, 'Floral Pants', 'eaque-distinctio-consequuntur-magnam-explicabo-cum', 'Veritatis aperiam quos veritatis nemo consequatur cum. Molestiae enim recusandae ullam quia suscipit commodi mollitia.', 'Dolorem est omnis totam non non ut consequatur eum. Tenetur vel molestias fugiat illum totam. Unde accusantium iusto possimus voluptatem. At officiis debitis quo in consequatur ipsum. Quis nemo deleniti iusto velit. Aut facilis hic officia. Quis dignissimos voluptatibus omnis adipisci necessitatibus et mollitia. Voluptas non adipisci voluptatum delectus. Dignissimos eum dolores sed repellat hic et.', '34.00', NULL, 'PRD430', 'instock', 0, 20, 'product-13', NULL, 2, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(13, 'White Floral Dress', 'nostrum-et-nisi-id-tempore-repudiandae', 'Deserunt ut ipsum maxime optio. Minima ipsam saepe libero eum est libero. Molestias voluptas officia doloremque ut.', 'Quia at amet fugiat molestiae ad. Eos error harum ipsa modi est eius. Qui omnis odit est dolor dolorem. Fugiat cum hic pariatur. Vitae sed debitis incidunt et incidunt doloremque eligendi. Ut eveniet perspiciatis harum est veritatis quae. Qui ut perferendis quis. Assumenda corrupti dolorum quia itaque. Molestiae et enim id. Rem similique magni iusto atque totam temporibus perferendis. Mollitia velit rerum non sit doloremque animi.', '492.00', NULL, 'PRD165', 'instock', 0, 37, 'product-2', NULL, 3, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(14, 'Floral Green Bag', 'quasi-reprehenderit-magni-fuga-fugit-beatae', 'Pariatur incidunt quis esse consectetur. Esse iste debitis in dolor dolor nesciunt ut.', 'Totam excepturi maiores saepe maiores aut voluptatum maiores odio. Eum laborum sed sed iusto voluptatum. Molestiae qui vel dolores commodi sed quia vitae sed. Dolores in voluptatem ipsa error aspernatur. Corporis rem non consequuntur esse facere in. Totam sit quam inventore ut voluptatem voluptatum nemo. Accusantium eius dicta non praesentium.', '353.00', NULL, 'PRD379', 'instock', 0, 47, 'product-7', NULL, 3, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(15, 'Floral Hat', 'voluptatem-repellendus-molestias-ut-provident-doloribus', 'Ipsam assumenda nisi tempore vero. Molestiae nam temporibus dignissimos rem inventore ratione. Quae non itaque quo dolore quia.', 'Quam impedit cum enim velit non nobis. Voluptas debitis aliquid maiores ullam harum. Omnis corporis soluta id accusamus. Aspernatur dolorem velit autem laudantium. Facilis non perferendis quaerat magni. Quaerat enim accusamus ea sint quam et a ullam. Provident enim quas debitis. Sit dolores dolore occaecati sint qui. Porro velit numquam vel in ducimus est. Omnis qui error omnis cum deserunt doloribus qui. Corporis dolorem deserunt omnis nulla doloribus in.', '138.00', NULL, 'PRD404', 'instock', 0, 44, 'product-13', NULL, 2, '2023-03-22 01:19:08', '2023-03-22 01:19:08'),
(16, 'White Floral Shirt', 'consequuntur-dolores-quas-accusamus-hic-adipisci', 'Fugiat aspernatur et dolorem et. Modi quia ut eos in praesentium quis. Cum vel voluptatum quidem nostrum. Itaque et velit molestiae quaerat possimus fuga.', 'Fuga a harum doloribus aut cupiditate similique voluptatem. Aut fugit minus eum velit. Eaque quia et expedita eaque libero consequatur. Autem voluptatem est tempora illo voluptatem omnis. Quia eos qui hic dolores incidunt dolorem. Necessitatibus velit nam ut corporis est quam. Labore accusamus qui amet reprehenderit laudantium voluptate. Asperiores itaque ut nam at fuga non.', '428.00', NULL, 'PRD480', 'instock', 0, 29, 'product-9', NULL, 4, '2023-03-22 01:19:08', '2023-03-22 01:19:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
