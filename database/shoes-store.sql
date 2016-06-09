CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Formal'),
(3, 'Slip-on'),
(4, 'Flat'),
(5, 'Heels'),
(6, 'Sneakers'),
(7, 'Wedges');

CREATE TABLE IF NOT EXISTS `shoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `price` varchar(20) NOT NULL,
  `picture` varchar(45) DEFAULT NULL,
  `size` varchar(4) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `comment` varchar(1500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shoes_categories_idx` (`categories_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

INSERT INTO `shoes` (`id`, `name`, `categories_id`, `price`, `picture`, `size`, `stock`, `comment`) VALUES
(5, 'Tolliver Lieke Women', 4, '229000 ', '1fl.jpg', '38', 2, '-Â Flat shoes\r\n- Material: PUÂ leather\r\n- Warna biru\r\n- DetailÂ stitching\r\n- Aksen pita danÂ tassel'),
(6, 'Crocs Carlisa Flat', 4, '374500 ', '2fl.jpg', '38', 3, '- Flat shoes\r\n- MaterialÂ translucentÂ TPU\r\n- Kombinasi warnaÂ azure, custard\r\n- DetailÂ footbed\r\n- Classic molded closed toe\r\n- Non-marking outsole\r\n- Signature logo'),
(7, 'Audrey Flat Shoes', 4, '229000 ', '3fl.jpg', '38', 1, 'Nicholas Edison Audrey Flat Shoes Brown.Â Flat shoesÂ dengan sentuhan motifÂ snake skinÂ yang trendi. Desain simpel mudah dipadukan denganÂ outfitÂ pilihan.Â Effortless chic!\r\n\r\nFlat shoesÂ warna coklat dari bahan PUÂ synthetic.'),
(8, 'Animal Print Ballet Flats', 4, '139000 ', '4fl.jpg', '38', 4, '- SepatuÂ flats\r\n- MaterialÂ faux snakeskin\r\n- Kombinasi warnaÂ pinkÂ dan coklat\r\n- Almond toeÂ denganÂ contrast cap\r\n- DetailÂ elasticised top line\r\n- Pita depan\r\n- PUÂ insole\r\n- ResinÂ outsole'),
(9, 'Crocs Carlisa Flat', 4, '374500 ', '5fl.jpg', '38', 7, '- Flat shoes\r\n- MaterialÂ translucentÂ TPU\r\n- WarnaÂ espresso bronze\r\n- DetailÂ footbed\r\n- Classic molded closed toe\r\n- Non-marking outsole\r\n- Signature logo'),
(10, 'Igor Career Shoes', 1, '309000 ', '1fr.jpg', '42', 5, '- Sepatu formal\r\n- Material PUÂ leather\r\n- Warna hitam\r\n- Detail tali depan\r\n'),
(11, 'Christophe Career Shoes', 1, '309000 ', '2fr.jpg', '42', 3, '- Sepatu formal\r\n- Material PUÂ leather\r\n- Warna coklat\r\n- Detail tali depan\r\n- Rubber sole'),
(12, 'Christophe Career Shoes', 1, '309000 ', '3fr.jpg', '42', 5, '- Sepatu formal\r\n- Material PUÂ leather\r\n- Warna hitam\r\n- Detail tali depan\r\n- Rubber sole'),
(13, 'Pierro Career Shoes', 1, '309000 ', '4fr.jpg', '42', 5, '- Sepatu formal\r\n- Material PUÂ leather\r\n- Warna hitam\r\n- Detail tali depan\r\n- Square toe'),
(14, 'Ajax Career Shoes', 1, '309000 ', '5fr.jpg', '42', 5, '- Sepatu formal\r\n- Material PUÂ leather\r\n- Warna hitam\r\n- Elastic side\r\n- Square toe'),
(15, 'Eliza Women Oxford Heels ', 5, '242100 ', '1hl.jpg', '38', 6, '- Heels shoes\r\n- Material PUÂ leather\r\n- Warna abu\r\n- ModelÂ oxford shoes\r\n- Round toe\r\n- Tali depan\r\n- Rubber sole\r\n- TinggiÂ chunky heelsÂ 7 cm'),
(16, 'Two Tone T Bar Pumps', 5, '219000 ', '2hl.jpg', '38', 3, '- High heels\r\n- MaterialÂ faux suede\r\n- Kombinasi warna hitam danÂ beige\r\n- DetailÂ ankle strap\r\n- Gold tone buckle\r\n- Strappy pointy toe\r\n- ModelÂ T-bar\r\n- Synthetic outsole\r\n- TinggiÂ heelsÂ 10 cm'),
(17, 'Pippi Suede Pumps', 5, '229000 ', '3hl.jpg', '38', 5, '-Â Pump shoes\r\n- Kombinasi bahanÂ suedeÂ dan PU\r\n- Warna hitam\r\n- DetailÂ studs\r\n- TinggiÂ heels: 11.5 cm'),
(18, 'Eliza Women Oxford Heels ', 5, '242100 ', '4hl.jpg', '38', 6, '- Heels shoes\r\n- Material PUÂ leather\r\n- Warna hitam\r\n- ModelÂ oxford shoes\r\n- Round toe\r\n- Tali depan\r\n- Rubber sole\r\n- TinggiÂ chunky heelsÂ 7 cm\r\n'),
(19, 'Two Tone Pumps', 5, '219000 ', '5hl.jpg', '38', 5, '- High heels\r\n- MaterialÂ faux suede\r\n- Kombinasi warna hitam dan putih\r\n- DetailÂ double straps\r\n- Adjustable buckleÂ danÂ hook fastening\r\n- PUÂ insole\r\n- ResinÂ outsole\r\n- TinggiÂ heelsÂ 7.6 cm'),
(20, 'Flybridge Shoes', 3, '479000 ', '1sl.jpg', '39', 12, '- Slip on\r\n- Material kanvas\r\n- WarnaÂ navy\r\n- Detail tali depan\r\n- Contrast stitching\r\n- Signature logo\r\n- Rubber sole\r\n'),
(21, 'Boat Slip-On Dlx', 3, '749000 ', '2sl.jpg', '39', 5, '-Â Boat shoes\r\n- Material:Â durable canvas upper\r\n- Warna abu-abu\r\n- Kombinasi warna, merah\r\n- DetailÂ slip on\r\n- AksenÂ stripes\r\n-Â Rubber outsole\r\n-Â Signature logo\r\n'),
(22, 'Dark Brown Shoes', 3, '409000 ', '3sl.jpg', '40', 3, '-Â Slip on shoes\r\n- Material PUÂ leather\r\n- WarnaÂ dark brown\r\n- DetailÂ stitching\r\n-Â Rubber sole\r\n'),
(23, 'Phillip Deck Shoes', 3, '325000 ', '4sl.jpg', '40', 2, '- Slip on\r\n- Material PUÂ leather\r\n- Warna hitam\r\n- Detail tali depan\r\n- Contrast stitching\r\n- Rubber sole\r\n'),
(24, 'Vrona Slip On Shoes', 3, '729000 ', '5sl.jpg', '40', 4, '- Slip on shoes\r\n- Material kanvas\r\n- Warna hitam\r\n- DetailÂ stretch insetsÂ di bagianÂ tongue\r\n- Molded sockliner\r\n- Gum rubber outsole\r\n'),
(25, 'Eastham Mens Sneaker Shoe', 6, '599000 ', '1sn.jpg', '39', 5, '- Sneakers\r\n- MaterialÂ suede,Â leather\r\n- Kombinasi warnaÂ off whiteÂ danÂ midnight navy\r\n- AksenÂ stitching\r\n- Textile lining\r\n- Tali depan\r\n- Rubber outsole\r\n'),
(26, 'Sleezy Shoes', 6, '449000 ', '2sn.jpg', '39', 3, '- Sneakers\r\n- Material kanvas\r\n- WarnaÂ khaki\r\n- Detail tali depan\r\n- Contrast stitching\r\n- Signature logo\r\n- Rubber sole\r\n'),
(27, 'Odraslih Leather Shoes', 6, '399000 ', '3sn.jpg', '43', 5, '- Sneakers\r\n- MaterialÂ genuine leather\r\n- Warna hijau\r\n- Detail tali\r\n'),
(28, 'DY 031 Sneakers', 6, '999000 ', '4sn.jpg', '41', 2, '- Sneakers\r\n- MaterialÂ leatherÂ danÂ suede\r\n- WarnaÂ camel\r\n- Detail tali depan\r\n- AksenÂ braided jute strip\r\n- Contrast stitching\r\n- Rubber sole\r\n'),
(29, 'ZoomÂ Stefan Sneaker Shoe', 6, '879000 ', '5sn.jpg', '43', 2, '- Sneakers\r\n- Material kanvas\r\n- Kombinasi warnaÂ midblackÂ dan putih\r\n- DesainÂ mid top\r\n- Nike ZoomÂ midsole\r\n- Tali depan\r\n- Rubber outsoleÂ denganÂ herringbone pattern\r\n'),
(30, 'Joseph Ballaci Wedges', 7, '503100 ', '1wg.jpg', '38', 4, '- Wedges sneakers\r\n- Kombinasi bahanÂ suedeÂ dan PUÂ leather\r\n- Warna hitam\r\n- ModelÂ mid top\r\n- Tali depan danÂ velcro closure\r\n- DetailÂ stitching\r\n- Rubber sole\r\n- TinggiÂ heelsÂ 8 cm\r\n- Down size\r\n'),
(32, 'Joseph Ballaci Wedges', 7, '503100 ', '2wg.jpg', '38', 2, '- Wedges sneakers\r\n- Kombinasi bahanÂ suedeÂ dan PUÂ leather\r\n- Warna merah\r\n- ModelÂ mid top\r\n- Tali depan danÂ velcro closure\r\n- DetailÂ stitching\r\n- Rubber sole\r\n- TinggiÂ heelsÂ 8 cm'),
(34, 'Katylin Women Oxford Heel', 7, '242100 ', '3wg.jpg', '38', 2, '- Wedge shoes\r\n- Material PUÂ leather\r\n- Warna coklat\r\n- Round toe\r\n- AksenÂ stitching\r\n- Tali depan\r\n- TinggiÂ heelsÂ 6 cm'),
(35, 'Milou Women Wedges Shoes', 7, '199000', '4wg.jpg', '38', 5, '- Sandal wedges\r\n- Material PUÂ leather\r\n- WarnaÂ beige\r\n- DetailÂ sling back\r\n- TinggiÂ wedgesÂ 11 cmÂ \r\n'),
(36, 'Holy Spike Wedges', 7, '503100 ', '5wg.jpg', '38', 6, '- Sneaker wedges\r\n- Material PUÂ leather\r\n- Warna biru\r\n- DetailÂ studs\r\n- Tali depan\r\n- 2 resleting samping\r\n- Rubber outsole\r\n- TinggiÂ heelsÂ 9 cm');

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `fullname` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `user` (`id`, `username`, `pass`, `fullname`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Muhamad Alfan'),

ALTER TABLE `shoes`
  ADD CONSTRAINT `fk_shoes_categories` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;