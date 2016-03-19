import android.util.Log;
import android.util.SparseArray;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

public final class adq
{
  private static byte[] d = null;
  private static byte[] e = null;
  private ByteArrayInputStream a = null;
  private adp b = null;
  private adj c = null;
  
  public adq(byte[] paramArrayOfByte)
  {
    a = new ByteArrayInputStream(paramArrayOfByte);
  }
  
  /* Error */
  private static adp a(ByteArrayInputStream paramByteArrayInputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: iconst_1
    //   7: istore_1
    //   8: new 43	adp
    //   11: dup
    //   12: invokespecial 44	adp:<init>	()V
    //   15: astore 11
    //   17: iload_1
    //   18: ifeq +1626 -> 1644
    //   21: aload_0
    //   22: invokevirtual 48	java/io/ByteArrayInputStream:available	()I
    //   25: ifle +1619 -> 1644
    //   28: aload_0
    //   29: iconst_1
    //   30: invokevirtual 52	java/io/ByteArrayInputStream:mark	(I)V
    //   33: aload_0
    //   34: invokestatic 56	adq:f	(Ljava/io/ByteArrayInputStream;)I
    //   37: istore_2
    //   38: iload_2
    //   39: bipush 32
    //   41: if_icmplt +22 -> 63
    //   44: iload_2
    //   45: bipush 127
    //   47: if_icmpgt +16 -> 63
    //   50: aload_0
    //   51: invokevirtual 59	java/io/ByteArrayInputStream:reset	()V
    //   54: aload_0
    //   55: iconst_0
    //   56: invokestatic 62	adq:a	(Ljava/io/ByteArrayInputStream;I)[B
    //   59: pop
    //   60: goto -43 -> 17
    //   63: iload_2
    //   64: tableswitch	default:+268->332, 129:+271->335, 130:+271->335, 131:+631->695, 132:+1493->1557, 133:+561->625, 134:+493->557, 135:+755->819, 136:+755->819, 137:+849->913, 138:+1014->1078, 139:+631->695, 140:+347->411, 141:+1201->1265, 142:+561->625, 143:+493->557, 144:+493->557, 145:+493->557, 146:+493->557, 147:+681->745, 148:+493->557, 149:+493->557, 150:+681->745, 151:+271->335, 152:+631->695, 153:+493->557, 154:+681->745, 155:+493->557, 156:+493->557, 157:+755->819, 158:+631->695, 159:+561->625, 160:+1274->1338, 161:+1357->1421, 162:+493->557, 163:+493->557, 164:+1426->1490, 165:+493->557, 166:+681->745, 167:+493->557, 168:+268->332, 169:+493->557, 170:+1444->1508, 171:+493->557, 172:+1444->1508, 173:+596->660, 174:+268->332, 175:+596->660, 176:+268->332, 177:+493->557, 178:+1484->1548, 179:+596->660, 180:+493->557, 181:+681->745, 182:+681->745, 183:+631->695, 184:+631->695, 185:+631->695, 186:+493->557, 187:+493->557, 188:+493->557, 189:+631->695, 190:+631->695, 191:+493->557
    //   332: goto -315 -> 17
    //   335: aload_0
    //   336: invokestatic 65	adq:e	(Ljava/io/ByteArrayInputStream;)Ladf;
    //   339: astore 10
    //   341: aload 10
    //   343: ifnull -326 -> 17
    //   346: new 67	java/lang/String
    //   349: dup
    //   350: aload 10
    //   352: invokevirtual 72	adf:b	()[B
    //   355: invokespecial 73	java/lang/String:<init>	([B)V
    //   358: astore 9
    //   360: aload 9
    //   362: ldc 75
    //   364: invokevirtual 79	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   367: istore_3
    //   368: aload 9
    //   370: astore 8
    //   372: iload_3
    //   373: ifle +12 -> 385
    //   376: aload 9
    //   378: iconst_0
    //   379: iload_3
    //   380: invokevirtual 83	java/lang/String:substring	(II)Ljava/lang/String;
    //   383: astore 8
    //   385: aload 10
    //   387: aload 8
    //   389: invokevirtual 86	java/lang/String:getBytes	()[B
    //   392: invokevirtual 88	adf:a	([B)V
    //   395: aload 11
    //   397: aload 10
    //   399: iload_2
    //   400: invokevirtual 91	adp:b	(Ladf;I)V
    //   403: goto -386 -> 17
    //   406: astore 8
    //   408: goto -391 -> 17
    //   411: aload_0
    //   412: invokestatic 56	adq:f	(Ljava/io/ByteArrayInputStream;)I
    //   415: istore_3
    //   416: iload_3
    //   417: tableswitch	default:+75->492, 137:+116->533, 138:+116->533, 139:+116->533, 140:+116->533, 141:+116->533, 142:+116->533, 143:+116->533, 144:+116->533, 145:+116->533, 146:+116->533, 147:+116->533, 148:+116->533, 149:+116->533, 150:+116->533, 151:+116->533
    //   492: aload 11
    //   494: iload_3
    //   495: iload_2
    //   496: invokevirtual 94	adp:a	(II)V
    //   499: goto -482 -> 17
    //   502: astore_0
    //   503: new 96	java/lang/StringBuilder
    //   506: dup
    //   507: bipush 71
    //   509: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   512: ldc 100
    //   514: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   517: iload_3
    //   518: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   521: ldc 109
    //   523: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   526: iload_2
    //   527: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   530: pop
    //   531: aconst_null
    //   532: areturn
    //   533: aconst_null
    //   534: areturn
    //   535: astore_0
    //   536: new 96	java/lang/StringBuilder
    //   539: dup
    //   540: bipush 37
    //   542: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   545: iload_2
    //   546: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   549: ldc 111
    //   551: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   554: pop
    //   555: aconst_null
    //   556: areturn
    //   557: aload_0
    //   558: invokestatic 56	adq:f	(Ljava/io/ByteArrayInputStream;)I
    //   561: istore_3
    //   562: aload 11
    //   564: iload_3
    //   565: iload_2
    //   566: invokevirtual 94	adp:a	(II)V
    //   569: goto -552 -> 17
    //   572: astore_0
    //   573: new 96	java/lang/StringBuilder
    //   576: dup
    //   577: bipush 71
    //   579: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   582: ldc 100
    //   584: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   587: iload_3
    //   588: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   591: ldc 109
    //   593: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   596: iload_2
    //   597: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   600: pop
    //   601: aconst_null
    //   602: areturn
    //   603: astore_0
    //   604: new 96	java/lang/StringBuilder
    //   607: dup
    //   608: bipush 37
    //   610: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   613: iload_2
    //   614: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   617: ldc 111
    //   619: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   622: pop
    //   623: aconst_null
    //   624: areturn
    //   625: aload 11
    //   627: aload_0
    //   628: invokestatic 115	adq:g	(Ljava/io/ByteArrayInputStream;)J
    //   631: iload_2
    //   632: invokevirtual 118	adp:a	(JI)V
    //   635: goto -618 -> 17
    //   638: astore_0
    //   639: new 96	java/lang/StringBuilder
    //   642: dup
    //   643: bipush 44
    //   645: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   648: iload_2
    //   649: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   652: ldc 120
    //   654: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   657: pop
    //   658: aconst_null
    //   659: areturn
    //   660: aload 11
    //   662: aload_0
    //   663: invokestatic 123	adq:h	(Ljava/io/ByteArrayInputStream;)J
    //   666: iload_2
    //   667: invokevirtual 118	adp:a	(JI)V
    //   670: goto -653 -> 17
    //   673: astore_0
    //   674: new 96	java/lang/StringBuilder
    //   677: dup
    //   678: bipush 44
    //   680: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   683: iload_2
    //   684: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   687: ldc 120
    //   689: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   692: pop
    //   693: aconst_null
    //   694: areturn
    //   695: aload_0
    //   696: iconst_0
    //   697: invokestatic 62	adq:a	(Ljava/io/ByteArrayInputStream;I)[B
    //   700: astore 8
    //   702: aload 8
    //   704: ifnull -687 -> 17
    //   707: aload 11
    //   709: aload 8
    //   711: iload_2
    //   712: invokevirtual 126	adp:a	([BI)V
    //   715: goto -698 -> 17
    //   718: astore 8
    //   720: goto -703 -> 17
    //   723: astore_0
    //   724: new 96	java/lang/StringBuilder
    //   727: dup
    //   728: bipush 43
    //   730: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   733: iload_2
    //   734: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   737: ldc -128
    //   739: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   742: pop
    //   743: aconst_null
    //   744: areturn
    //   745: aload_0
    //   746: invokestatic 65	adq:e	(Ljava/io/ByteArrayInputStream;)Ladf;
    //   749: astore 8
    //   751: aload 8
    //   753: ifnull -736 -> 17
    //   756: aload 11
    //   758: aload 8
    //   760: iload_2
    //   761: invokevirtual 130	adp:a	(Ladf;I)V
    //   764: goto -747 -> 17
    //   767: astore 8
    //   769: goto -752 -> 17
    //   772: astore_0
    //   773: new 96	java/lang/StringBuilder
    //   776: dup
    //   777: bipush 52
    //   779: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   782: iload_2
    //   783: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   786: ldc -124
    //   788: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   791: pop
    //   792: aconst_null
    //   793: areturn
    //   794: astore_0
    //   795: aconst_null
    //   796: areturn
    //   797: astore_0
    //   798: new 96	java/lang/StringBuilder
    //   801: dup
    //   802: bipush 52
    //   804: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   807: iload_2
    //   808: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   811: ldc -124
    //   813: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   816: pop
    //   817: aconst_null
    //   818: areturn
    //   819: aload_0
    //   820: invokestatic 134	adq:d	(Ljava/io/ByteArrayInputStream;)I
    //   823: pop
    //   824: aload_0
    //   825: invokestatic 56	adq:f	(Ljava/io/ByteArrayInputStream;)I
    //   828: istore_3
    //   829: aload_0
    //   830: invokestatic 115	adq:g	(Ljava/io/ByteArrayInputStream;)J
    //   833: lstore 4
    //   835: lload 4
    //   837: lstore 6
    //   839: sipush 129
    //   842: iload_3
    //   843: if_icmpne +15 -> 858
    //   846: lload 4
    //   848: invokestatic 140	java/lang/System:currentTimeMillis	()J
    //   851: ldc2_w 141
    //   854: ldiv
    //   855: ladd
    //   856: lstore 6
    //   858: aload 11
    //   860: lload 6
    //   862: iload_2
    //   863: invokevirtual 118	adp:a	(JI)V
    //   866: goto -849 -> 17
    //   869: astore_0
    //   870: new 96	java/lang/StringBuilder
    //   873: dup
    //   874: bipush 44
    //   876: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   879: iload_2
    //   880: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   883: ldc 120
    //   885: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   888: pop
    //   889: aconst_null
    //   890: areturn
    //   891: astore_0
    //   892: new 96	java/lang/StringBuilder
    //   895: dup
    //   896: bipush 44
    //   898: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   901: iload_2
    //   902: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   905: ldc 120
    //   907: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   910: pop
    //   911: aconst_null
    //   912: areturn
    //   913: aload_0
    //   914: invokestatic 134	adq:d	(Ljava/io/ByteArrayInputStream;)I
    //   917: pop
    //   918: sipush 128
    //   921: aload_0
    //   922: invokestatic 56	adq:f	(Ljava/io/ByteArrayInputStream;)I
    //   925: if_icmpne +92 -> 1017
    //   928: aload_0
    //   929: invokestatic 65	adq:e	(Ljava/io/ByteArrayInputStream;)Ladf;
    //   932: astore 9
    //   934: aload 9
    //   936: astore 8
    //   938: aload 9
    //   940: ifnull +56 -> 996
    //   943: new 67	java/lang/String
    //   946: dup
    //   947: aload 9
    //   949: invokevirtual 72	adf:b	()[B
    //   952: invokespecial 73	java/lang/String:<init>	([B)V
    //   955: astore 10
    //   957: aload 10
    //   959: ldc 75
    //   961: invokevirtual 79	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   964: istore_3
    //   965: aload 10
    //   967: astore 8
    //   969: iload_3
    //   970: ifle +12 -> 982
    //   973: aload 10
    //   975: iconst_0
    //   976: iload_3
    //   977: invokevirtual 83	java/lang/String:substring	(II)Ljava/lang/String;
    //   980: astore 8
    //   982: aload 9
    //   984: aload 8
    //   986: invokevirtual 86	java/lang/String:getBytes	()[B
    //   989: invokevirtual 88	adf:a	([B)V
    //   992: aload 9
    //   994: astore 8
    //   996: aload 11
    //   998: aload 8
    //   1000: sipush 137
    //   1003: invokevirtual 130	adp:a	(Ladf;I)V
    //   1006: goto -989 -> 17
    //   1009: astore 8
    //   1011: goto -994 -> 17
    //   1014: astore_0
    //   1015: aconst_null
    //   1016: areturn
    //   1017: new 69	adf
    //   1020: dup
    //   1021: ldc -112
    //   1023: invokevirtual 86	java/lang/String:getBytes	()[B
    //   1026: invokespecial 145	adf:<init>	([B)V
    //   1029: astore 8
    //   1031: goto -35 -> 996
    //   1034: astore_0
    //   1035: new 96	java/lang/StringBuilder
    //   1038: dup
    //   1039: bipush 52
    //   1041: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   1044: iload_2
    //   1045: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1048: ldc -124
    //   1050: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1053: pop
    //   1054: aconst_null
    //   1055: areturn
    //   1056: astore_0
    //   1057: new 96	java/lang/StringBuilder
    //   1060: dup
    //   1061: bipush 52
    //   1063: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   1066: iload_2
    //   1067: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1070: ldc -124
    //   1072: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1075: pop
    //   1076: aconst_null
    //   1077: areturn
    //   1078: aload_0
    //   1079: iconst_1
    //   1080: invokevirtual 52	java/io/ByteArrayInputStream:mark	(I)V
    //   1083: aload_0
    //   1084: invokestatic 56	adq:f	(Ljava/io/ByteArrayInputStream;)I
    //   1087: istore_3
    //   1088: iload_3
    //   1089: sipush 128
    //   1092: if_icmplt +117 -> 1209
    //   1095: sipush 128
    //   1098: iload_3
    //   1099: if_icmpne +19 -> 1118
    //   1102: aload 11
    //   1104: ldc -109
    //   1106: invokevirtual 86	java/lang/String:getBytes	()[B
    //   1109: sipush 138
    //   1112: invokevirtual 126	adp:a	([BI)V
    //   1115: goto -1098 -> 17
    //   1118: sipush 129
    //   1121: iload_3
    //   1122: if_icmpne +41 -> 1163
    //   1125: aload 11
    //   1127: ldc -107
    //   1129: invokevirtual 86	java/lang/String:getBytes	()[B
    //   1132: sipush 138
    //   1135: invokevirtual 126	adp:a	([BI)V
    //   1138: goto -1121 -> 17
    //   1141: astore_0
    //   1142: new 96	java/lang/StringBuilder
    //   1145: dup
    //   1146: bipush 43
    //   1148: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   1151: iload_2
    //   1152: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1155: ldc -128
    //   1157: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1160: pop
    //   1161: aconst_null
    //   1162: areturn
    //   1163: sipush 130
    //   1166: iload_3
    //   1167: if_icmpne +19 -> 1186
    //   1170: aload 11
    //   1172: ldc -105
    //   1174: invokevirtual 86	java/lang/String:getBytes	()[B
    //   1177: sipush 138
    //   1180: invokevirtual 126	adp:a	([BI)V
    //   1183: goto -1166 -> 17
    //   1186: sipush 131
    //   1189: iload_3
    //   1190: if_icmpne -1173 -> 17
    //   1193: aload 11
    //   1195: ldc -103
    //   1197: invokevirtual 86	java/lang/String:getBytes	()[B
    //   1200: sipush 138
    //   1203: invokevirtual 126	adp:a	([BI)V
    //   1206: goto -1189 -> 17
    //   1209: aload_0
    //   1210: invokevirtual 59	java/io/ByteArrayInputStream:reset	()V
    //   1213: aload_0
    //   1214: iconst_0
    //   1215: invokestatic 62	adq:a	(Ljava/io/ByteArrayInputStream;I)[B
    //   1218: astore 8
    //   1220: aload 8
    //   1222: ifnull -1205 -> 17
    //   1225: aload 11
    //   1227: aload 8
    //   1229: sipush 138
    //   1232: invokevirtual 126	adp:a	([BI)V
    //   1235: goto -1218 -> 17
    //   1238: astore 8
    //   1240: goto -1223 -> 17
    //   1243: astore_0
    //   1244: new 96	java/lang/StringBuilder
    //   1247: dup
    //   1248: bipush 43
    //   1250: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   1253: iload_2
    //   1254: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1257: ldc -128
    //   1259: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1262: pop
    //   1263: aconst_null
    //   1264: areturn
    //   1265: aload_0
    //   1266: invokevirtual 156	java/io/ByteArrayInputStream:read	()I
    //   1269: bipush 127
    //   1271: iand
    //   1272: istore_3
    //   1273: aload 11
    //   1275: iload_3
    //   1276: sipush 141
    //   1279: invokevirtual 94	adp:a	(II)V
    //   1282: goto -1265 -> 17
    //   1285: astore_0
    //   1286: new 96	java/lang/StringBuilder
    //   1289: dup
    //   1290: bipush 71
    //   1292: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   1295: ldc 100
    //   1297: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1300: iload_3
    //   1301: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1304: ldc 109
    //   1306: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1309: iload_2
    //   1310: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1313: pop
    //   1314: aconst_null
    //   1315: areturn
    //   1316: astore_0
    //   1317: new 96	java/lang/StringBuilder
    //   1320: dup
    //   1321: bipush 37
    //   1323: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   1326: iload_2
    //   1327: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1330: ldc 111
    //   1332: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1335: pop
    //   1336: aconst_null
    //   1337: areturn
    //   1338: aload_0
    //   1339: invokestatic 134	adq:d	(Ljava/io/ByteArrayInputStream;)I
    //   1342: pop
    //   1343: aload_0
    //   1344: invokestatic 123	adq:h	(Ljava/io/ByteArrayInputStream;)J
    //   1347: pop2
    //   1348: aload_0
    //   1349: invokestatic 65	adq:e	(Ljava/io/ByteArrayInputStream;)Ladf;
    //   1352: astore 8
    //   1354: aload 8
    //   1356: ifnull -1339 -> 17
    //   1359: aload 11
    //   1361: aload 8
    //   1363: sipush 160
    //   1366: invokevirtual 130	adp:a	(Ladf;I)V
    //   1369: goto -1352 -> 17
    //   1372: astore 8
    //   1374: goto -1357 -> 17
    //   1377: astore_0
    //   1378: new 96	java/lang/StringBuilder
    //   1381: dup
    //   1382: bipush 32
    //   1384: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   1387: iload_2
    //   1388: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1391: ldc -98
    //   1393: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1396: pop
    //   1397: aconst_null
    //   1398: areturn
    //   1399: astore_0
    //   1400: new 96	java/lang/StringBuilder
    //   1403: dup
    //   1404: bipush 52
    //   1406: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   1409: iload_2
    //   1410: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1413: ldc -124
    //   1415: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1418: pop
    //   1419: aconst_null
    //   1420: areturn
    //   1421: aload_0
    //   1422: invokestatic 134	adq:d	(Ljava/io/ByteArrayInputStream;)I
    //   1425: pop
    //   1426: aload_0
    //   1427: invokestatic 123	adq:h	(Ljava/io/ByteArrayInputStream;)J
    //   1430: pop2
    //   1431: aload 11
    //   1433: aload_0
    //   1434: invokestatic 115	adq:g	(Ljava/io/ByteArrayInputStream;)J
    //   1437: sipush 161
    //   1440: invokevirtual 118	adp:a	(JI)V
    //   1443: goto -1426 -> 17
    //   1446: astore_0
    //   1447: new 96	java/lang/StringBuilder
    //   1450: dup
    //   1451: bipush 44
    //   1453: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   1456: iload_2
    //   1457: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1460: ldc 120
    //   1462: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1465: pop
    //   1466: aconst_null
    //   1467: areturn
    //   1468: astore_0
    //   1469: new 96	java/lang/StringBuilder
    //   1472: dup
    //   1473: bipush 32
    //   1475: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   1478: iload_2
    //   1479: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1482: ldc -98
    //   1484: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1487: pop
    //   1488: aconst_null
    //   1489: areturn
    //   1490: aload_0
    //   1491: invokestatic 134	adq:d	(Ljava/io/ByteArrayInputStream;)I
    //   1494: pop
    //   1495: aload_0
    //   1496: invokestatic 56	adq:f	(Ljava/io/ByteArrayInputStream;)I
    //   1499: pop
    //   1500: aload_0
    //   1501: invokestatic 65	adq:e	(Ljava/io/ByteArrayInputStream;)Ladf;
    //   1504: pop
    //   1505: goto -1488 -> 17
    //   1508: aload_0
    //   1509: invokestatic 134	adq:d	(Ljava/io/ByteArrayInputStream;)I
    //   1512: pop
    //   1513: aload_0
    //   1514: invokestatic 56	adq:f	(Ljava/io/ByteArrayInputStream;)I
    //   1517: pop
    //   1518: aload_0
    //   1519: invokestatic 123	adq:h	(Ljava/io/ByteArrayInputStream;)J
    //   1522: pop2
    //   1523: goto -1506 -> 17
    //   1526: astore_0
    //   1527: new 96	java/lang/StringBuilder
    //   1530: dup
    //   1531: bipush 32
    //   1533: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   1536: iload_2
    //   1537: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1540: ldc -98
    //   1542: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1545: pop
    //   1546: aconst_null
    //   1547: areturn
    //   1548: aload_0
    //   1549: aconst_null
    //   1550: invokestatic 161	adq:a	(Ljava/io/ByteArrayInputStream;Landroid/util/SparseArray;)[B
    //   1553: pop
    //   1554: goto -1537 -> 17
    //   1557: new 163	android/util/SparseArray
    //   1560: dup
    //   1561: invokespecial 164	android/util/SparseArray:<init>	()V
    //   1564: astore 8
    //   1566: aload_0
    //   1567: aload 8
    //   1569: invokestatic 161	adq:a	(Ljava/io/ByteArrayInputStream;Landroid/util/SparseArray;)[B
    //   1572: astore 9
    //   1574: aload 9
    //   1576: ifnull +13 -> 1589
    //   1579: aload 11
    //   1581: aload 9
    //   1583: sipush 132
    //   1586: invokevirtual 126	adp:a	([BI)V
    //   1589: aload 8
    //   1591: sipush 153
    //   1594: invokevirtual 168	android/util/SparseArray:get	(I)Ljava/lang/Object;
    //   1597: checkcast 169	[B
    //   1600: putstatic 19	adq:e	[B
    //   1603: aload 8
    //   1605: sipush 131
    //   1608: invokevirtual 168	android/util/SparseArray:get	(I)Ljava/lang/Object;
    //   1611: checkcast 169	[B
    //   1614: putstatic 17	adq:d	[B
    //   1617: iconst_0
    //   1618: istore_1
    //   1619: goto -1602 -> 17
    //   1622: astore_0
    //   1623: new 96	java/lang/StringBuilder
    //   1626: dup
    //   1627: bipush 43
    //   1629: invokespecial 98	java/lang/StringBuilder:<init>	(I)V
    //   1632: iload_2
    //   1633: invokevirtual 107	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1636: ldc -128
    //   1638: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1641: pop
    //   1642: aconst_null
    //   1643: areturn
    //   1644: aload 11
    //   1646: areturn
    //   1647: astore 9
    //   1649: goto -60 -> 1589
    //   1652: astore 8
    //   1654: goto -1637 -> 17
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1657	0	paramByteArrayInputStream	ByteArrayInputStream
    //   7	1612	1	i	int
    //   37	1596	2	j	int
    //   367	934	3	k	int
    //   833	14	4	l1	long
    //   837	24	6	l2	long
    //   370	18	8	localObject1	Object
    //   406	1	8	localNullPointerException1	NullPointerException
    //   700	10	8	arrayOfByte	byte[]
    //   718	1	8	localNullPointerException2	NullPointerException
    //   749	10	8	localadf1	adf
    //   767	1	8	localNullPointerException3	NullPointerException
    //   936	63	8	localObject2	Object
    //   1009	1	8	localNullPointerException4	NullPointerException
    //   1029	199	8	localObject3	Object
    //   1238	1	8	localNullPointerException5	NullPointerException
    //   1352	10	8	localadf2	adf
    //   1372	1	8	localNullPointerException6	NullPointerException
    //   1564	40	8	localSparseArray	SparseArray
    //   1652	1	8	localNullPointerException7	NullPointerException
    //   358	1224	9	localObject4	Object
    //   1647	1	9	localNullPointerException8	NullPointerException
    //   339	635	10	localObject5	Object
    //   15	1630	11	localadp	adp
    // Exception table:
    //   from	to	target	type
    //   395	403	406	java/lang/NullPointerException
    //   492	499	502	adb
    //   492	499	535	java/lang/RuntimeException
    //   562	569	572	adb
    //   562	569	603	java/lang/RuntimeException
    //   625	635	638	java/lang/RuntimeException
    //   660	670	673	java/lang/RuntimeException
    //   707	715	718	java/lang/NullPointerException
    //   707	715	723	java/lang/RuntimeException
    //   756	764	767	java/lang/NullPointerException
    //   756	764	772	java/lang/RuntimeException
    //   385	395	794	java/lang/NullPointerException
    //   395	403	797	java/lang/RuntimeException
    //   858	866	869	java/lang/RuntimeException
    //   829	835	891	java/lang/RuntimeException
    //   996	1006	1009	java/lang/NullPointerException
    //   982	992	1014	java/lang/NullPointerException
    //   1017	1031	1034	java/lang/NullPointerException
    //   996	1006	1056	java/lang/RuntimeException
    //   1102	1115	1141	java/lang/RuntimeException
    //   1125	1138	1141	java/lang/RuntimeException
    //   1170	1183	1141	java/lang/RuntimeException
    //   1193	1206	1141	java/lang/RuntimeException
    //   1225	1235	1238	java/lang/NullPointerException
    //   1225	1235	1243	java/lang/RuntimeException
    //   1273	1282	1285	adb
    //   1273	1282	1316	java/lang/RuntimeException
    //   1359	1369	1372	java/lang/NullPointerException
    //   1343	1348	1377	java/lang/RuntimeException
    //   1359	1369	1399	java/lang/RuntimeException
    //   1431	1443	1446	java/lang/RuntimeException
    //   1426	1431	1468	java/lang/RuntimeException
    //   1518	1523	1526	java/lang/RuntimeException
    //   1579	1589	1622	java/lang/RuntimeException
    //   1579	1589	1647	java/lang/NullPointerException
    //   1102	1115	1652	java/lang/NullPointerException
    //   1125	1138	1652	java/lang/NullPointerException
    //   1170	1183	1652	java/lang/NullPointerException
    //   1193	1206	1652	java/lang/NullPointerException
  }
  
