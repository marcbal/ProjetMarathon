SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `marathon2014`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
`id` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL,
  `id_voyage` int(11) NOT NULL,
  `contenu` text NOT NULL,
  `date_post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `evaluation` enum("0","1","2","3","4","5") DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `id_personne`, `id_voyage`, `contenu`, `date_post`, `evaluation`) VALUES
(6, 3, 1, "Quel périple....\r\n", "2014-12-15 07:23:06", "3"),
(7, 2, 1, "Moi, je préfère les voyages dans les pays chauds....", "2014-12-15 07:24:16", "2");

-- --------------------------------------------------------

--
-- Structure de la table `etape`
--

CREATE TABLE `etape` (
`id` int(11) NOT NULL,
  `intitule` varchar(100) NOT NULL,
  `description` text,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  `id_voyage` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `etape`
--

INSERT INTO `etape` (`id`, `intitule`, `description`, `debut`, `fin`, `id_voyage`) VALUES
(1, "Point de départ : la ville de Lens", "Lens est une commune française, chef-lieu d’arrondissement du département du Pas-de-Calais en région Nord-Pas-de-Calais. Ses habitants sont appelés les Lensois. Elle est au centre de l""aire urbaine de Douai-Lens, la quinzième aire urbaine de France, comprenant 801 communes, avec 542 918 habitants en 2010. Avec Lille et les autres villes de l""ancien bassin minier du Nord-Pas-de-Calais, elle participe aussi à un ensemble métropolitain de près de 3,8 millions d""habitants, appelé « aire métropolitaine de Lille ».\n\nLa ville est surtout connue pour avoir été l’un des principaux centres urbains du bassin minier du Nord-Pas-de-Calais, avec la Compagnie des mines de Lens, pour son équipe de football, le Racing Club de Lens, et plus récemment pour le musée du Louvre Lens ouvert en décembre 2012.\n\nLens comprend de nombreux équipements d""enseignement et de santé. C""est aujourd""hui une ville universitaire : on y trouve le pôle science, technologie et tertiaire de l""université d""Artois, une école d""ingénieurs, l""Institut de génie informatique et industriel (IG2I) et plusieurs IUT. La Faculté Jean-Perrin, installée dans les anciens bureaux des mines de Lens depuis le début des années 1990, est le pôle scientifique de l""université d""Artois. On y étudie la biologie, la biochimie, la physique, la chimie, les mathématiques et l""informatique.\n\nLa ville est également dotée d""un tribunal d""instance et d""un théâtre.\n  ", "2014-08-01", "2014-08-02", 1),
(2, "Le lendemain : Bruxelles", "C""est une ville (et donc une commune), nommée simplement ville de Bruxelles, peuplée, au 1er janvier 2013, par 168 230 habitants et entourée, dans un bâti unique, par dix-huit autres communes étroitement imbriquées entre elles pour former l""une des trois régions de Belgique, la région de Bruxelles-Capitale. La population totale, qui est (en 2012) de 1 168 789 habitants, dispose d""un parlement et d""un gouvernement qui exercent leur tutelle sur les conseils communaux et les bourgmestres de ces dix-neuf communes dont l""ensemble s""étend sur un territoire total de 161 km2 sous le nom de « Bruxelles-Capitale ».\n\nÀ l""extérieur, la zone d""influence urbaine compte, en sus de la population des dix-neuf communes, environ 1 958 157 habitants[réf. nécessaire] dans des limites qui ne sont pas formellement établies. Cette zone, définie comme fournissant une forte proportion de travailleurs qui migrent quotidiennement vers la capitale, s""étend en majorité au nord, à l""est et à l""ouest sur la province du Brabant flamand et comprend donc deux régions (Bruxelles-Capitale et la région flamande) et englobe deux communautés, la (française et la flamande). Au sud, une partie de la province du Brabant wallon est, de fait, englobée dans la zone d""influence bruxelloise avec les communes de Waterloo et de Braine-l""Alleud qui fournissent un fort contingent de travailleurs migrants à destination de Bruxelles.\n\nUn projet gouvernemental de création d""une zone dont la population et les limites doivent être définies avec précision a été déposé en 2010 sous le nom de « Métropole de Bruxelles ».\n\nC""est à Bruxelles-Capitale que siègent la plupart des institutions de l’Union européenne, ainsi que de nombreuses organisations internationales, dont l’OTAN. Par extension, on dit donc « Bruxelles » pour désigner, en général et par métonymie, les institutions européennes (le plus souvent, la Commission européenne). Par la présence de celles-ci, Bruxelles est souvent dite « capitale de l""Europe ». Ce statut, (partagé, et même parfois contesté par Luxembourg et surtout Strasbourg qui, outre le siège du Parlement européen, accueille aussi celui du Conseil de l""Europe) reste cependant officieux, l""Union européenne n""ayant pas officiellement de capitale.\n\nLes deux langues officielles de la Région de Bruxelles-Capitale sont le français et le néerlandais (avec forte majorité francophone4 cependant, les communes de l""agglomération de Bruxelles situées sur le territoire de la Région flamande sont, elles, officiellement néerlandophones, bien qu""il existe des majorités ou de fortes minorités de personnes parlant le français dans ces communes. C""est ce que l""on appelle les « communes à facilités ». En plus, vu la position centrale de Bruxelles et le nombre d""institutions internationales qu""elle abrite, l""anglais est de plus en plus utilisé comme langue véhiculaire.\n  ", "2014-08-02", "2014-08-04", 1),
(3, "Troisième jour : on passe par Anvers", "D""un petit village, Anvers est devenue, lors de la guerre de Quatre-Vingts Ans, la plus grande ville des Dix-Sept Provinces et une des plus grandes villes d""Europe, avec une population de 150 000 habitants2.Toute l’histoire d’Anvers a été déterminée par sa situation le long de l’Escaut. Sa véritable création ne remonte qu’aux alentours de l’an 900, lorsque les villageois s’établirent sur l’Aanwerp, terrain surélevé qui donna son nom à Anvers. En 970, Anvers devient poste frontière de l’Empire germanique, on y construit des fortifications en bois, remplacées plus tard par un château fort en pierre (le Steen). L’extension de la ville se poursuit par le sud, saint Norbert fait construire au XIIe siècle l’abbaye Saint-Michel. Par la suite, les chanoines de la petite église se déplacent vers le nord et fondent une nouvelle paroisse, avec au centre l’église Notre-Dame, ancêtre de la cathédrale actuelle. Dans les années qui suivirent la ville continua à se développer en vagues concentriques créant une succession de remparts que l’on devine encore dans la topographie de la ville.La ville d""Anvers obtint en 1312 une charte qui fit d""elle une commune démocratique. Au siècle suivant, la ville et son port prennent leur essor, car la grande rivale Bruges est condamnée par l""ensablement du bras de mer qui menait à Damme, l""avant-port de Bruges.On considère que la première bourse des valeurs anversoise (au sens moderne), a été fondée en 1531, animée par des négociants qui relient l""Inde à l""Amérique3. La première bourse de commerce d""Europe y fut aussi fondée en 1460.La Feitoria de Flandres, fondée en 1508 à Anvers4, était la principale tête de pont de l""empire commercial portugais, la Casa da Guiné, devenue en 1503 Casa da India, à l""intersection des colonies du Brésil de l""Afrique et des Indes.Au milieu du XVIe siècle, les Pays-Bas du sud profitèrent du rôle dominant de la ville, qui était alors une des plus grandes villes d""Europe et qui resta pendant longtemps un très grand centre culturel et artistique. Dans la deuxième partie du siècle Anvers fut le théâtre d’une lutte politico-religieuse entre le Nord protestant et la très catholique Espagne. Devant la dureté de la répression espagnole contre les protestants, avec les menaces qui en résultaient contre les vieilles franchises accordées jadis par des chartes, les nobles modérés présentèrent un compromis à la gouvernante des Pays-Bas siégeant à Bruxelles. Devant le mépris d""un conseiller de la gouvernante, qui traita les pétitionnaires de gueux, ceux-ci tinrent, par défi, un banquet connu sous le nom de banquet des gueux. Ce fut le début de la guerre de Quatre-Vingts Ans -qui éclata à la suite de l""exécution capitale à Bruxelles des comtes d""Egmont et de Horne qui avaient pris la tête de l""opposition de la noblesse et du peuple aux excès du pouvoir de Philippe II d""Espagne.Entrainée dans la guerre, la ville a connu plusieurs épisodes dramatiques. Entre le 4 novembre et le 7 novembre 1576, une partie des soldats espagnols mutinés ont mis à sac la ville. Au cours de cet épisode, sont morts plusieurs milliers d""habitants et ce drame a été l""élément déclenchant du soulèvement des provinces du sud des Pays-Bas espagnols qui restaient encore loyales à la couronne espagnole. En janvier 1583, François d""Anjou ordonna à 4 000 de ses soldats d""attaquer Anvers; à défaut d""une garnison de défenseurs, les citoyens d""Anvers repoussèrent l""attaque, mettant en déroute l""armée française.Carte d""Anvers (Antwerp) en 1740En 1585, la ville tombe aux mains de Philippe II à l""issue d""un siège de treize mois, la ville étant défendue par Philippe de Marnix de Sainte Aldegonde. En conséquence, les Provinces-Unies du nord ferment l’accès à l’Escaut dans le but de priver les Espagnols des avantages de leur victoire, ce qui a naturellement des conséquences catastrophiques sur l’économie de la ville. Abandonnée par les protestants, que Philippe II visait plus particulièrement et qui constituaient une très large part de l’élite commerciale et intellectuelle, Anvers voit sa population se réduire de moitié en moins de 20 ans5.Lancement du Friedland le 2 mai 1811 à Anvers, en présence de Napoléon.Puis, jusqu’à la moitié du XVIIe siècle, elle profite de la présence d’artistes tels que Rubens, Van Dyck, Jordaens et Teniers ou encore les familles de sculpteurs Quellin et Verbrugghen ainsi que plusieurs imprimeurs et célèbres facteurs de clavecins anversois.À l""issue de la guerre, la royauté des Habsbourg espagnols sur les Pays-Bas du Sud finit par être transférée, par accord féodal, aux Habsbourg d""Autriche. Une opposition à ceux-ci se développe, comme sous les Habsbourgs d""Espagne. Il en résulte finalement un soulèvement en 1787-1789 et les Autrichiens sont battus. L""État indépendant des États belgiques unis est proclamé à Bruxelles et Anvers y participe. Mais le retour en force des Autrichiens en 1790 et l""attaque des armées républicaines de la révolution française met fin à cette brève indépendance en 1792.Anvers est occupée une première fois par les armées de la Révolution le 30 septembre 17926. L’Escaut est rouvert (1795) et l’ébauche d’un port moderne voit le jour, toutefois l’embargo anglais ainsi que les guerres napoléoniennes empêchent toute évolution et la ville subit de nombreux pillages et destructions.Après la défaite de Napoléon à Waterloo (1815)7 a lieu une brève réunification avec les Pays-Bas septentrionaux et une période de développement, qui s’achèvera avec la Révolution belge (1830) et une nouvelle fermeture de l’Escaut. Il faudra attendre 1863 pour que la navigation soit définitivement libre après le rachat forfaitaire du droit de navigation par le ministre Charles Rogier.La croissance d’Anvers reprit et se développa à la fin du XIXe siècle avec la colonisation du Congo. Le Congo fournit en effet quantité de matières premières (caoutchouc, ivoire, minerais) et stimule le trafic portuaire ainsi que les activités industrielles.En 1914, la ville subit le siège de l""armée allemande pendant trois semaines à compter du début de septembre. L""armée belge, sous les ordres directs du roi Albert Ier, s""est repliée après les combats des forts de Liège en août 1914. Les troupes belges se répartissent entre les forts des deux lignes concentriques de fortifications dont la ville est entourée depuis la fin du XIXe siècle. C""est de cette position qu""elles exécutent deux sorties qui repoussent chaque fois les troupes allemandes. Mais, finalement, le 8 octobre, Anvers verra entrer les soldats allemands après la retraite belge vers la côte et l""Yser.En 1940, la ville est occupée par l""armée allemande jusqu""en septembre 1944, subissant, en 1943, les bombardements américains qui visent les usines de General Motors qui travaillent pour l""armée allemande, avec des pertes dans la population civile. En avril 1941, une émeute antisémite ébranle le quartier de la gare centrale. En septembre 1944, le mouvement de résistance de l""Armée Blanche (de Witte Brigade) parvient à localiser les sabotages allemands dans la ville et les installations portuaires et guide l""avant-garde canadienne qui libère la ville et sauve le port de la destruction. Cela s""avère vite de première importance pour le ravitaillement des armées alliées. Aussi, les Allemands lancent-ils V1 et V2, des missiles qui pleuvent sur la ville, d""octobre 1944 à janvier 1945, visant le port qui travaille jour et nuit à l""approvisionnement des armées alliées. Il en résulte de nombreuses victimes civiles.Au début du XXIe siècle, le port d""Anvers est le deuxième port d""Europe, après Rotterdam. La réputation des diamantaires anversois fait de cette ville la première place mondiale de taille et de négociation du diamant.  ", "2014-08-04", "2014-08-05", 1),
(4, "Et on termine à Amsterdam", "Amsterdam est la commune la plus peuplée et la capitale du royaume des Pays-Bas, bien que le siège du gouvernement, ainsi que la plupart des institutions diplomatiques du pays se trouvent à La Haye. Sur la base des chiffres 2013, la municipalité d""Amsterdam compte près de 800 000 habitants appelés Amstellodamois, Amstellodamiens ou Amsterdamais, au cœur de la région d""Amsterdam qui regroupe environ 1 350 000 habitants. L""aire urbaine, qui rassemble plus de 2 300 000 résidants3,4 fait elle-même partie d""une conurbation appelée Randstad Holland qui compte 7 100 000 habitants. Elle est située dans la province de Hollande-Septentrionale.Le nom de la commune vient de l""ancien nom néerlandais Amstelredamme évoquant les origines de la ville : la digue (Dam) sur l""Amstel. Ancien petit village de pêcheurs au XIIe siècle, la ville a connu une très forte croissance au Moyen Âge au point de devenir l""un des principaux ports du monde durant le Siècle d""or néerlandais. Le quartier de De Wallen est la partie la plus ancienne de la ville, qui s""est développé autour d""un réseau concentrique de canaux semi-circulaires reliés par des canaux perpendiculaires, formant une « toile d""araignée ». Au centre de la vieille ville, on trouve sur la place principale du Dam le Palais royal d""Amsterdam, construit au XVIIe siècle, symbole de l""importance historique de la ville. Guillaume Ier des Pays-Bas en fit un palais royal en 1815. Depuis juillet 2010, le Grachtengordel (délimité par le Herengracht, le Keizersgracht, et le Prinsengracht) figure sur la liste du Patrimoine mondial de l""UNESCO.  ", "2014-08-05", "2014-08-05", 1),
(5, "Un passage par Hambourg", "Hambourg (en allemand Hamburg, en bas allemand Hamborg ['ha?mb???]) est une ville et un des 16 Länder composant l""Allemagne. Située au nord du pays, près de l""embouchure de l""Elbe et à proximité de la mer du Nord, Hambourg est la deuxième plus grande ville d""Allemagne (après Berlin) et le premier port du pays.La ville s""étend sur 755 km2 et compte 1,8 million d""habitants ; l""agglomération 3,5 millions. Hambourg était membre fondateur de la ligue hanséatique. Cette ancienne appartenance est encore aujourd""hui revendiquée par la ville, comme élément caractéristique de son identité. C""est ainsi que le code de la ville sur les plaques d""immatriculation est HH, qui signifie Hansestadt Hamburg et que le nom officiel de la ville est Freie und Hansestadt Hamburg (ville libre et hanséatique de Hambourg).C""est également une ville au tourisme actif, ce qu""elle doit notamment à son architecture, à son réseau de canaux et aux abords luxuriants de l""Alster, rivière formant un lac artificiel au cœur de la ville. Elle présente de très nombreux théâtres et musées, notamment la célèbre Kunsthalle ou le jeune Bucerius Kunst Forum, qui accueille des expositions temporaires. Hambourg dispose d""un quartier entier dédié à la vie nocturne : Sankt Pauli et sa Reeperbahn.  ", "2014-08-05", "2014-08-06", 1),
(6, "Un arret à Brème", "Brême semble être d""installation ancienne. Un acte proclamant la fondation de la ville en 788 est désormais reconnu comme un faux, ce qui fait que la date réelle de fondation de la ville reste inconnue. Au VIIIe siècle, les troupes de Charlemagne avancent jusqu""à la Weser afin de christianiser les tribus qui y sont installées. Le viking suédois Riourik, à qui des terres avaient été données en Frise, pille la ville en 859 et, en conséquence de l""ensemble de ses offenses, est expulsé par Louis II. Brême devient un évêché. Au cours des siècles, les évêques de Brême conduisent la christianisation de la Scandinavie.\n\nAu XIIe siècle, la puissance des évêques est concurrencée par celle de Henri le Lion. Le duc sort vainqueur et devient le suzerain de la ville, ce qui conduit à un gouvernement civil et à une perte du pouvoir clérical ; Brême devient une ville marchande, ses navires dominant les parties méridionales de la mer du Nord. Cette domination prend fin quand la ligue hanséatique, à l""origine une alliance marchande de la mer Baltique seulement, prend position en mer du Nord. Au début du XIVe siècle, les navires de Brême agissent en pirate en abordant les nefs de la Hanse. En 1358, afin d""éviter une guerre ouverte, les conseillers municipaux de Brême se rendent au conseil de la ligue hanséatique à Lübeck et acceptent de devenir membre de la Ligue.\n\nBrême reste un membre réticent de la Ligue hanséatique, exigeant le soutien de ses guerres contre les chefs de clan frisons qui règnent sur la région autour de la bouche de la Weser, mais rejoignant rarement les campagnes en mer Baltique. En 1425, le conflit franchit un nouveau palier quand les citoyens brûlent les documents hanséatiques sur la place du marché. Brême est expulsé de la ligue en 1427, ce qui ne reste pas sans conséquence : la perte soudaine de puissance mène à des réclamations territoriales des états voisins (par exemple l""Oldenbourg) et à des pertes territoriales significatives.\n\nEn 1620, le premier port artificiel d""Allemagne est construit à Vegesack.\n\nEn 1827, en raison de l""ensablement progressif de la Weser, la ville fait l""acquisition de domaines à l""embouchure du fleuve, pour en faire son port avancé : Bremerhaven. 1857 voit la création de la Lloyds d""Allemagne du Nord, une importante compagnie maritime. Dans les années 1870-1880, des travaux sur la Weser améliorent la navigabilité du fleuve.\n\nL""industrialisation et le développement du commerce (création d""une bourse du coton en 1872) profitent à la ville. La population, d""environ 35 000 habitants en 1812, dépasse les 100 000 en 1875 et atteint 250 000 habitants en 1911.\n\nEn 1867, Brême devient membre de la Confédération d""Allemagne du Nord, puis en 1871 de l""Empire allemand qui vient d""être créé. Mais elle conserve une indépendance douanière, ne rejoignant qu""en 1888 l""Union douanière allemande. Le 6 mars 1901, une tentative d""assassinat a lieu à Brême contre l""empereur Guillaume II.\n\nAprès la Seconde Guerre mondiale, pendant laquelle la ville est bombardée de juin 1942 à mars 1945, Brême est d""abord occupé par les forces britanniques, qui ne tardent pas à l""évacuer suite au protocole du 14 novembre 1944, au profit des Américains qui souhaitent disposer d""un port sur la mer du Nord et la placent donc dans leur zone d""occupation. Cette situation permet d""éviter l""absorption de Brême au sein du Land de Basse-Saxe qui se trouve alors en zone d""occupation britannique, et débouche en 1947 sur l""indépendance de la ville en tant que land autonome au sein de l""Allemagne de l""Ouest ; le port de Bremerhaven lui est également attribué, en dépit de l""absence de continuité territoriale.  ", "2014-08-06", "2014-08-07", 1),
(7, "Pour se poser à Copenhague", "Copenhague (prononcé [k?.p?.nag ]), en danois København, est la capitale et la plus grande ville du Danemark. La commune de Copenhague (Københavns Kommune) compte 569 557 habitants en 2014, et son agglomération, le Grand Copenhague, en compte environ 1,2 million. Le nom de Copenhague est généralement donné à l""ensemble du comté de Copenhague, qui regroupe quant à lui 1 950 430 habitants. Située sur la côte orientale de l""île de Seeland, face au détroit d""Øresund qui sépare le Danemark de la Suède voisine, Copenhague est reliée à Malmö par le pont de l""""Øresund. Son nom danois, København (prononcé [k?øb?m?'h????n ] Prononciation du titre dans sa version originale Écouter), déformation de Købmandshavn (« le port des commerçants »), rappelle sa position stratégique à l""entrée de la mer Baltique.Fondée au Xe siècle par les Vikings, Copenhague est à l""origine un village de pêcheurs, fortifié en 1167. La ville devient la capitale du Royaume de Danemark dès le début du XVe siècle. Au cours du XVIIe siècle, sous le règne du roi Christian IV, elle devient une des plus grandes villes d""Europe du Nord, renforçant son statut de capitale. Après avoir connu les ravages de la peste et de nombreux incendies au XVIIIe siècle, Copenhague voit se construire la vieille ville actuelle, et notamment le quartier de Frederiksstaden et des institutions comme le Théâtre royal danois ou l""Académie royale des beaux-arts. En partie détruite par les troupes de l""amiral Nelson lors de la bataille de Copenhague (1801), la ville est reconstruite dans un style néoclassique durant l""Âge d""or danois. L""urbanisme de Copenhague est rénové à la suite de la Seconde Guerre mondiale par le plan Finger (en), qui organise le développement industriel et urbain autour des cinq voies ferrées partant du centre-ville (Indre By).Copenhague est le siège du parlement national (le Folketing), du gouvernement et de la monarchie danoise ; plusieurs institutions se trouvent dans le château de Christiansborg. Elle est également le cœur industriel et financier du pays, accueillant les sièges sociaux des plus grandes entreprises danoises, comme Maersk, Novo Nordisk et la brasserie Carlsberg. Le niveau de vie y est très élevé et le PIB par habitant est parmi les plus importants au monde. Outre un dynamisme industriel dans les services et la pharmaceutique, l""économie de Copenhague est marquée par le développement des cleantechs, en lien avec l""objectif municipal de parvenir à la neutralité carbone d""ici 2025. Les transports en commun et l""usage du vélo sont très fortement développés.Le paysage urbain de la ville est caractérisé par ses nombreux ponts, parcs et fronts de mer. Le port de Nyhavn est célèbre pour ses maisons en bois aux façades colorées. Christiania est une communauté intentionnelle autogérée, accueillant une population d""artistes, de hippies et des mouvements alternatifs. Dans le centre historique se trouvent le quartier branché de Vesterbro et le quartier latin, ainsi que le château de Rosenborg, ancienne résidence royale. A l""est, sur la côte, se trouve la citadelle du Kastellet et la statue de La Petite Sirène. Enfin, Copenhague compte deux vastes jardins aujourd""hui transformés en parc d""attractions : le Bakken et les Jardins de Tivoli.  ", "2014-08-07", "2014-08-08", 1),
(8, "Fin du voyage à Oslo", "Oslo est la capitale d""État de la Norvège. Le toponyme se prononce ???'l? dans le dialecte osloïte. La ville s""est appelée Christiania de 1624 à 1924, selon l""ancienne graphie latine héritée du danois, ou communément Kristiania en dano-norvégien. Le 1er janvier 1925, elle a officiellement repris le nom d""un modeste faubourg, site historique de la première ville, fondée au fond de l""Oslofjord par Harald III et promue capitale royale sous Haakon V.Alors que la ville d""Oslo compte une population de près de 600 000 habitants, dont 27 % d""immigrants1, la région d""Oslo compte 1 403 268 habitants en 2010. La ville, qui s""étend sur 450 km2, est restée en symbiose avec la nature par ses larges espaces verts et ses pistes de ski, bien que cet important nœud de communication ferroviaire et portuaire soit desservi par un réseau routier et autoroutier et de nombreux trains de banlieue. La capitale regroupe 11,5 % de la population norvégienne et constitue un fylkeskommune (district communal), regroupant quinze bydeler (subdivisions), s""étendant largement autour du fjord d""Oslo et vers le nord-est. Il n""y a pas de gentilé d""usage générique pour les habitants et originaires d""Oslo (sur le modèle de Tokyo, on parle parfois d""Osloïtes).  ", "2014-08-08", "2014-08-10", 1);

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
`id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `format` varchar(45) NOT NULL,
  `id_etape` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `media`
