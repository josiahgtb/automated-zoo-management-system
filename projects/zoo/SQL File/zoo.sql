-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 07:54 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zoo`
--
CREATE DATABASE IF NOT EXISTS `zoo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `zoo`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `full_name`, `email`, `message`) VALUES
(1, 'chijiuba onyedikachukwu', 'chijiuba@gmail.com', 'Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas'),
(2, 'Naomi Ezefuna', 'kelvin@gmail.com', 'Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas'),
(3, 'Gambo Timloh Josiah', 'gambojt@gmail.com', 'This is good. But you can do better!'),
(4, 'Ezugwu A.O.', 'assumpta.ezugwu@unn.edu.ng', 'Please, can you improve your user interface? Also improve your responsive design to scale well on smaller devices.');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(10) NOT NULL,
  `Staffid` varchar(255) DEFAULT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `Photo` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'avatar15.jpg',
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Staffid`, `AdminName`, `UserName`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Status`, `Photo`, `Password`, `AdminRegdate`) VALUES
(2, '10002', 'Admin', 'admin', 'Gambo', 'Timloh', 770546590, 'admin@gmail.com', 1, 'Passport2.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2021-06-21 10:18:39'),
(9, '10003', 'Admin', 'harry', 'Harry ', 'Ronald ', 757537271, 'harry@gmail.com', 0, 'face27.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2021-06-21 07:08:48'),
(29, 'U002', 'User', 'morgan', 'Happy', 'Morgan', 770546590, 'morgan@gmail.com', 1, 'avatar15.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-21 14:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `ID` int(10) NOT NULL,
  `AnimalName` varchar(200) DEFAULT NULL,
  `AnimalCategory` varchar(255) DEFAULT NULL,
  `CageNumber` varchar(255) DEFAULT NULL,
  `FeedNumber` varchar(200) DEFAULT NULL,
  `Breed` varchar(200) DEFAULT NULL,
  `AnimalImage` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Status` varchar(255) CHARACTER SET latin1 DEFAULT 'Live',
  `Dateofbirth` varchar(255) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LastUpdate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`ID`, `AnimalName`, `AnimalCategory`, `CageNumber`, `FeedNumber`, `Breed`, `AnimalImage`, `Description`, `Status`, `Dateofbirth`, `CreationDate`, `LastUpdate`) VALUES
(15, 'Jackal', 'Mammals', '0202', NULL, 'Common Jackal', '2-goldenjackal.jpg', 'Jackals are medium-sized omnivorous mammals of the subtribe Canina, which also includes wolves and the domestic dog, among other species. While the word \"jackal\" has historically been used for many small canines, in modern use it most commonly refers to three species: the closely related black-backed jackal and side-striped jackal of sub-Saharan-Africa, and the golden jackal of south-central Europe and Asia.\r\n\r\nJackals are opportunistic omnivores, predators of small to medium-sized animals and proficient scavengers. Their long legs and curved canine teeth are adapted for hunting small mammals, birds, and reptiles, and their large feet and fused leg bones give them a physique well-suited for long-distance running, capable of maintaining speeds of 16 km/h (10 mph) for extended periods of time. Jackals are crepuscular, most active at dawn and dusk.\r\n\r\nTheir most common social unit is a monogamous pair, which defends its territory from other pairs by vigorously chasing intruding rivals and marking landmarks around the territory with their urine and feces. The territory may be large enough to hold some young adults, which stay with their parents until they establish their own territories. Jackals may occasionally assemble in small packs, for example, to scavenge a carcass, but they normally hunt either alone or in pairs.\r\nWe have a number of two (a male and a female) in the Park.\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Mammalia;\r\nOrder:	Carnivora;\r\nSuborder:	Caniformia;\r\nFamily:	Canidae;\r\nSubfamily:	Caninae;\r\nTribe:	    Canini;\r\nSubtribe:	Canina;', 'Live', '', '2022-12-15 02:34:12', '2022/12/15'),
(16, 'Horse', 'Mammals', '0201', NULL, 'common horse', 'horse.primary-e9a47e1c486c4fb7bf729e05b59cf0df.jpg', 'The horse (Equus ferus caballus) is a domesticated one-toed hoofed mammal. It belongs to the taxonomic family Equidae and is one of two extant subspecies of Equus ferus. The horse has evolved over the past 45 to 55 million years from a small multi-toed creature, Eohippus, into the large, single-toed animal of today. Humans began domesticating horses around 4000 BC, and their domestication is believed to have been widespread by 3000 BC. Horses in the subspecies caballus are domesticated, although some domesticated populations live in the wild as feral horses. These feral populations are not true wild horses, as this term is used to describe horses that have never been domesticated. There is an extensive, specialized vocabulary used to describe equine-related concepts, covering everything from anatomy to life stages, size, colors, markings, breeds, locomotion, and behavior.\r\n\r\nHorses are adapted to run, allowing them to quickly escape predators, possessing an excellent sense of balance and a strong fight-or-flight response. Related to this need to flee from predators in the wild is an unusual trait: horses are able to sleep both standing up and lying down, with younger horses tending to sleep significantly more than adults. Female horses, called mares, carry their young for approximately 11 months, and a young horse, called a foal, can stand and run shortly following birth. Most domesticated horses begin training under a saddle or in a harness between the ages of two and four. They reach full adult development by age five, and have an average lifespan of between 25 and 30 years.\r\n\r\nHorses and humans interact in a wide variety of sport competitions and non-competitive recreational pursuits, as well as in working activities such as police work, agriculture, entertainment, and therapy. Horses were historically used in warfare, from which a wide variety of riding and driving techniques developed, using many different styles of equipment and methods of control. Many products are derived from horses, including meat, milk, hide, hair, bone, and pharmaceuticals extracted from the urine of pregnant mares. Humans provide domesticated horses with food, water, and shelter, as well as attention from specialists such as veterinarians and farriers.\r\nThere are two available in the Park (a male and a female), brought in from Ganawuri, Riyom LGA of Plateau State sometimes in May/June 2021.\r\n\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Mammalia;\r\nOrder:	Perissodactyla;\r\nFamily:	Equidae;\r\nGenus:	Equus;\r\nSpecies:	E. ferus', 'Live', '', '2022-12-15 02:05:35', '2022/12/15'),
(17, 'Lion', 'Mammals', '0126', NULL, 'African Savannah Lion', 'file-20210226-17-g07z94.jpg', 'The lion (Panthera leo) is a large cat of the genus Panthera native to Africa and India. It has a muscular, deep-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions are larger than females and have a prominent mane. It is a social species, forming groups called prides. A lion\'s pride consists of a few adult males, related females, and cubs. Groups of female lions usually hunt together, preying mostly on large ungulates. The lion is an apex and keystone predator; although some lions scavenge when opportunities occur and have been known to hunt humans, the species typically does not.\r\n\r\nThe lion inhabits grasslands, savannas and shrublands. It is usually more diurnal than other wild cats, but when persecuted, it adapts to being active at night and at twilight. During the Neolithic period, the lion ranged throughout Africa, Southeast Europe, the Caucasus, and Western and South Asia, but it has been reduced to fragmented populations in sub-Saharan Africa and one population in western India. \r\nOne of the most widely recognized animal symbols in human culture, the lion has been extensively depicted in sculptures and paintings, on national flags, and in contemporary films and literature. Lions have been kept in menageries since the time of the Roman Empire and have been a key species sought for exhibition in zoological gardens across the world since the late 18th century. Cultural depictions of lions were prominent in Ancient Egypt, and depictions have occurred in virtually all ancient and medieval cultures in the lion\'s historic and current range.\r\nThere are two (a male and a female) available in the Park. Female was born here in the Park, while the male was brought in April 2016 from Sander Kiarimi Wildlife Park in Maiduguri.\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Mammalia;\r\nOrder:	Carnivora;\r\nSuborder:	Feliformia;\r\nFamily:	Felidae;\r\nSubfamily:	Pantherinae;\r\nGenus:	Panthera;\r\nSpecies:	P. leo', 'Live', '', '2022-12-15 02:31:17', '2022/12/15'),
(18, 'Python', 'Reptiles', '0130', NULL, 'African Rock Python', 'Rock Python.jpg', 'The African rock python (Python sebae) is a species of large constrictor snake in the family Pythonidae. The species is native to sub-Saharan Africa. It is one of 11 living species in the genus Python. It has two subspecies. One subspecies is found in Central and Western Africa, and the other subspecies is found in Southern Africa.\r\n\r\nAfrica\'s largest snake and one of the six largest snake species in the world (along with the green anaconda, reticulated python, Burmese python, Indian python, and amethystine python), specimens may approach or exceed 6 m (20 ft). The southern subspecies is generally smaller than its northern relative. The snake is found in a variety of habitats, from forests to near deserts, although usually near sources of water. The snake becomes dormant during the dry season. The African rock python kills its prey by constriction and often eats animals up to the size of antelope, occasionally even crocodiles. The snake reproduces by egg-laying. Unlike most snakes, the female protects her nest and sometimes even her hatchlings.\r\n\r\nThere are two of them present at the Jos Wildlife Park. They were bought.\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Reptilia;\r\nOrder:	Squamata;\r\nSuborder:	Serpentes;\r\nFamily:	Pythonidae;\r\nGenus:	Python;\r\nSpecies:	P. sebae', 'Live', '', '2022-12-15 01:04:12', '2022/12/15'),
(19, 'Hyena', 'Mammals', '0209', NULL, 'spotted hyena', 'Spotted_hyena.PNG.png', 'The spotted hyena (Crocuta crocuta), also known as the laughing hyena, is carnivorous animal found in all of Sub-Saharan Africa. The species is, however, experiencing declines outside of protected areas due to habitat loss and poaching. The species may have originated in Asia, and once ranged throughout Europe for at least one million years until the end of the Late Pleistocene.\r\nUsually only lives up to 12 in the wild.\r\nNatural Weaponry (Teeth and claws), Stealth Mastery, Enhanced Senses (Hyenas can detect carrion by smell, the noise of other predators feeding on the carcass and even by observing vultures descending on a carcass. Its hearing is so acute, the hyena can pick up noises coming from predators killing prey or feeding over a distance of up to 10km. Their sight is also far better than that of humans, and are capable of seeing at night far better than humans).\r\nThe one available at the Park here is a male, which was donated by a man within Jos.', 'Live', '', '2022-12-15 01:10:53', NULL),
(20, 'Monkey', 'Mammals', '0125', NULL, 'tantalus monkey', 'Tantalus-Monkey-008.jpg', 'The tantalus monkey (Chlorocebus tantalus) is an Old World monkey from Africa that ranges from Ghana to Sudan. It was originally described as a subspecies of the grivet (Chlorocebus aethiops). All species in Chlorocebus were formerly in the genus Cercopithecus. It is a common species with a wide range, and the International Union for Conservation of Nature has rated its conservation status as being of \"least concern\".\r\n\r\nA medium-sized species, the tantalus monkey has a black face and a long tail. There is a distinctive undulating white or yellowish browband above the eyes. The cheeks and temples are white, the long hairs being swept backwards and often covering the ears in older individuals. The crown and dorsal surface of the body is grizzled and greenish or golden. The underparts are white and the tail and outer surfaces of the limbs grey. The tail may have a whitish tip. The male is larger than the female and has a bright blue scrotum surrounded by orange hairs.\r\n\r\nThis monkey is found in tropical central Africa. Its native range includes Benin, Burkina Faso, Cameroon, Central African Republic, Chad, Congo, Democratic Republic of Congo, Ghana, Kenya, Niger, Nigeria, South Sudan, Sudan, Togo and Uganda. It is an adaptable species able to inhabit open woodland, savannah, forest-grassland mosaic and riverside forest. It is at home in secondary forest and rural and urban locations.\r\nThere are two of them available in the wildlife park.\r\n\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Mammalia;\r\nOrder:	Primates;\r\nSuborder:	Haplorhini;\r\nInfraorder:	Simiiformes;\r\nFamily:	Cercopithecidae;\r\nGenus:	Chlorocebus;\r\nSpecies:	C. tantalus', 'Live', '', '2022-12-15 01:17:03', NULL),
(21, 'Monkey', 'Mammals', '0126', NULL, 'patas monkey', 'patas-istock-497212245-resize_orig.jpg', 'The common patas monkey (Erythrocebus patas), also known as the wadi monkey or hussar monkey, is a ground-dwelling monkey distributed over semi-arid areas of West Africa, and into East Africa.\r\n\r\nThe male common patas monkey grows to 60 cm (24 in) to 87 cm (34 in) in length, excluding the tail, which measures 75 cm (30 in). Adult males are considerably larger than adult females, which average 49 cm (19 in) in length. Adult males average 12.4 kg (27.3 lb) and adult females 6.5 kg (14.3 lb), showing a high degree of sexual dimorphism. Reaching speeds of 55 km/h (34 mph), it is the fastest runner among the primates.\r\n\r\nThe life span in the wild can be up to about 20 years.\r\nThere a seven of them available at the Jos Wildlife Park.\r\n\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Mammalia;\r\nOrder:	Primates;\r\nSuborder:	Haplorhini;\r\nInfraorder:	Simiiformes;\r\nFamily:	Cercopithecidae;\r\nGenus:	Erythrocebus;\r\nSpecies:	E. patas', 'Live', '', '2022-12-15 01:21:39', NULL),
(22, 'Baboon', 'Mammals', '0127', NULL, 'anubis baboon', 'Olive_Baboon_(Papio_anubis)._-_Flickr_-_Lip_Kee.jpg', 'The olive baboon (Papio anubis), also called the Anubis baboon, is a member of the family Cercopithecidae Old World monkeys. The species is the most wide-ranging of all baboons, being native to 25 countries throughout Africa, extending from Mali eastward to Ethiopia and Tanzania. Isolated populations are also present in some mountainous regions of the Sahara. It inhabits savannahs, steppes, and forests. The common name is derived from its coat colour, which is a shade of green-grey at a distance. A variety of communications, vocal and non-vocal, facilitate a complex social structure.\r\n\r\nThe olive baboon is named for its coat, which, at a distance, is a shade of green-grey. Its alternative name comes from the Egyptian god Anubis, who was often represented by a dog head resembling the dog-like muzzle of the baboon. At closer range, its coat is multicoloured, due to rings of yellow-brown and black on the hairs. The hair on the baboon\'s face is coarser and ranges from dark grey to black. This coloration is shared by both sexes, although males have a mane of longer hair that tapers down to ordinary length along the back.\r\n\r\nBesides the mane, the male olive baboon differs from the female in terms of weight, body and canine tooth size; males are, on average, 70 cm (28 in) tall while standing and females measure 60 cm (24 in) in height. The olive baboon is one of the largest species of monkey; only the chacma baboon and the mandrill attain similar sizes. The head-and-body length can range from 50 to 114 cm (20 to 45 in), with a species average of around 85 cm (33 in). At the shoulder on all fours, females average 55 cm (22 in) against males, which average 70 cm (28 in). The typical weight range for both sexes is reportedly 10–37 kg (22–82 lb), with males averaging 24 kg (53 lb) and females averaging 14.7 kg (32 lb). Some males may weigh as much as 50 kg (110 lb).\r\nThere are two anubis baboons available in the Park.\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Mammalia;\r\nOrder:	Primates;\r\nSuborder:	Haplorhini;\r\nInfraorder:	Simiiformes;\r\nFamily:	Cercopithecidae;\r\nGenus:	Papio;\r\nSpecies:	P. anubis', 'Live', '', '2022-12-15 01:27:46', NULL),
(23, 'Chimpanzee', 'Mammals', '0128', NULL, 'African savannah chimp', 'chimpanzee.jpg', 'The chimpanzee (Pan troglodytes), also known simply as chimp, is a species of great ape native to the forest and savannah of tropical Africa. It has four confirmed subspecies and a fifth proposed subspecies. The chimpanzee and the closely related bonobo are classified in the genus Pan. Evidence from fossils and DNA sequencing shows that Pan is a sister taxon to the human lineage and is humans\' closest living relative. The chimpanzee is covered in coarse black hair, but has a bare face, fingers, toes, palms of the hands, and soles of the feet. It is larger and more robust than the bonobo, weighing 40–70 kg (88–154 lb) for males and 27–50 kg (60–110 lb) for females and standing 120 to 150 cm (3 ft 11 in to 4 ft 11 in).\r\n\r\nThe chimpanzee lives in groups that range in size from 15 to 150 members, although individuals travel and forage in much smaller groups during the day. The species lives in a strict male-dominated hierarchy, where disputes are generally settled without the need for violence. Nearly all chimpanzee populations have been recorded using tools, modifying sticks, rocks, grass and leaves and using them for hunting and acquiring honey, termites, ants, nuts and water. The species has also been found creating sharpened sticks to spear small mammals. Its gestation period is eight months. The infant is weaned at about three years old, but usually maintains a close relationship with its mother for several years more.\r\nThere are three availability at the Park.\r\n\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Mammalia;\r\nOrder:	Primates;\r\nSuborder:	Haplorhini;\r\nInfraorder:	Simiiformes;\r\nFamily:	Hominidae;\r\nSubfamily:	Homininae;\r\nTribe:	Hominini;\r\nGenus:	Pan;\r\nSpecies:	P. troglodytes', 'Live', '', '2022-12-15 01:31:39', NULL),
(24, 'Ostrich', 'Birds', '0301', NULL, 'common ostrich', 'large-male-ostrich.jpg', 'The common ostrich (Struthio camelus), or simply ostrich, is a species of flightless bird native to certain large areas of Africa and is the largest living bird species. It is one of two extant species of ostriches, the only living members of the genus Struthio in the ratite order of birds. The other is the Somali ostrich (Struthio molybdophanes), which was recognized as a distinct species by BirdLife International in 2014 having been previously considered a very distinctive subspecies of ostrich.\r\n\r\nThe common ostrich belongs to the order Struthioniformes. Struthioniformes previously contained all the ratites, such as the kiwis, emus, rheas, and cassowaries. However, recent genetic analysis has found that the group is not monophyletic, as it is paraphyletic with respect to the tinamous, so the ostriches are now classified as the only members of the order. Phylogenetic studies have shown that it is the sister group to all other members of Palaeognathae and thus the flighted tinamous are the sister group to the extinct moa. It is distinctive in its appearance, with a long neck and legs, and can run for a long time at a speed of 55 km/h (34 mph) with short bursts up to about 70 km/h (40 mph), the fastest land speed of any bird. The common ostrich is the largest living species of bird and lays the largest eggs of any living bird (the extinct elephant birds of Madagascar and the giant moa of New Zealand laid larger eggs).\r\nThere are two males available in the Jos Wildlife Park.\r\n\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Aves;\r\nInfraclass:	Palaeognathae;\r\nOrder:	Struthioniformes;\r\nFamily:	Struthionidae;\r\nGenus:	Struthio;\r\nSpecies:	S. camelus', 'Live', '', '2022-12-15 01:41:30', NULL),
(25, 'Eagle', 'Birds', '0303', NULL, 'martial eagle', '640.jpg', 'The martial eagle (Polemaetus bellicosus) is a large eagle native to sub-Saharan Africa. It is the only member of the genus Polemaetus. A species of the booted eagle subfamily (Aquilinae), it has feathering over its tarsus. One of the largest and most powerful species of booted eagle, it is a fairly opportunistic predator that varies its prey selection between mammals, birds and reptiles. Its hunting technique is unique as it is one of few eagle species known to hunt primarily from a high soar, by stooping on its quarry. An inhabitant of wooded belts of otherwise open savanna, this species has shown a precipitous decline in the last few centuries due to a variety of factors. The martial eagle is one of the most persecuted bird species in the world. Due to its habit of taking livestock and regionally valuable game, local farmers and game wardens frequently seek to eliminate martial eagles, although the effect of eagles on this prey is almost certainly considerably exaggerated. Currently, the martial eagle is classified with the status of Endangered by the IUCN.\r\nThere is only one available in the Park; it was brought from Taraba State.\r\n\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Aves;\r\nOrder:	Accipitriformes;\r\nFamily:	Accipitridae;\r\nGenus:	Polemaetus;\r\nSpecies:	P. bellicosus', 'Live', '', '2022-12-15 01:45:05', NULL),
(26, 'Marabou Stork', 'Birds', '0302', NULL, 'common marabou', 'marabou-stork.jpg', 'The marabou stork (Leptoptilos crumenifer) is a large wading bird in the stork family Ciconiidae. It breeds in Africa south of the Sahara, in both wet and arid habitats, often near human habitation, especially landfill sites. It is sometimes called the \"undertaker bird\" due to its shape from behind: cloak-like wings and back, skinny white legs, and sometimes a large white mass of \"hair\".\r\nThere are two availability in the Jos Wildlife Park (a male and a female) which were brought in late 2020.\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Aves;\r\nOrder:	Ciconiiformes;\r\nFamily:	Ciconiidae;\r\nGenus:	Leptoptilos;\r\nSpecies:	L. crumenifer;', 'Live', '', '2022-12-15 01:49:51', NULL),
(27, 'Peafowl', 'Birds', '0306', NULL, 'common peafowl', 'pea_hen.jpg', 'Peafowl is a common name for three bird species in the genera Pavo and Afropavo within the tribe Pavonini of the family Phasianidae, the pheasants and their allies. Male peafowl are referred to as peacocks, and female peafowl are referred to as peahens, even though peafowl of either sex are often referred to colloquially as \"peacocks\".\r\n\r\nThe two Asiatic species are the blue or Indian peafowl originally of the Indian subcontinent, and the green peafowl of Southeast Asia; the one African species is the Congo peafowl, native only to the Congo Basin. Male peafowl are known for their piercing calls and their extravagant plumage. The latter is especially prominent in the Asiatic species, which have an eye-spotted \"tail\" or \"train\" of covert feathers, which they display as part of a courtship ritual.\r\n\r\nThe functions of the elaborate iridescent colouration and large \"train\" of peacocks have been the subject of extensive scientific debate. Charles Darwin suggested that they served to attract females, and the showy features of the males had evolved by sexual selection. More recently, Amotz Zahavi proposed in his handicap theory that these features acted as honest signals of the males\' fitness, since less-fit males would be disadvantaged by the difficulty of surviving with such large and conspicuous structures.\r\nThere are three available in the Jos Wildlife Park (all peacocks).\r\n\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Aves;\r\nOrder:	Galliformes;\r\nFamily:	Phasianidae;\r\nSubfamily:	Pavoninae;\r\nTribe:	Pavonini;', 'Live', '', '2022-12-15 01:55:17', NULL),
(28, 'Donkey', 'Mammals', '0203', NULL, 'common donkey', 'donkey-3730854-1280.jpg', 'The donkey or ass is a domestic animal in the horse family. It derives from the African wild ass, Equus africanus, and has been used as a working animal for at least 5000 years. There are more than 40 million donkeys in the world, mostly in underdeveloped countries, where they are used principally as draught or pack animals. Working donkeys are often associated with those living at or below subsistence levels. Small numbers of donkeys are kept for breeding or as pets in developed countries.\r\n\r\nA male donkey or ass is called a jack, a female a jenny or jennet; a young donkey is a foal. Jack donkeys are often used to mate with female horses to produce mules; the biological \"reciprocal\" of a mule, from a stallion and jenny as its parents instead, is called a hinny.\r\n\r\nAsses were first domesticated around 3000 BC, probably in Egypt or Mesopotamia, and have spread around the world. They continue to fill important roles in many places today. While domesticated species are increasing in numbers, the African wild ass is a critically endangered species. As beasts of burden and companions, asses and donkeys have worked together with humans for millennia.\r\nThere are two availability at the Park (male and female), which were brought from Ganawuri in Riyom Local Government Area of Plateau State.\r\n\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Mammalia;\r\nOrder:	Perissodactyla;\r\nFamily:	Equidae;\r\nGenus:	Equus;\r\nSpecies:	E. africanus', 'Live', '', '2022-12-15 02:01:32', NULL),
(29, 'Derby Eland', 'Mammals', '0220', NULL, 'giant eland', 'DERBY.JPG', 'The giant eland (Taurotragus derbianus), also known as the Lord Derby eland, is an open-forest and savanna antelope. It is a species of the family Bovidae and genus Taurotragus. The giant eland is the largest species of antelope, with a body length ranging from 220–290 cm (86.5–114 in). There are two subspecies: T. d. derbianus and T. d. gigas.\r\n\r\nThe giant eland is a herbivore, eating grasses, foliage and branches. They usually form small herds consisting of 15–25 members, both males and females. Giant elands are not territorial, and have large home ranges. They are naturally alert and wary, which makes them difficult to approach and observe. They can run at up to 70 km/h (43 mph) and use this speed as a defence against predators. Mating occurs throughout the year but peaks in the wet season. They mostly inhabit broad-leafed savannas, woodlands and glades.\r\n\r\nThe giant eland is native to Cameroon, Central African Republic, Chad, Democratic Republic of the Congo, Guinea, Mali, Senegal, and South Sudan. It is no longer present in The Gambia, Ghana, Ivory Coast, and Togo. It can also be found in the Jos wildlife park in Nigeria, Guinea-Bissau, and Uganda due to over hunting and a lack of professional wildlife management. The subspecies have been listed with different conservation statuses by the International Union for Conservation of Nature (IUCN).\r\nThere only one available  in the Jos Wildlife Park (a male), which was born here in the Park.\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Mammalia;\r\nOrder:	Artiodactyla;\r\nFamily:	Bovidae;\r\nSubfamily:	Bovinae;\r\nGenus:	Taurotragus;\r\nSpecies:	T. derbianus', 'Live', '', '2022-12-15 02:10:03', NULL),
(30, 'Elephant', 'Mammals', '0146', NULL, 'African Savannah Elephant', 'African-savanna-elephant.jpg', 'The African bush elephant (Loxodonta africana), also known as the African savanna elephant. It is the largest living terrestrial animal, with bulls reaching a shoulder height of up to 3.96 m (13.0 ft) and a body mass of up to 10.4 t (11.5 short tons). It is distributed across 37 African countries and inhabits forests, grasslands and woodlands, wetlands and agricultural land. There are two species of African elephants. These are the savanna elephants (Loxodonta africana) and the forest elephants (Loxodonta africana cyclotis). \r\nThere are only one available in the Park (a female). It was donated by ESU KARU, Nasarawa State, and brought to Jos Wildlife Park in 1988. African Savanna Elephants have not been tamed like the Indian Elephants (Elephas maximus). But this one is friendly and if properly trained, one can ride on it. Gestation period is 22 to 24 months, with life expectancy of up to 70 years. The feeding habit is herbivorous. Other habits: they are gregarious highly sociable elephants, live in herds averaging from 10 to 20. Sometimes up to 50; led by an old female.\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Mammalia;\r\nOrder:	Proboscidea;\r\nFamily:	Elephantidae;\r\nGenus:	Loxodonta;\r\nSpecies:	L. africana', 'Live', '', '2022-12-15 02:26:19', '2022/12/15'),
(31, 'Caracal', 'Mammals', '0204', NULL, 'common caracal', 'caracal.jpg', 'The caracal (Caracal caracal) is a medium-sized wild cat native to Africa, the Middle East, Central Asia, and arid areas of Pakistan and northwestern India. It is characterized by a robust build, long legs, a short face, long tufted ears, and long canine teeth. Its coat is uniformly reddish tan or sandy, while the ventral parts are lighter with small reddish markings. It reaches 40–50 cm (16–20 in) at the shoulder and weighs 8–19 kg (18–42 lb). It was first scientifically described by German naturalist Johann Christian Daniel von Schreber in 1776. \r\n\r\nTypically nocturnal, the caracal is highly secretive and difficult to observe. It is territorial, and lives mainly alone or in pairs. The caracal is a carnivore that typically preys upon small mammals, birds, and rodents. It can leap higher than 4 metres (12 ft) and catch birds in midair. It stalks its prey until it is within 5 m (16 ft) of it, after which it runs it down and kills its prey with a bite to the throat or to the back of the neck. Both sexes become sexually mature by the time they are one year old and breed throughout the year. Gestation lasts between two and three months, resulting in a litter of one to six kittens. Juveniles leave their mothers at the age of nine to ten months, though a few females stay back with their mothers. The average lifespan of captive caracals is nearly 16 years.\r\n\r\nCaracals were tamed and used for coursing in India, Persia and Egypt.\r\n\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Mammalia;\r\nOrder:	Carnivora;\r\nSuborder:	Feliformia;\r\nFamily:	Felidae;\r\nSubfamily:	Felinae;\r\nGenus:	Caracal;\r\nSpecies:	C. caracal', 'Live', '', '2022-12-15 14:03:22', '2022/12/15'),
(32, 'Turtle', 'Reptiles', '0401', NULL, 'water turtle', 'water-turtles-for-sale-2.jpg', 'Turtles are an order of reptiles known as Testudines, characterized by a shell developed mainly from their ribs. Modern turtles are divided into two major groups, the side-necked turtles and hidden neck turtles which differ in the way the head retracts. There are 360 living and recently extinct species of turtles, including tortoises and terrapins. They are found on most continents, some islands and much of the ocean. Like other reptiles, birds, and mammals, they breathe air and do not lay eggs underwater, although many species live in or around water. Genetic evidence typically places them in close relation to crocodilians and birds.\r\n\r\nTurtle shells are made mostly of bone; the upper part is the domed carapace, while the underside is the flatter plastron or belly-plate. Its outer surface is covered in scales made of keratin, the material of hair, horns, and claws. The carapace bones develop from ribs that grow sideways and develop into broad flat plates that join up to cover the body. Turtles are ectotherms or \"cold-blooded\", meaning that their internal temperature varies with their direct environment. They are generally opportunistic omnivores and mainly feed on plants and animals with limited movements. Many turtles migrate short distances seasonally. Sea turtles are the only reptiles that migrate long distances to lay their eggs on a favored beach.\r\n\r\nTurtles have appeared in myths and folktales around the world. Some terrestrial and freshwater species are widely kept as pets. Turtles have been hunted for their meat, for use in traditional medicine, and for their shells. Sea turtles are often killed accidentally as bycatch in fishing nets. Turtle habitats around the world are being destroyed. As a result of these pressures, many species are threatened with extinction.\r\n\r\nAge: The average age is 15-25 years, but with proper\r\ncare they may live much longer; \r\nLength: Up to 12 inches (females are typically larger\r\n​than males);\r\nSexual maturity: 3-5 years (males), 5-10 (females);\r\nGestation: 60 days, 2-20 eggs;\r\nIncubation: 55-75 days. \r\n\r\nThere are six availability at the Jos Wildlife Park. They hide during dry season and come out during the rainy season.\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Reptilia;\r\nClade:	Pantestudines;\r\nClade:	Perichelydia;\r\nOrder:	Testudines;', 'Live', '', '2022-12-15 02:47:11', '2022/12/15'),
(33, 'Tortoise', 'Reptiles', '0404', NULL, 'desert tortoise', 'desert-tortoise-d89f6d65.jpeg', 'The desert tortoise (Gopherus agassizii), is a species of tortoise in the family Testudinidae. The species is native to the Mojave and Sonoran Deserts of the southwestern United States and northwestern Mexico, and to the Sinaloan thornscrub of northwestern Mexico.[3] G. agassizii is distributed in western Arizona, southeastern California, southern Nevada, and southwestern Utah. The specific name agassizii is in honor of Swiss-American zoologist Jean Louis Rodolphe Agassiz.\r\n\r\nThe desert tortoise lives about 50 to 80 years; it grows slowly and generally has a low reproductive rate. It spends most of its time in burrows, rock shelters, and pallets to regulate body temperature and reduce water loss. It is most active after seasonal rains and is inactive during most of the year. This inactivity helps reduce water loss during hot periods, whereas winter brumation facilitates survival during freezing temperatures and low food availability. Desert tortoises can tolerate water, salt, and energy imbalances on a daily basis, which increases their lifespans.\r\nThere are four available in the Jos Wildlife Park.\r\n\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Reptilia;\r\nOrder:	Testudines;\r\nSuborder:	Cryptodira;\r\nSuperfamily:	Testudinoidea;\r\nFamily:	Testudinidae;\r\nGenus:	Gopherus;\r\nSpecies:	G. agassizii', 'Live', '', '2022-12-15 02:46:02', NULL),
(34, 'Crocodile', 'Reptiles', '0408', NULL, 'slender-snouted crocodile', 'crocodile-snout.jpg', 'The Slender-snouted crocodile (Mecistops cataphractus) is a narrow-snouted, medium sized species native to freshwater habitats in central and western Africa. They are a very shy and secretive species and consequently in 1996 the IUCN rated them as ‘Data Deficient.’ In 2014 this was reviewed and Slender-Snouted Crocodiles were listed as ‘Critically Endangered.’ In 2018, it was determined that this species is actually comprised of two separate species: one in West Africa, the other in Central Africa. The second species was named Mecistops leptorhynchus.\r\n\r\nThe West African slender-snouted crocodile (Mecistops cataphractus) is a critically endangered species of African crocodile. It is one of five species of crocodile in Africa, the other four being the Central African slender-snouted, Nile, West African and dwarf crocodiles.\r\n\r\nThe slender-snouted crocodile (M. cataphractus) was thought to be distributed across west Africa and into central Africa but the central African species has been separated as the Central African slender-snouted crocodile (M. leptorhynchus) based on studies in 2014 and 2018 that indicated that both were distinct species. The name cataphractus is retained for the West African species as that species was described first based on specimens from western Africa.\r\nThere is only one available in the Jos Wildlife Park.\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Reptilia;\r\nOrder:	Crocodilia;\r\nFamily:	Crocodylidae;\r\nGenus:	Mecistops;\r\nSpecies:	M. cataphractus', 'Live', '', '2022-12-15 02:56:13', '2022/12/15'),
(35, 'Crocodile', 'Reptiles', '0410', NULL, 'Nile crocodile', 'nile_crocodile.jpg', 'The Nile crocodile (Crocodylus niloticus) is a large crocodilian native to freshwater habitats in Africa, where it is present in 26 countries. It is widely distributed throughout sub-Saharan Africa, occurring mostly in the central, eastern, and southern regions of the continent, and lives in different types of aquatic environments such as lakes, rivers, swamps, and marshlands. Present in west Africa, the niloticus is there cohabitant with two other crocodilians. Although capable of living in saline environments, this species is rarely found in saltwater, but occasionally inhabits deltas and brackish lakes. The range of this species once stretched northward throughout the Nile, as far north as the Nile Delta.  It is the largest freshwater predator in Africa, and may be considered the second-largest extant reptile in the world, after the saltwater crocodile (Crocodylus porosus). Sexual dimorphism is prevalent, and females are usually about 30% smaller than males. They have thick, scaly, heavily armoured skin.\r\n\r\nNile crocodiles are opportunistic apex predators; a very aggressive species of crocodile, they are capable of taking almost any animal within their range. They are generalists, taking a variety of prey. Their diet consists mostly of different species of fish, reptiles, birds, and mammals. They are ambush predators that can wait for hours, days, and even weeks for the suitable moment to attack. They are agile predators and wait for the opportunity for a prey item to come well within attack range. Even swift prey are not immune to attack. Like other crocodiles, Nile crocodiles have an extremely powerful bite that is unique among all animals, and sharp, conical teeth that sink into flesh, allowing for a grip that is almost impossible to loosen. They can apply high levels of force for extended periods of time, a great advantage for holding down large prey underwater to drown.\r\nThere are sixteen (16) available in the Jos Wildlife Park.\r\nScientific classification:-\r\nKingdom:	Animalia;\r\nPhylum:	Chordata;\r\nClass:	Reptilia;\r\nOrder:	Crocodilia;\r\nFamily:	Crocodylidae;\r\nGenus:	Crocodylus;\r\nSpecies:	C. niloticus', 'Live', '', '2022-12-15 15:28:01', '2022/12/15'),
(36, 'Cattle', 'Mammals', '0501', NULL, 'dwarf cattle', 'muturu.jpg', 'Dwarf cattle \'Muturu\', meaning humpless, is the Hausa name for the West African Shorthorn in Anglophone West Africa. Since the second half of the first millennium B.C. Muturu cattle were the most widespread breed of Nigeria until the Fulani invasion, which started in 1820 (Felius 1995). The breed is a variety of West African Shorthorn. Generally, two types of Muturu cattle have been identified: a larger Savannah-type and a Dwarf-Forest type, which appears to have evolved through adaptation to the humid forest environment. Most of the Muturu cattle of Nigeria belong to the Savannah type, spread over the Benue plateau, and smaller numbers are found further to the Southwest in Oyo and Kwara. This breed is also found in Southeastern coastal area of Ghana. \r\nThe number of Muturu cattle in 1990 in Nigeria was between 75 000 to 120 000: 25 000 to 40 000 for the Dwarf or Forest Muturu and 50 000 to 80 000 for the Savannah Muturu. Despite their abundance they are not considered as safe. The biggest threat seems to be pressure from the numerically superior zebu, especially through crossbreeding, and the increasingly popular N\'Dama, through replacement. The Muturu is found in areas heavily infested with tsetse, as a result of which this breed has adapted and naturally selected to be tolerant to trypanosomosis, ticks and tick-borne diseases although it is susceptible to rinderpest.\r\nThere are eight (8) available in the Jos Wildlife Park. They are usually reared for beef.', 'Live', '', '2022-12-15 03:03:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `ID` int(10) NOT NULL,
  `TicketID` int(10) NOT NULL,
  `FirstName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `LastName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `State` varchar(255) CHARACTER SET latin1 NOT NULL,
  `City` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Status` varchar(255) NOT NULL DEFAULT 'on',
  `CreationDate` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`ID`, `TicketID`, `FirstName`, `LastName`, `Phone`, `Email`, `State`, `City`, `Status`, `CreationDate`) VALUES