  private static boolean a(ByteArrayInputStream paramByteArrayInputStream, adr paramadr, int paramInt)
  {
    int j = paramByteArrayInputStream.available();
    int i = paramInt;
    while (i > 0)
    {
      int k = paramByteArrayInputStream.read();
      i -= 1;
      byte[] arrayOfByte1;
      if (k > 127)
      {
        switch (k)
        {
        default: 
          if (-1 == b(paramByteArrayInputStream, i))
          {
            Log.e("PduParser", "Corrupt Part headers");
            return false;
          }
        case 142: 
          arrayOfByte1 = a(paramByteArrayInputStream, 0);
          if (arrayOfByte1 != null) {
            paramadr.c(arrayOfByte1);
          }
          i = paramInt - (j - paramByteArrayInputStream.available());
          break;
        case 192: 
          arrayOfByte1 = a(paramByteArrayInputStream, 1);
          if (arrayOfByte1 != null) {
            paramadr.b(arrayOfByte1);
          }
          i = paramInt - (j - paramByteArrayInputStream.available());
          break;
        case 174: 
        case 197: 
          if (!aei.a().u()) {
            continue;
          }
          i = d(paramByteArrayInputStream);
          paramByteArrayInputStream.mark(1);
          k = paramByteArrayInputStream.available();
          int m = paramByteArrayInputStream.read();
          if (m == 128) {
            paramadr.d(adr.a);
          }
          for (;;)
          {
            if (k - paramByteArrayInputStream.available() < i)
            {
              if (paramByteArrayInputStream.read() == 152) {
                paramadr.h(a(paramByteArrayInputStream, 0));
              }
              m = paramByteArrayInputStream.available();
              if (k - m < i)
              {
                i -= k - m;
                paramByteArrayInputStream.read(new byte[i], 0, i);
              }
            }
            i = paramInt - (j - paramByteArrayInputStream.available());
            break;
            if (m == 129)
            {
              paramadr.d(adr.b);
            }
            else if (m == 130)
            {
              paramadr.d(adr.c);
            }
            else
            {
              paramByteArrayInputStream.reset();
              paramadr.d(a(paramByteArrayInputStream, 0));
            }
          }
          i = 0;
          break;
        }
      }
      else if ((k >= 32) && (k <= 127))
      {
        arrayOfByte1 = a(paramByteArrayInputStream, 0);
        byte[] arrayOfByte2 = a(paramByteArrayInputStream, 0);
        if (true == "Content-Transfer-Encoding".equalsIgnoreCase(new String(arrayOfByte1))) {
          paramadr.f(arrayOfByte2);
        }
        i = paramInt - (j - paramByteArrayInputStream.available());
      }
      else
      {
        if (-1 == b(paramByteArrayInputStream, i))
        {
          Log.e("PduParser", "Corrupt Part headers");
          return false;
        }
        i = 0;
      }
    }
    if (i != 0)
    {
      Log.e("PduParser", "Corrupt Part headers");
      return false;
    }
    return true;
  }
  
