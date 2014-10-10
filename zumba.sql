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
INSERT INTO `clientes` VALUES ('2','aaaa','','','','','','','Diario'),('22','dddddd','','','','algo@algo.com','','','Mensual'),('3','1','','','','','','','Diario'),('4','fgghfg','','','','','','','Diario'),('5','asdasd','','','','','','','Diario'),('6','7896789','','','','','','','Diario'),('654987','Mónica Raquel','Cabrera Fernández','','','','','','Mensual');
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
INSERT INTO `fotos` VALUES ('1235555','����\0JFIF\0\0\0\0\0\0��\0*\0��ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ �\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0�\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0�\0\0\0gXYZ\0\0�\0\0\0bXYZ\0\0�\0\0\0rTRC\0\0�\0\0\0@gTRC\0\0�\0\0\0@bTRC\0\0�\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0��\0\0\0\0\0�-XYZ \0\0\0\0\0\0\0\03\0\0�XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0b�\0\0��\0\0�XYZ \0\0\0\0\0\0$�\0\0�\0\0��curv\0\0\0\0\0\0\0\Z\0\0\0��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0����\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9��\0C\n\n\n9& &99999999999999999999999999999999999999999999999999��\0\0�\0�\0\"\0��\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�]zE@��c�Y�cq4��L\"�p)k��o �.�M�N�j�m�]čb�i�RʣJ�\\UH���Ӌ�o��M3~@��	Ȁ�!���Mڮ��:���Ʊc$%�-��c�!}<u:��s.��D��h�Y�-qr$\rY��ϗ��VV,�S���.?���g$��A\\�˕l�Q$N]@e�~���\0�]��!�����e�:�a�Sl���GL�.�R}n��T�䢥��q�ܒIPRHTDJ��a�*��6 TJ��Yi��/(x��>�������;�s��4XkN��leJ���\'lRW��_���4�Ms�}\Z.n�}�$�B�7+��KǬt�q���m�I����{��e�!������wj�=PՃ��+L���g����.��#S���v�wa���*�?��H\r���֢��������jKd��yF8t:�vrÊ�HG�U�0\nG\'m�y�� `V|�ub@e�ɧx�6V��_N^D��u��T����丟�f��N�<�y6��y�6�׊�eo�5>Eh�ɐ�9��HoСo/g���c���6��8�\r�z\0ͧYR������.\\»�`\rW��j�Il#I����*��ᵞ{��|�$�]��gx��h��H�*�4U���mh�p\"�t��I�NC�^�sq�f��uH�	�/��U��\\e�&���9�����\Z��8�{\n�{N-\n�6���o�q�Z	v-�=U��mL�NT��T�V4�z3K�܂��~�kq��,Kh�:p$��Yy¤�.[&V��V5���5���y֙�V�A1����je�F�(|Zg�CgK�\r>�Ӡ�����\0,\0\0\0\0\0\0\0 !\"1230@A#4B$��\0\0\0�F������	��;���(�-X��[Q��A�u�Eͧ]k�C.�]�6�ދ;�[��&m%Ne�r/Z�5��p�������\"�����z�F�L��W���[SЫ�Z��>�j����*DZ�xnE�|��Y�mUY��h�L1�i]5�>_�>J�⃆{�c`�\0~�u�j��e\\��\0������~�n�t���������*�eAu��e�L\"�As^��^��K�|�\Z%��Y5�c�n6&<���vn黚y�}�*9m-g���kQguT�j��]�f��O���e���U:a`�2,��U�[�uT�uXj�/�kqr�}�K::�;:棔�Λ\0Ai�l̛�_�A�T<��,b�K\\�\rc�ο��ܝw�t�۲�aXL6��Y�b\'#��]�UsW*�l_N���;e�������@Fy]�)��$c�c�Y���|��k�נV�a�?C+����T�\0���t�@%�|D�)񭚶�5؆�3��iX�	P���Dd�/�1�`�YeVs�~��Q�r��$ Mrwf�i�\\XWKm����z��e�r���}ӄȦ}%o�N}��|@�J�\r��Ws����ٙJ<�w~]������ڼT$���L3.��s]5&xfGM�\0oR�U��p5��~Q��|B�����`�Y9KQ��\"�;z�zS*�_��l���������~�����%�c\'�X*�X�����0�u��q�����ޜ}sw�����U<�z�L��u1�1�oѪ�~<�_!��lt&�=6k��x}VJ�9��X1�dF� �rԥ�%����cc��f:Ë�r�%e��P�X����������m��آu�BZ\n��p��P��U{�������ߟ��e��]�j��Kh�ݗ�\n7jCd�P�>�L^=c����\'�9Oy���I�M	�cqX�e�\n�Y�.��Rjt����8����}�\r°�l�1@a�ŧ���l�9	�ƹ�9��Hs�Z�n�����I�6S�,�ʜ���r����.d^�|�C&( �\r9�yC6b�\r�!�X��,�\n���ńD�4���\0����~-�oڵ����ڛ��K^�^^�sGzN�N,gKs��F3�e��%�;N��,�Ȱq�L���D��|�gӤ��g�ᾬ��]7h���Ŵ��d�7���ʹ��������FVk�s�1�B�̟�������iF�����UgQH~6X�d�el��P5P[�[��]D�����U�Du��ga��\n����Rn�s��^V&S/F�Ӝ.!��b��f��繚��C���!�8��@Rnr���8,��i�]`���p����\"m�u��\0#\0\0\0\0\0\0\0\0\0!Q\"1A 0��\0?����bb�6*3b�+�t����	���͉���Fh�=���nG�r=���܏f�;7#ٹ��ٜ{3�c���v~�&տ���r�ځ�����&n3qY3�\"u��m�d�CVe��o��w��ኊVBVEH]e��⤍�*7i�����a~HF�E�d8F�(���m%E��F�i2�K-��hݍ��G��ʉ����M�Q�pJs|2>%��-\'�\"�9�����w#F�6�Ki�yȩtȻ>F�DY��~3)��ܑ�.d\\ɒw�$G��	�\\FEˢ��,X��|��D^F\"�(#ŋi}ZZ4Z����\0%\0\0\0\0\0\0\0\0!1 Q\"2A03��\0?H�Q9b<�G$MבN,Yb<�G4G�\',E�,�����#I}\ZK��F��4���$j�dk/�c��/�iw�����\'�h~�D}[���x�\0h�tNNN���~����	8H���,����2k��D�!�E܉Jݣj�Y)��3v<��\'~ٙ���=NV�F�M1H���ixf��VF)Z�,�Btg�th��E?$�jDz]��о-�N�m�?a{3�f��\04�?�ٍho�׶)ѺC�ݚ�E����T��*�y�(��f�*Gg��Xl��8��E��;��\\�ؤ���N1@㈕F�����IP���=hx�,G���lAJ}8:��3Ԗ>G!�ߓ�YG�����f��ɴX�Cm�5�T4�MJ55?��\06\0\0\0\0\0\0\0!1A\"Qa 2q0@B��3b��#CPRr����\0\0\0?�\0A.�@9��Y]�����A�z�W%���t�s+9�ݫ��\'�������`�]��$~iQ�\nt)�q���3�bF���燦�je�{�*T�\'o)թ��4�(R�&�jS���4;�fR���LfYysW6\\�f�DwE���7Ԣ7���_�g=_��8����ؕM���S����7a�q2�Z��T�Z�,9�Y^�-Z,<�%�c@�P��am�*��/4��:��L7%�]=�\0줸G�����^�V�+�cX�=��é��\0h0�P�3(�\"ˀ��\0e�\0\0�U��T�v���\0�ԩH�2��\0u��4^暧�au�si�d�u��zjp��K���T3Ө/�5��r�ܠM��K�l���w.�b&�NA屹@���A��ϯ�V8z��\Z�O?�Q�\'R�c��v���nY�*�S/.ЅH���٩�,<��\0���{cP�jB�i������Up�%�\\39h�q{*������%��2}�&=��r����̺�N�!��e�~ 2��O��Th�y�g��盗,�J��r�4̓�xZ�W�k�0.T/(yW_+��x�~�+p,�X��^�D�u�`������򉛜<����w8_E��e*r�(A_*G�E�U�ͱ[,��\0d��X�\rE�G���i�n9`�\Z��^��8k-�2�\0blP1�*7R�Nv����à�Y����ʵ+4��_��*t��6L�WdϮN%G|>�C��M�v�E�O��o����J�^U��@�����c����T$(+\\c�p=���@���D\'A������޹�xVS���t���+:��8��rN�B8B�Y��5����Ppx�U�h��j���t�%?��|��\0(~�vA�A�.{\'��`����+P�VVV$��� �/��\n�\r,����u\'Q�Θ�Y�X�f��m�wD���V��_�+C��\\3A��-T�t[�{-Tv[���4Vj�!u1{\n\r��t���\n�_8_�Y���e��wZ)�����U�E�^Ҵ�4V0��aC�f�h�7�wD�_K�\\��W�[�5^�VX��\nҠi�B9��\Z_���/ʬB�Ҵ+�U�+	^�r�+��!{V����`����\'���l�*`J�@��[�e B��°W��{au�;\r��T�-IW�t9_����[z5\n���΅�򽫮��P�a���6ZW]��[Y\\c���h�[��h�[�i�ŗe����-V�\\;���\0\'\0\0\0\0\0\0!1AQaq� ���0��@���\0\0\0?!�\0!��n\\�r����c*�\Z\Z�Z�Y�\ns�2��@���iej���;�UO��\r��fm2S-Jj�ocE���R)��\0�@=�\r�)-c�\n��cu���_�����\"I�L��~�,�:e�QKN�p���r@�-&a+��W�����u53�V�YuKY��|L\"C��\n�����``Ċ�ZW;2,�p:`��Y��\"6�p@��/t���c_�8b�&���]矨X���m�\n:��T�z\'�7.��e�{!\0\Zd0���^�6���R�&,l�c,\n����br�r�\r���tTM@5Q}�l�\n*���[,�X07�AN�U�It��Ԫ_`r�E��+�E�X\'\n�`�;�`!��c�LI�7����X����K��j�/h�U������wmD����)N?�s�_�Z��qo����$��,/�/ܶe��f[�_��\r�\Z�����n/E��˖��E���\Zt�u�̹�­\"X����\0-0 C�:�T�L�1�[_�%��ʐ5D���W.ʫ����p��p�U� =�_�b�g:��\Z��\0�j�-7�v�my0�}�� K:b\nef1�C��\07��?��X�cW(�!�$t������ֽ\n����a�!����)R%XvJ�	rC�J�t\\.R�k�\'�g�t�Ej��2�\n�4�7�]�.`�Q[�16���-�8`X��\"�<�C��X.!��P��K��L��_sz��\0�p9�놈�GX D�`��,@)�|۬KMc��n��\"ޙ�\0ʅ����U+�i�S�2�.Z*��\Ze���(�x����\" ��X(�e�=ݑA|3Q`����.!��.5�԰V\\�Q��X�Jk~�\Zk=�<2�3����pkK�6x���l��V�ZP�5�H%�Ѥ%֭��+%Q|0[dp��ͼGE&�n�-11�Ck�l���.n�_��ΐ�w�a����W蓉Ļ\r`LA��R�vBk�\Z��Ȣ�J����N��,��i��}�~X��n�MO���83��L�8$�m9�b��B�]�L\Z�`��qQ�{�T�1����/��ٝ�]n7��eA�( �H�lwK0(D���pL1qg	u2ԯlB�e˫ַ\r�0�4�ʼ\n�=6¦���yW2@��`�T�5*#�����pm��idˋ\'�V��N��0��Jl�*��f-�GWa*׫�\0A2�m�U�C����L�f�^�+{vs(0��@U��2R,�kp���ؒ���@7+���Y�L2�͕l̳|��-��U��.���8�ŸX\\@��@\rv����!8;Xetk7ZX6��f�(�u1� 8%�)��T}�	ɋ������=Jʛ��B,�!��$0�\n&�^����eoY=G��fv��\Z�m�1�C2��,8W�B�����u��\Z]!�qT�\rP[S1ƥ�\0喲�\\\\d��x�.:�`�\0�`\n��[��	o\r�X�B�\'���2�U}>�&*�Kf�G��c�`��`��S�����.�{�8F�+6�\Z��\\��S)M�H�x��V@%���3�Y1\Z��Ỏ��H{ʣ�a�ܿz&K�N55.or��]���!��F��[ib7d..�L[d�	�4�A\\�pc G�!�i�3�	��q7v<@����`���Ul�ŀl�\0	aN0p�ڰf�VU�)w�J�ܦ6��\n��q��4�`)��J$�e!pY��2�X7��8�fb����~*��!�ه3\n�\"s\r�(w*�շC֥��8H��l�p{L�2p��~�6���3m���w$����#_�z?X�=G���;HEW��dIR��9�<88aj-@Ջ���c���DQ�������\nG\'�2��sA(E+�����M��)A�]�;��^ɏ�;�b��n��\0���>gԿ\"����\0	���pP�Lȃt��{�mZt2�\\�p����t��`�\\m��KH�s!+�.%�&.��([eEW0g�f�J��FL���,H��*,���W�(��U��Z�I�=�Y�Q��vN%LBODU��6�ru��;}��5)�c>�Z�1���fZK�qŁ̶�$��&��Z2����ȥ^:e�%=���g$��R���)��!ڿd��0��=�/��W��1ΦN>�o����ч�#qf�\0�=�����vo �ݟM�;�����6��h�+L�\Za4Tj�M3>ٕ,�1� ���5S��a����\0\0\0\0\0�|����1O���6[�O�s� �\0��ɽ�m�5��|H�/�̺�rx�W\n��}��]�B�x}�x/�HJ��]������RBvIU�{�����U^�)�}����E0d�Z�ʚ����o~������m�(��~1oLè<���}|Gb(���\0\0\0\0\0\0\0\0\0\0!1Aa�Q q��\0?�nHf���\'3%$�wt��,fHg��g��&37�MϏP8c��~�K��_�ҝ�������\'k��>t���~�#z��\r�����v�	��m��v)c�r,���}�H���g#�=����D����#L�|sp�3D��\"��@NE��a|D�\0(8lD�^�a\0��-���Б�l�Aj�M�7e��\'iL��Z�\0�!��.�� �3�oR��Iл.��_!>�|�|Z�~?����n1��6�)���1ov�[�Q��aIk.���{kǋ6&\r��.�K��6$d�?,�\n1�-=��廷����\0\0\0\0\0\0\0\0\0\0!1AaQ ��\0?�.l#t�BvK��;vS�(w}?�a�yAr�������7�ߜe��i�tn�X�$���H����;#�c&�}����~ ��j�V�	\"�0-�?�\r����6�~��f ���0�H��#���x�x\\A�n��N{�mؙS���&���ij�b�c��!<Χ��?86z2\'�㻯�i=���n�\0z���\0n�oo!��$�����Z;��c�g�������Y;u˱�n�$�CЅ��	ǥ��\"G�#���$�������|�t��=��{}v�f��і�̴���h3�D��3c���\0(\0\0\0\0\0\0\0\0!1AQaq�������� �0��\0\0\0?�,hhh���{�l/�݁X�D<Cu��N��JUJnj&P��.*%(����H�K�IM�oH���[�P��@\'ѻ�7D���	<�(1kTBp�L�4���\r8�H�e��1�&���߄�*j��-X�ѷ	����j���ElC��b0NMJpm�(�֧�\n�\'8�R��-e*�4\Z �M�*����pSi��(��p�@j�8nh��@�kʥ3�\0�%\rl��qt�\r2��ܦ��D�X\n����#nT���DG]�ʹ��*�GJd�8���e��(�}#5w��a��NQB1u A1t ӌ��h��g3�_p�=�R9m[�8��D�ȭ�ZJo%EE]�P�rѼ$\'(S��I����]!������X��3m5j�E��3MM���AV�#5�Wt�V��ҵH�}!%\r./r�I�\r�^K�{�D��9$�S�\"k�EP�W��\Z�֗��lU��ő@�d��1�I��Ii�sv��!��5-&�o����.�7xp�\"��hD��o�*]V��i�Xi����a���R�E,���\\6�)qMu��&�&�#X�nJJ\\�W)�MH�6��º�f��T�r�r�xV�°��AJm;�6����5-Bn��%V�7(��%DҤ�[��;�Ģup.^`�K��m���2�&k�5�0H��M����(XI@�\'�r��K���u�J��u�]-��wC���٧*�(f�����jr\'��Ě&ۖ�F�Y7�N� ,��qj���M��Ē2������󠻍Ðc\r؍�N��/�!<RFt��n�O��X��\0���\"\0C�8|�/gq��-���b�l�h)\0��	rĝ$���:0�()9PZ[�D��ֈw�C�S��@ؘ��4A�a�-}��gc;k\'*P\'���\'gޡ�`\rJpи=\\�G7��D�A���؋\rجI\"\Z>�b\'�פ<�9��Gi��A��\'\0�;�\Z7��4��)c�������4^b\'a+_�����Z������Փ����yoS�����$�4a�c72�$P�(2�Fg�C&�992�P?�lx\\�HN�A�,\\pwH�6���g�<�B�Lפ��(�a����}A���<�\0�2����_���\0����`4!�C`�.s\'�&6\n�w�򋽞bA�p0K#$��\'����#A�4\"�9��G�m�8[�S&��gIU �@��%\"`\"�ǈ�hGTu��q��f�\0DN�*�7�����^�Ԡ �,\'p�;顦X��`�A���A�\\�\0�1;X64%����Ĉ\Z�\\w�}|�!���A;�QpqT�ݐF����\r����S�9;\'��ga�9Z#	�#\n��I&�;r\n[����ܠ@�pd!��b�:��7t:��r��\"��(����oD��]�Lj��Ws�5�Y�:0g�O�n��a�cY��@/b��o%��^n.\r����!A���sBA`�cVE���MA�Fܥ$b`b74U�\r�2E�sp`A� \'ºl�I��R��D\"��-�N60g>5���g&��\'rK���l�/��?@��Mf$1ɽF�c�%zx��F-p�\\���������в�:v��Ǉl7����� w�^T�\"H�6W8.I *��<���.?���C\\f����S�����2��]L.�`лH[vSR6\ZV:���9t����[V �| fw\"���2�`�p^He(!���2�`��_�`�Y�}\r�y��Ȅp\0bV0��*ɊD9g9�V���vF��HBy\"B8on�g֏&���e���\0�ɵ� ;�H=x�Gv@^M NNh�Z�;\r� \05=Ͱf˝�A�ȅ����\\J?����l��#ݣ�M�\r�Dx���:f�� ��(��6�M	*�ۃ��>\'Q /Kj�`���q��C��:0q\0G#�\00���M��E�]67PS��#��[<ΌB]Y�hvZR.W\'�i�c���k����I���B����m���o��jtf��gd��4>8xc�2?�?��������`�@\\��K��t��P�\0A��\06��\0�4�\0I���Α�PG1����[UU�fK�<:\0�f\0�1󀸋\"4-\'!�ps#�x\\��qiդ]Ϧ�L�V:}�}�f�vˍQ�$>\"\'���H賈����*�cW�^8�l�c����@.�z\Z2J�a�Z�ٌ \"J�XFO\0���-���A��v���x�$�)`l0=��\0סh6\Z�8�C�t\0o\n��ɔ?GK��}@o�1 �f�1\0u�,!���{�5�ܠ��<{�s�h�d�@_R�8,4ި�v�\ZDyt�S�����S�!��\0?�h��d�\n���<(gW�-l�;(Pt\'X�9�b���(~�qVT��9\0�\0�\0��');
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