(1, 942483371, 'Amanya', 'Owen', '770546590', 'owen@gmail.com', 'Goa', 'New York', 'on', '2021-11-06 13:56:07'),
(2, 607715136, 'Arinaitwe', 'Gerald', '770546590', 'gerald@gmail.com', 'Assam', 'Canada', 'Used', '2021-11-06 10:54:55'),
(3, 248776410, 'John', 'Simith', '770546590', 'john@gmail.com', 'Goa', 'California', 'on', '2021-11-06 14:18:13'),
(4, 367351586, 'Nabimanya', 'Gloria', '770546590', 'gloria@gmail.com', 'Central Region', 'New York', 'on', '2021-11-06 14:21:55'),
(5, 151689475, 'Chijiuba', 'Victory', '2147483647', 'chijiubaonyedikachukwu@gmail.com', 'Enugu', 'Nsukka', 'Used', '2022-12-05 11:21:33'),
(6, 947743606, 'Chijiuba', 'Victory', '2147483647', 'chijiubaonyedikachukwu@gmail.com', 'Enugu', 'Nsukka', 'Used', '2022-12-05 13:33:52'),
(7, 582056744, 'Ishiwu', 'Burna', '2147483647', 'kelvin@gmail.com', 'Anambra', 'Oko', 'on', '2022-12-08 23:26:09'),
(8, 754248812, 'Ebenezer', 'Emeka', '81325479', 'kelvin@gmail.com', 'Ebonyi', 'Oba', 'on', '2022-12-08 23:34:08'),
(9, 739969892, 'Gambo', 'Josaiah', '08132547926', 'damian@gmail.com', 'Plateau', 'Jos', 'on', '2022-12-08 23:43:24'),
(10, 424119112, 'Prince', 'Eze', '08132547926', 'chijiuba@gmail.com', 'Ebonyi', 'Oko', 'on', '2022-12-09 00:40:39'),
(11, 973066156, 'Gambo', 'Josaiah', '08132547926', 'kelvin@gmail.com', 'Plateau', 'Jos', 'Used', '2022-12-10 11:49:54'),
(12, 627286373, 'Noble', 'Guy', '08132547926', 'kelvin@gmail.com', 'Ebonyi', 'Oba', 'on', '2022-12-13 01:36:22'),
(13, 193730169, 'Chijiuba', 'Mouse', '08132547926', 'obuchinonso@gmail.com', 'Anambra', 'Nsukka', 'Used', '2022-12-13 01:53:54'),
(14, 295945693, 'Gambo', 'Josaiah', '08132547926', 'kelvin@gmail.com', 'Anambra', 'Nsukka', 'Used', '2022-12-13 01:56:03'),
(15, 944566046, 'Stones', 'Israel', '44909403132', 'israel.stones@gmail.com', 'England', 'London', 'Used', '2022-12-14 03:18:43'),
(16, 859200147, 'Asogwa', 'Okoronkwo', '098866157728', 'asogwa.okoronkwo@gmail.com', 'Enugu', 'Nsukka', 'Used', '2022-12-14 04:06:23'),
(17, 582340947, 'Timloh', 'Gambo', '08065300241', 'gambojt@gmail.com', 'Plateau', 'Jos', 'Used', '2022-12-14 09:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE `citizen` (
  `ID` int(10) NOT NULL,
  `TicketID` varchar(100) NOT NULL,
  `NoAdult` int(10) DEFAULT NULL,
  `NoChildren` int(10) DEFAULT NULL,
  `AdultUnitprice` varchar(50) DEFAULT NULL,
  `ChildUnitprice` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`ID`, `TicketID`, `NoAdult`, `NoChildren`, `AdultUnitprice`, `ChildUnitprice`, `PostingDate`) VALUES