  private static byte[] a(ByteArrayInputStream paramByteArrayInputStream, int paramInt)
  {
    paramByteArrayInputStream.mark(1);
    int i = paramByteArrayInputStream.read();
    ByteArrayOutputStream localByteArrayOutputStream;
    int j;
    if ((1 == paramInt) && (34 == i))
    {
      paramByteArrayInputStream.mark(1);
      localByteArrayOutputStream = new ByteArrayOutputStream();
      j = paramByteArrayInputStream.read();
      label40:
      if ((-1 == j) || (j == 0)) {
        break label358;
      }
      if (paramInt != 2) {
        break label270;
      }
      if ((j >= 33) && (j <= 126)) {
        break label111;
      }
      i = 0;
      if (i != 0) {
        localByteArrayOutputStream.write(j);
      }
    }
    label111:
    label270:
    label356:
    for (;;)
    {
      j = paramByteArrayInputStream.read();
      break label40;
      if ((paramInt == 0) && (127 == i))
      {
        paramByteArrayInputStream.mark(1);
        break;
      }
      paramByteArrayInputStream.reset();
      break;
      switch (j)
      {
      default: 
        i = 1;
        break;
      case 34: 
      case 40: 
      case 41: 
      case 44: 
      case 47: 
      case 58: 
      case 59: 
      case 60: 
      case 61: 
      case 62: 
      case 63: 
      case 64: 
      case 91: 
      case 92: 
      case 93: 
      case 123: 
      case 125: 
        i = 0;
        break;
        if (((j >= 32) && (j <= 126)) || ((j >= 128) && (j <= 255))) {
          i = 1;
        }
        for (;;)
        {
          if (i == 0) {
            break label356;
          }
          localByteArrayOutputStream.write(j);
          break;
          switch (j)
          {
          case 11: 
          case 12: 
          default: 
            i = 0;
            break;
          case 9: 
          case 10: 
          case 13: 
            i = 1;
          }
        }
      }
    }
    label358:
    if (localByteArrayOutputStream.size() > 0) {
      return localByteArrayOutputStream.toByteArray();
    }
    return null;
  }
  
