SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de donn�es :  `marathon2014`
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
(6, 3, 1, "Quel p�riple....\r\n", "2014-12-15 07:23:06", "3"),
(7, 2, 1, "Moi, je pr�f�re les voyages dans les pays chauds....", "2014-12-15 07:24:16", "2");

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
(1, "Point de d�part : la ville de Lens", "Lens est une commune fran�aise, chef-lieu d�arrondissement du d�partement du Pas-de-Calais en r�gion Nord-Pas-de-Calais. Ses habitants sont appel�s les Lensois. Elle est au centre de l""aire urbaine de Douai-Lens, la quinzi�me aire urbaine de France, comprenant 801 communes, avec 542 918 habitants en 2010. Avec Lille et les autres villes de l""ancien bassin minier du Nord-Pas-de-Calais, elle participe aussi � un ensemble m�tropolitain de pr�s de 3,8 millions d""habitants, appel� � aire m�tropolitaine de Lille �.\n\nLa ville est surtout connue pour avoir �t� l�un des principaux centres urbains du bassin minier du Nord-Pas-de-Calais, avec la Compagnie des mines de Lens, pour son �quipe de football, le Racing Club de Lens, et plus r�cemment pour le mus�e du Louvre Lens ouvert en d�cembre 2012.\n\nLens comprend de nombreux �quipements d""enseignement et de sant�. C""est aujourd""hui une ville universitaire : on y trouve le p�le science, technologie et tertiaire de l""universit� d""Artois, une �cole d""ing�nieurs, l""Institut de g�nie informatique et industriel (IG2I) et plusieurs IUT. La Facult� Jean-Perrin, install�e dans les anciens bureaux des mines de Lens depuis le d�but des ann�es 1990, est le p�le scientifique de l""universit� d""Artois. On y �tudie la biologie, la biochimie, la physique, la chimie, les math�matiques et l""informatique.\n\nLa ville est �galement dot�e d""un tribunal d""instance et d""un th��tre.\n  ", "2014-08-01", "2014-08-02", 1),
(2, "Le lendemain : Bruxelles", "C""est une ville (et donc une commune), nomm�e simplement ville de Bruxelles, peupl�e, au 1er janvier 2013, par 168 230 habitants et entour�e, dans un b�ti unique, par dix-huit autres communes �troitement imbriqu�es entre elles pour former l""une des trois r�gions de Belgique, la r�gion de Bruxelles-Capitale. La population totale, qui est (en 2012) de 1 168 789 habitants, dispose d""un parlement et d""un gouvernement qui exercent leur tutelle sur les conseils communaux et les bourgmestres de ces dix-neuf communes dont l""ensemble s""�tend sur un territoire total de 161 km2 sous le nom de � Bruxelles-Capitale �.\n\n� l""ext�rieur, la zone d""influence urbaine compte, en sus de la population des dix-neuf communes, environ 1 958 157 habitants[r�f. n�cessaire] dans des limites qui ne sont pas formellement �tablies. Cette zone, d�finie comme fournissant une forte proportion de travailleurs qui migrent quotidiennement vers la capitale, s""�tend en majorit� au nord, � l""est et � l""ouest sur la province du Brabant flamand et comprend donc deux r�gions (Bruxelles-Capitale et la r�gion flamande) et englobe deux communaut�s, la (fran�aise et la flamande). Au sud, une partie de la province du Brabant wallon est, de fait, englob�e dans la zone d""influence bruxelloise avec les communes de Waterloo et de Braine-l""Alleud qui fournissent un fort contingent de travailleurs migrants � destination de Bruxelles.\n\nUn projet gouvernemental de cr�ation d""une zone dont la population et les limites doivent �tre d�finies avec pr�cision a �t� d�pos� en 2010 sous le nom de � M�tropole de Bruxelles �.\n\nC""est � Bruxelles-Capitale que si�gent la plupart des institutions de l�Union europ�enne, ainsi que de nombreuses organisations internationales, dont l�OTAN. Par extension, on dit donc � Bruxelles � pour d�signer, en g�n�ral et par m�tonymie, les institutions europ�ennes (le plus souvent, la Commission europ�enne). Par la pr�sence de celles-ci, Bruxelles est souvent dite � capitale de l""Europe �. Ce statut, (partag�, et m�me parfois contest� par Luxembourg et surtout Strasbourg qui, outre le si�ge du Parlement europ�en, accueille aussi celui du Conseil de l""Europe) reste cependant officieux, l""Union europ�enne n""ayant pas officiellement de capitale.\n\nLes deux langues officielles de la R�gion de Bruxelles-Capitale sont le fran�ais et le n�erlandais (avec forte majorit� francophone4 cependant, les communes de l""agglom�ration de Bruxelles situ�es sur le territoire de la R�gion flamande sont, elles, officiellement n�erlandophones, bien qu""il existe des majorit�s ou de fortes minorit�s de personnes parlant le fran�ais dans ces communes. C""est ce que l""on appelle les � communes � facilit�s �. En plus, vu la position centrale de Bruxelles et le nombre d""institutions internationales qu""elle abrite, l""anglais est de plus en plus utilis� comme langue v�hiculaire.\n  ", "2014-08-02", "2014-08-04", 1),
(3, "Troisi�me jour : on passe par Anvers", "D""un petit village, Anvers est devenue, lors de la guerre de Quatre-Vingts Ans, la plus grande ville des Dix-Sept Provinces et une des plus grandes villes d""Europe, avec une population de 150 000 habitants2.Toute l�histoire d�Anvers a �t� d�termin�e par sa situation le long de l�Escaut. Sa v�ritable cr�ation ne remonte qu�aux alentours de l�an 900, lorsque les villageois s��tablirent sur l�Aanwerp, terrain sur�lev� qui donna son nom � Anvers. En 970, Anvers devient poste fronti�re de l�Empire germanique, on y construit des fortifications en bois, remplac�es plus tard par un ch�teau fort en pierre (le Steen). L�extension de la ville se poursuit par le sud, saint Norbert fait construire au XIIe si�cle l�abbaye Saint-Michel. Par la suite, les chanoines de la petite �glise se d�placent vers le nord et fondent une nouvelle paroisse, avec au centre l��glise Notre-Dame, anc�tre de la cath�drale actuelle. Dans les ann�es qui suivirent la ville continua � se d�velopper en vagues concentriques cr�ant une succession de remparts que l�on devine encore dans la topographie de la ville.La ville d""Anvers obtint en 1312 une charte qui fit d""elle une commune d�mocratique. Au si�cle suivant, la ville et son port prennent leur essor, car la grande rivale Bruges est condamn�e par l""ensablement du bras de mer qui menait � Damme, l""avant-port de Bruges.On consid�re que la premi�re bourse des valeurs anversoise (au sens moderne), a �t� fond�e en 1531, anim�e par des n�gociants qui relient l""Inde � l""Am�rique3. La premi�re bourse de commerce d""Europe y fut aussi fond�e en 1460.La Feitoria de Flandres, fond�e en 1508 � Anvers4, �tait la principale t�te de pont de l""empire commercial portugais, la Casa da Guin�, devenue en 1503 Casa da India, � l""intersection des colonies du Br�sil de l""Afrique et des Indes.Au milieu du XVIe si�cle, les Pays-Bas du sud profit�rent du r�le dominant de la ville, qui �tait alors une des plus grandes villes d""Europe et qui resta pendant longtemps un tr�s grand centre culturel et artistique. Dans la deuxi�me partie du si�cle Anvers fut le th��tre d�une lutte politico-religieuse entre le Nord protestant et la tr�s catholique Espagne. Devant la duret� de la r�pression espagnole contre les protestants, avec les menaces qui en r�sultaient contre les vieilles franchises accord�es jadis par des chartes, les nobles mod�r�s pr�sent�rent un compromis � la gouvernante des Pays-Bas si�geant � Bruxelles. Devant le m�pris d""un conseiller de la gouvernante, qui traita les p�titionnaires de gueux, ceux-ci tinrent, par d�fi, un banquet connu sous le nom de banquet des gueux. Ce fut le d�but de la guerre de Quatre-Vingts Ans -qui �clata � la suite de l""ex�cution capitale � Bruxelles des comtes d""Egmont et de Horne qui avaient pris la t�te de l""opposition de la noblesse et du peuple aux exc�s du pouvoir de Philippe II d""Espagne.Entrain�e dans la guerre, la ville a connu plusieurs �pisodes dramatiques. Entre le 4 novembre et le 7 novembre 1576, une partie des soldats espagnols mutin�s ont mis � sac la ville. Au cours de cet �pisode, sont morts plusieurs milliers d""habitants et ce drame a �t� l""�l�ment d�clenchant du soul�vement des provinces du sud des Pays-Bas espagnols qui restaient encore loyales � la couronne espagnole. En janvier 1583, Fran�ois d""Anjou ordonna � 4 000 de ses soldats d""attaquer Anvers; � d�faut d""une garnison de d�fenseurs, les citoyens d""Anvers repouss�rent l""attaque, mettant en d�route l""arm�e fran�aise.Carte d""Anvers (Antwerp) en 1740En 1585, la ville tombe aux mains de Philippe II � l""issue d""un si�ge de treize mois, la ville �tant d�fendue par Philippe de Marnix de Sainte Aldegonde. En cons�quence, les Provinces-Unies du nord ferment l�acc�s � l�Escaut dans le but de priver les Espagnols des avantages de leur victoire, ce qui a naturellement des cons�quences catastrophiques sur l��conomie de la ville. Abandonn�e par les protestants, que Philippe II visait plus particuli�rement et qui constituaient une tr�s large part de l��lite commerciale et intellectuelle, Anvers voit sa population se r�duire de moiti� en moins de 20 ans5.Lancement du Friedland le 2 mai 1811 � Anvers, en pr�sence de Napol�on.Puis, jusqu�� la moiti� du XVIIe si�cle, elle profite de la pr�sence d�artistes tels que Rubens, Van Dyck, Jordaens et Teniers ou encore les familles de sculpteurs Quellin et Verbrugghen ainsi que plusieurs imprimeurs et c�l�bres facteurs de clavecins anversois.� l""issue de la guerre, la royaut� des Habsbourg espagnols sur les Pays-Bas du Sud finit par �tre transf�r�e, par accord f�odal, aux Habsbourg d""Autriche. Une opposition � ceux-ci se d�veloppe, comme sous les Habsbourgs d""Espagne. Il en r�sulte finalement un soul�vement en 1787-1789 et les Autrichiens sont battus. L""�tat ind�pendant des �tats belgiques unis est proclam� � Bruxelles et Anvers y participe. Mais le retour en force des Autrichiens en 1790 et l""attaque des arm�es r�publicaines de la r�volution fran�aise met fin � cette br�ve ind�pendance en 1792.Anvers est occup�e une premi�re fois par les arm�es de la R�volution le 30 septembre 17926. L�Escaut est rouvert (1795) et l��bauche d�un port moderne voit le jour, toutefois l�embargo anglais ainsi que les guerres napol�oniennes emp�chent toute �volution et la ville subit de nombreux pillages et destructions.Apr�s la d�faite de Napol�on � Waterloo (1815)7 a lieu une br�ve r�unification avec les Pays-Bas septentrionaux et une p�riode de d�veloppement, qui s�ach�vera avec la R�volution belge (1830) et une nouvelle fermeture de l�Escaut. Il faudra attendre 1863 pour que la navigation soit d�finitivement libre apr�s le rachat forfaitaire du droit de navigation par le ministre Charles Rogier.La croissance d�Anvers reprit et se d�veloppa � la fin du XIXe si�cle avec la colonisation du Congo. Le Congo fournit en effet quantit� de mati�res premi�res (caoutchouc, ivoire, minerais) et stimule le trafic portuaire ainsi que les activit�s industrielles.En 1914, la ville subit le si�ge de l""arm�e allemande pendant trois semaines � compter du d�but de septembre. L""arm�e belge, sous les ordres directs du roi Albert Ier, s""est repli�e apr�s les combats des forts de Li�ge en ao�t 1914. Les troupes belges se r�partissent entre les forts des deux lignes concentriques de fortifications dont la ville est entour�e depuis la fin du XIXe si�cle. C""est de cette position qu""elles ex�cutent deux sorties qui repoussent chaque fois les troupes allemandes. Mais, finalement, le 8 octobre, Anvers verra entrer les soldats allemands apr�s la retraite belge vers la c�te et l""Yser.En 1940, la ville est occup�e par l""arm�e allemande jusqu""en septembre 1944, subissant, en 1943, les bombardements am�ricains qui visent les usines de General Motors qui travaillent pour l""arm�e allemande, avec des pertes dans la population civile. En avril 1941, une �meute antis�mite �branle le quartier de la gare centrale. En septembre 1944, le mouvement de r�sistance de l""Arm�e Blanche (de Witte Brigade) parvient � localiser les sabotages allemands dans la ville et les installations portuaires et guide l""avant-garde canadienne qui lib�re la ville et sauve le port de la destruction. Cela s""av�re vite de premi�re importance pour le ravitaillement des arm�es alli�es. Aussi, les Allemands lancent-ils V1 et V2, des missiles qui pleuvent sur la ville, d""octobre 1944 � janvier 1945, visant le port qui travaille jour et nuit � l""approvisionnement des arm�es alli�es. Il en r�sulte de nombreuses victimes civiles.Au d�but du XXIe si�cle, le port d""Anvers est le deuxi�me port d""Europe, apr�s Rotterdam. La r�putation des diamantaires anversois fait de cette ville la premi�re place mondiale de taille et de n�gociation du diamant.  ", "2014-08-04", "2014-08-05", 1),
(4, "Et on termine � Amsterdam", "Amsterdam est la commune la plus peupl�e et la capitale du royaume des Pays-Bas, bien que le si�ge du gouvernement, ainsi que la plupart des institutions diplomatiques du pays se trouvent � La Haye. Sur la base des chiffres 2013, la municipalit� d""Amsterdam compte pr�s de 800 000 habitants appel�s Amstellodamois, Amstellodamiens ou Amsterdamais, au c�ur de la r�gion d""Amsterdam qui regroupe environ 1 350 000 habitants. L""aire urbaine, qui rassemble plus de 2 300 000 r�sidants3,4 fait elle-m�me partie d""une conurbation appel�e Randstad Holland qui compte 7 100 000 habitants. Elle est situ�e dans la province de Hollande-Septentrionale.Le nom de la commune vient de l""ancien nom n�erlandais Amstelredamme �voquant les origines de la ville : la digue (Dam) sur l""Amstel. Ancien petit village de p�cheurs au XIIe si�cle, la ville a connu une tr�s forte croissance au Moyen �ge au point de devenir l""un des principaux ports du monde durant le Si�cle d""or n�erlandais. Le quartier de De Wallen est la partie la plus ancienne de la ville, qui s""est d�velopp� autour d""un r�seau concentrique de canaux semi-circulaires reli�s par des canaux perpendiculaires, formant une � toile d""araign�e �. Au centre de la vieille ville, on trouve sur la place principale du Dam le Palais royal d""Amsterdam, construit au XVIIe si�cle, symbole de l""importance historique de la ville. Guillaume Ier des Pays-Bas en fit un palais royal en 1815. Depuis juillet 2010, le Grachtengordel (d�limit� par le Herengracht, le Keizersgracht, et le Prinsengracht) figure sur la liste du Patrimoine mondial de l""UNESCO.  ", "2014-08-05", "2014-08-05", 1),
(5, "Un passage par Hambourg", "Hambourg (en allemand Hamburg, en bas allemand Hamborg ['ha?mb???]) est une ville et un des 16 L�nder composant l""Allemagne. Situ�e au nord du pays, pr�s de l""embouchure de l""Elbe et � proximit� de la mer du Nord, Hambourg est la deuxi�me plus grande ville d""Allemagne (apr�s Berlin) et le premier port du pays.La ville s""�tend sur 755 km2 et compte 1,8 million d""habitants ; l""agglom�ration 3,5 millions. Hambourg �tait membre fondateur de la ligue hans�atique. Cette ancienne appartenance est encore aujourd""hui revendiqu�e par la ville, comme �l�ment caract�ristique de son identit�. C""est ainsi que le code de la ville sur les plaques d""immatriculation est HH, qui signifie Hansestadt Hamburg et que le nom officiel de la ville est Freie und Hansestadt Hamburg (ville libre et hans�atique de Hambourg).C""est �galement une ville au tourisme actif, ce qu""elle doit notamment � son architecture, � son r�seau de canaux et aux abords luxuriants de l""Alster, rivi�re formant un lac artificiel au c�ur de la ville. Elle pr�sente de tr�s nombreux th��tres et mus�es, notamment la c�l�bre Kunsthalle ou le jeune Bucerius Kunst Forum, qui accueille des expositions temporaires. Hambourg dispose d""un quartier entier d�di� � la vie nocturne : Sankt Pauli et sa Reeperbahn.  ", "2014-08-05", "2014-08-06", 1),
(6, "Un arret � Br�me", "Br�me semble �tre d""installation ancienne. Un acte proclamant la fondation de la ville en 788 est d�sormais reconnu comme un faux, ce qui fait que la date r�elle de fondation de la ville reste inconnue. Au VIIIe si�cle, les troupes de Charlemagne avancent jusqu""� la Weser afin de christianiser les tribus qui y sont install�es. Le viking su�dois Riourik, � qui des terres avaient �t� donn�es en Frise, pille la ville en 859 et, en cons�quence de l""ensemble de ses offenses, est expuls� par Louis II. Br�me devient un �v�ch�. Au cours des si�cles, les �v�ques de Br�me conduisent la christianisation de la Scandinavie.\n\nAu XIIe si�cle, la puissance des �v�ques est concurrenc�e par celle de Henri le Lion. Le duc sort vainqueur et devient le suzerain de la ville, ce qui conduit � un gouvernement civil et � une perte du pouvoir cl�rical ; Br�me devient une ville marchande, ses navires dominant les parties m�ridionales de la mer du Nord. Cette domination prend fin quand la ligue hans�atique, � l""origine une alliance marchande de la mer Baltique seulement, prend position en mer du Nord. Au d�but du XIVe si�cle, les navires de Br�me agissent en pirate en abordant les nefs de la Hanse. En 1358, afin d""�viter une guerre ouverte, les conseillers municipaux de Br�me se rendent au conseil de la ligue hans�atique � L�beck et acceptent de devenir membre de la Ligue.\n\nBr�me reste un membre r�ticent de la Ligue hans�atique, exigeant le soutien de ses guerres contre les chefs de clan frisons qui r�gnent sur la r�gion autour de la bouche de la Weser, mais rejoignant rarement les campagnes en mer Baltique. En 1425, le conflit franchit un nouveau palier quand les citoyens br�lent les documents hans�atiques sur la place du march�. Br�me est expuls� de la ligue en 1427, ce qui ne reste pas sans cons�quence : la perte soudaine de puissance m�ne � des r�clamations territoriales des �tats voisins (par exemple l""Oldenbourg) et � des pertes territoriales significatives.\n\nEn 1620, le premier port artificiel d""Allemagne est construit � Vegesack.\n\nEn 1827, en raison de l""ensablement progressif de la Weser, la ville fait l""acquisition de domaines � l""embouchure du fleuve, pour en faire son port avanc� : Bremerhaven. 1857 voit la cr�ation de la Lloyds d""Allemagne du Nord, une importante compagnie maritime. Dans les ann�es 1870-1880, des travaux sur la Weser am�liorent la navigabilit� du fleuve.\n\nL""industrialisation et le d�veloppement du commerce (cr�ation d""une bourse du coton en 1872) profitent � la ville. La population, d""environ 35 000 habitants en 1812, d�passe les 100 000 en 1875 et atteint 250 000 habitants en 1911.\n\nEn 1867, Br�me devient membre de la Conf�d�ration d""Allemagne du Nord, puis en 1871 de l""Empire allemand qui vient d""�tre cr��. Mais elle conserve une ind�pendance douani�re, ne rejoignant qu""en 1888 l""Union douani�re allemande. Le 6 mars 1901, une tentative d""assassinat a lieu � Br�me contre l""empereur Guillaume II.\n\nApr�s la Seconde Guerre mondiale, pendant laquelle la ville est bombard�e de juin 1942 � mars 1945, Br�me est d""abord occup� par les forces britanniques, qui ne tardent pas � l""�vacuer suite au protocole du 14 novembre 1944, au profit des Am�ricains qui souhaitent disposer d""un port sur la mer du Nord et la placent donc dans leur zone d""occupation. Cette situation permet d""�viter l""absorption de Br�me au sein du Land de Basse-Saxe qui se trouve alors en zone d""occupation britannique, et d�bouche en 1947 sur l""ind�pendance de la ville en tant que land autonome au sein de l""Allemagne de l""Ouest ; le port de Bremerhaven lui est �galement attribu�, en d�pit de l""absence de continuit� territoriale.  ", "2014-08-06", "2014-08-07", 1),
(7, "Pour se poser � Copenhague", "Copenhague (prononc� [k?.p?.nag ]), en danois K�benhavn, est la capitale et la plus grande ville du Danemark. La commune de Copenhague (K�benhavns Kommune) compte 569 557 habitants en 2014, et son agglom�ration, le Grand Copenhague, en compte environ 1,2 million. Le nom de Copenhague est g�n�ralement donn� � l""ensemble du comt� de Copenhague, qui regroupe quant � lui 1 950 430 habitants. Situ�e sur la c�te orientale de l""�le de Seeland, face au d�troit d""�resund qui s�pare le Danemark de la Su�de voisine, Copenhague est reli�e � Malm� par le pont de l""""�resund. Son nom danois, K�benhavn (prononc� [k?�b?m?'h????n ] Prononciation du titre dans sa version originale �couter), d�formation de K�bmandshavn (� le port des commer�ants �), rappelle sa position strat�gique � l""entr�e de la mer Baltique.Fond�e au Xe si�cle par les Vikings, Copenhague est � l""origine un village de p�cheurs, fortifi� en 1167. La ville devient la capitale du Royaume de Danemark d�s le d�but du XVe si�cle. Au cours du XVIIe si�cle, sous le r�gne du roi Christian IV, elle devient une des plus grandes villes d""Europe du Nord, renfor�ant son statut de capitale. Apr�s avoir connu les ravages de la peste et de nombreux incendies au XVIIIe si�cle, Copenhague voit se construire la vieille ville actuelle, et notamment le quartier de Frederiksstaden et des institutions comme le Th��tre royal danois ou l""Acad�mie royale des beaux-arts. En partie d�truite par les troupes de l""amiral Nelson lors de la bataille de Copenhague (1801), la ville est reconstruite dans un style n�oclassique durant l""�ge d""or danois. L""urbanisme de Copenhague est r�nov� � la suite de la Seconde Guerre mondiale par le plan Finger (en), qui organise le d�veloppement industriel et urbain autour des cinq voies ferr�es partant du centre-ville (Indre By).Copenhague est le si�ge du parlement national (le Folketing), du gouvernement et de la monarchie danoise ; plusieurs institutions se trouvent dans le ch�teau de Christiansborg. Elle est �galement le c�ur industriel et financier du pays, accueillant les si�ges sociaux des plus grandes entreprises danoises, comme Maersk, Novo Nordisk et la brasserie Carlsberg. Le niveau de vie y est tr�s �lev� et le PIB par habitant est parmi les plus importants au monde. Outre un dynamisme industriel dans les services et la pharmaceutique, l""�conomie de Copenhague est marqu�e par le d�veloppement des cleantechs, en lien avec l""objectif municipal de parvenir � la neutralit� carbone d""ici 2025. Les transports en commun et l""usage du v�lo sont tr�s fortement d�velopp�s.Le paysage urbain de la ville est caract�ris� par ses nombreux ponts, parcs et fronts de mer. Le port de Nyhavn est c�l�bre pour ses maisons en bois aux fa�ades color�es. Christiania est une communaut� intentionnelle autog�r�e, accueillant une population d""artistes, de hippies et des mouvements alternatifs. Dans le centre historique se trouvent le quartier branch� de Vesterbro et le quartier latin, ainsi que le ch�teau de Rosenborg, ancienne r�sidence royale. A l""est, sur la c�te, se trouve la citadelle du Kastellet et la statue de La Petite Sir�ne. Enfin, Copenhague compte deux vastes jardins aujourd""hui transform�s en parc d""attractions : le Bakken et les Jardins de Tivoli.  ", "2014-08-07", "2014-08-08", 1),
(8, "Fin du voyage � Oslo", "Oslo est la capitale d""�tat de la Norv�ge. Le toponyme se prononce ???'l? dans le dialecte oslo�te. La ville s""est appel�e Christiania de 1624 � 1924, selon l""ancienne graphie latine h�rit�e du danois, ou commun�ment Kristiania en dano-norv�gien. Le 1er janvier 1925, elle a officiellement repris le nom d""un modeste faubourg, site historique de la premi�re ville, fond�e au fond de l""Oslofjord par Harald III et promue capitale royale sous Haakon V.Alors que la ville d""Oslo compte une population de pr�s de 600 000 habitants, dont 27 % d""immigrants1, la r�gion d""Oslo compte 1 403 268 habitants en 2010. La ville, qui s""�tend sur 450 km2, est rest�e en symbiose avec la nature par ses larges espaces verts et ses pistes de ski, bien que cet important n�ud de communication ferroviaire et portuaire soit desservi par un r�seau routier et autoroutier et de nombreux trains de banlieue. La capitale regroupe 11,5 % de la population norv�gienne et constitue un fylkeskommune (district communal), regroupant quinze bydeler (subdivisions), s""�tendant largement autour du fjord d""Oslo et vers le nord-est. Il n""y a pas de gentil� d""usage g�n�rique pour les habitants et originaires d""Oslo (sur le mod�le de Tokyo, on parle parfois d""Oslo�tes).  ", "2014-08-08", "2014-08-10", 1);

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
(1, "Les grandes villes du nord de l Europe", "Quelques unes des plus grandes villes du nord de l Europe.    Jadore voyager, mais j ai un petit soucis, je d�crit beaucoup trop les villes que je visite.<br />    Mais que vous, je ne peux m en emp�cher. Et quand j essaie de faire court, il y a toujours quelqu un pour    rajouter des d�tails....", 1, NULL, 1);

--
-- Index pour les tables export�es
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
-- AUTO_INCREMENT pour les tables export�es
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
-- Contraintes pour les tables export�es
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