(1, '449422712', 2, 3, '200', '100', '2022-12-06 11:28:21'),
(2, '767054451', 1, 0, '200', '100', '2022-12-06 12:12:57'),
(3, '832886053', 2, 1, '200', '100', '2022-12-07 08:29:07'),
(4, '567059732', 2, 1, '200', '100', '2022-12-08 21:52:10'),
(5, '754248812', 1, 1, '200', '100', '2022-12-08 22:32:13'),
(6, '739969892', 1, 4, '200', '100', '2022-12-08 22:41:24'),
(7, '424119112', 3, 1, '200', '100', '2022-12-08 23:38:47'),
(8, '759921405', 2, 1, '200', '100', '2022-12-10 10:37:14'),
(9, '389312685', 1, 2, '200', '100', '2022-12-10 10:45:08'),
(10, '973066156', 2, 1, '200', '100', '2022-12-10 10:47:25'),
(11, '627286373', 2, 3, '200', '100', '2022-12-13 00:28:14'),
(12, '295945693', 2, 1, '200', '100', '2022-12-13 00:54:59'),
(13, '110752077', 2, 2, '200', '100', '2022-12-13 07:33:34'),
(14, '976792561', 1, 1, '200', '100', '2022-12-13 15:52:12'),
(15, '985077783', 1, 2, '200', '100', '2022-12-14 02:43:51'),
(16, '847356017', 3, 1, '200', '100', '2022-12-14 02:55:13'),
(17, '859200147', 3, 1, '200', '100', '2022-12-14 03:01:48'),
(18, '582340947', 3, 4, '200', '100', '2022-12-14 08:41:36'),
(19, '709301286', 5, 4, '200', '100', '2022-12-15 08:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `foreigner`
--

CREATE TABLE `foreigner` (
  `ID` int(10) NOT NULL,
  `TicketID` varchar(200) DEFAULT NULL,
  `NoAdult` int(10) DEFAULT NULL,
  `NoChildren` int(10) DEFAULT NULL,
  `AdultUnitprice` varchar(50) DEFAULT NULL,
  `ChildUnitprice` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foreigner`
--

INSERT INTO `foreigner` (`ID`, `TicketID`, `NoAdult`, `NoChildren`, `AdultUnitprice`, `ChildUnitprice`, `PostingDate`) VALUES
(1, '162529017', 2, 2, '300', '150', '2022-12-06 11:25:53'),
(2, '820306515', 2, 1, '300', '150', '2022-12-06 12:16:06'),
(3, '582056744', 1, 1, '300', '150', '2022-12-08 22:22:20'),
(4, '193730169', 2, 1, '300', '150', '2022-12-13 00:52:27'),
(5, '210039080', 1, 1, '300', '150', '2022-12-13 15:15:51'),
(6, '940520177', 2, 1, '300', '150', '2022-12-14 01:51:09'),
(7, '944566046', 2, 1, '300', '150', '2022-12-14 02:15:37'),
(8, '292100376', 2, 1, '300', '150', '2022-12-15 14:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `permission` varchar(255) CHARACTER SET latin1 NOT NULL,
  `createuser` varchar(255) DEFAULT NULL,
  `deleteuser` varchar(255) DEFAULT NULL,
  `createbid` varchar(255) DEFAULT NULL,
  `updatebid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission`, `createuser`, `deleteuser`, `createbid`, `updatebid`) VALUES
(1, 'Superuser', '1', '1', '1', '1'),
(2, 'Admin', NULL, NULL, '1', '1'),
(3, 'User', NULL, NULL, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_type`
--

CREATE TABLE `ticket_type` (
  `ID` int(10) NOT NULL,
  `TicketType` varchar(200) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_type`
--

INSERT INTO `ticket_type` (`ID`, `TicketType`, `Price`, `CreationDate`) VALUES
(1, 'Citizen Adult', '200', '2019-12-30 06:31:56'),
(2, 'Citizen Child', '100', '2019-12-30 06:32:27'),
(3, 'Foreigner Adult', '300', '2019-12-30 06:33:16'),
(4, 'Foreigner Child', '150', '2019-12-30 06:33:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `citizen`
--
ALTER TABLE `citizen`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TicketID` (`TicketID`);

--
-- Indexes for table `foreigner`
--
ALTER TABLE `foreigner`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TicketID` (`TicketID`),
  ADD KEY `TicketID_2` (`TicketID`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_type`
--
ALTER TABLE `ticket_type`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TicketType` (`TicketType`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `citizen`
--
ALTER TABLE `citizen`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `foreigner`
--
ALTER TABLE `foreigner`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticket_type`
--
ALTER TABLE `ticket_type`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