  private static byte[] a(ByteArrayInputStream paramByteArrayInputStream, SparseArray<Object> paramSparseArray)
  {
    paramByteArrayInputStream.mark(1);
    int i = paramByteArrayInputStream.read();
    paramByteArrayInputStream.reset();
    i &= 0xFF;
    if (i < 32)
    {
      i = d(paramByteArrayInputStream);
      int j = paramByteArrayInputStream.available();
      paramByteArrayInputStream.mark(1);
      int k = paramByteArrayInputStream.read();
      paramByteArrayInputStream.reset();
      k &= 0xFF;
      if ((k >= 32) && (k <= 127)) {
        arrayOfByte1 = a(paramByteArrayInputStream, 0);
      }
      for (;;)
      {
        j = i - (j - paramByteArrayInputStream.available());
        if (j <= 0) {
          break label650;
        }
        localInteger = Integer.valueOf(j);
        k = paramByteArrayInputStream.available();
        i = localInteger.intValue();
        for (;;)
        {
          if (i <= 0) {
            break label638;
          }
          m = paramByteArrayInputStream.read();
          i -= 1;
          switch (m)
          {
          default: 
            if (-1 != b(paramByteArrayInputStream, i)) {
              break label633;
            }
            Log.e("PduParser", "Corrupt Content-Type");
          }
        }
        if (k <= 127) {
          break;
        }
        k = paramByteArrayInputStream.read() & 0x7F;
        if (k < ado.a.length)
        {
          arrayOfByte1 = ado.a[k].getBytes();
        }
        else
        {
          paramByteArrayInputStream.reset();
          arrayOfByte1 = a(paramByteArrayInputStream, 0);
        }
      }
      Log.e("PduParser", "Corrupt content-type");
      byte[] arrayOfByte1 = ado.a[0].getBytes();
      label633:
      label638:
      label650:
      while (j >= 0)
      {
        for (;;)
        {
          Integer localInteger;
          int m;
          return arrayOfByte1;
          paramByteArrayInputStream.mark(1);
          i = f(paramByteArrayInputStream);
          paramByteArrayInputStream.reset();
          if (i > 127)
          {
            i = paramByteArrayInputStream.read() & 0x7F;
            if (i < ado.a.length) {
              paramSparseArray.put(131, ado.a[i].getBytes());
            }
          }
          for (;;)
          {
            i = paramByteArrayInputStream.available();
            i = localInteger.intValue() - (k - i);
            break;
            arrayOfByte2 = a(paramByteArrayInputStream, 0);
            if ((arrayOfByte2 != null) && (paramSparseArray != null)) {
              paramSparseArray.put(131, arrayOfByte2);
            }
          }
          byte[] arrayOfByte2 = a(paramByteArrayInputStream, 0);
          if ((arrayOfByte2 != null) && (paramSparseArray != null)) {
            paramSparseArray.put(153, arrayOfByte2);
          }
          i = paramByteArrayInputStream.available();
          i = localInteger.intValue() - (k - i);
          continue;
          paramByteArrayInputStream.mark(1);
          i = f(paramByteArrayInputStream);
          paramByteArrayInputStream.reset();
          if (((i > 32) && (i < 127)) || (i == 0))
          {
            arrayOfByte2 = a(paramByteArrayInputStream, 0);
            try
            {
              Object localObject = new String(arrayOfByte2);
              localObject = (Integer)ade.a.get(localObject);
              if (localObject == null) {
                throw new UnsupportedEncodingException();
              }
            }
            catch (UnsupportedEncodingException localUnsupportedEncodingException)
            {
              Log.e("PduParser", Arrays.toString(arrayOfByte2), localUnsupportedEncodingException);
              paramSparseArray.put(129, Integer.valueOf(0));
            }
          }
          for (;;)
          {
            i = paramByteArrayInputStream.available();
            i = localInteger.intValue() - (k - i);
            break;
            paramSparseArray.put(129, Integer.valueOf(localUnsupportedEncodingException.intValue()));
            continue;
            i = (int)h(paramByteArrayInputStream);
            if (paramSparseArray != null) {
              paramSparseArray.put(129, Integer.valueOf(i));
            }
          }
          arrayOfByte2 = a(paramByteArrayInputStream, 0);
          if ((arrayOfByte2 != null) && (paramSparseArray != null)) {
            paramSparseArray.put(151, arrayOfByte2);
          }
          i = paramByteArrayInputStream.available();
          i = localInteger.intValue() - (k - i);
          continue;
          i = 0;
        }
        if (i != 0) {
          Log.e("PduParser", "Corrupt Content-Type");
        }
      }
      Log.e("PduParser", "Corrupt MMS message");
      return ado.a[0].getBytes();
    }
    if (i <= 127) {
      return a(paramByteArrayInputStream, 0);
    }
    return ado.a[(paramByteArrayInputStream.read() & 0x7F)].getBytes();
  }
  
