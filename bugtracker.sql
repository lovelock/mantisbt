-- MySQL dump 10.13  Distrib 5.6.30, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bugtracker
-- ------------------------------------------------------
-- Server version	5.6.30-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mantis_api_token_table`
--

DROP TABLE IF EXISTS `mantis_api_token_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_api_token_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `hash` varchar(128) NOT NULL,
  `date_created` int(10) unsigned NOT NULL DEFAULT '1',
  `date_used` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_id_name` (`user_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_api_token_table`
--

LOCK TABLES `mantis_api_token_table` WRITE;
/*!40000 ALTER TABLE `mantis_api_token_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_api_token_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_file_table`
--

DROP TABLE IF EXISTS `mantis_bug_file_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_bug_file_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `diskfile` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `folder` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `file_type` varchar(250) NOT NULL DEFAULT '',
  `content` longblob,
  `date_added` int(10) unsigned NOT NULL DEFAULT '1',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_bug_file_bug_id` (`bug_id`),
  KEY `idx_diskfile` (`diskfile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_file_table`
--

LOCK TABLES `mantis_bug_file_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_file_table` DISABLE KEYS */;
INSERT INTO `mantis_bug_file_table` VALUES (1,1,'','','6ad9141386f4dacd434b52d11614a662','Snip20160409_5.png','',41332,'image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0Q\0\0\0\0\0¡|\0\0\riCCPICC Profile\0\08U]hU>»sg#$ÎSl4…t¨?\r%\r“V4¡´ºİİ6n–I6Ú\"èdöîÎ˜ÉÎ83»ı¡OEP|1ê›Ä¿·€ (õÛ>´/•\n%ÚÔ (>´øƒPè‹¦ë™;3™iº±Şeî|óï{î¹gïè¹ªX–‘š®-2âs‡ˆ=+„‡ ¡WQ+]©L6Owµ[ßCÂ{_ÙÕİşŸ­·F qb³æ¨ˆğ§UËvzú‘?êZöbè·1@Ä/z¸ác×Ãs>~ifä,âÓˆUSjˆ—ÌÅøFû1°Ö_ Mjëªèå¢b›uİ ±pïaşŸmÁh…ómÃ§Ï™Ÿ>„ïa\\û+5%çáQÄKª’ŸFüâkm}¶àÛ–›‘?ÜŞš¯¦ïD\\¬Ûª¾Ÿ¤­µŠ!~ç„6ó,â-ˆÏ7çÊSÁØ«ª“ÅœÁvÄ·5Zòò;À‰º[šñÇrûmSòçåê5šË{yDüú¼yHö}rŸ9íé|èó„–-ü¥—”ƒÄƒˆ¡FAöçâş±ÜJj\ZåI.’£[/ã]m¦èÏK7ÔKëúR ÿD³‹r€¯Y«QŒOÚ-¹êëùQÅÎ|Ÿ|…6«¾\r³	(˜0‡½\nMXd(@ßØh©ƒ2­Š_¡fçÀ<ò:´™ÍÁ¾Â”şÈÈ_ƒù¸Î´*d‡>‚²\Zü¬Óeñ«…\\c?~,7?& ÙƒÏ^2Iö‘q2\"yŠ<Mö“²dïúØJlE^<7Öı¼Œ3R¦›Eİ9´» `ÿ3*L\\S×¬,¶†#Ë)û]½üÆ_±\\é,7Q¶âºWÎù_ùëü2ö+üj¤àäWñ·rÇZÌ»²LÃìlXswU\ZmãğÑ™Å‰ÅóqñäWF~–É™ç¯ô]<Yo.F¬—újùVND¬ôƒô‡´,½\'}(ıÆ½Í}Ê}Í}Î}Á]‘;Ëã¾á.ps_Æöjó\ZZß{y·gé–k¬J!#lrÂ6áQa2ò\'cBQØ–­ëûŸ/=cæ§û\\¾.V‰û±ôMşUUTép”)VoM8¾AŒ$CdŒ”6T÷¸Wó¡\"•OåRiS;S©±ÔA‡³¦v mûüÕ©n²RêÒcŞ}YÓ:në\rÍwKÒ“b\Z¯6*–šêèˆ¨†ÈLhS‡ÚmZïŞôô›2»[.GœûÀ¾?ñìû.â´\0–€Ç#nÏÊŞ8ó„Ú²ÛÁ‘H|àÔ÷ìö¿ú2x~ıÔéÜÄs¬ç-€µ7;¿ßïtÖ>@ÿ«\0g Ÿ|UP`şo\0\0@\0IDATxì€ÕõÆÏ“u‹»lÜC 	4!xp))ZŠ•\"ÅŠ)ÿiâNq‚—	!#îl²ÙÍnÖü¿ïÌ›ÍÛİ·›Õ¬›¼™;WÎıÍ¼™ï{ç\'Œ Œ€0FÀ#`jDÀ[£Ô–Ø#`Œ€0F@	˜ˆ²Á#`Œ€0µ `\"ªĞ,‹0FÀ#`LDÙ9`Œ€0FÀZ0Uh–Å#`Œ€0&¢ì0FÀ#`Œ@-øW¬X!Gœ‰ÂX¬ã`æ.<‘MãA\Zìç¼î_îÖ™˜Y÷puşGB§8\'Giw0`•+ÊìsókBg[3h‘íÒü\\¥,–Fì€µ¥up\'Û »5…»Æ8\'?³ıÜãVÃLõÆˆ%—¶õhE‘ºœƒàÈÊuT6ì´ñZlÖÄÎ¶6Ø5>R~dI•«ea›íE<ÃÎ5f­#\'ËQãœ‚ğ·ZçëpÛY/Ëˆ‘	Ê,x|Ê‡˜Œ´ 7e¤nF™©%¹Û‘ãä”9·\"éc1B6¤\\æ<ÒB@ûhn,FNşH)Lúc~×\"ÕĞn­¼Ü¦EªÑ¼¬%&#æ£\rj‹V¤I=0,ìÄ¢™(ê<*=m¹e8‡AkÔjé¦ÑªËŸGšÇI_#F,¬´†HåŒq@–Ú¨L#iµ‘ªœ¼‘³E1šv†?,PÛ£{4O¤qX/ÃH“E3ÒÄ,È©ug6-’‘ÕbD›Jëe~ŸºiÓ®Ï#§åj¿ÛµˆåòœãPÿ¢d]ÉÈIP\rF¥ÅìšQ¤mN­ní´‘ExºûË¶ÁÍ³kF‘†;mæ¹®­ÒR·³¡Œ¯š\Zà$ĞÊµ‘ìeÏ£H:Ö£mvlÕóéõ|Ô«Ö°L\rnúÈyäf‹ìe–*¹•i‘25OEFZ$“”±/r^4£ˆQb\Zæ´¡I0ŠàÄÁÛi•5\Zqñgoİ*aø£¼°=²¥\'ÖÎ¡Ò8ç¦è6Ñ9@üKwV8Ä¶c\r8Ü9N,%Ä/…ÆÓ\"®sş)/äAfî×‹¤…±<Æxı‹|,A³ñ¢À<‘z³aÓã¿¦CYj·Á\ZUl—ÔÌ‡]Lku§³¡Á}QŒ`•S/¢¹‹]nÕeDŞl‚›_Û^ZN#šãEå!0B¦\nŒ`˜k–Å¶¨El“Ó0Ç‡le½ØF©°¡:Œ€¢9í%-¬±l–å$C+xN¸VílcF4™¹àÇ‹ÒÂ!Ú¬¥9eè~n#ÖCû±­çãÈ„™+2\ná<â©Ä’]k˜”Æ:5°zn86ĞˆXŒB¨O«ˆ¤Uk+œGeí<Ñ¢9f;u ­;­ÒaÏ#”ƒeéyä4ZëW”Òh2—3Ò+§Z«ŒPš¶³*F<‚\ne§5ºI,´ZJ#‡½îĞı4¥”‘“KÛ€¢BØnç i<Ëu±“€ôÙrÚ9´ºÎX×*µ‰ùœ”,À±-b—Úªû±×“°^ÔX18kıNNšG[h³[™síá~ÆaO™ï\Zã±‡ç%mt`.Ø4ÚŠìÓ‚ôüÄ­ÏİÉ£ç‘˜Îi‚*µîRFú­Ò¼Î¶•e¡0fãÅë¬N¡<©ehJkåEÎEî)Ã<È‘å±—Q<XOFá šã\\;¢©-NQDP‘ÚNFl‹»uG¨ När¾¼19)½°—meüË%–(×¹NDb•‘›†52‡ó×Aë¤cœsVb)#®ãƒ?l/kaæ2Œ4ÊİÏÄ<¨±!iY–®è¦ÚB;¢Ï#½iQš’µMAæç‡ÑüÃÿ–ŒRØzÜôdÑ4¬\r´Ñ6.]FØÅãÍv\"›7#Z«„‘ÀµyWŒxöº¡ZŒ´´\\™°1F¨YÛ)‹2Œhşéñã½û‰ƒmŠf¤çâK1!SG1ÒTˆÛ%#Ö§¹Õ\Zİò§¤¤85³TîœPH€QÿaÕ‡c¡_.æc`)‘uVë\\tÍüÎ…/r„µ\\“ôœÒS_-7P>ƒ-Š%.A@¿<ºî˜\"N•(ƒ_t$Òï¿|\\ØÈ›uòJé	b’³,ÍË}ˆQ£õà ~$â9ÎÆ†õ\nËìÌËúy\nğvÎúÕRİ‡M\rHÒY4ÛíìgñŞªÁfÁaeÍrÙbç¤qlCµåÁ<´‡ç»¦‹b¤\';ÑZ¥ŒP6ì©-#Ú¥-sÑfşw‘?X©0!ZüÓ/$Öi	ù¹Áe¤G_›İå¡h5ípUdä\\Hõ`ñ»^–ëæ\\0µ<-\nö R=:ÚDêqŞÉˆùXoéy„tJ4r©Íˆ‰>ªÍ\råõ¿RF¬KíƒYHÁˆ8iÏmç¼á>j“şÕ}Ì_õ¤aü®•cä”ı8×«dÄ‹Î?r ı®©M(°”‘\ZƒÍDb!Z\0É96³~¯çN„\ZZş<b©Úş#æÕï\ZWh7mÀ&Ó:ŒX%bÀ]kÂ*kÕëãu‡{¡äwÕFÇN$‹ªeÄrœãô<â9°ü®…h6Yš#À™ìP\'Ïı:¡\0÷<â÷‰W-‹3-ÊpösK÷`›åB\0²]Gb½3°^­™ÅI¯-ãõˆ›j7ó;õ8HP2ö)#–ÃsÆ1=áhpê§Mei=NCË2‚ÅUÚîì\"#ı®\"¢#%E;œÔeáœÓ`íP“…-½²ÚëîÓc¸“¯ßŞ#½>GÚ¤?âµdÚå^6ê<r¡H´ífäoÚâÔÏm=·¢Î#—¥{üymBR‡#­g›\"ŒØ$\"vG¥xc2ò¢<=*a¤ÖÅb„zÈß5S4Â9ÇœúÊ3â\"/sN;Ç‚fk[h/o A´…yqñ+Ás›ü˜NK¥Œ‹Åˆ\\xi‹2â]×‰sş²ğÒJ‘„íæıĞùÏ…Ö³ó<BÛ†lÕÙÀìX×:°ÎÄ,WOxÆª‘sLíF®‡‘cT#|Â8Áï\ZÍ›÷‹S3ê\rz€ô»‚B´8°¢ÁÚ mc´…Ä\Z‚üµ,’¸Ä3s›¤}hŠ¦ãåß¹ijc™†ûlÚH§4D0ş³ÉzÁ!t$e>DáƒK2¤£ÜQ7mæN~IX·µMìÄá/÷ª€Ó“ÛiO^ù¸…lšOe£<ÍÍb™“õ3KCB¦e]Ú6îcj½’ m$RYh5H‰8‡‘O<“N^ü-Ãˆ¥ 6Ø“«g5Ì­ísêUñ¥ù<5`äÔÊ²Ô*\r¶å1{c1\"ÍÍmäù¥ñü£Œh68°ì#ı–g@<¦N^¤0âuÎi±Ãˆ	P”^41ò`SÿğÒã€MÚÇ‹Qˆç%öñØáÜ%@,‡å©N¡\\uZÊv W„‘/ÔWsF¸€ƒVá®öÇf„lù‘],F~´š,‘Ğ=Jñ‚ÄP‘…¶¸×‡;ë@UÄ^ğFˆd~î,ó]C¹ˆb½\\”eÄ](¬ô’^z!%ÿ“!Ês¬Ãz$Î£¸Û{±N[œ}jÖ2õ<âIÀh¡Øä:1:²K¿ê`¤×šù®1’8ç–ü~2‘<X(Ï#ÅKXÜí¦ÁŠS&KA$ÊÌqz©\rš–† °çºÃöò»FB•3âõˆ•iX§=ÎM› ŒÈËm\'—¨––h»ªÍ†±p4#@ãí•Òz±1¿s-ÕŠé\"FèVÍËüˆÄÂa„ôài\"v9ûy“÷:Š²#fE[İóˆ0\\FzÍ)eYz~Q5òœÂÂá§¿éõXhŒT#\"	h#£ğáÅˆ»Ô|2BT˜÷5DĞ&ô0\rÊĞ-&d\"{ÍÏxüÃ:íóà¤Ğ²ÊGÑŒ˜Ş1kp@„‘–—\'5³ZŒ˜Ö±×\ZÄòi—^s`/cù‰ÍˆiõÈÇ`Äóg1Ò0‰Å6ëù­%Ğ~ç<br½g•gD~Ø‰T€\rût?S#`¡Ç\0+¤Î;9åñ8Çd¤7n´çÅ™sí@y,V+aXOFˆæ*­ßµ *ã.şg!¨™•ëq4VO<­%‘„åœHh€~¹€‰‰\'†VÂäˆá_®³­E9fã/¶`´\n!¡YKà.btÑ2ÉœBÔ÷ÂÊúİİª”ùeA›ôŠr¦ˆØ¨Gˆ9¿œœ“\r¿PAÅá‚2AMKfÑŒœ¢^Èë4Ÿ…ò¤Ò–íd¤ª¬X_¤şH=v`Àö•6©hƒ¦ecwÅˆeiAš±#F»ÖXŒ4ŸV¼°zx£Á>ıU€yCaÚRF¸¸\'¿Sôèµ*òıb³KÏ#”[#^Y¿\'rÁ 1µ¾ÒuØ¢ëeQP;7Ë²çìU9Ñ<.Ø¹ù°dG½¼Øªç#’ŸÇÁùjÓÜTÙ½ÑÒ\Zää~D9çQ„âÔò2ŒP³\"›ó]C\n´ÛeÄr6h rE:Ø¢7NFĞ««çgeŒ˜›¶\'—88ÕeÄSB¿ãÌiEFLÄºQ:Ó 6ç»´æª1Óã<\"#¶‘m!C¶‘Ÿ2Œ’Mà±R¬Ïa¬%EâøY©!?¿ûŞ<QZÇ-øÍkœš‹ìÊ]÷ºŒhíg–Ï4Î1Œui9ÚV‚2\0627÷é*Ï#^t#6…ĞFç¶Äe¤½4[Î_ÄÑFîÂ?¶‡\\b1¢©´U01leÛ§#Máä×ãå”É¿ú®!#c5dÄv*W—‘Şv2Ò2#çyïdÄãÂ¶ÁÒWnîü®UƒQä‡œã1B«C¹‚½®z`¡N,¨.ŠOb$_.q9¬E¦ÜPK{™ÅÉÀØŠç‘Öéœ<N}È^ÊéÙT­GO\"Åmê~×@E€sôYò”cÄLl#Ïü‹}!’ñ:ÆCR9#¶mtJbÑ±ÑfåR)#¡¶°=\\gBÚÆ7Ù.Ú9.¹¹ù]Ã:¿Óš–Å0/Ëà÷Åµ•gÏr&f*c„k²:Œ”€ma(K¿û¨K¿ãøç_´h¡f@>\rz z.Â´©5É‚\n\rV+hşë•vq?ö²;Aû“yõECœƒG[°Î6!°z-@ÍĞ(5uñÄÒs‘EÊQÜºÁúY1ä/–Ç<°õòŠ¢[<˜\n7\"îÂ¹Oóu]O-“ùQmÆ>–Ç4ºÁŒ´ÁeäÜ=5G:v+:sÉ\"QN½2Byd±­:ŒôbƒoˆdÍ¯<OÇR–÷ëÉ£ ‡(F8¹ÔÚÂ2ŠğÖsĞY ;t7ÿoüZ\"ğßaxÀbœG<&¼ 2 všY×\n±Në¹pOúRFŒF¹üÇ–:%0)r° ˆüõˆçCaDÛQo4#îWŒh#k\n’ŠĞ¯§®³L§şÒbëÔ\\ÚÏê´q\"\rÏTÆèQpVô<¢P÷MÓ‚QÖõx0=Ò:ß5äÇ\r:¤ê•¶qgä£6hò9ÑîRÓ\"8ß¤ãN\'‹®ÒB§TF:7ır’£Ç!‚UfÕ\nœ2âwmãwÍ¹q8éÊ2BNÍ±Ñ5@ÍàIöZ-ã5†ÇÇ«#@İ,vR”F3Òh,ŠTÌ5m?\"µ.îgÛœâùPúıæ¾È,œ3mf$ñàèy„d<· ”5*’‰ÇMORä¤øa7““e:ç­*Ã(êØ0­{½fnWÍˆ%2!+ä\"šZÀãCS¹_Ò²\"\rÌ‹\rîâŸÈºîÆ†]1rZÉ\\.#¬ã<g7š§#2@™4e×ˆ‘\Z¥îšÍF[wGN;*2ÂñÂ®Ú2rš2@ª,#Ö©{JÇFğ»†%í«#=·ôê¢5+kÔ*¸‚óZOGÆ³Z‹Èñä)¢æ©‰øÃ^—4!¿ÿ´‰Xâ6­çVY>ë‹üeÜåÄb]¯Ù”<Ğ(SH«P‰0`b–É%¥Z·s©NÀØ#½Æè~”«û™ƒçÌÓœ(‡Ûjlv‡+0…Óşß?¡ÙÙüĞÀßH\Z´øÄÒ,#°úc\0ùÂ¢\"|wô«¼‹¶Û#Ğ¸(4¼ğlø|>]rÛı4®e-£vˆ?»´ŒCi­Øøu),,4µ;`[FÀÔŒ@©çÅÉÆëU?ü( ü~¿~(¨,Ôıe%–KÀ½ƒA	&¢Zî¡¶–&MÀ£ßÂL®Ä‘*.o\\œ„pb €*‚çœ*ñüpBŠíkÒ­múÆ™$múÇÈ,lx¡r…”{Ñjf™	FÀ´\"^x”vlŞ,_Şr«Ìø÷T,QTùâãeÍ·ßÉGW\\)+?ÿB(¨x­*†°â?~ø#ÂÊ½µ\"t\rÖTóD5Z+¸¥°OK;¢Ö#ĞŒÀó,)‘ı[V~ñ¥zœÂFcÿx)Ô·òí=÷JAv¶ä¬\\%)]ºHÇ¡C¤é)¢\\Ï“+ šQ«›¼©&¢šü!2›×ûä.›‚Mfƒ0­‹\0½NÉ;ª§‰İv‹ß{_vdeÉ–E‹¥(/Ùú$±m[‰Ç$ÚîµÊ‚Àn<>½ëşt÷·.‚õßZQõÏÔJlÁìÂÓ‚®5Í4eèš£ˆÚë¿G7^‰,ùàClû´ÏñÄ\'ñÓzôn¼^Ò{÷z©x½¢ˆ*N˜>À®aõ{mLTıò´ÒZ0»ø´àƒkM3Í€\0_[ãÅø§½ÿt™t;¯B	h·MKN–qW_%†\r“ºñÜÀ.¼èn<WP¹ûmY7&¢êÆÏr#`Œ€ØmØe·î‡dëÒeê™¢(âSvL½²ƒÊKòó5>Ú W8ÙÁh*õ³n\"ª~8Z)FÀ#`\Z”\0Ôš©Óä›»1ˆ|ëV1;.)I\'Ôæô¿Ş|K~ü÷¿%ˆi\rt\n„µÆ\n\'Qv#`Œ€hêèm‚8šóâ‹úúè$­{w™pûm2àè£tºNm°ğíÉ’5~é4M½YÍİ>XŞÜ ÙoŒ€0-Ÿ\0ºíü‰‰2ä¤“dÛò’Ô¾½pÃõÒS´8ã£‚²xò»Ò÷°Ã¤ı A¥n¶|0ÛB{íKãò·Ú›	>áÂç]áÒ‚0F 1ğI¼­I\\J²¤÷ê¥ƒÈùÔ^óAmŠ‚Ê.><†§³•oÜ¸Q!¾’ÇeBB‚Î\\ÎWÁğc¡nÌU7~–Û#`ŒÀn#Æ¸öƒ©HrŸÂãS{>ÌÕy¯½œ©\r°m¯tÙ=‡ÄDÔîálµ´$|g•#`Œ@#`×†¨k–sn¨Òxî‹Úïì°¿õMÀDT}µòZ6N^·nàET-»Ö:#`š5z¢‚ğH™jØÃh\"ªaùZé-@ó±`p”]œZà±µ&–D€Ş)„jIMjrm1Õä‰Ôä	¸nrs•7ùCe\Z#`\Z’€ÍÕt­l#`Œ€0F Å0Õb­5Ì#`Œ€hH&¢\Z’®•mŒ€0FÀ´X&¢Zì¡µ†#`Œ€0\rIÀDTCÒµ²€0FÀKÀDT‹=´Ö0#`Œ€0F !	ìÆ…åÃ:LX8ïùÙ]aÇÂ:–-[&•V½|ùò*÷Wš±;æÎ+Åx÷Q]ÛE®|Ç›#`Œ€0F áÔh¨mÛ¶É½÷Ş+|¡¡ß;+S\0³9ŸvÚirøá‡«å?ü°xñ‚Ä/¼P—Œüç?ÿ)ıû÷—!C†4HëòòòT4eeeÉ·ß~+ßÿ½Œ;V®¼òJùë_ÿ*×^{­>¼Bİ›6m’ë®»Nî»ï>\"ÿ÷ÿ§6³]î§k×®ò§?ıIRSS+ä¯IíZµj•¾ò¿ÿı¯uÔQÒ½{w„7p/Z´H>ùäİGvmÚ´‘«¯¾ZÒÓÓµ]S¦LQÎ¬3Ó3FF\Z%k×®•[n¹E|ğAéÔ©SMÌ±´FÀ#`Œ@\rÄVB•Pˆ™šçÍ›\'çŸ¾´k×N¸ı’CŠÆ?òÈ#êíq‹™8q¢ŞØ·lÙ\"×\\sPŒQ@lß¾]n½õV\'LÄû€öÂO<ñD7k­–O>ù¤|ğÁúÖjz(–n¼ñFˆ·[Ó^zkBœ?FøğÃ¥K—.Ò³gO¡÷ê¤“N’»ï¾[N?ıté×¯ŸĞcôÕW_U*\"cYiŞš5k´,\nÏÍ›7+ŠrnÛ¶­œrÊ)ò¿ÿıO²³³%99YËZ¼x±<ûì³rì±ÇªÈúúë¯•%EßÊÍ¶U&r+5Æv#`Œ€05\"P#Å’1…ü{ì¡^zK¢oÖ—\\r‰\nzOÜ@o=#=ö˜zw^|ñE1b„Œ?¾Ô›Â´3fÌPRW5iÒ$9è ƒTĞİqÇ²ç{ªÍ¬ƒB-Ú6Æ¹!\'\'GŞ{ï=¹á†„‚^¢	&½Dp€zÎ(üzôè¡Ü|µ]RôPDÅáíÛ?III’‘‘¡l>ÿüs:t¨²\\±b…Üyç¥¬)V)éUc 0¤pzî¹çÔãFo\ZÓóXQx]tÑE*Èjk§å3F ~xñNØPÅÑ\râÅwØ‡KfI0ÆÎJªFá«°Y—ÕÏYImŒ@	ÔHDñæÍ±6üğ&Î.¦hAÂ9…@QQ‘ŠZÃ8\n\n™¿üå/òî»ïêö< ½zõR !%%E¦NZãF”ÏĞ¹sgá‡\"ÂÉ\r®½îÒçò…^PCÑÇ.¿ÌÌL2ô\\¹ã•fÍš¥qÑùj»¯^/ŠO\n!ÚL/”+Li7½a´•¢0\n.vÛ=óÌ3švæÌ™2zôhyôX-Y²DÛÁ|ôXyæ™&¢j{,_«%àÅ÷Œ!Œk˜|Gù=å6¯…5\rÌ’[”6É~	@ùø}ñCU¡HÉÚ^\"+7Ê}ÒJQI äÔC‘Åtnàê¶¼nˆ–WX†ã*7…³ä6óVX¼[Gei,ŞÊ	ÔHDñ¦OïÇåĞkÄØ¼¡»7ı}÷İWoæXn`º§Ÿ~Z…ÉgŸ}¦]v)iiiÚ\r5räH¹é¦›´{ĞnŞš.)ÚèQâ’\"‚‚.??_»Ãxá£ü°K‘‚ƒé8¶iëÖ­òÆoH·nİäœsÎQqBÑÇ±U,ïçŸÖ¶¯^½Z¦OŸ®İ‘·ß~{­Ç±\\zæèÙ¢]Ü¦@#cr ¸ÊÌÌTïŞ?şñMOOE=Nl#…Ã¸qãôØpü»Yî;ï¼£ûì0Õ$\0ÑAá±mí:Ùˆ‡4òĞÍÂ5#×‰ø!Óià\0ñá{Z*®ªQ,Î–ü€üùÙ…rÒ>å”};Éw‹rdÉÆ’à÷ÊÂuù2uş6ùÍø®¥¢gÜ 6ÒµM¾Ç\"|¼Z¾]¸Mâıë/™%eşvBw¹ıµ¥rá½dÏÌ4)(v~4Æ£Ü÷fn–—§n€`«hd\0^¯qƒÛÊï\'v×:*¦°#`vE F\"ŠãØ…4yòdWÔ±cG½Q»•ğWÚ[o½¥^§½÷Ş[£y“¿ì²ËğÉ£\"å¶ÛnSo…ÇG}óÍ7òñÇkZz¸ØµU—ÀqEhH\"ì.ãÓjÓ¦MS[),ø”E	»ºXçyç\'‡z¨Ğ;Æí[n¹Em£glıúõ*Ä~øáùõ¯-7ß|³\nªçŸ^¸¿¶]m\'Ÿ|²Š¨ıë_*>Ï>ûlNôĞQ¤’Ñûï¿/´•,ß§OhÎm×n®SğQØ’7ÅÛkÁjÀ÷¿¬dé7ßÊ†ù¤}ŸLé¾ÇHñãûš·q“¬ıy–¬›=G†q¸$wh/a|«ØåÖ>Õ/çC°Üõú2)	„¤mjœ¬ŞR$	q^õD‚!Y³µX=JüÖ*©g)¯0 ½:$É~Û¨÷ê?­–œ%rÜØŞréÛ&Gê ı:\'É÷‹·É©/ËÛ³O:ò&j™ÑvR`½şı&ùeu¢é©²ëD4[7Õ%P#Å3½:¯½öšpÜ=8Ñ7iŞä¿ûî;½yÓ+.½ôRw…»ğèUqK3-=/Œ¯Khß¾½zµ(4h/”S qlm¥çéŠ+®‹/¾X¬qÀMÁE/ŸÆczÚÏó5`À\00K—.U/½VìZsÛR{]OÇ‡±Â>zÈæÌ™#¨àNÆûï¿¿É¢çœ7lØ o¿ı¶ÚıË/¿”v1r°:»TéÑÊÍÍU®øª–Ç´&|·–áWÖ²å²Ç‰ÇK:<ÓôBáB!pè9f´,Ÿ:Mæ¾ûŒ:ùD‰ç5×”]Ê^Ñ^Òı²*«PöÜFf.Ë•Üüõ¡´¶p\nË`¡>“X­z›^º^ÛQºµM”›\näşsË nÉòÇI½åî7—ÉÄ‘íå¿Ÿ¬‘Y+råÿÎ¢+æe×áÔÙ(cAiD$°+q5l ˜²`Œ@í	ÔHD±\Z^èéà4å=¼YsüBùÀ|ÿùÏä˜cÑÏôıñTÑ°aÃ49½F4u	¬›Ó0PHÑÇâÓvn À`·]tÅŸê£\'S\rüîw¿“C9DE#íã´O=õ”\\ıõ:¦‹ûë\Z(„èQâÔÇD‘Ç.=vÁ‘\r%…ÇJEs!gvÿÑ;ÆuzË8PŸOºc§(JÈŞ‚0Uğ`d÷öõdÃ/óeä‰\'HÎ†²©A‡*	ğ:¯œşºøÖÊ`lïÀ•ÓgÈÀ‰øqVu±êç)Âø¦-yEš¶w§$Ù³ošä†ä@t§Ñ4{UlÈ.’	CÛjú6ğRq=ğ ğ¾ğ0İyÖ@¹ä¿ódõæõÙÜ-2åç,õ8%Â“uîƒs¤kÛyôÂa’áT/»ş(ï\nJB²]|Ñ×Š¨\"xÃã½*¤xía\n/FÀTŸ@Eµ³‹¼ü²Q„p»÷¸íŠ+v•EÇ¹ûøÈ>»î8==-îœMÜÏéØ•Å®¨¿ÿıïn–:/YÅ‘+ªX …íã2:ğÃ1F|\n¢…ÓPh]~ùåj3Çz±Û‘OîÑsÄ§ÿê\Z8Åèßşö·RáC/»\"éí£@b÷\"§ixüñÇ%33S«¤8êÛ·¯pL»óèbW&9Ÿ{î¹\ZÏtlWô¸5İaŒ€¨@Àë‡ª¾gé˜níO?«h\nr\\ˆ¨||Ç²W¯ngâz0ï½÷¥8oñÃó[•úğÁ´dc¾ÜıÖrÉÃ`ğ]“å†“ûÊèÖ+†á~zŠ8Féµï6ªˆÊ‡è™0¬œq@7™½2Oş|­¤&øä3Á3U\";Š‚—…G¸üyP7í|¨ç¿Z/gÔU…ÔŒeÛÕ³5 K2®h.ÒR<q•×…ÛŠd>ºó>Ÿ·ÛaqFÏ»-#P=5Qüò±›‹à³Û(:p§=ˆ-îşÿ½ú?õìĞ£Â›;=,)Çwœ>]Æî+à¦‡†^ º\nÎ;E±·«@Û)(°(F(ÂØ}É)()ü8ØüÑG­7aBáÈî:·nzèèñâ˜-ò¥ˆ:ãŒ3té¶Ş6Æs¾¨è w\n/ÚÈô´“i( LD¹äli*\'Àïı|:è¯¢¨ßAJï}÷‘$<$ÃëCÿñëv®]XÎ§÷\nğıMÇxÅX?İšØM×Ş¤û3H¾Áø¥É?l’¤xŸ\\vtoY´~‡pÌËçRÔŞ^¥?Û0öéŸï®”íä´ı»á’ ¤Àó”çwO<„Ø§ô“Ç?Y-ïÌğ«úlÎ}â=v|\Zå®„\'«©]SÔæiqò¿iëU\\u:\"AÚÁ‚\rŒ€¨\Z‹(^,8‰c¢:tèPæâAÏÉë¯¿®ŞŸèê.\\(?ãW»óxÁ 8qÇÿğÃÀq>œœ³®ƒßÙ5FÁS@=MÌÃqPl½DìÚãX%]â‡‚†í`W[}=zÊ\\¡CD>xÎúgÏ­İ¦î€{Nuğæ›oê`yr§\'œp‚ì³Ï>êÑ:øàƒuê	–ÉixcˆwÆxFÀ”#€ï.\\OğÅùõº‡ï ºd-]&¢BõN%ãG ÇHqì”¼é:òV%;¸ƒÇÓ“üÒ1â‚‡S´‡€yâù5Ò£ºíQÒ+5Ş¡ñÃÛÉş3´+î³jÚ‹1ˆ<gGPFôN\n3z•Ø]÷Ù¬,ùïÅÃå‘?S/Š‘+É”§¾X+C»§ÊCÛH\"üpµ…ºã×T8}:w+º·ÈÍ§ôÑ1SqŒ€¨>\Z‹(MÁÁ§ÓxsşFEï…Gtàô|ZÏõ<qqÎ_tÁ¨÷ÄMËĞuí*ãTìşâ´	nn\\rz\0W¼¸ñl½`ÿôûßÿ^½P/½ô’}ôÑúD\"=lôÑ¶W_}Un¹åõú”o«[^u—|…Eš(zh…Eër»™†ñãuÖYgé¤Ÿ®ø¤÷Š^-Æs®-vrfu\n½º¾ÆµÍ–F ÅÀC/ÄS®iyY[´+½\0ÓÌÿpŠmÏB<”#ôNu\Z<H\nñ]+)(”Ä´ô2×ÀÊøpÔ…3PüP°â	¼Ñı2¤s›xÕpñqÙŠîº|x§˜”é2 ¾œ9£<rÜ˜òëº\"Ÿ3A§b@áÜ•¹‘®A—Ë«y)¤ºC İõÆ2ŒÇê!ÇŒî(‹0•ÂrL«°)·OæåËß1(ı‚Ã{âGœ?¸L@ñØX05!PcÅ\'ÒN=õT?~|Ì›3Í§%:pj\0vÕ¹\"Šs$q@tt`wTff¦>µ_Óu\n“{î¹\'æ»ñ(ôè¹á¸¦èÀ÷øİu×]¥QLGAÅñQôŒQ@¹‚…í¯ëÓynEågggE‘Ç	49[zt`×$…RùÀ\'\r™İ¥e\\^uÕU:Æ«|ZÛ6F 6¸,Ç+©ŠáÙ]=ó\'}ònÏÓNz¥ÖÏ™+Kñ¥]ŸLY?w¤Àœ˜V½§ó¢kã!ê•\"xğFNY\0a³1?ìÇ1K·ë´nN†é\"j®¶¿^\'ïşˆy«IÀµb\\ç|Skü00Í1{u”L<å7\rsL]óÜ\"ùyy®z».}|¾\nº¿şª¿ì3 C˜“Ëş\Z#Px’\"_¹šd³´F u ‡Ÿx	‹0ĞÎèl]Zzky<ñãeö[oK|Jªt6T’Û·+ÆÀƒçÛ0Ùnq~,úüK~ì$ÉÀ+ ª;WçnúzÁ6Œ[Z#|Bâå©ÏÖÊş˜T³}*<Q¸3Í§s¶ÊĞ^)rõq}JÅ\r»ùøß«ßlsÆw‹<Q\'úç{âTçÒM…•{AçÓy%pX}.»g¿ZAÕ	©ÙÁ6¦º<ºwhO9|vz*ÓÛe¡åàÕ©Ÿ-zBÇÇØrÉ¡(î«ÆÜa$-§Õ»¿%rhÁ#`èÂñ`°øàÃ“‚ì­ğH}\'¹—X°-Gx˜&wÃzÙ²|…,şâ+éwàÒ¦Št©ÑrÑõöãR”Á2¢§3¶)ƒÌ“½’ŒqQm19§GºıÜ£Âßºı ¼¶æcBÍé×%I?_õ%¦;Ø33U…”ÖùóÃÒíréã¿ÈSŸ¯‘Kì%¿;¢§Š4zÀNÛI®<c¦>[#—?µPf,Í-õ`¹uÚÒ]¨qwŞ®‹´FÀæI€gòé;ÎÅî¼e˜X3¤ó­9^ÇLæ;üØc$£{dÎ\Z4“İxœšà·‡ô?Mê¥Ó\Zp,û1£;`.¨dÉÇ>Îı”[P\"mRñ _H|ë«KeÑÚ<í®Û†×¼ÌX’#ïüàL…‹©²r‹åşÉ+tÌU<R7ÚO8­Á+Ó6Èˆ^i¨¯;¤äyx¦Íß*ÃÇ9¡öƒlXÏTt®—¾·Jî>k€tÍˆ×®Æ\Z4Ë’\ZVMÀºóZõá·ÆW—€uçU—TËHGÁC¯T	^T„\'‰)®ü	‰’˜cŸÎb^‹¦rªxÌeÀy™ò‹Bò\nºçÓIŸ¾ã;ïÿzƒvÑ‹Aà|-{¯ŞR¨3šSÆÑóÄeéÓy°Å\ZæĞ¶í%9cĞ:ŸúcX²±@üt\r¦cğëÀôHÃ2PÆaáçxr*Ò\"»…B€‡Òºó\Zş`šˆjxÆVC `\"ªÄZ4¢$ZYTç/UU£\"C8úˆ7¹xL}À	7İ‘©œ\nïÖs{ôè‘ª‰¸¡8byHn_	#Åz9öÉaZşğ)?É²Ğr˜ˆÚ=ÇÒºóvg«ÅfH@Ÿ»©Gq]%Ç\'E‡òÛÜW^ğD§¯jİPLÃ©\nŠ+I& ª\"iûŒ@ål`yåll0FÀ#`*%`\"ªR4¶Ã#`Œ€0•0U9ÛcŒ€0FÀJ	˜ˆªí0FÀ#`Œ@åLDUÎÆö#`Œ€h1têš<êÙbZŞp\r1Õpl­d#`Œ€0N Z<Ù›Şê÷p˜ˆª_VZ& sµàöYÓŒ€hy¢[W~»åµx÷¶ÈDÔîåmµ5S®€ÒP3mƒ™mŒ@ë\"à\n&]rÒV¸•Óp:bªuÑh˜Öšˆj®Vj%àŠ©Ú<k–0-Œ€¯/òz½˜•Şù¸Âª…5³Ñšc\"ªÑĞ[ÅÍ€]|šÛ3{@ë%ÀùéyÍòCDù\"ûXÿçƒ‰¨úgj%¶@®€Ò‹=İÒ°5É´<¼^ÅÅÅ‰ßï/RôJ¹×³–×âİß\"{wŞîgn56ct\'ôî-’)á\'Àe@·ù’âPˆ/å`#ï)s—Í¸Ífº0Mœ@ä‡_$MÄë”z   ââñÁ’Ş(íÖƒˆ²PLDÕK+©p¹qéOL\\•$.)–°? Û@ÀQR”P¥Bªs±¦#Ğ4è5\n¦¸B‰Ş\'?E—OT´Šé-Ô€‰¨º3´Z	WHñB¤_x™xâ€M¿ß\'¡`ÜNñ@™j%\'‡5Ó4\"WqéŠ(¯×%ŸÓ§‚\nBŠûÜôhr‹©ÚDT‹9”Ö†&à^ \\aÄãè&/íÊƒŠÁMã.Ú6+ßÖKÀEî’b)ºû.ziÜt­—XıµÜoùúƒi%µ¼¹¿êÜ_~ü.¹È(…aC¢ZÏ9a-5E\0—£Hp’+”œkãœÁän*»ï»$ê¾ô/_¶¨î¥X	F U Xbƒ±d‡Š\'lòBQM¥â©ôâÆôŒ€0\r@ òK©˜â\nâ  ¢ôGÅ”³İ\0´Ú\"=Û²7Eğ·ZÖp#PKÎWÇñ>í,Â~åídakFÀì^Ñ]uMÎ¶ıšk¨£ào¨²­\\#Ğ\n¸^)6Õ~´‚nM4Í„€#œÌûÔ°‡ËÆD5,_+½U°_{­êp[c@3 à=h¦6KmÖ­fyØÌh#`Œ€0F ±	˜ˆjì#`õ#`Œ€0Í’€‰¨fyØÌh#`Œ€0F ±	˜ˆjì#`õ#`Œ€0Í’€‰¨fyØÌh#`Œ€0F ±	˜ˆjì#`õ#`Œ€0Í’€‰¨fyØÌh#`Œ€0F ±	˜ˆjì#`õ#`Œ€0Í’€‰¨fyØÌh#`Œ€0F ±	˜ˆjì#`õ#`Œ€0Í’€‰¨fyØÌh#`Œ€0F ±	˜ˆjì#`õ#`Œ€0Í’€‰¨fyØÌh#`Œ€0F ±	˜ˆjì#`õ#`Œ€0Í’€‰¨fyØÌh#`Œ€0F ±	˜ˆjì#`õ#`Œ€0Í’€‰¨fyØÌh#`Œ€0F ±	˜ˆjì#`õ#`Œ€0Í’€‰¨fyØÌh#`Œ€0F ±	˜ˆjì#`õ#`Œ€0Í’€‰¨fyØÌh#`Œ€0F ±	˜ˆjì#`õ#`Œ€0Í’€‰¨fyØÌh#`Œ€0F ±	˜ˆjì#`õ#`Œ€0Í’€‰¨fyØÌh#`Œ€0F ±	øË\Zà)»i[FÀ#`Œ€01	ø½^ŸøüqâóÅ‰Çc\"*&%‹4FÀ#`Œ@9P8öˆ‰§r\\lÓ#`Œ€0Uğš€ª’í4FÀ#`Œ@L6°<&‹4FÀ#`Œ@ÕLDUÍÇö\Z#`Œ€0F &Q1±X¤0FÀ#`ª&`\"ªj>¶×#`Œ€01	˜ˆŠ‰Å\"€0FÀ#P5QUó±½FÀ#`Œ€ˆIÀDTL,iŒ€0FÀª	˜ˆªší5FÀ#`Œ@L&¢bb±H#`Œ€0FÀTMÀDTÕ|l¯0FÀ#`b0‹E\Z#`Œ€0F j&¢ªæc{€0FÀ#“€‰¨˜X,Ò#`Œ€0U0U5ÛkŒ€0FÀ˜LDÅÄb‘FÀ#`Œ€¨š€‰¨ªùØ^#`Œ€0FÀÄ$`\"*&‹4FÀ#`Œ@ÕüUïn9{s·o‘ââBÉhÛN<^ŸH(¬óxDœ5§­AãñW?Nÿ:ÛÜcÁ#`Œ€hİZ¸ˆ\nI P$S^yZŞ{ù	).)–±L”“/¼R2Úw„z¢|rD“{\Z„#’Jw¹‘QKx!°ğáÒDU[5FÀ#Ğº´Øî¼`8$!ˆœßx^yèé8¾£:mˆ|üõËòÄ=·HI úÉí‡ÚõÁ£ÔP8 Áp±ÂEºIÒ«fåìº&KaŒ€0FÀ4e-ÒåÈäoÙ,“Ÿ{F†5Jœ=A\nÃ%2¡S†|~û{2ëËI²÷¡ÇBÕMüPT…!Ø¼d?-V›6åsÙl3FÀ#°[	4ë»½\n•A12î6Ç;ù0¨iå²Å²%“dN%y°ä•”HÂğÒ}Xg™úáûâ7Éé’£ª›˜âQ…ƒê™\nÂC†wª>Êd¹Œ€0FÀ¦G ÙŠ(vŸ…T8E‡wlWĞÙ†eHÖ®].É	’Ø)›AI¦—Èç•ŒŞdóú5R€æ!ÄI¸ì¸¨º&Ú„×‹]~aXcbª®D-¿0FÀ¦G Yvçé8&xšÂÁY6o–Ìùá;Ù-İz÷’‘ûì/{÷iänÚ(±å÷JñšlÙ¶z“ô;XB°Äù0@Ü!n°Î7õALy ê|¸ˆÈkz\'YdŒ€0FÀÔœ@³QÎ@pdoZ\'/<r?ºåŞ_;¿$$û$J$>–$gœÿ\'9òôßˆßƒß1^)‘yoL“¸Äx4j ¬_¼Vö<I’â’¥N+×S÷î¼ªğ‡ÑÕ‡şÃˆª_ÏWUõÚ>#`Œ€0F a4;Å1LùE¹òÈ×ÈÌù_ÉØË’N{ô—ø”Ù±c‡,ûàyøá[díš•Ò»k¡<Ú±p½lZ°ZüÓ¯dıìU’¿2WøÓáD W…\rºô®Á¥\r¼^+Å)ØíhÁ#`Œ€h¾šˆ¢ÒY½t™LŸ1]½j’¤Mè/Å¹E²ôÇy_–şÌ®ä‹\'_–iQyYùÖ,é•™))qIòÙ#oÈ¸Ã–Ì½FI0T\"~oD:…!¤œ6üh:OóÁ+¥bªÁ¥[ƒ·Ç*0FÀ#Ğ\Z	4?…£”‘ŞFR“dÅ7sdø°n’$qy%²ôË9²ğ•©’‘˜(©I/5[â}~Ù¾y›?fùìÁ7¥[Ç!ræÅ×cŒ‡™sZˆ˜ã‰Ú½\'\0¼RßT…Ôºà\"y±ğ:™øX\n%/&\ZN±­;}á8éá&\'øn”½âŸÏ\'<‹dip†,\rÌeÁeMh^¥åÅ¬d‘I’.Ã}‡È$ÿ•2Ğ?N¼^¯~ÜlÕi‡›¶²%Î&á;TN‹»]ºùU¨£²|oŒ€0-›€cŒ\Zv0P}óÓ‡ñÂ2mÊËòÈ}“PZHú<H2Gô‘äöé’»£Hò–l­óÖÈ†KeÇÆˆ%¯„’1jìşò‡ï”{KOëù0àÜëåôèô£{­ÑœBxj0ZÔ7³\Z–GáqCŞŞ²Crbæ,/b&jäHŠ«¡¾ñ2?øe¥í¨‰	áê™ ¿¿KzÄ\r6AUˆ–Ç#ĞB4?ğ|íã™V-˜)ï¿ò’Ìœú•äämºO’º§IF§tIÄÌ~^!ÙërÅƒÑãGŸy¶œuõß$.%]xªO=P‘ƒÈuÏnìÎ‹}î8¯“‰½o÷ÆŞ—’L¼³Òæ  b\Z^Ï‘‰át¹*0Yú\'–øøxñû!Ä›®çæZqFÀ#ƒ@³Ql\'¶áé;/<HÛ³¶ÊòEsñ™-YkKÎöm˜ú),íÚ·—>ƒ†È§o¼%]úô•?Şò€ ‡tÇéìâî3y˜Œ ÄXz¨8o”Ï·oŠåº¬XwÃ…¦!¤~““³ËÍTÙ#ŸL•KrŞAmÆHjjª	©²xlË#Ğâ	4Ë1Q<*œXÓKá“Ö±£ìÑñ`¾ÿ8}®ª°³4ù$^’Ä—\'/<ú”äd¯•¸´6R°£@\n\nñŞ»ßƒÇI:}çK¸¤8ñÆ{%.!¥\' 6§`ãSuìöã$¨âŠ“Ôÿó|°YE]Óæh){LŠ|yò†çV9oããº#--M…TÙT¶eŒ€0-•@óQ¸£»7uë\n@CèÀ—#	˜•œ*/?OÖ®_&—oœuëäŞ+.•â¢Ù¶u«ì((TÁE	åÁDş¸8III´¶©Ò±[w0d¨ôì‡Of?éĞ¥ÆO¥bJˆ›`1–TVø §™9L‹[õ\Z_H\r÷M”Á·Ë4Ç¼Pep”n¬IûQÖ.]«â‰İzå¶—&´#`Œ€hqš¥ˆ¢h¡o}‘P/GÈ“à‰—¢¢m2kî2óÓå§ï~”Õ«ÖHR¼_2ûqày[éÛ}¸¤·i\'II)É7ÃP¡ GJ\n0 =\'W²6oÔWÂ¼ûâÿ$gË¿Oú¡Kpô¾É˜}–^X\'\'CCá…1tNÁÚê>6¦q…ÔéqwÈÜÀçRèÉn–­Ç ğJVV–vçeddH½˜ÖŒ€0F åh–c¢Ø€páƒu!Œ]ÂïÉİ²V¾úğMùìí·d%æ‘êÚ©›İ1voéÓ´éÒrfh:qdãArıHx0Ê\rŠ$+ÅÔzY´`®Ì™şƒüòãÏR°=_†\Z,p´Œ>ì(i×¶3æBGI°\'„®AvrÊ‚èAëu;…\Zç©½@  ²gÈÓÅ—ÉêäU0º^¿ºµ§eæ>úÍ§¤G2dÈéÔ©“ÄÁ«iÁ#`Z>æ\'¢àô	bz‚bÃ/şüíåë7_“÷_|A6ådÉ¸	‡ËÁ‡&GŒ•”]!k|ú:bÍTê0‚úŠÎXÎÎ8şc`× ƒ³Å—3®HrÖ¯’Ù3¿‘o?xOfMŸ!m;w”£O<QÆŸtŠ´iÛGŸøÓr ¢è‰re™Z«?»0\0Şµ¦VÅÔ\"á²³ä¶’ƒ¥Ğ»½%´®,G¾ş„tíÚU†*İºu3Õº¿µÖVL Ù‰(g7_R\"s§O•gî½_V®˜/s´{úy’9`Ş…¯OïñÕÂìæc‡›Š\Z<u§¡*…£B¨¤\"ã¬èâX+>°äÊ²…‹äı—^¯§¼!]º÷‘³.ù³ì3q<²$ ÇÅ°>WAVUe9Uÿ… k7Ğ=yÇc\\Ô;U›f{•À¯=®â‰(Š(²`Œ€0-Ÿ@³Q%!Šâ‚Mòöÿ•WŸ|F†Œ&¿¹èRé;†³UÇë«\\ğ|ÖéÁ¡ª›ˆ)áT\n(ÇWø¦|xa1:ğdñÏSåÕÿüWf|ÿ­L<şH9ë¢kĞm˜‰‡ørqõ$¢´un‡SJõÿV6ÍAõKh)=AŸşæ£&¢ZÇá¶V\Z#`Êh6Ëá‚0ñÈ¶¬òï¿]+³¾™.§]p¹÷›s$!¹pO(ÈqIpÑcÄßî²L««¹¡$ÔÉ—«?å²£E{0Ëù€QäÊî#_½ûª¼üÏ{eÉ¬yrá-·ÉÄ‡0Í‚>§ªãXBİ]5Í®—d•½ê¥^\noA…xCÍæ+Ô‚¨[SŒ€0Mƒ€v<5\rS*·Â3‚Şåş«/”3–«oÿ?ùÕ—à	;L=\nè`n\'Ğôğ¦æt¥1Ç÷ÔöF^”ˆn<H\'ˆ)Ù\\ë@,ûì ”åÈSÏ•[yV’“Sä‹ÿ(_}ô¶¦w¯SEÑ—åˆºÊ[YõºˆÁªK½7ARbï°Ø2Ún¬^BÇó¤Ï2…Û†0FÀ4iMZDQv8â!,[Ö.»¯ºHÖ®Y\'7üë	sè$	Š±Ÿ3ÓÃÃOE¡}s«é:îˆZ?mˆõá‘å“‚ÅS½FŒ’ëÿõ ì9n_ùÇWÊÇo=+~Ì¨f*ê˜ºnaw\n)¾p×BÕüÅIÒÖ‰ú¢e>‘ÇW¿X0FÀÖC I‹(ìz’—»Q¾õ&x¢¶Èµ÷=$ƒöÚ[!L­é…hÂÓu\rÕIFÑEáR•\'‹}>ö5âñ¿”=ä’Ûo“ñÇ)İ~£|òö‹Ğa˜ó‰sbP{ùù¤šòiÆ¹¢ø~8	øJ¤Ãê=dÌG×JzAwÌ9–¤óDq@¹y¢*ò²#`Œ@K%Ğ¤:S „òüCÿDŞ\\¹æI¿=ÆJ ¸HèôÌn\0\0@\0IDATı;~\'õWáø4””ªüĞGß0izE’ÚÊyWß$>¼äø?Tm3Òd¯ñ‡Ãk†,ÆÏèÃ‚•¹Ë=uÑõî2C-tó\rÒìŞë=ZŠ}ùµ,¥ydó%Ëè)×Hê.*˜iuù\'ì‚Á »£·Éçsæïâ¤šÉéÉÒ¯êĞ¡ºs“m¢ÍæqÈÍJ#`Œ@½h’Oçq‘İtœ¸ò³7Ÿ—o¾N.¹ñ&™xúYRÀàqŒ{r¼DxÍÆ(ñi¼N_ 9ëLm\n	aş*ÚåÁ,çy;à=»úRYğË\\¹åñ\'¤OŸ}õíå+iÂ¼	×¦\'ÏîQô¾ÈôÍÈiçJ±¿e\n©vë†Ê §KjaILLÄ«0“=<JJ»\nìÂãûò( øa^ëÒÛ5ÛoŒ€h9š¤ˆ\n¢{Œƒ¹×.™-7üşLÙ/¾ğæ»àÅIp<PìÅSÑÅ\'å(¢ÂÈ·;FìÃÏÎ:Ì\'qDc	>ÙëæÈí\\(íÚu•ÿõ˜$¤uN6U7ÅúwG;ùÄãöíÛeÆ–)òtÛó¥Ä¿#vÓ›[,^\\İníPÉœ¤´Ë Â‡¨]»v:ãxjjê.EùS0QpÑÅ×½¸ªæ†Ãì5FÀÚh‚İyœØ2,Á`X^{úqIÄÜOg^t™„âÒÅ‹ù—8¶ˆÿt5nd:áxíÚ^Ï¹èZr:¹ô„K¤s·árÑõ·É_ÿøGyóÅ§åŒ‹®×ÙÖ}0\Z½r»EÕ¥‘£Ã‡KBÖ«2ã¤Vgü€Wíğe7Í+„qê”lÀ»W$H`ºàŠ‡H›Ä~’œ’,|ç+ Ú·o¯cœvå‰rE,—öÒáæu.˜µFÀú\"ĞäDe»ñæ|û•|ñá¹øºË¥C÷~RRqO”ÓÆn;¤Ó´NL©~Ñ=ô‡ãdØÁèå`rX8bÿCå¸sÎ’ÉÏ?%ã:\\2‡VY]-Üc£\\o»¬†…÷‘›—yk¾—©ÿ-:ü1ÅA`M3¨hÚ§Â©dCœ³ğ>;¾EÇÅéŸJvÜ|9*íRéÑe˜kjÓ¦vé™G©iS³Ê#ĞÔ4¹î<Ì Á’ùûJÖ–l¹ãÉ\'0™f;áÌĞ>ºîğD»íÊ‹ˆºh\Z·;ş\'¸—œğN1	ƒlßºFn9ïÉì›)WŞ÷ˆx}ÉLŒ»yD\0Öò¬p½!µÌ^íll»öòòò$++K?ËwÌ‘é=—íçH0®°Úe5DÂP‰G‚Ù~	lq>Á-M¹‘1MM~xã1~.Ë,“Ñ]œ‚©1Ò‚—ä•‰¾åäôk%#½vÏí.®\rÁÂÊ4FÀİG Iy¢Bœó	®‚Y?ÿ 3§O“?Şx«$&wÒI-}>&‡§Ç	œ™A}VQ¤¸İ¸7_ÈŞ0n6wèĞSN>÷÷òğí·Ê¼é?ÈÈıÆëK‘)¤t‰:Š©õ5Ìšë‘b×;˜ºí¶¶’¹e¸d/ÉVqÅAèl;WCwš	Š¹ââb),,”;vHVh•¬ËøIòR6¨—‰ïç¡hòµÁx¹¸ˆxJ‚pŠú¨JÄø9+¦ùÌû²0ğ±üzûİ22eBµ–7D;­L#`Œ€h>š\'\nã TTå¡¿\\!‹~™%w<ı‚øS;Kº÷ø¾:ø”,oÔüD{Üxt\\Ó8ô8¥pG¶Üô»s¥CÛÎòçû†G$İ~à¨‹ÍuÉ[>äÌÇı)bòóóeÛ¶mú¡—ª¤¤aÇJ¹Ç6°.×Ö½!´XVuøVr:,OÄ8<N%]ÆSLáçˆ&_„ÈS	\n¶¼~Xrœ÷t°çx\'FÀ#`bh(õ^@•àõ(9›VËÜo§Ê¡\'\"©¤$è$ç»èÊßôb5ª©Äi»p³¦å)©íä°“—Çï¾WV.^ }FŒg\r›ˆ0l*6ïÊw5»-9%\0½SŒMï½DÚæ]RûYë+**RÔöí#%7÷0ÙŠ‰YW†¿—õ3$»ËBLøÄ—AGDôx•aQÜWòw9\\m?XÎôß#}“F™˜ª’˜í4FÀ´^MGDANøğ«ŞßHnQìyØDtyq(økxT\'ÔÎ§Úv·¦6§oô^Üµ9åAº*÷\Z?QÚ>ö¨|ÿÉ;Òä^N»jSpÈS^L¹âÉ]î.é•¢˜r½R9992`ÛPÉÛxªl[³IV´&Ëz}$¹mWÕÈ¤…ş/åÖğrdÎUrBÂµ’œäÌÕÎ»\Z5Ô#`Œ@­	4‰î<ŞxCøx<%òàu—ÉÊÕ‹ä¶g^‘8ñ‡œÂîÍË]–oqSìÎsEÈ„ äÜW\"Ïıí/2ı‡ïå¾^ƒ§s…nÉòíªÎveLª“·¥¤‰SŸÅ.>ÎqÅOn^Ììø¢Ìëûj­(ì^2\\Î•ËÀ”16^ª¥œ0Ö#`Œ@=ØEçF=ÔPÍ\"Øi·=oÆBÍ•‘{î)I˜Š®\Zz (ÜO5‹k dğ„á)@¦qíb·½2®`Š®Ø7~øÓ3âß(›7l”µ‹—h›¢ÓÛzí	ğpâKv/rÎ§®]»Jff¦ôïß_\r,“¼–S<*írúÕ¸’µqsåïş‰òrî-8Gsu<V¬ã]ã‚-ƒ0FÀ4kMBDQlx1Õwö¦\r’½m«6’JûïœE\r‚8R~¤lgÄu›»V±Rîòx97üJ£åz¿4eùØÎdNñÕoÈ(i“.ó~øF³9*¯3*‘­Vƒ\0ÅŸ äKİW²tïŞ]Õ˜n‡Èy›^½Vƒ‰[kÖ“„—ôƒÄ{ä–âƒdá¶Ú}ÈöŒ€0F õh\"ÊÅ¿yíj	‹¥S¾ˆÂ‹^ñO]>n‚zZBş`®¦\0æt¢²qŒÇƒ©	0vÉõUVUé|>|ôŒ)\r08<Ä|¸yÇ\nP[!L¾‰…¤·é\"İ{õ–…³gá)72˜P•p‹U¦Åíš\0#½„T\0ŸáÚ©S\'éÓ»¯w­œ¶èqé²eÔ®*—b]ü\\¹Ûw¸ÌØú‘>È§íø•ƒd›FÀVB ö77Ş½	­[¶Tã$\rO{ağ\nÆ9]e»651—bgûÖòäƒwÉÜï?Å`vQQ$Ao=¬Ïµ©LÙÜÑ5õı7äÓwŞ@FlÁÅ¤2Œ!_…‰¢ˆ¢`óÅ%JÿáÃdºór¶mÔ8æ¡Ğªmˆikmkùx<ù;z§8+9=S£»Ms²—I³ÿ!6¬Q«‹|yòhÒ™òCÖsµ;ŸJ¬‘¡–Ø#`\Z”@“Qns6n”¶ém%%£­z…_¯\")Œ§äRPp‰ÜsÍŸå±;®•—±&ì£Á¥²ÛÔ@Á|yûÉÊc÷Ş%Å…ÛğÔ]yàkÂî*zó´(ê+7MßÁƒ¤ƒó·oîbe…[½¶¹lCZõÅ=S|ÙpÇ¥W¯^²o§Irú†‡åÈŸî‘6ÛúV›O±/_Êø-^ÎŒ\'ÿrswëôÕ6Ò\Z#`Œ@ƒh\"Êõ4bêô”tñÃ[SŸB‚eñŸx0‘§PüÉ‰röeWÉe·Ş,?}ÿ½\\{şïdñÂ_tÆëÄ^\"¢c´\\»8Sz0T$Ï?r¿¼÷ú;rÉM×ËÄ_€ÉAùºŒ‹AÑîTDU-$Dh×¾#æ7*”í˜¨Nè\\Ä$¸Á»^°ªË°½u%àÎqE¯T·nİ¤oß¾*¦ÎZı¤ŒZ~vµÇKûóå™vçËwÙï˜Gª®Åò#`š!š®màAgbCt9ÂÇ©Ğ3µ­eqlRØï¼8/\'bÊ\'£ÇO’>ƒ‡Ë§S>’8t#†t 0º~0–†&§{âK¤¸¯ñ¤ÈÕ·ß/ıF§ì‘8”AU8È1V±ŸĞ‹esb*„\"¼O…x?€¥ÓŒ¢_ĞñvÅÊ`qõN€ç½RT			úT_FF†´Ë¾F/š u¿C¶¦/İe½%şòLÇódjáşrnÎ’™6LË¥ ¶`Œ€0-›@“Q*rÔã‡œ€·O¾ù x¨P(Rê\Z\\OQA¼õÒ³òùä·ğŠ5vÒ‰2ñ×çÈñç\\Q”¢@!Ä€‡±Ín6/ÀI@“““äÌK.E”_V,şI¾}2ºã\ndÌadÔ˜ƒ\'i9fªj‹éKHˆ×m À9ÚµšÒ\\Î¬Xum±å¯.œ\Zc¦ÜØÓ¶¥IÏMÃäÓìËÏ=^¨ÖÜRK§ÉM2Z\nRdXá!rzüÒ#n°zMPU÷hX:#`Œ@ó\"Ğ$D”‹,!%Y¶cÆéÂ’b0OÂD›Ğ,¸í&rÖbÉÙÇ¯?+Ïİ{«¤ÂsÄáàÏ-/]2I¿=GË·ŸO‘q‡)Ä}CĞB^<=çÇ;û¾øüÉ^·F>ıY·dÜwù…²nşBÁCzòõ;¯ÈEwÜ)ûv\nzö(¡*QNgJ3gT¥©±Rº^‹öY–ºpÅ=SUÉÉÉr|ÖµÒgéŞòNß«…§ê„\"O¾Ì”ÉòKÑrişÿdXÒ¥\"­®ÕêÔoiŒ€0-‰€öJA4Õ£MJDµëÔO¬åHîö\\ñcl”¾ —® ~ 8•Q…ÔĞ]P6‘ô|r#s:•ÈÌ¯¾—ø¢ñ\'$bü“W\nvÊ‚y³Ğç“iï½\'qæsòËÌW…éÒ¥}„w)\\+¯Şw—ŒŞs™;ãGY·p‰¤&¦ ä°oÚ&S^Oö˜x¬$x“!øxúR¡‹¦@¼qL…ÿà}oAE\n4mY$Óh\nxÃ\\ïã,ì>îx)z¦ØÍ—²íIZ—,¯t»¤ÚBŠÖz¶ËŞSäüÍOË¨Œ‰Ú]È2CH-\n|+ïİ\'sKl¯&Ş†(Ã}åô¸;¤›oP‹ö¤U—KkbRåÉa;@#àÓÏ|Ù=Ç°6ÅĞ¤DTÏ~ı¤óDåf­—]ºÀ±ƒù˜ÂwuyQ…~R¸HÂyœt”7§(\n`@8æña—MB^hÜÎ¿Ä§ğà\nc²§n½2ekö&ÉHK–”„T	\nä™[o”=zÊo¯¿|éİ»º÷0£z6^#²q“ø@¸!êô¨&É‡î¹:\0ÃE0Ó2P<ÅAú`PˆS\'\03„ÿò„`HKÏPÑä/Øƒ44ŸÓ0Pu×‡N+²?5\"à—â1à¸©}’ø¬Çä¹ÔHHñ	¾\'ÒÎ•‹7¿%ƒB{ê\\U\r-¤òÂÙ2½äMù®äU™øZŠÄ9×ª PòdFğm™ø\\®)™\"}’G¨˜¤¸lX]»k’âéÕ¢[eV`Jµ²µ&Õa‰Œ@#hÊ÷Â&%¢:õì½á“Ë—Èàá#1:\nÂ‚$ˆˆ©Æ!¤§@vlX.ŞU«¥$/%ğø$ft”SOš ›–ÏÅs–BÌ„dÌÑÇÊŞ—…‹fÊ’…dö—“eÑ¬™2ç»/%>)Uú\Z$İ{÷”çşó°$ã)®ÎÊP<¥—üj\'ÉÙ²SK…%µ[G9ò„£$°f¾`ş)Š¤p8N¼mÓ$¥{XïHópâàq„ì0_T‚d´m§Ş,õVéäÆ}’ú«©†i?Ï“•ë6êX±šØÄ\\X™İºÈ¸=†4‹²ë•âr¬ÿHñl}\\k÷{áSyÕ\rLûZÂõòûMÏª0æki(Ìê;¬.–\n¯•“!ü9«~İB¡\'W^,ºNÎÏ}B:tè ÓBP\06ÇP]Ó®ÚF&wú\'È üƒdRñ•22e‚ó Ä¶#`Z\'&rU¤lHû.İ¤]ç.òËŒïäÀc†pæOrÆñBUùÅŠ¿’ù	À­³#k­ìX<KÒ1@<bBT•dçK{<MwñŸ/“›áaHJ“cÇHbJš:RÆxˆ<ô÷{¥}û¶rå=wCT-‘§x\0³ŠI×îİäò;î–4t7ë8N®yø?òİ_¡0,cö!™Éq’¿d¦ÄaVl¼Táä6X¾F¶d-—ŒşûJ|›NËiX–Ì¯D\Z>m ¬\"éu\ntì‡ˆ*÷ŠCÔ½èJljBè±W\'ËÒÕëô)ÆšØÀÓƒúô’QƒûIr\"æêªAX¿~½¾j¥OŸ>š«ª_&UyLøbâŸ~úIöÙg«´+XEg<ë9BR7¿)¯\'Ş kÚÌØUÖÒıLûÍ¦×å ¬Ó´,Š²úìß_ø^nÏ?]u¹¥uÖÇÊŠ¤ïeÕâUZm®Ên¾ç£>’Ñ£GëìğåmàË 9ŞŒİ¤ôÈKÛ¶˜®Ãºà\"y±ğ:™îKz‘ê3¼…2/á#™\'	€—vù\rôî/ûøO‚à>QÒ}íõzä‹œÙşÛo¿•=ñ^P¾hwv‡|òÉ\'ZwçÎwgÕV—hñšˆˆB¯Ü5‰#÷:@~šö‰ìÀD”IéøÂÓ#aQİÆ;Î\n\n¶¢[®XŠ3Ò t ®ñÌ[\0³1aüRj|[9ø¨£ğ]\ZW@»Ï¼ñíåÌ?]\'ÇsÄ§`Pqj†Œ_\"Lú•ìÈÏ•NèZLi×‚§¯xñËĞ±‡âs„Wr7Ï”âŸfH\nÆ=…ÓÒ!àr$)ã¥\n1ö${‹eeK|ÛNh ÛáÅ$¹²hÎl0\n/YF÷\"	”Y?ÿ _}ş‰$—HZÛ®xZğ˜];±ºMŞ­é(^ôéENQÓPæ}ƒ5È<uêTY»v­\\~ùå’-O<ñ„Pñ&Å;íâ‡7«}÷İW9æ˜˜¥OŸ>]Şÿ}7n\\Ìın$AÆ®¹7A–ƒ‡>}å[ñä$éxÁqîY¢/ÓST#Lx“L]ş”ôyëéœ?T=n¶Q£F©ğp·k²\\\\Ø Š6ü3X<M’³’UDRüT%¢¾ùæùüóÏeÂ„	šÀãrÏ=÷ÈñÇ/cÆŒÑı_~ù¥ÌŸ?_®ºêª\néy°¬Í›7ë4qåg†§¸åqb<…Ø¡‡*ËÂ3äü#d‡äT(³!#(Öf‡¦Èìâ)òßâ?T¨*.”Œß€äæĞkÒ/°Ç.i…êAÑ¾aÃyé¥—ôûS‡¢,«0å4ÅÙÂÃ8ÙÿÃä³·^‘³~’1ƒ	-1@›ï¦«†’âÎ¡’Ú6SrÓ0TÁ6P.EìJKZëIIâp(l£\\ğé.½øeŒÙÇÛbë &Ûã©</¼V]zfâ&\ZÆ…\ZĞuç¥·ˆypç¬æ!Ô•Ğ^B)$€È3Â8¬¢Í[°³™§&K\"<!Œ‰b|è¾fÉJY¹d¹væ¯qQG;¿‘ï¿ùRö\Z•)üí>äi’¯ö…PWU7­rÇr·lz!ZÒğe<\nqèz­I(Á<`ixêSFÔ4ğ&Ê›½,O<QÕ¿üòËú+{ğàÁ2mÚ4Y´h‘¦ÛˆğŸ}öYMïz”–.]ªâèÿø‡Ş€5aäÏz	.ºè\"ùå—_ä™g)åÏº)ÌöÛo?õ äåí%Ÿş+Q\nú^ÂC6H(¾8º¨˜ëù}–ÉÜ>Èê5ƒ¤ï¼c¤cî`™9s¦\n?zoj\ZB˜}ÿ‚³êİmÇü^oI¿Õ{k›é«¬K\"iòäÉrÄGèTÑepbiëÖ­2]än6l˜¼ùæ›xcÀF)ï!á±`zî+((PN{ï½·z±¸ìºà\'L¥èZ\Z˜!·ŒiR86±i…/î±Ó`ŒïV<°°ªtüé\0IİØ[\råô\Zç{®vVeù/¼ ”±cÇÆLöóÏ?ËìÙ³åì³Ï.ıÀsÿØc•o¼Q–-[¦“ËÆÌl‘FÀÔ˜@“Q´œf\0Ş+×µoùè·ĞUv(œ78ÕñFAÛPhqzbjGñ=HÛV (å†%ŞOÆ£à‰»0ÊÔÆ!‚øÆMQ,ñI:âY\'·ã¼ÃâÜÀu¬8jñâ†ŸÚEü#ö“Âœ-â-Ê‘xÄ{Q–ÏŸ$	©è®Kk‡¼;çúfêÇâKNá{í‰øùåëo%C¶lJõË¨ÆË9—_%J‡È£\r¼a¸Şdhô@QwõoO“és`¼TÓMˆvğ¼ÏˆA’ˆy²ª/^,ïáÉÉÕ«WëÍôÁŞL)vÆ¯cu>ıôSQôpĞKE¡ÄÀwå±û„\nÚ=kÖ,í<ıôÓKÅQ´¼ÓÛBŞ™™™òÛßşV…ãO8á<`Ğ[ëãk^\nµ¼n3÷“¾x]Ìÿ7òİşwGWézN…ò>}‚c$uPgÉZ\'%ù’àK*µ‹ufee©‡¥²1Toİ#Ë‚ÕïV¬Ô *vlìò³¬Y7GºåuSñI[b	{Š$rá±)Ø–wŞyG=„Ñ]Y|íg‹§ºğÂËd£h=õÔS5HÓ?üáeºÂnºé&=&Nœ¨éîÌ?ªI\n¨2\rÃF(¡H¶X Ÿè}ÓåjIÊIÇÓ‘‡È$ÿ•2Ğ?NYó|äù6cÆyõÕW•Ct>®SÄnÀXK\n~ÏÊ_7Úã}¤ıû÷—/¾øÂDTyx¶mê@ éˆ(zx \Zâ“ÛÊ‘\'Ÿ*OŞs»,7KÜ_Ç9yw!&ôVNÑÄi\nâ0Ö)>uˆ$ñ)=Š\"\\ˆ89½Lô&¹¿f±CñéE7ZtRaÛ‰s¸réwÆbËIC›ğô /¥½¤¤£ËÂ‡*/^Æ£„OÂ£Å\'û¼k[6,Ä‹‹_q’6]ºã×s±,]¼Hú(ófL—Ó~sFzé*ãx0Öã„òE7¾1–¹y;äùÉÃÃF·Ó‚\0DÇL1ĞÛäòT)1$Ú·çÎÕX£êÑ£‡lÃ+rxãå¯vvã°‹‚İ8ôLÑkÁ»Ü\\ÑIÏ	»xxúàƒäCŞtİ4º(¢Åg/1b„|×Q>\\“²Œ_|QÚµk§eR8Ì™3GÅ[Ûd{ïÅn‘»\\.÷A\0ñİÇøœŸÿ¨Œğ&¿Š»MzÅ\rWÏÍ­·Ş*—^ziÌî±EïäEİeuMöef¯çdĞ¦}ÕEö×T>AÏ=Ëˆ7\r=F«V­’‹/¾ØÒ%Á)§œ\"·ß~»¶1ÚKüÜeôúÎï1¼]¯4]sşÃqm?ßÒO‡\ZÎ“øgD’·å©X½•j¾Ö\'©«ûËª¢s*LöºÇ{èw€ß×«ÛœY™íF )h\"\"\nwbtyÑ„è9àIòŞ‹ÏÊKO?+7Ş»îÈ˜\0“YFİ°+ÂÃNj%ìàûè8T=Ì©°ä\0í\0vPüxqc÷yáU‚\0àEÙ½qÒóãà¡\0‹\"u³\\­(’Èµ‰öñ);îe\ZNSà—x”GÊ†wjÊ[/cú†,9öäSPW’¬_»FV¬Z!§^plÛ´óM½*2GHj§Îâ§@AN–Ã@[ËßøuG#üÉG÷JŞeÁ¢¢tÄ€¾Ò»›3p•OïÍY„§ 	¦£ÀÚn\Z\n(ŞhyœÖ¬Y£cjè¡áx¨ûï¿_jsÜÌë¯¿.~ø¡lÚ´I»ÜÊWñÔSO©7ƒ¿ÒÙİ}ó%[ŞXn¸á†\ns‘p?nØ÷;rÅ\r½^,óÑG•„÷Y=îCïqÍ3<Eò“¼‹15ÉÑ–ƒÛ] ô˜±ë¦|à@ò;0<¿Ëî[Ú-ì…Ù*dùt!Ûë~oX?ù)»çÊŠZ²Ÿ4i’\nOî§øåœ/dñãÇËC=¤bŠâµ| hãy-ŞX??´ÅÂN¤ ä\\(7íWa²×!C†è¸(~_Ø\rjÁºhrW ¾ò%¹m{9ù¼Käş›¯“éSŞ’ış5dº4¸·íªÏ‹®Şü Fx×äÈ¢â\nK–¢7xªõ„a¹‹â™G½B•$t²S4ÀûÄî@	Ñ¶xît™üü‹rÄ)¿’ÌÁìb\nË»/>\'}zu0&Ş\\µtlÌÚ.«Ö,—;ÒPdtº±æØÊ•&È@?°ÅÅEÌ{,ûâÔ#Ó~+³!¢8†Ê\rn>w»&KKæ§ˆ¡xIIIÑA²ôqÀ2=L|âîí·ß–-[¶”)ú7ŞĞ\'£xƒ>ÿüóKoæn\"–y×]wi—ˆWÕÒ}ÂŒÂİ$¿úÕ¯ÔÓÆ×F.*zQşp†×BH±Î §X&ûï”o’^¾1î%~ô,&½üÃ¥“·¯l/‰$¯zÒÌRûy^Gy4Kãk²‚cKÑJo ÛKï`´ˆbw)Å§Bˆôş=üğÃzÃ¦ˆbà\rœ¶+¯¼RãÎ8ã¸÷İwŸüùÏ\'z¯–,Y¢–ÍcÄãèv·ò| `¦§Ç›\"¸ëş#eEêw,²Õw²×K7½)ƒÚ Ûâ—z è±5ÕêOPOšœˆòxè¾á,äàÏ\'È3üCŒ)í{‚7Š·gÜ8 ©ôö]9	^èÕã€;¼_»ôœ\\¼­³~´·EPéı~§×ÑoJôi•ÌË]ŒÆJ>Mr²ÖÈ¿ï¼^ºtí,\'œ‡±˜Ù|ÕŠòÕGJz’Oî¿á9ø¸“ä˜3Î’DLú©óbé,¬y/Í?õæòìÛÎ†ô:Õf\0y¬Öò†É1Ótçwª`âØFæ¢†\rvßñCOoî¯½öš\n«Ë.»L»áè1)?ó-oö*Œ£_,;Ü8×‹ÅòİñV<×hÓÈ´	rÙÆwä%ÿÕ²¶Ín–\Z/·øWÊY‰n×œ“	ãÖñÜ(şµ©Ù@òº\n(X±¹¿‡¢a×©Û~·Q<>Œç«r¢ÇAQèÜ|óÍ¥£?şX:â~˜X×\rFU<¶|‚Œã£(œ8ŠL)’È×}Rùhëd:z¶¸¾Çò3eÍğŸàunzËİ¶îÎ%\'{}Cn“ßnxLE„\'ê[0F ~49ÅfñÉ9O|²œvùò×ßŸ+ÜıW¹ì®%5¹„	=ALÅî:Éq¼\"Œ)¸Ï\rÚ3Tˆ®Q1Û.’¨càÊß¶Aºù\nÙ°fµÜ„_åm;tÃ˜§éĞ¹ƒüíáÇdñüŸäé»ï–qãÆ¸*LÌÉÉgP€#è*V+&º±öïÎ8Ï…\nw¨Ú&q0-=XŞÓ\nœ{î¹*šèùúë¯UDÑCÂ\'’(´.\\XútçƒâtW\\q…>ÍÄ\'õ8\0š^,WoÀÌ[Y¨Œ/½¼)¹é(´%ç­yJşöŸË%é´åRĞw¹›¤NËb<¸_ŞA\r¿Û‚\'è“¾³­²>\n\nYŠ¬è0İtœî€ŞBz¿úê+IÌÃ›9Ç”Q3Í_şòwÅ´ÌçN•À©xŒ(„™Ï\rg¬ƒ^H\nÚÙä•â›dUên²V½\\“>CÖş{×Eµµ¿$›F\n$!„–HéMÅ† ?v° >ŠŸŠå¡Øö.ú°?HP)¡wB\'$tHBê¾»¹aY’°$$á\\vgæÎ-ßLæ~ûsÏ]ç$£|î‰#Í¨šE t¨€$Š#„Ì.ÉÉCt½¦¸å¡Gğäİw`Â¯áÆ{Gš,çòD²ƒ›%SöÓ\Zæ³ƒ¦=Ç}“ÿxÂ“½ ØOau¢tåÊ¯~.ù\"¢Œì{aoòf¼9ú^,^4÷=ûZö”½Ä’ÓÕ$\"zƒøæˆ’ÙIGô€êaÒqÖ6Z[Amîí.8QA¿”öøNÓINÍæ\0ÀFœÆMõhşüùFáà@LòDÅbÃ†\rNàyğä“OšYuŒùÄxèĞ¡fĞ¶¸òÙ`ĞÇ|ğ˜g„Óç†j\n§ïsvÍ!öZ*^vª9qc~ªc4—l«‹¼ëÂ¿a2Ï_„¼fÛOú®•\'bc#¶µD}qğõ7JÉ’ı»³aŸ©\0º›QkÕ’É.é»ï¾3ÎçtpfbøšğF\Ze&P!tW	™/))É¨W®Šêñæ§M<Ÿp.†ïı¶F–*.ŒõÅûÂY‘$¹$ş4ÉjRÒA ’(Æt’Î‰í.Gf¶íÔÃîãŸƒ@Y8øª·K L‰.K¨0öÃX’Ä—ªûŞîóœk2ûöØÑ§\\³şİ4ğ]`Yô¢™‘äÎG<¸–/úãı·øìÀ}ÿyí:÷“eôNA §ÒÄ%`¤²üËù—^#Wp?)C~ùÓA^Æ“lŸl?\noPÕ=Jgenô?¢\ZÅDògâŞNu¿@¨2†óq&×)õp\"f\'×ç\n£i»ÒŒ>uêT3­œªÊ©4‘0PU¡y‰í`â1>¶Ç)şâ¿æškÌ E?”ÕÿÂâ:ÿErä\"áÍ\'¿4‹©Øı>ËGM÷³%Ú÷É@ãÄKŒÚFbH‚ãîÅ‰[SY‰á(ŠJ$ÁŒØMç}û,ÇÆÆš £œ–OëŠ¿-‡ƒ>cvÙY–öxaŸ¼˜Ó7«qf\'¬ğù½°lÇr9ÿípY1‹“g£öí)Øµ9¾UËHÅÏ7É(ŸSšS5)Š@é PI”³cüÅÍyÅÓı.\n¯¬\\¼óÂÓØ¹m%®»÷qÔ¬ÕDÎË¯PCHxÍ±Ê\"ûâ¶Ç\\QCXG)!Lù…ÑyÚÛÇ[¸OöìYvŸ}„/¿üš6Âè§ßFÃ‘-í÷‘ S|Ñ‹¥Ï!ƒ¹˜!d–K4¥J®muı_İiùáz¿8¨’¼×ã¦8¼x®oß¾æ%›ŸƒÌ»ï¾{”ªAµqãFĞ³•øäÙ`4)’t½ıöÛhÖ¬™Q±}öY<Ø}´e’HQµâ€U·n]Š!boâSÎEêšØä»ÉÕ—`}™È©#ë0–VâCT\nÉ‘ˆVÓF 4½®˜™ƒf\'AYÙiÕºfÍeĞI¸\\“Å—ØÇÆÆºB¿~ıŒAR»térÔ9î0R=	«§ÁH-rèŒÉıŞÇ:à{eKL¸Eb:ÿºbZµÀÜs_»:®ïˆìÕÙFåd›©v²¿‰¦\"¹Íğn*+ã˜6Vôüñ@sõ²eËÌ\roPÑï˜¶¯2!PaIƒ[RmÊE†\\©ßàkQ½v8Şyî	<rÃ\r¸|ØM8«K„Õ¨c–b)§Ø´ÔnŠaNB†|ÄçI\n•jb¶yí:üùËOmı;Y²fIÄàE…©^Ù9Y†dI%·—´S~½{‰µÃ£6ÿwsÀõ¨={ìgq¤áØÜ¥s„ÄÅ˜QÄnéY+õr¹wÒs¼1?7h|ùSıáÌ­‘#G\\jóğ\0ÛeÚVpöÈbEUËİœAµÃ[2ÚüÔ¶m[psMÌGbEµ‹í°3ÉèÏ3vìX3[æF×ôé§ŸšÙf$^¼ƒM‹Ü²³ë!}kgD\\‚C=ç•:åÚ ¾‡ok†ø† 8£«\ZE2HrD’RXâôyªsæÌ9J5¢Š÷ÒK/¼ˆ§Ò‡Õ’&šK]×3ä=ä}~ÿı÷MĞSëWåZwaÏï1ıÔ\ZµÆÈ=¿â‹Ã!©Úßf	›¼tä,©‰Ã_Ä#<«¾1Å’$ñÙbì0†Óàıa›¹Y?¹š!ıÓjFíüS–¶¡_]tOö]ı‹ÇËş¸¶»°ïFõ[xjmnƒŒê©XØıedû¼9Ò\'ËßüıX%Š3!5)Š@é!Pø±ôÊ?É’œƒ4XÊ2½8·×@Ä$4Å÷¯¼Š7ˆºãQ¿yK\Z>\ZËÔz¸Rc™*PRG,h<gú/X/ŠÈ!vˆL¾aå\Z	uå½zâ‚K¡^BKŠUbÂ“yzÆ6gZÆÖÙÿÇ¦$¬¤ğÊüh˜­ª‡›¸OcíTáB‚ƒJÔ¾mÛ¶á“O>1¾Nƒ\r1Ú6qĞd;8³‹&¸¢L?îäœÙÅkHˆ8˜ÒTUTb7ŞxT¨H®=ÛÆ4\Z6l¾úê+ãßÃéûVµ\"QŠ5JI}K¤Ø+~F.l3kßˆ?£ŞÁğ…Èq	™¢Úy2Ç9·üc8\"RÏ0D„\n	\'•4šÈŠR¡X\'ï—Å!êÔ©S–Ä€„‰\n×-¤s3M¬Ä…æA–KrFß(°®]»š.ĞtËØ[\\k¯[·n…v«¸g„›DêÆïaÓÚMæÓ÷›ï9¾¦nÖKÓ.—ù¡ªÈûÏ{Â6ÛûÃ{Æg~EŒ®N“$ûº­:\"¿]İ¦c½5\'lÌËôFøV!­Ë.GHZ´qĞÊAÍOã÷¶#Ë÷hgıB(æ`Øó·ABÊ‘®³\"‹¹LO)Š€‡ˆ[‘¼%Nq²ƒKÑ/E’#Q?$ü¯¨¿LüógÍ@§.İz MÂ!\\$Wœø‰IMÎÛ.]S±`¾âò\n‹ •›.3Áì)“,~Z)›Ö¢ÿUƒ0pøH‰œa6³²ÄçEü£üDMãš€F*´À?È¶fZ9ñ=»’á¶$§:ûè)éÜ|}ˆ‘Y‰%i3Uš!8à1ğ$M;T,Qa‹éESã\nqäR/¬]ÉgúÑ4gÉLÜ4Y6#n•8¨r \"s‡d¯aFİ¦_IcÑ‰Ú}ê?Ï±=Ür¿ìê)ÉØµ»ü7`_ĞfİŠ²Ûb«)ıÏ,on‹AÂ¢«‘ÑĞ´Ÿ‘ı¤s¸%:T¡Šû{É–Õ\0~Ÿü»Y`Ø#ö—×w->âdıuxOèxÎõE%ú`Q¡rWm~Ş_>ô¡ãFu‰ÇH°ø<YGv~\'AdÿøN°„—åpß’(¥rÆ2ør£ÂÃ²“2–b^Œ,Š³Î#Bå•)ËP­¯ØùP×oH(ûÏ6±O|F·ç®Æ¤à°µú£¤Ù~yúI“l»I ÆáówCµJ¬ëŒROËÒ|ŠÀ©B€güÛå;¾\"¦JC¢„‘ Ç[f¶I0Â1÷Œ@³3[áÊ¡·K<&‰QÃhçâíG%/H¾™Š{iÛeqyŠ»aÙYiòİ\'­òÂ”o?Ã”ŸDó3;ââk†\"²q#³¶Ìº“FˆY’‚Ÿ§l£¸Z>Ç¶—„}µîUør#Iã€O’H\'tÎ$vÀŞ¼ËODjÔÒRmvîa™EúC8òÒäYõ•IÕÄw¯F6‘Yp„‹:TLşò÷ä|”€`´ôéA¾O!Ú\'Ş<õ$\"Q%!³1®¸OÅY†$*$OÜ÷¤ö^±\\n¼7$U¼g$Àœ%Êz¸±Nû)ê†Ù¿_¶ƒDä‰ä“DŠíâ3A”$DuVæŞğuØĞôWqŠ_iL€4áQjœ8Ğø´ÑÌÊ™¥TÒ8e’-ªz\\8•(‰ò\0}û²+ŠĞP*3>İl¤îÜ€GGÜ„;x	m»\"KN\n•JfEqÆ(Q|Ñ0UÏÙ—Qqy˜¯°Äöò:Y@F^Òb¦qdaİòøìõ7°qí\Z\\rİ ô–¥Jı£„Ü±-¢‘nÑ(×•Vâ‹ÿDÚ_Zõk9¥‡€”í€OÅïvã>Ñ·Û÷)•JóD(ÍÜìC$fVšü¢äS]ÈS¸l¢Ö„	Bå%ÄŠ~zî) /#²¿BóÀ.†O¥r¿¾<÷ù·nÿŞm½ü»áß\'äÉ^ãşézÏxoHH„I¦\\}ªÜ¯sİ§*T˜*FbGÂÇrHĞ¸‘Xs@qOlûGÒeŸcßHĞ¨îQÑcØ\rîŸLŸİëÖ}E ¬¨è$ª‚ûDÙÛC\ZÅĞÀR1¿xû¡~ÃFÆa›!hÆ#É\"*—$ÕĞ´è#õÑ|˜-L®Q‹6xäå×0é›/1áİ×±xö4\\sÇHYâ¥½yÁyy1†9{P:sPU.w»\\*á½ä€ÊÁÓš9ˆòbÕ()¿ÜjÈô>9?ªOû~Cî~!OB’¼C„8…ÉVKÔ\'!PŞAG«O…PØ²\"•H,Y*¬ÿ<æ~Ï¨øÈğ>ñ“÷d¦¨Äë‰YQªÏ“`ñ<Í«Å•Ég…$¤‹Dû,›×SİâVœO[QmÔãŠ€\"P<•Äœ\'Š$Ä;ÏÜs¢£¢1ôş\'%ëÏ9ÄßÈ!8é‚nI•1ñ%ttÊw<E(Wâ˜ó5ëHN#Ù-øf_ˆè–/‹¹Ó~Áy—^ŠºõŠYÑ²ùÂÉë–âÃ±O`İšU¸úö»Ñó’«\n™üú—×¦üCs€³ØcÛXP]±_80œèµÅ¬\'+|ŞìfÕ”çÓ.E¢÷Ï\'ÜÆu@şf\\Ô§šY¢>	¢úä(\\}*¬ÒØİq}†sYØ§»¿½Oö]a?ÃÎşıò³8¢çI™Ìc	‰7IßS$`ôµ²fK[gaíÑcŠ@ED@•¨R¸+äTœ¶m]K—¡ßÀ+…ˆˆÜ‡/×ÇB!K¬•ø‚ÉåˆåÄ˜\0’¿¨+$·ü\'DŒâ‘!;ùèòR¢_D·\Z¿|ü!¦ÿï{t¹è\"ôè{¢ãšÂÇÏu\Z5Ç½/ÇïŸ|€wıV-_ëïºÕBjÉËM\n¤‚e¼©œfÅ¢Ú]ÔqÖ¯/Ã¢Ğ©:Ç]ï3D¦«sŸÃªŒ™…Æ?*®çÆ|·%ß|\'A&½«‰R!ª“£v¦1áù„ÈÏ\0ú>1¤ˆûob\nv]V„6Ûy:›‹Š#CÅÀXì)OË´„É•¸ñòôúb¡\'E PJÇ¶ThÑ¥xPx‡—¨7ó§ş†ZÕÃÑ¤uÜ“‚Ÿ&NÀÀ!7À·štÃÉ\n*åËƒä‰#B®¬ÅÂÿ¼„xÉdxÉ*Ó®wïBêödYx§‘¿s3³ æ”ğZ‘¯…ˆÈhYa¦\Z²d»l‰oDÊE×~Lucc-[ó3\Zcİ²˜òı7hP§>:ßçô8a1\rqá\rÃQ·qŒó¶nZ…»#e7ŒR\'”@8v•ıÊz¾	¸ÿà$|–ñ\06V›{ÜY[y‡…øo©†eÆà!aGtÂDŸ\'ß:B ÄÜ\'HşNJ >¹bèº¬MNj2rE§|¿+Y*_¼µ6E€ThÅøPybv£\nu8m?¦üúÚ÷ê‚ĞÚHœ7KæÌÂeC®§¼dÌcòQøkŒdƒÜ*OÈÇïÚ–„¹ÓGâü9Ø²eò2²eFL(ı%nAÒ¥aÏŞ}ÈÌÊ@½˜Æè|Ş@œ}~OÕˆ@®ÈãNâÃˆã¹Å95£ëÂ[Îş÷sX³t	æMûMˆİ—øå£Ï1à¦ëÑë²Á8«{_Œ‰©W|İzîzò	ÄŸÙÓ<F:/ibŸ”D•µª“Ÿe\\µ–¸iÿû&ş×õ£M9Ü(}ÛÍîÓ´ÃE¯³ ³ú.dÉº57Ã;8Ÿ@•üQ,\0•NÕtzf}®*HAı¢(Š@E b“(2 I´Ô­™;»·¤H0Ëó„3åŠ‚´B®|ı„\0	½)jğ§óä¤Õøéë±fÙr„Õ‰D‹pI“›P+²‚{B‚d’nå‘Ú·;;6¬Æ¼™³0á½×ñÓ§ïâò;oBÇKØ®~î”¼¼Å«¾L^ºt©ÃèÌ.²m\"«¹îf,ş{z]>Hü¶rĞ Q<8æ¼ÿŸ§ğâwãÖgÆ¡uçùNQ-gÏMJ Åät:BEµÇÆa¢¿‹%0$KT_ùÉÍ’)~rŸÏ}–òwã³Í‡wÀÖÈ¹Ø={\"N<`$ëdt¤Ö¤(ŠÀé„@…&QŞâáãí+‘±3ğËWŸ£•Ä†Ši(æ01ÇmY¿ş>œ]ä+dDLu…È8h$ïHÆç>GıèhÜöğe¨+>Õ$¿\\Gê”\'¿ĞåÉ½ı$zpµê¨]¯	Úvé+1ŸÖâ§ŞÁ«cEHzhÓ¾»´……üz¯ft=ì>ÓàV\rŞ²Î_È­_pÑ?¿m“\'~‚_ÿûµìCb¾lÅêe‰hÓ¹—q¹’xì„Âş(‰:ş<ï+ıL”³¯ìŒ0×™`Tƒ¸‘Üps=Çç‡ç¨\Zq:|\\F<ÒÖ]†ô¥Îµâ˜—„Ë*Jÿt~»j/+¼!ùGm—ouÌ5öºb/Ğ“Š€\" T*4‰¢{·øcš²œ7ÿo<úòâOî‡}é{Ä,÷\ZÅÅ‹™ÎO–„·b9„n¾¡áaf™yÓËR,â\"å2<—\\ï•/zå—\"ª”ÊŒŒ‰ÇĞ‡CÇK/“_şõd@bŒz›39d9ŒúÈ9|Y‡ö 0,TÈPº”	\\<tÆ\Z…´{î_èÙX¾p!ÎîØAµpnÿ‹Ğµw?d›Uˆ9§-÷LRe€?íÿás@eU)K\\ì§;@<n7³ÊÕ#)NÉ·Sã9MŞUQÚ¹Î½¸cöçô\ZƒeO¢Iv“¦Ïê10éE@¨‚ThÅAb÷Îu˜ğÖK¸ğÊH8»“!=Ë¦ÍÄÆÄåèÔ­‡Ü\'â AJTd_dTD€,ÍÂÅoéƒä|¹K>–’DêØ$ùè\0•GÂ€3šu?(|8Å)??	^\Zb\nô’ô‡RŠX9\"QÕ%ã™ú`Ø¨tÌøõ;øàöGEç>ı¥Ì`Éã…LQ³r¥lY^YÊgEÇOl·LÇÇétÊÁ¿n%M–P‘Lñ;I“\rÒhM<ÎäIù\\(÷÷!29ai\Z‚G’§ÏkIïŒæWÊ†@Å%Q4ÑùxaçöÍØ»gºvïnT©\rËá‹—_~“…ˆ¨Úïb	†’\'.ãLVs*”=¹Ü?9ÏkÅdH¦å%3üááZxò¿û‡ˆb•ƒ=»v¢.*æ#)’úºõ¿]û‰•˜#½ri’”<^R†NÙ¼ä8¿ÛÖ¸T\\èW\n…E\0öïÅ$úYYRe	‹ÏèŒ%y“[K–#\r_Dİ\n¯=¯¡3£©ãÂ¦E ’#PqI”ê@uê!ZV‘~ô#ˆª[«Ö¬E½ÈDÅÔF@H¨!!TwHHH^l\"9á^^ş±#¿×ä±y‹şÌ\'^æ~—M¾sv¿ø‹S/ëÙ“²KŒ{l¯Ó7‹T*WÈ›”\'\n¿0¼‹a@PR†É£vÉ‰b;%QÅ\0¤§N\nwRåZØ ¼\'°\"}²½».ô;‰ÔG‘7`VF\'Üÿ0Z÷4ì–¬z‘TE #p„[T°NäÑÎ&\\¥zd=Ü3æ%t¿øZDÇŸ¡w<ˆáF˜éª¢ERâ‡ Ÿd.ùÉ~ç aò0_il,_Úfƒ¦í?$ôŠP’&9“˜ø)¼IH³]¬ßµ=6QŸ¶œ¢ÎëqE ,hèsş•õ-ür‚<®f]Àl<ïè‡§ÄS;U.MŠ€\" T5*®ERbÌcy¨İ0W4j&û¿’\r+áW3ZfÂÕ&—1Itqs¯$’”|åÆõÅm	U~ö“üÇs£@Y—*¶±¸MÉ?I†(!Rl«—øQ™…‡ó#ª[ÇìÇk“!`\'àóÂ²5)¥\0U¤f²Èğ\r)à½Ğë@µÉÓ´Ê1Ï`tÇuWP/0¾À!ŞÓ24Ÿ\" (\n½vğ!!DtèrD¶ÄÂL²²2Å™{/CC$,„²BòÄ˜PŞ&‹Ó	Û’‘ÒL,—óêHùÜGBø‡ú‹\ZE(ipA}Bè¤İŞŒ“^È²4¶}…µM	Ta¨è±S\0Í‹jiêüèx\Z›kü\\Ÿ’Å„\nÈ\rÁ­™_ eP7ã¥şR§âNjŠ@åC€ïÎcLÇ\n˜hƒª°Ép)ùÏª2â–ä`°AY–ÅÏÈÕ*y¡úÄœå‘Hp|¤^oq2BhH\røçùK[¸¨££ùÏ8–Ÿ€šTÚÄ¯<p)Ë:6oŞŒU«V™*‰•XFœUVØæª@º·iÿşı˜<y²™æ~®4÷ÙF¶ÃnÜ·‰a/^lTÚceù¹nİ:$&&š*’““1oŞ¼‚ê’’’\nÎÌÿBlwïŞmÔ£487~Vƒ#+Ğ={±ûŞğªÏ•X<¼Ä€¡8+1«›Ê=-_¾Û·3Õ‘DgÍš…ÔÔÔ#õ›\" (§\nlÎ;‚ˆ¡FùüH´9ÁYmëI‚=Ñ‚–+f?ºP•g¢BF¿-údòñ‘Ùvt-§ïÍíÉwN7¹<û§2:’ï;x¿Îš‡Cé¦“AÚ¡oçö¨ì¹/Mqèüõ×_²TÏÄÇÇcÏ=xë­·Ì¯w§eÈç{..¹ä’B‹›3g&Mš„îİ»zŞõàçŸ5kÖ:Íß’\\Kxßûõë‡öíÛBğúë¯#%%Å\\K2Ò¦M\\~ùå¦ø­[·büøñxæ™gŒãµk¥ù¿ŞHšØßÔ]©àÚvsçÎÅ?ÿücfÏÕ•	Ä•„¤uëÖÇTM¼Ÿşy\\qÅèÚµ«Šİf®MO÷AÃå×aÕïÀ+ÈsE*Û7\rÃÙsïÄ¢ßÖ!00ĞàÃ{Ö©S§£îÉÓ+¯¼‚#F víÚ$‹¿J¿ÿş{H0Û\Z5j˜6ópéŒPE ¨$ÊµßN\nE“ÿË^ØŠP“Å+à/®–Áw¤ÜØ–#í!»²•9ÏÙ½£>%‰ {ªŒŠ}˜½p^úäkøù:©!ŒÚ> {÷.Ğ>—+áÆÄtÃ†\r¸êª«øøãÑ®];4kÖüñÖ¯_oòq ~ÿı÷ÚÁûÄë©¼ÔÀ¸«¼‡T\\n¿ıvp9*!111…®ÇüÌÇôÍ7ß€jI	ÕŠ+Ğ§OÔ«W?ÿü³1‡™ŒòI£—õÀOêƒ>(X†¤äĞ¡C†|¾ñÆ4h¸ö^pp0HìØö©V­ZF}jĞ ®¾új¼óÎ;sö…y¹l5c6#àÆeHo´Áví¸Ÿ©Akñó¹wm}Ñğptİ}\'\'­7÷Å^L|Ş}÷]ƒe‹-yf?l$uÃ	&à§Ÿ~2XvéÒ}ûöµ—ë§\" (å†@¥#Q…!C_(“ÈÊ‹A¹4ÄI¤hqt(¯M²ÄÊ¨Slš=á<Ë#æ›ı§²(¶ÿ°ø©9D´$Šk¦‹¹ædÓĞHç÷\0\0\nIDATÊ•+ñí·ßbÇY0WÊ;v,:wîlò²\"—?ùßÿş‡æÍ›\"EâDòÀDBÔ­[73ø’´ĞŒÅ{rıõ×ãŞ6ÒœqI²Å|ôÛa¹¬Ç=ıøã†XôìÙÓœ¢¢ãzYFÛ¶mkÚçª|Ñ„ÅólSQ‰D}!¡a§IT—^zé%üğÃØ»w/†\n*q3gÎÄÈ‘#\r¹üâ‹/L?-Zd¾ğğp<üğÃˆŠŠ2ıéØ±£Á˜1!!Á¬¹oß>CD}÷UGÌ7CVg3R:LÇáÆ›<of@ÖÌÄ¶Eh×h$²’|L;x©â8bÅu/½ôRsŒ¸|øá‡æhÜ¸±!¬ÄH“\" (§\nA¢8ø¸@ÅÁ—+óò³Ø$üÄ¹¦^¾âSİóºŠ*ßÙ)°À†˜od4û¬ˆuH<ršö¸\'íerq^—\'ŞğÎ¨N=ÊGÏm>“¹şãzKØWn\'›h‚\" –¼Ï<óLC Hx6nÜhœ\r9ğR éØµkWTLH¸˜¨À|ùå—†TQµrÇš–&\"›ìóÅzH@X®UH®X7ë¥²a/;æ“¾O,—ªM¼$Šå•¨d=òÈ#¸óÎ;Ñ«W¯¢²÷8I	IÍ‹$GçŸ~AÛ‰ë˜1cLßüqÜ{ï½†¸ñ8	qjÕª•ÙXY£FÌµTi$±\n8{vAfêv,kô_¤D.9n»lúJÍîşo„$5ÅÚ]°aNªùÛ¾ÿşûÚH}Ûm·àÇ6;ö#..Îäå½âñâğ´õé§\" (¥‰@ÑoñÒ¬Åƒ²ø«œ/n;xy‰ğ\n>Ş¼’$)\'‡.…TÙ![FnoQDòdæÃøzû™ó9yéNÒ\"+Ø—d½:\'ar’ Û&g]ò/YƒhJ{ä‹„[?­\\/1ŸìÇ¾ı{em½ºÂ$œfÓ7	¼ÉxV&·.ÆáäU>Îë;º“©ıTMú#¯ö$W>ÃB‚OºuêÔ7úèĞDFúû¼ùæ›f@%¢24mÚ4C¦¨¸\'š‡H|è‡Cuûœ‘$(‘l<öØcÇÌ\0!q¢zóË/¿¨G¬Ÿ×Tm^}õUã3ä®*±\\ì3fÌ0J–%`lÉ Ígt®&I,,‘tİrË-hÙ²ea§=>6ş|,Y²ÄAbÄv°şóÎ;Ïô™ÄŠm·	!ÛşçŸâ»ï¾3ù©Æ\r<Ø(@Ä‰y-f›6m2&M?´)=<†µ1½åS·1Ï‘ƒıWà‰¼.ˆ?«uxÊÜšiIšÙö$‰÷¤ö«¯¾2\nÛÁöŞ|óÍhØ°¡ÇujFE@PJ\nC¢Ø¾à\"Rä2\"ç|\";)»“\Z!æ#?s¥ &¯¼T…‰·wV.š/V2º÷ë-eÉ¢­2sÎ©1§SÕ’/É¨WÒú‹|—·1Õ™HVã8‡Ã™‘#f¬1]1ùÉ\Z} `ü9}–.NÄİ=„¬lYRÃWÌ1Ò&ÜÌ•Oay8ºUÌ\'û×äŒJO Ø÷ÎmZà…‘·bÂ¯Ó®êÛm›5å©RI–Ì’\0ÄPeºï¾û‘yúé§Ñ»wo<Q¹ Ÿk¢ƒ8Õ:\">Ü˜‡,‰b>’™\'xÂ×ëøƒ4ım¬Ï\rÍŠô¢Pll¬1\r2ßìÙ³ùQ8°³Üµk×¢g¾ÉÏ¤bÆ>Ğçª0ÂÇ|¡¡¡¸à‚ì%\'ôI¬è«E‚AEÎªK$%Tºx>..Î´£~ıú¡XMeW^y¥™EHÿ3şmuÖY¦O,‡‰û$ŠÜˆ\'7şpÈÍm†¥Éß\"5j™Éçé?9^™X0OæÍ@ØºfÈªŞPœõåoHT/ªgÄ”‰má}Y½zµ!ØÄŠ„V“\" (å@…\"Qì<_\\V%‡ÿ	éwbò!?rL˜\r‰Èş]Û1öñÇpé «Ğ$¡‚ÃÄÖÛŸc·É\'A¥„§`ÓÊD¼0ê^tõÂûÂ¾²~DAØ&äeš4‰7ÊQ^.#;Q!rBÏP	‰ÿ‰½2\r»[ï¾¢¬d8ãOITœ†»\\ü÷½ñ˜ÿÇ¯H?”¯ŒLdÉ¯ó„6çà–‡Gb×†DçìÅâ¿§#qÁj\\wÛpQÁüÍ:{dEBæë€¨èêCyßøÒ¨ƒffe–øX‚[ÇÖÍ0}^¢Ü‡\\t<³¹9w˜ç%}¥ì XÒº9ˆ’,X°ÀøFQ¢*Á¸!$S4ïĞÿ‰*}¤,A¢ƒ2	C\ZÜsÏ=FI¡2ã®şPE±ŠFqmãÔ|úë°~ÎT£\ZVT\"Ñ`Û8cD†³\n­¹‰×R5¡9¬(UT¹%9Î°TšhräF³âÅ_\\€I‰UbEéÆDs7bÃöR}¢¼I]ı´ˆ7ï	*ûLÕ°çÂ‘ø2øf™½gÂĞ–¤Ù²ÄL&Rb·.Âí9“Ñ8§ºdİˆF8Û<C|ÖX	3ñ¥ó9ŸMŠ€\" ”7D\0\Z¸›}{ö\ZL¼ü¼Ízéü¿ñÙ‹Ïbóâ%/*SíæÍpÏc\'ƒ5\rxŞB¨r°!)ãîyHHVC\\=b8’·\'cÎŒÉd*Kç,Á-÷ŞPqXõ÷\rD¶˜à¼$æ“7ı”¤„¾ú	-Z™¶—Ï>~YSpÕ\rwÈ@]KÈP¢bë¡Uvø	³Ú¾~Â#ĞgĞ5ğ‘àŸi‡öcå?s±mÕjlİ°›–ÏÅWİ„v»“Ÿàê5Ëû^—j}K×lÀ;_Ë¬3!‘ÔlJÍ¿_7?>®€Ìp\r	\nÄõ/@ë¦%3¹Ğ”öõ×_òÄ™rÃoN&kfœışûï†4Ñ´FrD’³téR£â°=$œ­Gÿ\ZúõĞ¤G3\Z‰ƒ%Z$v$$QÅ%*7$4mqº?MMÇK$R$\\ŒkÄvÑ4EŠm ©î“O>1%::úxEĞùsÎ9ÇÌ¤s>Õ0’9’6*GtÖ¦oÛóë¯¿\Z|I’Ü‰.óÚDŒh\nåu43²ÌO¢õÚk¯™{BEˆd16¨9B_ˆàÿÛ€ä¨EÈu”œL±Ş/	òé÷«ÙüÖÔGĞ”öØV×Ü?Ä‰\'\Z“)ıÇH¢5)Š€\"PTHE\0Hg|¼ü‘¼u&¼û:’“Ö!¦q,z\rè‡¯º_¦ìÄy y÷²êJˆó….„‡úöëğüı#‘‘½u\ZwÂÒ¹‹ğõkobãúDV÷GÖÎ4Ü·pâd@vïˆ¬ßÜ¼”sätò–Ø–´]Îm‹”mëQ-¼:Îhz^}ğmÔ­…‹‡“Ğµwäô>Ÿ¿9Nˆ™DPÏ@T­h	Â)-wø!Ïáÿ éE.ê7jˆğ˜(Q»„ày1 g¾ìUwº”ëúvêlƒùçw/0ƒÑí—™’Ó¿[G1e:`Æób©ïåš’’(ªMŒùÄÁ›jTı˜úX¸p¡!>4•Q!¡Ó8}s¨€ĞÜf•&:MÓ§Š=Ÿ\rª/TX,‰\",,—$Éõ˜…‹åSÉâ”zÎ»ğÂÍ)–UX~{ıd>:_³Í$QœÅGóIúZİxã6{Á\'‰gÎõïßß\\_p¢_¨Ñ„IÓ\\=ŒŸÛL2Äv1‘L5iÒÓ§O7ÜÅÏkˆAú§YEUˆdË03ö×+%ïÆÖì•XÜø3¤7Ş\0/?§)°¸zŠ:—Ùd¸%dwÇàœ±xçÙÏM˜†³Ïv*TE]§ÇE@(+*,‰b‡iöJhÕÿz|,VÏÿ?}ı)¾z{<zœß‡¦aÆäI˜$JCŸ+®Ç€K‡Èb–óÉÁ™…U·qSqèm…ÙSæ¢õÙAğ	ôFû†-«7cÀ\r7à£W_ÂDQnÕ$-}Ş{n–Îœ‚C;“ñîÏ‰{ƒî¹ı.º1Ñµ‘š¼]êHÚµ{k~ùq\"&ú‰˜óÄ$¼èÅ‹ÄL“ &>qÜ½êJ4?ó¼õÌ8¹õøÖf—ªLbPÍ¦\rêá	¨éš¯^Ïè§&Ğ¦ëñõ[v`ËÎ×C}§ŒÉ•&&Ò4‡qš>ÂiÖa(šxhºbb\'Ç‰ûô+‰Š…%@øI\0¸¬‰%Ìëš¨®Ü}÷İ†ô0ø&ë·Ê’k>×ï,Ë*dTÉ?Š$±¼’ç©Ñ«{÷îfÖ›ëõ$†¬‹EO&±ÏÄnıúõ\nûëjş²xÕ*K$©¼$Šd•?ö‹~S6ªD¼GTÁH`Ãş¹¾AÛ‘=`¡)yF|OœL­tLÇhG{x=à‡ïÏGPÆHğíd0-ª¶mú©(Š@i\"P¡I”íhğš8»ÏEHh×^{‹ç¯B›s;‰\Z‘Şƒ!¶I;ùumfååŠÓùÀ+®D­zÑXøÇTäH$íÖòKuî¬6ğS_õÈ:Ø‘’v=/Å_S¦aWÊ.ñÁ’à‡âótá ÁóÉÀ²…+ĞïšAøâÕ·Ğ¨I#lÙ¾7¬Ç€!CM“èoõÛÄ¯0é›è‹:qñ8$Åe7ß€Ù3ÿÀ?Sg¡^£ú¨UCFŒ‚Ã/Òv¥Ò®X¿	ï}ó3ÖnÚ†u›·\"y÷Ü1x ÒÅ$öÖ—?`Í¦­ÂeóğàËïâ–+.2¾P¯Oø«“¶eêşqoãº‹ÏG³F\rJ„…%=¼ˆ><qqb¾•ÄãÜHì¾ùRÈ?ğ©&qš%\0ÌÆÀ™ôu²e¸_Jj›¶ïØ™ÌDÓ¦Mrüv¼¹O\"Aå‰A@©(½÷Ş{Æ‹æ@&:só;Í„$‚Ö‰çX>	Ÿ«ï—4Q…£Ó;ƒ’PÒï‰ı¥Å´lÙ2sjM”$‹®‰ŠªÓ¸qãŒêÃ~ÑÄJĞŞ*[,Ó&ö÷Œ3Î0QÙ×Ğ$Û¿ÿpcÊ|ë±±¨uëNì©»¬ÄkğÙ:ø™‰uà‰Ìî8#£®óyuš\Zs¢ûıp½N¿+Š€\"PZT\ne;\ZVÃ}Áì®_ˆÏ_ûÒîÇÖ-ëĞ´™8i»áBÅõã\ZŠ&å‹Ü,`³2Ä9<Yâüíí“‡¯Bª… GfÖmbÔ´ÍYÆ)=Ç×ñÍÚaAØÏ¨“†:2ûÊÛÇC©iHß¦œŒ,L|÷lÛ·]ûróŸĞûÓ£‘²Ó&OCíñ¸ZÌ4áÁblß-Ïî†\0¸ªRúgÙjÌ\\°D0tª9ÓÅTÚóœ62S1Óä{°ø>1Íó­›#<4¿ÿ%jA`€Q-fÎ_‚„¸ú“(ÒTf8 Ó©™±—F\ZU\0«%R<@µ¤(2DÅ8G–@Øhâ9K\nìq£âÄO[&gğä\'Éœ=Nµ‡Ê‹Ml‰Í,—1ªèHNåÉUbÔõ\'Ÿ|o¿ı6†\rv‘:YÅ¶Ğ‰›M4]rVIU\"ã$±dÔï‡d6)‰Ûd	Ê9Û‘QÜécE%3é?Å¾S™¢5zôè£ğãÒ,zzíµ×šª©\"2lSÍœ8Ùû(6îXŠ¹1ïaGMq\"÷-Ş\'Í\\XÌ?+¼§atÎ¹¸iÏûhÔ·`¦!ï&E@PÊ\nJE¢\\AhØ´5nº÷	Ìš1›·/Gp1+å‡à å-³ø¼åŸ-3Å¼eÃÏ{R·£]¯Æğ°1i=ÖnØ„+ÅÁ—óó|ÅoG\n@¦®Ã™‡1oê$DÕ­…eËcúÔÉ¨İ°	6¯Y‰©ÿ›ˆ.B¢êÔ‹Â¼é;%¶ìĞÛ·$cşŸ£SŸş¸îç]›Zµ¾Ë˜dgÚq€ò“YQâçm{çZ<n“¯«Økí¹ã}rÿğÃ\Z2dÈuœ€&>›8ëŒƒ9	\0ã2Ñ´WX²¾;öã\r}ôÑGF1â¬2WÓûF‡s\r\0K–\\eKºxŒí´yX>MX$L,ƒîÉ@çx×D²Bgy:fÓá=2²lTKªItd§‰‘XQyzñÅM O’\"öá®»î2Ç¸ÎŸOÅö’\\ñ‰!1áH»n}©¦Nj…G8ÃĞt8eÊüë_ÿ*pö¦ß•8šMé—F?¬¤ÉI8ğyKdù‡!üæ-Hk„ßWxJô;_¸\rÓ;àÜÌÁèxjøÕ2Ïë}+Q¡U0ó¶œÕø<cgËDI-|zá*ß1ˆö‰7XÙ¿Õ*Øuí’\"PêxÉ@`ÇÀR/¼<tvƒá.E‰éÀı×ïÿÃÄ·_Æ3}o¾xóÄAxÌGÃß/ëÖ,ÁwŸ}Œ¡ÃnŸ‘=¨&ƒh\\Ó–˜;ã¼=úß2XìÅµwŒDŸÁwâÀÁ½XûÏ4<÷À]tó=pÓ¿°êÏÉøôåçĞôœ³…ˆİ‡ jEG­.OÊº®~˜„ñÿı2ø3egçâ‘ÛşOğÊÂ˜·>•õòœÇ3%vÖ½×^‰ğêÁ5î‚ãypı%}qã¥Å@â Mß Ü±±±†Ğ¹F	§:EgmÓ¤Y‰ş:®ÑÇÙN*Gtò¶\nIuRoØ¨!j‹ùÕ51?¿õ„Ø(±$¬‹åR‰¢ùŒí%y(.–\"WçÚÒøNRÇ6²mTÌè|OçuÖ¥’,J«D¹œ2JÍœMhûBòH)–i—_a]ôå\"v®‰÷’åÛ{ÇûFUŒ‡÷‹¤6Ég>V6ø©5—#ÇïÄ	•k½FSïN8Çq)Ú;\"ÔÇPôt!V®¤)…‡åÈÅıY¿!®ZKó÷A¢}ºàãú¬è÷Š‡\0ßŸ\'ÃIF1Uu4¸ôñÂú‹ñÃ§ãqÃ¨ckÒjŒ¹u8ú_2\0\r‹ª´%	›6nÀÆµ›±A~¥¹ã.\\6töl]ŠGn¼;’6Šy¯%Zué-ëàû¯>CÍ:1¸ãá±¨ÜÃédSÙ\r:ù¨ÜG·½bïÍ\\°ã>şoÁüB*NO¸ibÒyjü§¢¾ö¢V9ä%üĞ°«(3ÄF¿ş¡1÷ÉXi”ª;®ˆníZWìjëÊ:Yši®%‰âFå¤r‹\"–7š(A;—–Z[¼óh‰>¸È1gøw6ª\\UU^,yZ˜ı3²pø¸6>Ğ\r7~Ï˜»ùƒ€æsMŠÀ©F@IÔ©¾\"´q9xåbÙ?ó°rş<ìÙ¹\r{Å¡Üáçƒº1qhÒºÎé(f¾`Ìùí;ü=åwœÓ¹ví>€€êˆçÜ°È(Ôo/¿ÎÄ«ü4O;wï5¤ˆ0T_§ˆê!‘T	bš~8Ó|ğ÷Cd˜sI“]û€³ù„C‰\nè‹Zá5LıG –LQÁ\"yâÆ_Tï¸­óû3[<‡lß#Îë¥…œ¿¨T-½ÅœåWuÌY%%OKGv\0n^ü³™ğ@‘³6«*Á´}ÖÏŠ€’¨Š´…Š€\"P ™r%TT¨H¨H¤6¤-ÁôˆW°=,90·´“CVh×ƒO¢A@‹J£PYÂDÿ¦¢Lu%Áêòß¾4‹=Ó<Kó‰ªQ%AOó–ôÅä{€.1UQs^E„ZÛ¤(\"`	•uf§‰o×®]f¦ ıª¶-Àüs^E¶_éªSş¹Á¸=óK´êZf3üVgÿ…Å’ì)H‡3ö™§¸”e>Ÿ,ôıi¼ñ“ãä\rú¸¹Î$-ËºµlE ²\" FïÊzç´İŠ@F€f$nTBèäÎÉ\04/Ñù¿H#D ^b<fÇ½ê‘PJXö>ˆq•+ÓJ©ĞJRLØ„%ĞÎ,­$M×f*§%Q§z­XP<A€dŠDŠä‰dŠáè?•‘‹&ûÎÄò31/âìˆ\\„<Y7SSÉpd¢qâ@C\\93›&E@8>J¢‘æPSŒ\0§ÛÓ´ÄÁáÒ„¦>†ZİŠ¸d‰Õ¶n#ÖÏÀ–ZawM	ë8şŒ´SÜ­S^=MxT H BÓë\"04Ğ„å iÕ§üöh*êU	n’6QPEÀ)ªRt>gxúKÑŠñÂ¸Âl¯=ÛëÏÁîZ+-ä4;âJš‚Õ1ÊÉÉ)M¥Œ‰ÆåˆtvŞiö`hwO%Q\'^¨(:¡S•âl>\'±§¸Ï)ÒÜ¶.ÁŠ˜ïRsY™„K¨XÕšëÚL¾¡êÂDUjU=šHùa¹$7U’z\\8\Z%QGã¡{Š€\"PI°áH˜\n¿Û~$UT©¸¼N2ÖáïÖ/c•´·5ÛUy\nI‹6¤‰‰QéIšègF‡}’(’)ªQü¤2¥æ<Ï0Ö\\§7J¢Nïû¯½Wª4ó‘PñÓ~çl3’*)kúÛ’½ß1Y¾Uc\Z+a²¦:Ş\\;Ó‘d‰KîĞdÇeH˜xÌúš‘4Ù¼Uî¡Ğ)e„€’¨2V‹UŠƒ€+™¢ÙÏòLJ_‚ŸÃ–ĞùÈ.ƒ E!à“€°ä4XÑ5v72Êó¬úc‰Õ$šê¨0‘‘(Qy\"‰¢3>	ÃG(i*êéqEÀ3”Dy†“æR*‚€k OFBNII1‹1§¦¦šÈÈVÅ*ëîºë—DRs²DŠ„ÉšëH¤H–l¼-’\'+îŸl=e–¯T4ÄAe¸KÚFE@(5¬úB¿nÜç\'}…hê£Uy%ë£D‚ÃvœL\"1²„‰Šå[bfI÷5)Š@é  JTéà¨¥(Š@%D€f>ë/EUŠétDçñ²N–ğè¸šŞN¦^«.)a:õZEÀs”Dy•æT*Š€5ñYòd?Ë²»JxÊ]-[(”D•ÎZ‹\" (Š€\" T1Ô8^Ån¨vGPE@PÊ%Qåƒ³Ö¢(Š€\" (U%QUì†jwE@PE |PU>8k-Š€\" (Š€\"PÅPUÅn¨vGPE@PÊ%Qåƒ³Ö¢(Š€\" (U%QUì†jwE@PE |PU>8k-Š€\" (Š€\"PÅPUÅn¨vGPE@PÊ%Qåƒ³Ö¢(Š€\" (U%QUì†jwE@PE |PU>8k-Š€\" (Š€\"PÅPUÅn¨vGPE@PÊï¼¼Üò©IkQE@PE \n!àÈH?\0‡/¼½²©0U…î­vEPE@PÊG^^²³2¥\nnšE@PE@P<A@¥\'OPÒ<Š€\" (Š€\" ¸! $Ê\rİUE@PEÀ”Dy‚’æQE@PEÀ\r%Qn€è®\" (Š€\" (  $Ê”4\" (Š€\" (n(‰rDwE@PE@ğ%Q ¤yE@PE@pC@I” º«(Š€\" (Š€\'(‰ò%Í£(Š€\" (Š€J¢Ü\0Ñ]E@PE@P<A@I”\'(iE@PE@PÜPåˆî*Š€\" (Š€\"à	J¢<AIó(Š€\" (Š€\"à†€’(7@tWPE@POøU2ÆA[(¼\0\0\0\0IEND®B`‚',1469041496,1);
/*!40000 ALTER TABLE `mantis_bug_file_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_history_table`
--

DROP TABLE IF EXISTS `mantis_bug_history_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_bug_history_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_name` varchar(64) NOT NULL,
  `old_value` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `date_modified` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_bug_history_bug_id` (`bug_id`),
  KEY `idx_history_user_id` (`user_id`),
  KEY `idx_bug_history_date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_history_table`
--

LOCK TABLES `mantis_bug_history_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_history_table` DISABLE KEYS */;
INSERT INTO `mantis_bug_history_table` VALUES (1,1,1,'','','',1,1469041473),(2,1,1,'status','10','50',0,1469041473),(3,1,1,'handler_id','0','1',0,1469041473),(4,1,1,'','èƒ¡å‘¼å‘¼','',25,1469041473),(5,1,1,'','Snip20160409_5.png','',9,1469041496),(6,1,1,'','1','',12,1469041542);
/*!40000 ALTER TABLE `mantis_bug_history_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_monitor_table`
--

DROP TABLE IF EXISTS `mantis_bug_monitor_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_bug_monitor_table` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`bug_id`),
  KEY `idx_bug_id` (`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_monitor_table`
--

LOCK TABLES `mantis_bug_monitor_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_monitor_table` DISABLE KEYS */;
INSERT INTO `mantis_bug_monitor_table` VALUES (1,1);
/*!40000 ALTER TABLE `mantis_bug_monitor_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_relationship_table`
--

DROP TABLE IF EXISTS `mantis_bug_relationship_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_bug_relationship_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source_bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `destination_bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `relationship_type` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_relationship_source` (`source_bug_id`),
  KEY `idx_relationship_destination` (`destination_bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_relationship_table`
--

LOCK TABLES `mantis_bug_relationship_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_relationship_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_bug_relationship_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_revision_table`
--

DROP TABLE IF EXISTS `mantis_bug_revision_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_bug_revision_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bug_id` int(10) unsigned NOT NULL,
  `bugnote_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `value` longtext NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_bug_rev_type` (`type`),
  KEY `idx_bug_rev_id_time` (`bug_id`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_revision_table`
--

LOCK TABLES `mantis_bug_revision_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_revision_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_bug_revision_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_table`
--

DROP TABLE IF EXISTS `mantis_bug_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_bug_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reporter_id` int(10) unsigned NOT NULL DEFAULT '0',
  `handler_id` int(10) unsigned NOT NULL DEFAULT '0',
  `duplicate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` smallint(6) NOT NULL DEFAULT '30',
  `severity` smallint(6) NOT NULL DEFAULT '50',
  `reproducibility` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `resolution` smallint(6) NOT NULL DEFAULT '10',
  `projection` smallint(6) NOT NULL DEFAULT '10',
  `eta` smallint(6) NOT NULL DEFAULT '10',
  `bug_text_id` int(10) unsigned NOT NULL DEFAULT '0',
  `os` varchar(32) NOT NULL DEFAULT '',
  `os_build` varchar(32) NOT NULL DEFAULT '',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `version` varchar(64) NOT NULL DEFAULT '',
  `fixed_in_version` varchar(64) NOT NULL DEFAULT '',
  `build` varchar(32) NOT NULL DEFAULT '',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0',
  `view_state` smallint(6) NOT NULL DEFAULT '10',
  `summary` varchar(128) NOT NULL DEFAULT '',
  `sponsorship_total` int(11) NOT NULL DEFAULT '0',
  `sticky` tinyint(4) NOT NULL DEFAULT '0',
  `target_version` varchar(64) NOT NULL DEFAULT '',
  `category_id` int(10) unsigned NOT NULL DEFAULT '1',
  `date_submitted` int(10) unsigned NOT NULL DEFAULT '1',
  `due_date` int(10) unsigned NOT NULL DEFAULT '1',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_bug_sponsorship_total` (`sponsorship_total`),
  KEY `idx_bug_fixed_in_version` (`fixed_in_version`),
  KEY `idx_bug_status` (`status`),
  KEY `idx_project` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_table`
--

LOCK TABLES `mantis_bug_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_table` DISABLE KEYS */;
INSERT INTO `mantis_bug_table` VALUES (1,1,1,1,0,40,60,10,50,10,10,10,1,'','','','','','',0,10,'æˆ‘ä¹Ÿä¸çŸ¥é“è¿™æ˜¯ä»€ä¹ˆ',0,0,'',1,1469041473,1,1469041542);
/*!40000 ALTER TABLE `mantis_bug_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_tag_table`
--

DROP TABLE IF EXISTS `mantis_bug_tag_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_bug_tag_table` (
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_attached` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bug_id`,`tag_id`),
  KEY `idx_bug_tag_tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_tag_table`
--

LOCK TABLES `mantis_bug_tag_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_tag_table` DISABLE KEYS */;
INSERT INTO `mantis_bug_tag_table` VALUES (1,1,1,1469041473);
/*!40000 ALTER TABLE `mantis_bug_tag_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_text_table`
--

DROP TABLE IF EXISTS `mantis_bug_text_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_bug_text_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `steps_to_reproduce` longtext NOT NULL,
  `additional_information` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_text_table`
--

LOCK TABLES `mantis_bug_text_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_text_table` DISABLE KEYS */;
INSERT INTO `mantis_bug_text_table` VALUES (1,'æ€»æ˜¯å‡ºç°è¿™ä¸ªé‚£æ ·çš„é—®é¢˜','æ‰“å¼€æµè§ˆå™¨å°±å´©æºƒ','å“ˆå“ˆå“ˆè¿™é‡Œè¿˜å¯ä»¥ä¼ å›¾ç‰‡');
/*!40000 ALTER TABLE `mantis_bug_text_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bugnote_table`
--

DROP TABLE IF EXISTS `mantis_bugnote_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_bugnote_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reporter_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bugnote_text_id` int(10) unsigned NOT NULL DEFAULT '0',
  `view_state` smallint(6) NOT NULL DEFAULT '10',
  `note_type` int(11) DEFAULT '0',
  `note_attr` varchar(250) DEFAULT '',
  `time_tracking` int(10) unsigned NOT NULL DEFAULT '0',
  `last_modified` int(10) unsigned NOT NULL DEFAULT '1',
  `date_submitted` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_bug` (`bug_id`),
  KEY `idx_last_mod` (`last_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bugnote_table`
--

LOCK TABLES `mantis_bugnote_table` WRITE;
/*!40000 ALTER TABLE `mantis_bugnote_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_bugnote_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bugnote_text_table`
--

DROP TABLE IF EXISTS `mantis_bugnote_text_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_bugnote_text_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `note` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bugnote_text_table`
--

LOCK TABLES `mantis_bugnote_text_table` WRITE;
/*!40000 ALTER TABLE `mantis_bugnote_text_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_bugnote_text_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_category_table`
--

DROP TABLE IF EXISTS `mantis_category_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_category_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_category_project_name` (`project_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_category_table`
--

LOCK TABLES `mantis_category_table` WRITE;
/*!40000 ALTER TABLE `mantis_category_table` DISABLE KEYS */;
INSERT INTO `mantis_category_table` VALUES (1,0,0,'General',0);
/*!40000 ALTER TABLE `mantis_category_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_config_table`
--

DROP TABLE IF EXISTS `mantis_config_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_config_table` (
  `config_id` varchar(64) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `access_reqd` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '90',
  `value` longtext NOT NULL,
  PRIMARY KEY (`config_id`,`project_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_config_table`
--

LOCK TABLES `mantis_config_table` WRITE;
/*!40000 ALTER TABLE `mantis_config_table` DISABLE KEYS */;
INSERT INTO `mantis_config_table` VALUES ('database_version',0,0,90,1,'209');
/*!40000 ALTER TABLE `mantis_config_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_custom_field_project_table`
--

DROP TABLE IF EXISTS `mantis_custom_field_project_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_custom_field_project_table` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sequence` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_custom_field_project_table`
--

LOCK TABLES `mantis_custom_field_project_table` WRITE;
/*!40000 ALTER TABLE `mantis_custom_field_project_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_custom_field_project_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_custom_field_string_table`
--

DROP TABLE IF EXISTS `mantis_custom_field_string_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_custom_field_string_table` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `bug_id` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  `text` longtext,
  PRIMARY KEY (`field_id`,`bug_id`),
  KEY `idx_custom_field_bug` (`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_custom_field_string_table`
--

LOCK TABLES `mantis_custom_field_string_table` WRITE;
/*!40000 ALTER TABLE `mantis_custom_field_string_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_custom_field_string_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_custom_field_table`
--

DROP TABLE IF EXISTS `mantis_custom_field_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_custom_field_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `possible_values` text,
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `valid_regexp` varchar(255) NOT NULL DEFAULT '',
  `access_level_r` smallint(6) NOT NULL DEFAULT '0',
  `access_level_rw` smallint(6) NOT NULL DEFAULT '0',
  `length_min` int(11) NOT NULL DEFAULT '0',
  `length_max` int(11) NOT NULL DEFAULT '0',
  `require_report` tinyint(4) NOT NULL DEFAULT '0',
  `require_update` tinyint(4) NOT NULL DEFAULT '0',
  `display_report` tinyint(4) NOT NULL DEFAULT '0',
  `display_update` tinyint(4) NOT NULL DEFAULT '1',
  `require_resolved` tinyint(4) NOT NULL DEFAULT '0',
  `display_resolved` tinyint(4) NOT NULL DEFAULT '0',
  `display_closed` tinyint(4) NOT NULL DEFAULT '0',
  `require_closed` tinyint(4) NOT NULL DEFAULT '0',
  `filter_by` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_custom_field_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_custom_field_table`
--

LOCK TABLES `mantis_custom_field_table` WRITE;
/*!40000 ALTER TABLE `mantis_custom_field_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_custom_field_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_email_table`
--

DROP TABLE IF EXISTS `mantis_email_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_email_table` (
  `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL DEFAULT '',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `metadata` longtext NOT NULL,
  `body` longtext NOT NULL,
  `submitted` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_email_table`
--

LOCK TABLES `mantis_email_table` WRITE;
/*!40000 ALTER TABLE `mantis_email_table` DISABLE KEYS */;
INSERT INTO `mantis_email_table` VALUES (1,'wangqingchun@kingsoft.com','[MantisBT] Account registration','a:4:{s:7:\"headers\";a:0:{}s:8:\"priority\";i:3;s:7:\"charset\";s:5:\"utf-8\";s:8:\"hostname\";s:10:\"mantis.dev\";}','The user administrator has created an account for you with username \"wangqingchun\". In order to complete your registration, visit the following URL (make sure it is entered as the single line) and set your own access password:\n\nhttp://mantis.dev/verify.php?id=2&confirm_hash=ft1h2NNXMCikCHhcjOMpTKPxYTfDewbPfhasa5l3tzLKwcC6WMBC-A_PjMKfdeQNbVw35R-9wdxGV3eX9hmv\n\nIf you did not request any registration, ignore this message and nothing will happen.\n\nDo not reply to this message',1469041029),(2,'frostwong@gmail.com','[MantisBT] Account updated','a:4:{s:7:\"headers\";a:0:{}s:8:\"priority\";i:3;s:7:\"charset\";s:5:\"utf-8\";s:8:\"hostname\";s:10:\"mantis.dev\";}','Your account has been updated by an administrator. A list of these changes is provided below. You can update your account details and preferences at any time by visiting the following URL:\n\nhttp://mantis.dev/account_page.php\n\nE-mail wangqingchun@kingsoft.com => frostwong@gmail.com',1469041206);
/*!40000 ALTER TABLE `mantis_email_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_filters_table`
--

DROP TABLE IF EXISTS `mantis_filters_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_filters_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) DEFAULT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `filter_string` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_filters_table`
--

LOCK TABLES `mantis_filters_table` WRITE;
/*!40000 ALTER TABLE `mantis_filters_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_filters_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_news_table`
--

DROP TABLE IF EXISTS `mantis_news_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_news_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `poster_id` int(10) unsigned NOT NULL DEFAULT '0',
  `view_state` smallint(6) NOT NULL DEFAULT '10',
  `announcement` tinyint(4) NOT NULL DEFAULT '0',
  `headline` varchar(64) NOT NULL DEFAULT '',
  `body` longtext NOT NULL,
  `last_modified` int(10) unsigned NOT NULL DEFAULT '1',
  `date_posted` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_news_table`
--

LOCK TABLES `mantis_news_table` WRITE;
/*!40000 ALTER TABLE `mantis_news_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_news_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_plugin_table`
--

DROP TABLE IF EXISTS `mantis_plugin_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_plugin_table` (
  `basename` varchar(40) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  `protected` tinyint(4) NOT NULL DEFAULT '0',
  `priority` int(10) unsigned NOT NULL DEFAULT '3',
  PRIMARY KEY (`basename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_plugin_table`
--

LOCK TABLES `mantis_plugin_table` WRITE;
/*!40000 ALTER TABLE `mantis_plugin_table` DISABLE KEYS */;
INSERT INTO `mantis_plugin_table` VALUES ('MantisCoreFormatting',1,0,3);
/*!40000 ALTER TABLE `mantis_plugin_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_project_file_table`
--

DROP TABLE IF EXISTS `mantis_project_file_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_project_file_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `diskfile` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `folder` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `file_type` varchar(250) NOT NULL DEFAULT '',
  `content` longblob,
  `date_added` int(10) unsigned NOT NULL DEFAULT '1',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_project_file_table`
--

LOCK TABLES `mantis_project_file_table` WRITE;
/*!40000 ALTER TABLE `mantis_project_file_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_project_file_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_project_hierarchy_table`
--

DROP TABLE IF EXISTS `mantis_project_hierarchy_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_project_hierarchy_table` (
  `child_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `inherit_parent` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_project_hierarchy` (`child_id`,`parent_id`),
  KEY `idx_project_hierarchy_child_id` (`child_id`),
  KEY `idx_project_hierarchy_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_project_hierarchy_table`
--

LOCK TABLES `mantis_project_hierarchy_table` WRITE;
/*!40000 ALTER TABLE `mantis_project_hierarchy_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_project_hierarchy_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_project_table`
--

DROP TABLE IF EXISTS `mantis_project_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_project_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `view_state` smallint(6) NOT NULL DEFAULT '10',
  `access_min` smallint(6) NOT NULL DEFAULT '10',
  `file_path` varchar(250) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `category_id` int(10) unsigned NOT NULL DEFAULT '1',
  `inherit_global` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_project_name` (`name`),
  KEY `idx_project_view` (`view_state`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_project_table`
--

LOCK TABLES `mantis_project_table` WRITE;
/*!40000 ALTER TABLE `mantis_project_table` DISABLE KEYS */;
INSERT INTO `mantis_project_table` VALUES (1,'é‡‘å±±äº‘ç®¡ç†å¹³å°',10,1,10,10,'','é‡‘å±±äº‘è§†é¢‘äº‘å†…éƒ¨ç®¡ç†å¹³å°',1,1);
/*!40000 ALTER TABLE `mantis_project_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_project_user_list_table`
--

DROP TABLE IF EXISTS `mantis_project_user_list_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_project_user_list_table` (
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `access_level` smallint(6) NOT NULL DEFAULT '10',
  PRIMARY KEY (`project_id`,`user_id`),
  KEY `idx_project_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_project_user_list_table`
--

LOCK TABLES `mantis_project_user_list_table` WRITE;
/*!40000 ALTER TABLE `mantis_project_user_list_table` DISABLE KEYS */;
INSERT INTO `mantis_project_user_list_table` VALUES (1,2,55);
/*!40000 ALTER TABLE `mantis_project_user_list_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_project_version_table`
--

DROP TABLE IF EXISTS `mantis_project_version_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_project_version_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `version` varchar(64) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `released` tinyint(4) NOT NULL DEFAULT '1',
  `obsolete` tinyint(4) NOT NULL DEFAULT '0',
  `date_order` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_project_version` (`project_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_project_version_table`
--

LOCK TABLES `mantis_project_version_table` WRITE;
/*!40000 ALTER TABLE `mantis_project_version_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_project_version_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_sponsorship_table`
--

DROP TABLE IF EXISTS `mantis_sponsorship_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_sponsorship_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bug_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `date_submitted` int(10) unsigned NOT NULL DEFAULT '1',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_sponsorship_bug_id` (`bug_id`),
  KEY `idx_sponsorship_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_sponsorship_table`
--

LOCK TABLES `mantis_sponsorship_table` WRITE;
/*!40000 ALTER TABLE `mantis_sponsorship_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_sponsorship_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_tag_table`
--

DROP TABLE IF EXISTS `mantis_tag_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_tag_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `date_created` int(10) unsigned NOT NULL DEFAULT '1',
  `date_updated` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`name`),
  KEY `idx_tag_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_tag_table`
--

LOCK TABLES `mantis_tag_table` WRITE;
/*!40000 ALTER TABLE `mantis_tag_table` DISABLE KEYS */;
INSERT INTO `mantis_tag_table` VALUES (1,1,'èƒ¡å‘¼å‘¼','',1469041473,1469041473);
/*!40000 ALTER TABLE `mantis_tag_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_tokens_table`
--

DROP TABLE IF EXISTS `mantis_tokens_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_tokens_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` longtext NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '1',
  `expiry` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_typeowner` (`type`,`owner`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_tokens_table`
--

LOCK TABLES `mantis_tokens_table` WRITE;
/*!40000 ALTER TABLE `mantis_tokens_table` DISABLE KEYS */;
INSERT INTO `mantis_tokens_table` VALUES (2,2,7,'ft1h2NNXMCikCHhcjOMpTKPxYTfDewbPfhasa5l3tzLKwcC6WMBC-A_PjMKfdeQNbVw35R-9wdxGV3eX9hmv',1469041029,1469127429),(3,1,5,'{\"filter\":false,\"profile\":true,\"attachment_preview_1\":true}',1469041473,1500579152),(4,1,3,'1',1469041473,1469129553);
/*!40000 ALTER TABLE `mantis_tokens_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_user_pref_table`
--

DROP TABLE IF EXISTS `mantis_user_pref_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_user_pref_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `default_profile` int(10) unsigned NOT NULL DEFAULT '0',
  `default_project` int(10) unsigned NOT NULL DEFAULT '0',
  `refresh_delay` int(11) NOT NULL DEFAULT '0',
  `redirect_delay` int(11) NOT NULL DEFAULT '0',
  `bugnote_order` varchar(4) NOT NULL DEFAULT 'ASC',
  `email_on_new` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_assigned` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_feedback` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_resolved` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_closed` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_reopened` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_bugnote` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_status` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_priority` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_priority_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_status_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_bugnote_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_reopened_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_closed_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_resolved_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_feedback_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_assigned_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_new_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_bugnote_limit` smallint(6) NOT NULL DEFAULT '0',
  `language` varchar(32) NOT NULL DEFAULT 'english',
  `timezone` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_user_pref_table`
--

LOCK TABLES `mantis_user_pref_table` WRITE;
/*!40000 ALTER TABLE `mantis_user_pref_table` DISABLE KEYS */;
INSERT INTO `mantis_user_pref_table` VALUES (1,1,0,0,1,30,2,'ASC',1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'auto','Asia/Shanghai');
/*!40000 ALTER TABLE `mantis_user_pref_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_user_print_pref_table`
--

DROP TABLE IF EXISTS `mantis_user_print_pref_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_user_print_pref_table` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `print_pref` varchar(64) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_user_print_pref_table`
--

LOCK TABLES `mantis_user_print_pref_table` WRITE;
/*!40000 ALTER TABLE `mantis_user_print_pref_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_user_print_pref_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_user_profile_table`
--

DROP TABLE IF EXISTS `mantis_user_profile_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_user_profile_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `os` varchar(32) NOT NULL DEFAULT '',
  `os_build` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_user_profile_table`
--

LOCK TABLES `mantis_user_profile_table` WRITE;
/*!40000 ALTER TABLE `mantis_user_profile_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_user_profile_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_user_table`
--

DROP TABLE IF EXISTS `mantis_user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantis_user_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) NOT NULL DEFAULT '',
  `realname` varchar(191) NOT NULL DEFAULT '',
  `email` varchar(191) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `protected` tinyint(4) NOT NULL DEFAULT '0',
  `access_level` smallint(6) NOT NULL DEFAULT '10',
  `login_count` int(11) NOT NULL DEFAULT '0',
  `lost_password_request_count` smallint(6) NOT NULL DEFAULT '0',
  `failed_login_count` smallint(6) NOT NULL DEFAULT '0',
  `cookie_string` varchar(64) NOT NULL DEFAULT '',
  `last_visit` int(10) unsigned NOT NULL DEFAULT '1',
  `date_created` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_cookie_string` (`cookie_string`),
  UNIQUE KEY `idx_user_username` (`username`),
  KEY `idx_enable` (`enabled`),
  KEY `idx_access` (`access_level`),
  KEY `idx_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_user_table`
--

LOCK TABLES `mantis_user_table` WRITE;
/*!40000 ALTER TABLE `mantis_user_table` DISABLE KEYS */;
INSERT INTO `mantis_user_table` VALUES (1,'administrator','','root@localhost','63a9f0ea7bb98050796b649e85481845',1,0,90,5,0,0,'3341e8baac05eacbfbe829d3ce61ecfd5493cf0b63a070c83d27986b99e4f2cc',1469043153,1469040627),(2,'wangqingchun','ç‹é’æ˜¥','frostwong@gmail.com','18f8c6a20bae6ca6ffeb735c9f21a790',1,0,55,0,0,0,'tQqZ9PRd4Bv_5xXJO0B_ubljGaWWhEt1egkSFvJh0fo5rHAie-UMYIhX3DrHVZC-',1469041029,1469041029);
/*!40000 ALTER TABLE `mantis_user_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-21  3:55:30