--

INSERT INTO `media` (`id`, `url`, `format`, `id_etape`) VALUES
(1, "public/images/media/Lens.jpg", "jpg", 1),
(2, "public/images/media/Bruxelles1.jpg", "jpg", 2),
(3, "public/images/media/Bruxelles2.jpg", "jpg", 2),
(4, "public/images/media/Anvers1.jpg", "jpg", 3),
(5, "public/images/media/Anvers2.jpg", "jpg", 3),
(6, "public/images/media/Amsterdam1.jpg", "jpg", 4),
(7, "public/images/media/Amsterdam2.jpg", "jpg", 4),
(8, "public/images/media/Amsterdam3.jpg", "jpg", 4),
(9, "public/images/media/Hambourg.jpg", "jpg", 5),
(10, "public/images/media/Breme.jpg", "jpg", 6),
(11, "public/images/media/Copenhague.jpg", "jpg", 7),
(12, "public/images/media/Oslo.jpg", "jpg", 8);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
`id` int(11) NOT NULL COMMENT "auto incrementing id of each user, unique index",
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT "user""s name, unique",
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT "user""s password in salted and hashed format",
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT "user""s email, unique",
  `user_active` tinyint(1) NOT NULL DEFAULT "0" COMMENT "user""s activation status",
  `user_account_type` tinyint(1) NOT NULL DEFAULT "1" COMMENT "user""s account type (basic, premium, etc)",
  `user_rememberme_token` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT "user""s remember-me cookie token",
  `user_creation_timestamp` bigint(20) DEFAULT NULL COMMENT "timestamp of the creation of user""s account",
  `user_last_login_timestamp` bigint(20) DEFAULT NULL COMMENT "timestamp of user""s last login",
  `user_failed_logins` tinyint(1) NOT NULL DEFAULT "0" COMMENT "user""s failed login attempts",
  `user_last_failed_login` int(10) DEFAULT NULL COMMENT "unix timestamp of last failed login attempt",
  `user_activation_hash` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT "user""s email verification hash string",
  `user_password_reset_hash` char(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT "user""s password reset code",
  `user_password_reset_timestamp` bigint(20) DEFAULT NULL COMMENT "timestamp of the password reset request"
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT="user data";

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_password_hash`, `user_email`, `user_active`, `user_account_type`, `user_rememberme_token`, `user_creation_timestamp`, `user_last_login_timestamp`, `user_failed_logins`, `user_last_failed_login`, `user_activation_hash`, `user_password_reset_hash`, `user_password_reset_timestamp`) VALUES
(1, "wikip", "$2y$10$yOQRt86kNwos816KuKYvIeJiTkZqOhbrLRyz6wSR.T7WExjTFW2wi", "wikip@worldwide.net", 1, 1, NULL, 1418629670, NULL, 0, NULL, NULL, NULL, NULL),
(2, "machin", "$2y$10$CqsDzaigBB57h6urbwC1kOlHL37ZivHvnJ5obX4AK..6C9GWQWd2G", "machin@chose.com", 1, 1, NULL, 1418629698, NULL, 0, NULL, NULL, NULL, NULL),
(3, "gilles", "$2y$10$zQY53gEMzVG9phM6OILv7OSoYN7ZI9RtlaqU59pj6ymQchVoNxU2i", "gilles@toto.fr", 1, 1, NULL, 1418629711, NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `voyage`
--

CREATE TABLE `voyage` (
`id` int(11) NOT NULL,
  `titre` varchar(45) NOT NULL,
  `description` text,
  `en_ligne` tinyint(1) NOT NULL DEFAULT "0",
  `id_media_titre` int(11) DEFAULT NULL,
  `id_auteur` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `voyage`
--

INSERT INTO `voyage` (`id`, `titre`, `description`, `en_ligne`, `id_media_titre`, `id_auteur`) VALUES
(1, "Les grandes villes du nord de l Europe", "Quelques unes des plus grandes villes du nord de l Europe.    Jadore voyager, mais j ai un petit soucis, je décrit beaucoup trop les villes que je visite.<br />    Mais que vous, je ne peux m en empêcher. Et quand j essaie de faire court, il y a toujours quelqu un pour    rajouter des détails....", 1, NULL, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
 ADD PRIMARY KEY (`id`), ADD KEY `FK_Commentaire_personne_idx` (`id_personne`), ADD KEY `FK_commentaire_voyage_idx` (`id_voyage`);

--
-- Index pour la table `etape`
--
ALTER TABLE `etape`
 ADD PRIMARY KEY (`id`), ADD KEY `FK_etape_voyage_idx` (`id_voyage`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
 ADD PRIMARY KEY (`id`), ADD KEY `FK_media_etape_idx` (`id_etape`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_name` (`user_name`), ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Index pour la table `voyage`
--
ALTER TABLE `voyage`
 ADD PRIMARY KEY (`id`), ADD KEY `FK_voyage_utilisateur_idx` (`id_auteur`), ADD KEY `FK_voyage_media_titre_idx` (`id_media_titre`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `etape`
--
ALTER TABLE `etape`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT "auto incrementing id of each user, unique index",AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `voyage`
--
ALTER TABLE `voyage`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
ADD CONSTRAINT `FK_Commentaire_personne` FOREIGN KEY (`id_personne`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_commentaire_voyage` FOREIGN KEY (`id_voyage`) REFERENCES `voyage` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `etape`
--
ALTER TABLE `etape`
ADD CONSTRAINT `FK_etape_voyage` FOREIGN KEY (`id_voyage`) REFERENCES `voyage` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
ADD CONSTRAINT `FK_media_etape` FOREIGN KEY (`id_etape`) REFERENCES `etape` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `voyage`
--
ALTER TABLE `voyage`
ADD CONSTRAINT `FK_voyage_media_titre` FOREIGN KEY (`id_media_titre`) REFERENCES `media` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_voyage_utilisateur` FOREIGN KEY (`id_auteur`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;