  private static int b(ByteArrayInputStream paramByteArrayInputStream, int paramInt)
  {
    int j = paramByteArrayInputStream.read(new byte[paramInt], 0, paramInt);
    int i = j;
    if (j < paramInt) {
      i = -1;
    }
    return i;
  }
  
  private static adj b(ByteArrayInputStream paramByteArrayInputStream)
  {
    if (paramByteArrayInputStream == null) {
      return null;
    }
    int k = c(paramByteArrayInputStream);
    adj localadj = new adj();
    int j = 0;
    if (j < k)
    {
      int m = c(paramByteArrayInputStream);
      int i = c(paramByteArrayInputStream);
      Object localObject2 = new adr();
      int n = paramByteArrayInputStream.available();
      if (n <= 0) {
        return null;
      }
      Object localObject1 = new SparseArray();
      byte[] arrayOfByte = a(paramByteArrayInputStream, (SparseArray)localObject1);
      if (arrayOfByte != null) {
        ((adr)localObject2).e(arrayOfByte);
      }
      for (;;)
      {
        arrayOfByte = (byte[])((SparseArray)localObject1).get(151);
        if (arrayOfByte != null) {
          ((adr)localObject2).g(arrayOfByte);
        }
        localObject1 = (Integer)((SparseArray)localObject1).get(129);
        if (localObject1 != null) {
          ((adr)localObject2).a(((Integer)localObject1).intValue());
        }
        m -= n - paramByteArrayInputStream.available();
        if (m <= 0) {
          break;
        }
        if (a(paramByteArrayInputStream, (adr)localObject2, m)) {
          break label195;
        }
        return null;
        ((adr)localObject2).e(ado.a[0].getBytes());
      }
      if (m < 0) {
        return null;
      }
      label195:
      if ((((adr)localObject2).e() == null) && (((adr)localObject2).i() == null) && (((adr)localObject2).j() == null) && (((adr)localObject2).c() == null)) {
        ((adr)localObject2).c(Long.toOctalString(System.currentTimeMillis()).getBytes());
      }
      if (i > 0)
      {
        arrayOfByte = new byte[i];
        localObject1 = new String(((adr)localObject2).g());
        paramByteArrayInputStream.read(arrayOfByte, 0, i);
        if (((String)localObject1).equalsIgnoreCase("application/vnd.wap.multipart.alternative"))
        {
          localObject1 = b(new ByteArrayInputStream(arrayOfByte)).a(0);
          label302:
          if ((d == null) && (e == null)) {
            break label495;
          }
          if (e == null) {
            break label460;
          }
          localObject2 = ((adr)localObject1).c();
          if ((localObject2 == null) || (true != Arrays.equals(e, (byte[])localObject2))) {
            break label455;
          }
          i = 0;
          label346:
          if (i != 0) {
            break label500;
          }
          localadj.b((adr)localObject1);
        }
      }
      for (;;)
      {
        j += 1;
        break;
        Object localObject3 = ((adr)localObject2).h();
        localObject1 = arrayOfByte;
        if (localObject3 != null)
        {
          localObject3 = new String((byte[])localObject3);
          if (!((String)localObject3).equalsIgnoreCase("base64")) {
            break label416;
          }
          localObject1 = add.a(arrayOfByte);
        }
        while (localObject1 == null)
        {
          return null;
          label416:
          localObject1 = arrayOfByte;
          if (((String)localObject3).equalsIgnoreCase("quoted-printable")) {
            localObject1 = adu.a(arrayOfByte);
          }
        }
        ((adr)localObject2).a((byte[])localObject1);
        localObject1 = localObject2;
        break label302;
        label455:
        i = 1;
        break label346;
        label460:
        if (d != null)
        {
          localObject2 = ((adr)localObject1).g();
          if ((localObject2 != null) && (true == Arrays.equals(d, (byte[])localObject2)))
          {
            i = 0;
            break label346;
          }
        }
        label495:
        i = 1;
        break label346;
        label500:
        localadj.a((adr)localObject1);
      }
    }
    return localadj;
  }
  
