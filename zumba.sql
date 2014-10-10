-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: zumba
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1-log

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `ci` varchar(7) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `movil` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `tipopago` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ci`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('2','aaaa','','','','','','','Diario'),('22','dddddd','','','','algo@algo.com','','','Mensual'),('3','1','','','','','','','Diario'),('4','fgghfg','','','','','','','Diario'),('5','asdasd','','','','','','','Diario'),('6','7896789','','','','','','','Diario'),('654987','MÃ³nica Raquel','Cabrera FernÃ¡ndez','','','','','','Mensual');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos`
--

DROP TABLE IF EXISTS `fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos` (
  `ci` varchar(7) DEFAULT NULL,
  `foto` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos`
--

LOCK TABLES `fotos` WRITE;
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` VALUES ('1235555','ÿØÿà\0JFIF\0\0\0\0\0\0ÿş\0*\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0öÖ\0\0\0\0\0Ó-XYZ \0\0\0\0\0\0\0\03\0\0¤XYZ \0\0\0\0\0\0o¢\0\08õ\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0ÚXYZ \0\0\0\0\0\0$ \0\0„\0\0¶Ïcurv\0\0\0\0\0\0\0\Z\0\0\0ËÉc’kö?Q4!ñ)2;’FQw]íkpz‰±š|¬i¿}ÓÃé0ÿÿÿÛ\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9ÿÛ\0C\n\n\n9& &99999999999999999999999999999999999999999999999999ÿÂ\0\0Ğ\0ó\0\"\0ÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0\0Ş]zE@øÏc Y¹cq4ŞËL\"êp)kºño Ò.ÌM­NéjûmŒ]ÄbÚi¤RÊ£Jâ\\UHı«Ó‹ÒoˆùM3~@³’	È€å!À´ãMÚ®×á:ÅŞÓÆ±c$%†-­Øcê!}<u:›ós.Š’D¤ïhĞYß-qr$\rY˜¢Ï—¡ìVV,ÒSòáİ.?·¤šg$Œ’A\\¨Ë•l—Q$N]@eª~³ÕÇ\0Ü]‹¸!­½øúóe±:óaÉSl–İGLÓ.ò·R}n«T¸ä¢¥À©qœÜ’IPRHTDJçÏaÙ*’ä6 TJûÃYi˜/(x¨é>Ûäâå÷ñó;äs¨Ú4XkNñİleJ¼µ¶\'lRW¥Ê_š„¿4—Msç}\Z.nŞ}Ó$†B¥7+®ÌKÇ¬t’q¼·Ôm£IêüÀı{ÁøeÓ!Üªƒ’ §wjç=PÕƒè¹Ó+L—ôòg¼ßÎõ.ô¨#SÀØÁvËwa• ƒ*Ç?Ÿ¥H\r—öó“Ö¢åí¯Šö›®«ªjKd—êyF8t:ŠvrÃŠïHG U¿0\nG\'m¢yç¦ò `V|ïub@e‰É§xè6Và½_N^D¢¨uàTû¹ê¢ä¶ä¸Ÿˆf˜¾N¶<çy6”“y6××Šøeo”5>Eh‰Éé9ï‡ñHoĞ¡o/gáİôcèù®6• 8Ï\rôƒ–z\0Í§YR—Œì›âè³.\\Â»î€`\rWêójÌIl#IÃÓæÛ*ÜÍáµ{æ¡Ê|Ö$Š]æÊgx«®hïHŒ*É4U®¢mhŒp\"ótûIËNCè^®sq¢f—ßuHç	‚/µšU÷Ş\\e&®¶ç•9Á‡Ÿ õ\Zù–8Ó{\nó{N-\nù6÷¥äoÈqZ	v-Û=U¶ÖmLÂNT”ÇT·V4’z3K²Ü‚¼ß~˜kqëñ,KhÀ:p$±ÛYyÂ¤µ.[&V®ØV5 êê5ÅíÊyÖ™´VƒA1µûäõje‚F¹(|ZgĞCgK¬\r>èÓ øâûÿÄ\0,\0\0\0\0\0\0\0 !\"1230@A#4B$ÿÚ\0\0\0şFæææææı	İÜ;™ï(‡-X›î[Q®á—A‹u×EÍ§]kúC.’]­6›Ş‹;Ê[­º&m%Ne¯r/Zæ¬5ö·pë½¬“š¶‡\"ÆÊÇå«zF¿LŒ‹Wì×[SĞ«»Z±Û>Új³´²Š*DZ”xnEÁ|òµĞYmUYì­hÇL1éi]5¶>_ú>JÑâƒ†{ñc`â\0~­uîj²Œe\\Ñÿ\0ƒĞ×‚Øç»~ã¹ntæîåû“’ıÌå*ËeAu½«e³L\"ØAs^‡è¶^ÍİKé|‹\Z%¶­Y5”cÛn6&<»¬Ëvné»šy×}×*9m-gºßkQguTîj‚êŒ]áfœO¦ËÕe–½U:a`®2,ãÆUğ[–uTÀuXj„/¶kqrº}úK::;:æ£”¦Î›\0AilÌ›È_¬A¸T<Éâ,bÇK\\°\rcÙÎ¿áŞÜw¼tÒÛ²‰aXL6¨–YÊb\'#¼]ÚUsW*±l_N§‹;eı¦ŠÊêõä@Fy]œ)¾æ²$cÊc“YšÜâ|ñĞkŒ× VÆaé?C+û¼­¹Tÿ\0ÕŞötË@%Ÿ|Dö)ñ­š¶Å5Ø†µ3 ±iX½	P‚•œDd—/ó1ë`ÜYeVs~ÓúQÊr•·$ Mrwf­i½\\XWKm•ÌôzµæeÔr††ù}Ó„È¦}%oÔN}§Ú|@¯J›\rñ™Ws¹á¿éşÙ™J<«w~]û¶÷äõÚ¼T$ÌåÏL3.§Õs]5&xfGMÿ\0oRÊU¥µp5ùä~Qõê|Bîå¨Ú`–Y9KQÒä\";zµzS*Û_¨ûl’‚¼Àùå¿~ü­üŸÙ%šc\'ìX*ÇX™Ãö¼¨0øu¢Ûq®¬Ï·Şœ}swàü•ÓôU<„zùL…éu1É1“oÑª´~<ë_!Õ×lt&ø=6k„—x}VJ¼9ë»ÓX1ÉdFÒ ùrÔ¥ç%œ„¹•ccøf:Ã‹ærë%e ÔPŞXø©ÆÚé¶øïÃm÷ä°Ø¢u¹BZ\nÁ‘p•äPêŞU{öŠÑ¬çïÏßŸÈØeÏÈ]©j¯ëKhêİ—É\n7jCd«PË>ÃL^=cÄÃÆì\'Æ9OyÊÙÓIÀM	ÅcqXºeá\nêY¢.¯Rjt¶¶…±8ü¨µª}ì\rÂ°ëlË1@a©Å§¼÷õl¡9	ÈÆ¹Ä9§½Hs£Z¬nû’ÀÕØIŠ6S‘,‡Êœ†âùrÎÍÊ.d^¼|½C&( È\r9ÀyC6bÙ\rÊ!ÉXö¼,Ö\nßàËÅ„Dø4¯íÿ\0‘ùÆĞ~-ÖoÚµĞş¢ÂÚ››òK^¹^^‡sGzNºN,gKs ÆF3³eˆ¬%µ;N‹,©È°qŠLÆ…üD·ò|•gÓ¤àŒg–á¾¬­ë]7hÈË Å´Á…dì7•¥µÍ´ÜÜ÷…¬ŸäØFVk£s•1±î®‰B¢ÌŸ¿û¢ª™ƒiF¨ ü£óªUgQH~6X‹dí™elË™P5P[¡[ƒç±]DêÃÊÃÒUœDu€´ga§\nšµª·Rns‰Ö^V&S/FòÓœ.!’Áb™ÉfÖ…ç¹šš€C¹©í!§8¬ú@Rnr›Œ©8,é®Íi°]`½¡»p°›Œ\"m–uÿÄ\0#\0\0\0\0\0\0\0\0\0!Q\"1A 0ÿÚ\0?Š”ßÃbb£6*3b¥+Øt¦¾Œú	¿†ÄÍ‰„ÇFhœ=èØönG³r=›‘ìÜfä;7#Ù¹ÌãÙœ{3c©ÍÈv~™&Õ¿Œ‹ÒrôÚ²¾‹ø&n3qY3ˆ\"uœŠmûd–CVeµ±oçó¯¥wğ¦ÓáŠŠVBVEH]eˆÂâ¤´*7iùıàı”a~HFä¼EÉd8Fæ(µ‹ém%E™FÄi2”K-‘¡hİ§ëG­ŒÊ‰Ÿ’öMğQÍpJs|2>%Çü-\'\"ì9Üà„±w#FÛ6ÌKiäyÈ©tÈ»>F“DYÎ~3)™ÈÜ‘›.d\\É’w‘$G«	™\\FEË¢ÈÅ,X—Š|’ñD^F\"¦(#Å‹i}ZZ4ZßåÿÄ\0%\0\0\0\0\0\0\0\0!1 Q\"2A03ÿÚ\0?HQ9b<‘G$M×‘N,Yb<±G4Gš\',E’,„”¼íÇ#I}\ZKèÒF’ú4‘¤$jÍdk/¡c‘Ç/£iwğÙ½œ’\'êh~ªD}[şÉxÿ\0htNNN‘§~ŒØã‰	8H‹ëá,¬ôñí³2kòˆıDÚ!‘EÜ‰Jİ£jé–Y)Ğò3v<ÂÌ\'~Ù™éåü=NVºFÔM1H’Ÿ“ixfÅüVF)Z³,®BtgÍthêÈE?$¿jDz]‹·Ğ¾-¨NÌm™?a{3¤fÉÿ\04»?éÙhoà×¶)ÑºCİšEÈÅ¼’TèÅ*èyó(¦™fã“*Gg§êXlº¦8¦ÉE¡¦;¢ä\\†Ø¤ÑÊÍN1@ãˆ•Fˆ´†ÓğIP˜üŠ=hx‘,G¡°älAJ}8:‘§3Ô–>G!±ß“”YG‘¿”†Ùf¦¾É´X¥Cmù5öT4MJ55?ÿÄ\06\0\0\0\0\0\0\0!1A\"Qa 2q0@B¡3b‘Ñ#CPRr‚ÁÿÚ\0\0\0?ÿ\0A.£@9“äY]¼·”çA´zW%ÔÀªtºs+9–İ«ßû\'»‡¥ŒÔÊ`£]´‡$~iQ™\nt)çqªÉÅ3–bFëø‰ç‡¦Öjeã{“*T¦\'o)Õ©Ò‹4¢(R€&ê£jSŠŒÙ4;‡fRÏÜäLfYysW6\\¡f¯DwEîı•7Ô¢7›ô¾_g=_ªâ8†€òÆØ•Mü¶õS½•òÚ7aåq2¶ZÑ T‹ZÃ,9 Y^›-Z,<®%c@ÙP¥Ëamä*´¿/4İ:“›L7%„]=ÿ\0ì¤¸G½³™Õ^›V‹+ˆcXĞ=‚áÃ©ŒÕ\0h0ªPå3(§\"Ë€–ÿ\0eÆ\0\0°UêùTşv‚„ÿ\0—Ô©Hü2ÿ\0uÄĞ4^æš§¯auÊsi†díuÁÈzjp¼¢K‰êÙT3Ó¨/•5ü‡rÚÜ MÓÈKólª¸Ğw.£b&êNAå±¹@›¢ÑAÓÌÏ¯•V8z’ñ\Z…O?ãQ‚\'RåcšvÕŠ®nY›* S/.Ğ…H¾ƒËÙ©²,<Ìÿ\0º¨ù{cP¸jB™i¥»“²ğäUpË%Ö\\39hëq{*ôÇöš›’%”Ï2}Û&=´‹r‹Îê¡ÔÌº…N¯!ğÖeÙ~ 2ùO„êThšyÎg›ğç›—,ÏJáérÈ4Ì“öxZ­W¹k÷0.T/(yW_+¤¨xı~ß+p,ØXŸÕ^íDuğ²º`ı¯ÎŸëè•ò‰›œ<´øÂw8_Eªî§e*rÈ(A_*G¯E¦U±Í±[,»à\0d•¦XÛ\rEµG·ÔÑiën9`œ\Zı¡^ÃÑ8k-ì³2ÿ\0blP1Ê*7RµNv°‡£±Ã åY¨·×Êµ+4’¥_›ª*t¦ø6LàWdÏ®N%G|>öC²şM‘vØE½O´ıo‚¼£áJˆ^UÂÑ@¼¬ü²¯cõ¨ÍT$(+\\cĞp=°Îä@ÂìÅD\'AèòºÙúàŞŞ¹ÀxVSˆ×åt½í+:æ8¿”rNÚB8BˆYÀ—5ğ‚ºPpxU°hÇåj©óÙt’%?™Ô|®‘\0(~ÊvAÓAÕ.{\'À¬`¯ìÂï+PµVVV$•¢¸ «/„®\nÓ\r,¬²àÓu\'Q²Î˜ÖY˜XÙfÔàm„wDÆØêV¾‰_Ä+C†«\\3A²÷-T¡t[Ñ{-Tv[¢áõ4Vj»!u1{\n\rş¨tÆºº\n‰_8_üY´ğ‡e‘¡wZ)’¼•ÒÂUÙE¡^Ò´Œ4V0®âaC®fÄh†7ÆwDŸ_K—\\ÊŞWæ[ú5^ğVXº³\nÒ i„B9…Ğ\Z_ƒÄ/Ê¬B‚Ò´+ÚUÄ+	^Õr¸+¶!{V‹‡­`¡¯ºê\'ú Òl·*`Jö@¸³[áe BöÇÂ°Wºè»{au¼;\r‘åT-IW¹t9_¨©Ğö[z5\nÊîÆÎ…±ò½«®ÊÏP©a¢³î³6ZW]ğÑ[Y\\c¯ĞÕh´[­µh¤[İi…Å—e¬«…¤-V«\\;áÿÄ\0\'\0\0\0\0\0\0!1AQaq ‘¡±0ÁÑ@áÿÚ\0\0\0?!ÿ\0!àün\\¹rçËòøc*„\Z\Z•ZÛY˜\nsÅ2®ß@ãûŒiejŸ¸Á;ŠUO´ \r€Üfm2S-JjÃocE„¡‰R)€ÿ\0¤@=£\r­)-cì¦\nÂècu ¯ê_Êæƒø–÷\"I¹L‡ƒ~â,Ú:e„QKN¿p¡ºƒr@-&a+¡ÚW£Š²åøu53ÒVÀYuKY«Ä|L\"C¸—\nŒ‡º„‘``ÄŠ¡ZW;2,Çp:`ÔäY…î\"6 p@æû/t‰ÁŒc_˜8b“&âÈ ]çŸ¨XÜÍçmÔ\n:‚áT”z\'§7.¡şeÒ{!\0\Zd0çÊÜ^à6¾ŸñRá&,lÅc,\n‘ªğbrÀr»\rö¹tTM@5Q}âl½\n*²™[,¬X07ØANèUÄIt’ùÔª_`rÅE˜º+•EîX\'\nÅ`ƒ;¢`!è³ÔcÅLIò7¹œ¿äXùö…KÀÃjÒ/h™U¹·¹¤‹wmDıÃÔå)N?Æsø_ÔZ‚õqoÁçúœ$ù”,/Ã/Ü¶eÛøf[ã_‹åŒ\rÄ\Z¨‰³ğ¹Àn/E®ˆË–×µEÁ ¨\Zt¹u‚Ì¹‰Â­\"XØóàÿ\0-0 Có:ÜTßLã1Ü[_å%şÊÊ5D¥¥·W.Ê«¡”¡âpõÃpíUÂ =œ_øbÈg:—Š\Z•‡\0•jî-7Äv³my0ï}’® K:b\nef1¯Câÿ\07Áø?ïXŠcW(ì!³$t­«Üæ­ÑÖ½\n™™€şa¥!µŠ‰€)R%XvJ	rCÍJ‚t\\.RókŸ\'–gñtüEjí¸Š—2 \n•4ì…7€]ö.`ÕQ[õ16Û¤-Ö8`XĞÀ\"—<¥Cû‚X.!±•P©™KÑ©L©¤_sz¿ÿ\0Àp9ó–ë†ˆÖGX Dé`²,@)âª|Û¬KMcŒÄn¡è\"Ş™¶\0Ê…Ğàú„U+ÄiõSğ2Ù.Z*Ô¨\ZeùÀÌ(ÅxÄ”\" †êX(éeÇ=İ‘A|3Q`œËÇ.!šÑ.5­Ô°V\\îQÔèXïŒJk~î\Zk=ø<2Ï3Á¹œ—pkK6x«²³l«œV˜ZP5ŠH%…Ñ¤%Ö­†Ø+%Q|0[dp°ÁÍ¼GE&án°-11îCkÄl®ªÊ.n¼_š¿Î›wãaµ¯æ§Wè“‰Ä»\r`LAÈÄR•vBk¸\Zš†È¢ÙJï–â€ÅN¾å,åÛiº™}¾~X‘nıMOí§Ã83”ÛLÉ8$½m9©b–€BÀ]ÅL\ZÎ`€ qQŒ{•TÒ1äÒó/õ‚Ùã™]n7Áæ¡eAÁ( ëHÅlwK0(DšÀøpL1qg	u2Ô¯lBãeË«Ö·\rÏ0õ4‡Ê¼\në=6Â¦˜ù„yW2@²ª`T¦5*#°ôÔ×”pmøËidË‹\'î—V¯NàŒ0ƒõJlÜ*ı‹f-ÊGWa*×«ÿ\0A2¶m„U´C†¥®‹Lf–^³+{vs(0¤Í@U³¨2R,¦kpëÁˆØ’Áºõ@7+ÉáàY›L2ĞÍ•lÌ³|“®-ÀæU¿Ù.ĞıË8’Å¸X\\@´@\rvˆ›àà!8;Xetk7ZX6´Êf (Âu1 8%Š)‡ÚT}Í	É‹»‡«¤µ¶=JÊ›ù–B,î!„$0ó\n& ^¯ÁÁÖeoY=G¥˜fv£É\Z°m‹1ÅC2¿ƒ,8W¹Bš¼î¥µuŒÎ\Z]!İqT\rP[S1Æ¥Š\0å–²ñ\\\\d¿¸xÆ.:¾`ä\0«`\n¥Ü[®¸	o\ršXÍBø\'ÌüÌ2¦U}>æ&*¦KføGÀµcì`´ù`ßÚSÉû‚åÑ.´{‡8FÚ+6À\ZÍì€\\ïˆ­S)MH´x™ÁV@%˜ÕÒ3‹Y1\Z½’á»ƒßH{Ê£‰a©Ü¿z&KäN55.orØ]“’®!ŒáFù€[ib7d..ŸL[dÔ	­4ÇA\\¼pc Gª!ªi¬3÷	›Óq7v<@ÑàÄÅ`àÀÊUl¼Å€lÿ\0	aN0pŒÚ°f‹VU)wé”J“Ü¦6º›\nøŠqû„4ú`)«½J$ë„e!pYøˆ2üX7˜Ë8…fb‰—©•~*˜¯!®Ù‡3\n£\"s\rİ(w*ÔÕ·CÖ¥’—8H•ël¦p{LÇ2p¥í~®6²‹à3m Ów$–ìÀ›#_†z?X«=G™ıå;HEW«¨dIRÂä9¢<88aj-@Õ‹…•êc˜Í­DQ°°ÌàÔ³\nG\'³2¨»sA(E+´æâMàâ)A˜]ï¨;õ¦^É„;ùbÜ¹nŸâ\0Æá•ë>gÔ¿\"ı’Ïÿ\0	éüÌpPôLÈƒtÇ×{–mZt2Ô\\¼p”ƒä×t…€`ì\\m…›KHäs!+….%Ñ&.ÑÇ([eEW0gºfÜJ©ä¸FL»«´,H©Ù*,¨W(µÃUÎÆZÕI´=ÆYÜQµ¶vN%LBODUíó6­ruî;}ÅÂ5)¸c>˜Z®1‚ôÖfZKà£qÅÌ¶«$ã²ú&–Z2â‘ëí È¥^:e–%=Úìg$¶’R¥³¦)ú»!Ú¿dÉê0ôÑ=‹/‚ˆWŒÁ1Î¦N>Øoèìù–Ñ‡¢#qfï\0Ó=ÜÆÅû—vo ÀİŸMË;¯¹Ôâ›6Ù¨h+Lµ\Za4TjÈM3>Ù•,´1Â ±™Ô5SÔæaëÁÿÚ\0\0\0\0\0“|âµô¢’1OáÂ6[àO›sØ ÿ\0ìéÉ½òmŞ5™|HÒ/ğÌº×rx¬W\nÃÏ}Ôø]½BÊx}ûx/¬HJÀ„]«áËí¸Ïò´»RBvIUÍ{´¡ÙùU^¹)}´şŒöE0d™ZÓÊš›Ÿ„o~ƒˆƒ¼øâmË(ÍÀ~1oLÃ¨<“Êù}|Gb(©ÿÄ\0\0\0\0\0\0\0\0\0\0!1Aa‘Q qÿÚ\0?„nHf¤…Ï\'3%$Œwtâ,fHg°Šg¾&37şMÏP8c»é~ßKöú_·Ò—Òı¾—íõ\'kÓö>töîÌ~Û#záá\r÷„ğ‚vŸ	‡­m¿å°v)cÈr,‹ü²}HŒºÎg#ş=£‰²¶Dêö¡Ğ#LË|sp¼3DáË\"ªŞ@NEëÀa|Dÿ\0(8lDÒ^²a\0˜Ú-…êàĞ‘şlï¾AjŞMö7e á\'iLÀ»Z\0á!‡¼.¸É ò3“oRû€IĞ».ş¡_!>Î|–|Z™~?›í–šÔn1ÓÉ6ê)—ôç1ovñ[„Q«aIk.²­Â{kÇ‹6&\ráË.ËK§¸6$d™?,á¯\n1€-=ƒàå»·–ÛÿÄ\0\0\0\0\0\0\0\0\0\0!1AaQ ÿÚ\0?É.l#t„BvKì‰Ú;vS›(w}?aà·yArı—è¿ı‡ø7äßœe˜ËiÓtn¥XÎ$º„òHàñä¯;#üc&°}•ï‹´İ~ ãÔj×VÛ	\"Òï‡®0-“?À\r¡…¸ğ°6å~íƒf ÈÁà0ÂHïå#¬ÂËxËx\\AÚnÄÌN{¼mØ™SİÁç&±‡ŒijÈbàcÁğ·ƒ!<Î§Öù?86z2\'é´ã»¯·i=™º÷ní‘\0z½¨ÿ\0nî‹oo!àş$üàîÃ´Z;–ã†c¹gÀşÒç¯ŞòÛY;uË±ínÒ$ÖCĞ…í‹	Ç¥ä\"Gì#¡½Ì$Û³“äì²ôÆ|œt„Ê=‘›{}vâfÀ•Ñ–öÌ´½ÖÏh3äD™¥3cÿÄ\0(\0\0\0\0\0\0\0\0!1AQaq‘¡±ÁÑğá ñ0ÿÚ\0\0\0?‚,hhh‚ˆş{²l/ãİX»D<Cu¦ÚNñÀJUJnj&Pú´.*%(™õ®°H KIMøoHš™ƒ[…P¹´@\'Ñ»™7DîØè	<¥(1kTBpÜLô4€¹Ä\r8ÖHâe´Œ1&¥¬Åß„Á*jÕä-XøÑ·	´İÎâjş‡ºElCÚÂb0NMJpm®(Ö§¹\n÷\'8äRº-e*µ4\Z «MÂ*©Š¸ˆpSi¶•(ñpÙ@jª8nh½æ@ÊkÊ¥3‘\0™%\rÂ˜lÛÄqtÄ\r2ØÜ¦Õ•DïX\nÁ±Íı#nT­óˆâDG]ˆÍ´÷*èGJd8ˆš´e¡¯(©}#5w†Üa©øNQB1u A1t ÓŒÕâh¨£g3Ì_pö=ìR9m[Û8¢¢DìÈ­²ZJo%EE]®PùrÑ¼$\'(SğŒI¦¨êä]!£¸Áµš¼XµÍ3m5jõEšÛ3MM³ÂŠûêAVÛ#5˜WtÚV´ÊÒµH€}!%\r./rİI°\rÂ^Kä{šDûë9$öSŞ\"kòEP¦W”ó\ZÚÖ—öšlU”ÅoÌ‹@Öd¬ 1ˆIâÄIi¹sv‚Ò!”’5-&šo–´­°.ù7xp•\"™hDšœo†*]VÈÒiµXi§š¸aÌÆÒR¬E,§‹À\\6æ)qMuˆ¥&•&å#XênJJ\\¹W)¡MHª6‹ŒÂºáfºîT›ršrïxV‚Â°°”AJm;ê6ı®»5-BnëÕ%V‡7(ºó%DÒ¤İ[ÉÅ;ÕÄ¢up.^`™K”Ómª¼…2’&kÓ5•0HÜÒM¤¥¤å(XI@©\'ºrÅÎK‰£åušJÖñu£]-º¸wCÜÌôÙ§*±(fª¦ÃÀšjr\'±¬Äš&Û–´Fğ¯Y7ÌN… ,ı²qjÜÕ’MÉÄ’2çÕ½À÷°ó »Ãc\rØˆNÂ†ËÉ/ï!<RFt–‰nÎO€¬XŒû\0û“\"\0Cç8|¨/gq€±-‘ŒbËl°h)\0ãå	rÄ$âğù:0()9PZ[D¹ûÖˆwÇCØSÍï†@Ø˜„†4AÄaÃ-}ÀĞgc;k\'*P\'À¾ö\'gŞ¡”`\rJpĞ¸=\\®G7ôôDˆA‰‰Ø‹\rØ¬I\"\Z>‘b\'ä×¤<½9‘öGiĞúA¹š\'\0ô;Ä\Z7¡€4¦©)c°¨ä°‡ƒ4^b\'a+_ÉÂ‘À¿…‰ZäÕ÷¨¹ÈÕ“ÈÊÀæ±yoSŸ‚ö‹$ó4aÕc72‡$Pî(2FgC&¹992åP?älx\\üHNÄAÖ,\\pwHˆ6Â€¸‰ég£<ÊB£L×¤€–(ËaÀ˜Èæ}AœÕñ<Ì\0İ2µ“œÀ_òÔÂ‹ÿ\0‡ÀÓ`4!¯C`è.s\'Ã&6\n”wë‰ò‹½bAêp0K#$‡Å\'ƒ±å#Aä4\"è9àóG‘mÏ8[ËS&€¸gIU Æ@Š‰%\"`\"ªÇˆûhGTuˆ q è‚f\0DN½*È7™·«¨œ^‘Ô  Ù,\'p€;é¡¦X‰á`ÇAÀÜÏA‰\\â\0–1;X64%‡€ÏòÄˆ\Z°\\wÒ}|à!¾‡A;äQpqTï¨İF‘‰Æñ\rø‚ØßSÖ9;\'Ò–ga€9Z#	é#\nÅ‚I&Æ;r\n[‘´ü°Ü @±pd!ïÁb×:‚‘7t:€äríá–\"£¸(”¶°†oD§ä]ÈLjÅÍWsâ„5‰YÚ:0gùOƒnÀ‘a£cYšú@/bş”o%„€^n.\r¬ÓÀô!A ¦ÄsBA`µcVE–´ŒMA¾FÜ¥$b`b74UÌ\rä¥2Eüsp`Aï \'ÂºlûI˜RÀ³D\"Šô-…N60g>5 ÷ºg&€µ\'rK‚À¿l/°Ó?@€ŠMf$1É½FÒcÊ%zx§ÄF-pª\\°¨¸“„ò’³ôĞ² :v›ĞÇ‡l7Š‡¦‡€ wÁ^T¹\"H™6W8.I *»’<íÇÈ.?Ÿ€ÖC\\fÂ†‹¤ÏSœÎ‡2¬Œ]L.Í`Ğ»H[vSR6\ZV:™Ìï9tÓÜªà[V ä| fw\"œƒ2ì`àp^He(!¬™Ê2ê`ˆâ_„`ñY«}\rÔy¼È„p\0bV0ùå*ÉŠD9g9”VŠŠîvFê€óHBy\"B8on€gÖ&“£eßåƒÈ\0ùÉµ  ;ÛH=x€Gv@^M NNh Z‹;\r \05=Í°fË–AáÈ…ŒŸ’æ\\J?²™˜Šl¦Ù#İ£ãM¥\rœDxƒº‰:f‡© ”Õ(Æ6ÆM	*ûÛƒ•À>\'Q /Kjº`ÃğÁqùC¾Ğ:0q\0G#À\00Ğ÷ôMòŠäEñ]67PSµ‹#ÑÖ[<ÎŒB]YËhvZR.W\'©i³c°kØÌÖôIôâĞBÜÂŠıüm‹û…o³œjtföÀgdÀß4>8xcú2?‹?»™²€ö ¥‡`ó@\\¬ĞKÔÄtòëPÿ\0Aèÿ\06¬–\0ç4°\0I¨’ªÎ‘äPG1îÔâó[UUªfKÂ<:\0¾f\0‡1ó€¸‹\"4-\'!ìps#ªx\\ÕçqiÕ¤]Ï¦ÑLìV:}ğ}Ùfá¦vËQî$>\"\'Àˆ–Hè³ˆÓ©º„*ôcWˆ^8ÜlËc…õÌÃ@.ãz\Z2J»aèZ‚ÙŒ \"JêXFO\0ÄÚÌ-õ©AğèvĞ±úx$Ö)`l0=›ì\0×¡h6\Zñ8­Câšt\0o\nÜåÉ”?GK˜ä}@oñ‡1 ífÎ1\0uÈ,!Ì´È{˜5ØÜ ³Ü<{sÁhÇdÁ@_R‰8,4Ş¨à°vˆ\ZDyt´S¼â£ÁôÃSê©!ûÛ\0?á‚h’Ìd¦\nü­´<(gWà-l;(Pt\'XÈ9ˆbÈƒ¬(~™qVTæèª9\0ì\0ÿ\0ÿÙ');
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numeroRecibo`
--

DROP TABLE IF EXISTS `numeroRecibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `numeroRecibo` (
  `numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numeroRecibo`
--

LOCK TABLES `numeroRecibo` WRITE;
/*!40000 ALTER TABLE `numeroRecibo` DISABLE KEYS */;
INSERT INTO `numeroRecibo` VALUES (1);
/*!40000 ALTER TABLE `numeroRecibo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos` (
  `ci` varchar(10) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `monto` int(11) DEFAULT NULL,
  `fechaPago` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ci`,`fechaPago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES ('2','aaaa','',11,'2014-10-09 14:09:21'),('2','aaaa','',100,'2014-10-09 14:09:35');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipospago`
--

DROP TABLE IF EXISTS `tipospago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipospago` (
  `tipopago` int(11) NOT NULL AUTO_INCREMENT,
  `nombrepago` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tipopago`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipospago`
--

LOCK TABLES `tipospago` WRITE;
/*!40000 ALTER TABLE `tipospago` DISABLE KEYS */;
INSERT INTO `tipospago` VALUES (1,'Diario'),(2,'Semanal'),(3,'Mensual');
/*!40000 ALTER TABLE `tipospago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `user` varchar(20) NOT NULL DEFAULT '',
  `password` blob,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('prueba','c893bad68927b457dbed39460e6afd62');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-09 11:11:08