  private static int c(ByteArrayInputStream paramByteArrayInputStream)
  {
    int j = 0;
    int k = paramByteArrayInputStream.read();
    int i = k;
    if (k == -1) {
      return k;
    }
    while ((i & 0x80) != 0)
    {
      j = j << 7 | i & 0x7F;
      k = paramByteArrayInputStream.read();
      i = k;
      if (k == -1) {
        return k;
      }
    }
    return i & 0x7F | j << 7;
  }
  
  private static int d(ByteArrayInputStream paramByteArrayInputStream)
  {
    int i = paramByteArrayInputStream.read() & 0xFF;
    if (i <= 30) {
      return i;
    }
    if (i == 31) {
      return c(paramByteArrayInputStream);
    }
    throw new RuntimeException("Value length > LENGTH_QUOTE!");
  }
  
  private static adf e(ByteArrayInputStream paramByteArrayInputStream)
  {
    paramByteArrayInputStream.mark(1);
    int i = paramByteArrayInputStream.read() & 0xFF;
    if (i == 0) {
      return null;
    }
    paramByteArrayInputStream.reset();
    if (i < 32) {
      d(paramByteArrayInputStream);
    }
    for (i = paramByteArrayInputStream.read() & 0x7F;; i = 0)
    {
      paramByteArrayInputStream = a(paramByteArrayInputStream, 0);
      if (i != 0) {}
      try
      {
        return new adf(i, paramByteArrayInputStream);
      }
      catch (Exception paramByteArrayInputStream)
      {
        return null;
      }
      paramByteArrayInputStream = new adf(paramByteArrayInputStream);
      return paramByteArrayInputStream;
    }
  }
  
  private static int f(ByteArrayInputStream paramByteArrayInputStream)
  {
    return paramByteArrayInputStream.read() & 0xFF;
  }
  
  private static long g(ByteArrayInputStream paramByteArrayInputStream)
  {
    int j = paramByteArrayInputStream.read() & 0xFF;
    if (j > 8) {
      throw new RuntimeException("Octet count greater than 8 and I can't represent that!");
    }
    long l = 0L;
    int i = 0;
    while (i < j)
    {
      l = (l << 8) + (paramByteArrayInputStream.read() & 0xFF);
      i += 1;
    }
    return l;
  }
  
  private static long h(ByteArrayInputStream paramByteArrayInputStream)
  {
    paramByteArrayInputStream.mark(1);
    int i = paramByteArrayInputStream.read();
    paramByteArrayInputStream.reset();
    if (i > 127) {
      return paramByteArrayInputStream.read() & 0x7F;
    }
    return g(paramByteArrayInputStream);
  }
  
  public adg a()
  {
    if (a == null) {}
    Object localObject1;
    do
    {
      do
      {
        do
        {
          return null;
          b = a(a);
        } while (b == null);
        int j = b.a(140);
        localObject1 = b;
        int i;
        if (localObject1 == null) {
          i = 0;
        }
        while (i != 0)
        {
          if ((128 == j) || (132 == j))
          {
            c = b(a);
            if (c == null) {
              break;
            }
          }
          switch (j)
          {
          default: 
            return null;
          case 128: 
            return new ady(b, c);
            i = ((adp)localObject1).a(140);
            if (((adp)localObject1).a(141) == 0) {
              i = 0;
            } else {
              switch (i)
              {
              default: 
                i = 0;
                break;
              case 128: 
                if (((adp)localObject1).b(132) == null) {
                  i = 0;
                } else if (((adp)localObject1).c(137) == null) {
                  i = 0;
                } else if (((adp)localObject1).b(152) == null) {
                  i = 0;
                }
                break;
              case 129: 
                if (((adp)localObject1).a(146) == 0) {
                  i = 0;
                } else if (((adp)localObject1).b(152) == null) {
                  i = 0;
                }
                break;
              case 130: 
                if (((adp)localObject1).b(131) == null) {
                  i = 0;
                } else if (-1L == ((adp)localObject1).e(136)) {
                  i = 0;
                } else if (((adp)localObject1).b(138) == null) {
                  i = 0;
                } else if (-1L == ((adp)localObject1).e(142)) {
                  i = 0;
                } else if (((adp)localObject1).b(152) == null) {
                  i = 0;
                }
                break;
              case 131: 
                if (((adp)localObject1).a(149) == 0) {
                  i = 0;
                } else if (((adp)localObject1).b(152) == null) {
                  i = 0;
                }
                break;
              case 132: 
                if (((adp)localObject1).b(132) == null) {
                  i = 0;
                } else if (-1L == ((adp)localObject1).e(133)) {
                  i = 0;
                }
                break;
              case 134: 
                if (-1L == ((adp)localObject1).e(133)) {
                  i = 0;
                } else if (((adp)localObject1).b(139) == null) {
                  i = 0;
                } else if (((adp)localObject1).a(149) == 0) {
                  i = 0;
                } else if (((adp)localObject1).d(151) == null) {
                  i = 0;
                }
                break;
              case 133: 
                if (((adp)localObject1).b(152) == null) {
                  i = 0;
                }
                break;
              case 136: 
                if (-1L == ((adp)localObject1).e(133)) {
                  i = 0;
                } else if (((adp)localObject1).c(137) == null) {
                  i = 0;
                } else if (((adp)localObject1).b(139) == null) {
                  i = 0;
                } else if (((adp)localObject1).a(155) == 0) {
                  i = 0;
                } else if (((adp)localObject1).d(151) == null) {
                  i = 0;
                }
                break;
              case 135: 
                if (((adp)localObject1).c(137) == null) {
                  i = 0;
                } else if (((adp)localObject1).b(139) == null) {
                  i = 0;
                } else if (((adp)localObject1).a(155) == 0) {
                  i = 0;
                } else if (((adp)localObject1).d(151) == null) {
                  i = 0;
                } else {
                  i = 1;
                }
                break;
              }
            }
            break;
          }
        }
        return new adx(b);
        return new adi(b);
        return new adg(b, (short)0);
        localObject1 = new adw(b, c);
        localObject2 = ((adw)localObject1).g();
      } while (localObject2 == null);
      localObject2 = new String((byte[])localObject2);
      if ((((String)localObject2).equals("application/vnd.wap.multipart.mixed")) || (((String)localObject2).equals("application/vnd.wap.multipart.related")) || (((String)localObject2).equals("application/vnd.wap.multipart.alternative"))) {
        return (adg)localObject1;
      }
    } while (!((String)localObject2).equals("application/vnd.wap.multipart.alternative"));
    Object localObject2 = c.a(0);
    c.a();
    c.b((adr)localObject2);
    return (adg)localObject1;
    return new adg(b, '\000');
    return new adg(b, (byte)0);
    return new adv(b);
    return new adg(b, 0);
  }
}

/* Location:
 * Qualified Name:     adq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */