import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class emj
{
  private static final ExecutorService a = new ThreadPoolExecutor(0, 1, 60000L, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(2));
  private static final Runnable b = new emm();
  
  static
  {
    aal.a(new emk());
  }
  
  public static void a()
  {
    dvi localdvi = dvd.d;
    if (!dvi.a()) {
      return;
    }
    a.execute(b);
  }
  
  private static void a(int paramInt)
  {
    ((eot)ilh.a(aal.oJ, eot.class)).d(paramInt);
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, List<ContentValues> paramList)
  {
    Context localContext = aal.oJ;
    bei.b(paramSQLiteDatabase);
    bei.d(paramSQLiteDatabase);
    emy.a(localContext);
    bei.a(paramSQLiteDatabase, paramList);
    a(((eot)ilh.a(localContext, eot.class)).f());
  }
  
  /* Error */
  private static boolean a(SQLiteDatabase paramSQLiteDatabase, File paramFile, int paramInt, List<ContentValues> paramList)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: ldc 108
    //   5: new 110	java/lang/StringBuilder
    //   8: dup
    //   9: bipush 38
    //   11: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   14: ldc 113
    //   16: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: iload_2
    //   20: invokevirtual 120	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   23: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   26: iconst_0
    //   27: anewarray 4	java/lang/Object
    //   30: invokestatic 130	ezi:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   33: aload_0
    //   34: invokestatic 132	bei:c	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   37: invokestatic 138	org/xmlpull/v1/XmlPullParserFactory:newInstance	()Lorg/xmlpull/v1/XmlPullParserFactory;
    //   40: invokevirtual 142	org/xmlpull/v1/XmlPullParserFactory:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   43: astore 7
    //   45: new 144	java/io/FileInputStream
    //   48: dup
    //   49: aload_1
    //   50: invokespecial 147	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   53: astore 6
    //   55: aload 6
    //   57: astore 5
    //   59: aload 7
    //   61: new 149	java/io/InputStreamReader
    //   64: dup
    //   65: new 151	java/util/zip/GZIPInputStream
    //   68: dup
    //   69: aload 6
    //   71: invokespecial 154	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   74: invokespecial 155	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   77: invokeinterface 161 2 0
    //   82: aload 6
    //   84: astore 5
    //   86: aload 7
    //   88: invokestatic 166	emp:a	(Lorg/xmlpull/v1/XmlPullParser;)Lemp;
    //   91: astore 7
    //   93: aload 6
    //   95: astore 5
    //   97: aload 7
    //   99: new 168	emn
    //   102: dup
    //   103: aload_0
    //   104: invokespecial 170	emn:<init>	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   107: invokevirtual 173	emp:a	(Lemq;)Lemp;
    //   110: pop
    //   111: aload 6
    //   113: astore 5
    //   115: aload 7
    //   117: new 175	emo
    //   120: dup
    //   121: new 177	android/content/ContentValues
    //   124: dup
    //   125: invokespecial 178	android/content/ContentValues:<init>	()V
    //   128: aload_0
    //   129: invokespecial 181	emo:<init>	(Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)V
    //   132: invokevirtual 184	emp:a	(Lemr;)Lemp;
    //   135: pop
    //   136: aload 6
    //   138: astore 5
    //   140: aload 7
    //   142: invokevirtual 186	emp:a	()V
    //   145: aload 6
    //   147: astore 5
    //   149: aload_0
    //   150: aload_3
    //   151: invokestatic 91	bei:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    //   154: aload 6
    //   156: astore 5
    //   158: getstatic 67	aal:oJ	Landroid/content/Context;
    //   161: invokestatic 89	emy:a	(Landroid/content/Context;)V
    //   164: aload 6
    //   166: astore 5
    //   168: iload_2
    //   169: invokestatic 97	emj:a	(I)V
    //   172: aload 6
    //   174: invokevirtual 189	java/io/FileInputStream:close	()V
    //   177: iconst_1
    //   178: istore 4
    //   180: iload 4
    //   182: ireturn
    //   183: astore_0
    //   184: aload_0
    //   185: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   188: astore_1
    //   189: ldc 108
    //   191: new 110	java/lang/StringBuilder
    //   194: dup
    //   195: aload_1
    //   196: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   199: invokevirtual 198	java/lang/String:length	()I
    //   202: bipush 41
    //   204: iadd
    //   205: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   208: ldc -56
    //   210: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: aload_1
    //   214: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   217: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   220: aload_0
    //   221: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   224: goto -47 -> 177
    //   227: astore_0
    //   228: aconst_null
    //   229: astore 6
    //   231: aload 6
    //   233: astore 5
    //   235: aload_0
    //   236: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   239: astore_1
    //   240: aload 6
    //   242: astore 5
    //   244: ldc 108
    //   246: new 110	java/lang/StringBuilder
    //   249: dup
    //   250: aload_1
    //   251: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   254: invokevirtual 198	java/lang/String:length	()I
    //   257: bipush 37
    //   259: iadd
    //   260: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   263: ldc -51
    //   265: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: aload_1
    //   269: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   275: aload_0
    //   276: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   279: aload 6
    //   281: ifnull -101 -> 180
    //   284: aload 6
    //   286: invokevirtual 189	java/io/FileInputStream:close	()V
    //   289: iconst_0
    //   290: ireturn
    //   291: astore_0
    //   292: aload_0
    //   293: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   296: astore_1
    //   297: ldc 108
    //   299: new 110	java/lang/StringBuilder
    //   302: dup
    //   303: aload_1
    //   304: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   307: invokevirtual 198	java/lang/String:length	()I
    //   310: bipush 41
    //   312: iadd
    //   313: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   316: ldc -56
    //   318: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   321: aload_1
    //   322: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   328: aload_0
    //   329: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   332: iconst_0
    //   333: ireturn
    //   334: astore_0
    //   335: aconst_null
    //   336: astore 6
    //   338: aload 6
    //   340: astore 5
    //   342: aload_1
    //   343: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   346: astore_1
    //   347: aload 6
    //   349: astore 5
    //   351: ldc 108
    //   353: new 110	java/lang/StringBuilder
    //   356: dup
    //   357: aload_1
    //   358: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   361: invokevirtual 198	java/lang/String:length	()I
    //   364: bipush 33
    //   366: iadd
    //   367: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   370: ldc -49
    //   372: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   375: aload_1
    //   376: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   379: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   382: aload_0
    //   383: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   386: aload 6
    //   388: ifnull -208 -> 180
    //   391: aload 6
    //   393: invokevirtual 189	java/io/FileInputStream:close	()V
    //   396: iconst_0
    //   397: ireturn
    //   398: astore_0
    //   399: aload_0
    //   400: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   403: astore_1
    //   404: ldc 108
    //   406: new 110	java/lang/StringBuilder
    //   409: dup
    //   410: aload_1
    //   411: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   414: invokevirtual 198	java/lang/String:length	()I
    //   417: bipush 41
    //   419: iadd
    //   420: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   423: ldc -56
    //   425: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   428: aload_1
    //   429: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   432: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   435: aload_0
    //   436: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   439: iconst_0
    //   440: ireturn
    //   441: astore_0
    //   442: aconst_null
    //   443: astore 6
    //   445: aload 6
    //   447: astore 5
    //   449: aload_0
    //   450: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   453: astore_1
    //   454: aload 6
    //   456: astore 5
    //   458: ldc 108
    //   460: new 110	java/lang/StringBuilder
    //   463: dup
    //   464: aload_1
    //   465: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   468: invokevirtual 198	java/lang/String:length	()I
    //   471: bipush 31
    //   473: iadd
    //   474: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   477: ldc -47
    //   479: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   482: aload_1
    //   483: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   486: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   489: aload_0
    //   490: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   493: aload 6
    //   495: ifnull -315 -> 180
    //   498: aload 6
    //   500: invokevirtual 189	java/io/FileInputStream:close	()V
    //   503: iconst_0
    //   504: ireturn
    //   505: astore_0
    //   506: aload_0
    //   507: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   510: astore_1
    //   511: ldc 108
    //   513: new 110	java/lang/StringBuilder
    //   516: dup
    //   517: aload_1
    //   518: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   521: invokevirtual 198	java/lang/String:length	()I
    //   524: bipush 41
    //   526: iadd
    //   527: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   530: ldc -56
    //   532: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   535: aload_1
    //   536: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   539: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   542: aload_0
    //   543: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   546: iconst_0
    //   547: ireturn
    //   548: astore_0
    //   549: aconst_null
    //   550: astore 5
    //   552: aload 5
    //   554: ifnull +8 -> 562
    //   557: aload 5
    //   559: invokevirtual 189	java/io/FileInputStream:close	()V
    //   562: aload_0
    //   563: athrow
    //   564: astore_1
    //   565: aload_1
    //   566: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   569: astore_3
    //   570: ldc 108
    //   572: new 110	java/lang/StringBuilder
    //   575: dup
    //   576: aload_3
    //   577: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   580: invokevirtual 198	java/lang/String:length	()I
    //   583: bipush 41
    //   585: iadd
    //   586: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   589: ldc -56
    //   591: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   594: aload_3
    //   595: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   598: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   601: aload_1
    //   602: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   605: goto -43 -> 562
    //   608: astore_0
    //   609: goto -57 -> 552
    //   612: astore_0
    //   613: goto -168 -> 445
    //   616: astore_0
    //   617: goto -279 -> 338
    //   620: astore_0
    //   621: goto -390 -> 231
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	624	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	624	1	paramFile	File
    //   0	624	2	paramInt	int
    //   0	624	3	paramList	List<ContentValues>
    //   1	180	4	bool	boolean
    //   57	501	5	localFileInputStream1	java.io.FileInputStream
    //   53	446	6	localFileInputStream2	java.io.FileInputStream
    //   43	98	7	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   172	177	183	java/io/IOException
    //   33	55	227	org/xmlpull/v1/XmlPullParserException
    //   284	289	291	java/io/IOException
    //   33	55	334	java/io/FileNotFoundException
    //   391	396	398	java/io/IOException
    //   33	55	441	java/io/IOException
    //   498	503	505	java/io/IOException
    //   33	55	548	finally
    //   557	562	564	java/io/IOException
    //   59	82	608	finally
    //   86	93	608	finally
    //   97	111	608	finally
    //   115	136	608	finally
    //   140	145	608	finally
    //   149	154	608	finally
    //   158	164	608	finally
    //   168	172	608	finally
    //   235	240	608	finally
    //   244	279	608	finally
    //   342	347	608	finally
    //   351	386	608	finally
    //   449	454	608	finally
    //   458	493	608	finally
    //   59	82	612	java/io/IOException
    //   86	93	612	java/io/IOException
    //   97	111	612	java/io/IOException
    //   115	136	612	java/io/IOException
    //   140	145	612	java/io/IOException
    //   149	154	612	java/io/IOException
    //   158	164	612	java/io/IOException
    //   168	172	612	java/io/IOException
    //   59	82	616	java/io/FileNotFoundException
    //   86	93	616	java/io/FileNotFoundException
    //   97	111	616	java/io/FileNotFoundException
    //   115	136	616	java/io/FileNotFoundException
    //   140	145	616	java/io/FileNotFoundException
    //   149	154	616	java/io/FileNotFoundException
    //   158	164	616	java/io/FileNotFoundException
    //   168	172	616	java/io/FileNotFoundException
    //   59	82	620	org/xmlpull/v1/XmlPullParserException
    //   86	93	620	org/xmlpull/v1/XmlPullParserException
    //   97	111	620	org/xmlpull/v1/XmlPullParserException
    //   115	136	620	org/xmlpull/v1/XmlPullParserException
    //   140	145	620	org/xmlpull/v1/XmlPullParserException
    //   149	154	620	org/xmlpull/v1/XmlPullParserException
    //   158	164	620	org/xmlpull/v1/XmlPullParserException
    //   168	172	620	org/xmlpull/v1/XmlPullParserException
  }
  
  public static boolean a(File paramFile)
  {
    SQLiteDatabase localSQLiteDatabase = bei.a(aal.oJ);
    return a(localSQLiteDatabase, paramFile, 99, bei.a(localSQLiteDatabase));
  }
  
  /* Error */
  private static boolean a(String paramString, File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aconst_null
    //   4: astore 7
    //   6: aload_0
    //   7: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   10: astore 5
    //   12: aload 5
    //   14: invokevirtual 198	java/lang/String:length	()I
    //   17: ifeq +226 -> 243
    //   20: ldc -34
    //   22: aload 5
    //   24: invokevirtual 226	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   27: astore 5
    //   29: ldc 108
    //   31: aload 5
    //   33: iconst_0
    //   34: anewarray 4	java/lang/Object
    //   37: invokestatic 130	ezi:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   40: getstatic 67	aal:oJ	Landroid/content/Context;
    //   43: ldc -28
    //   45: ldc -26
    //   47: invokestatic 233	aal:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   50: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   53: astore 5
    //   55: new 235	java/net/URL
    //   58: dup
    //   59: new 110	java/lang/StringBuilder
    //   62: dup
    //   63: aload 5
    //   65: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   68: invokevirtual 198	java/lang/String:length	()I
    //   71: iconst_1
    //   72: iadd
    //   73: aload_0
    //   74: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   77: invokevirtual 198	java/lang/String:length	()I
    //   80: iadd
    //   81: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   84: aload 5
    //   86: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: ldc -19
    //   91: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: aload_0
    //   95: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: invokespecial 240	java/net/URL:<init>	(Ljava/lang/String;)V
    //   104: astore 5
    //   106: aload 5
    //   108: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   111: astore_0
    //   112: ldc 108
    //   114: new 110	java/lang/StringBuilder
    //   117: dup
    //   118: aload_0
    //   119: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   122: invokevirtual 198	java/lang/String:length	()I
    //   125: bipush 24
    //   127: iadd
    //   128: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   131: ldc -14
    //   133: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: aload_0
    //   137: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: iconst_0
    //   144: anewarray 4	java/lang/Object
    //   147: invokestatic 130	ezi:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   150: aload 5
    //   152: invokevirtual 246	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   155: checkcast 248	javax/net/ssl/HttpsURLConnection
    //   158: astore_0
    //   159: aload_0
    //   160: invokevirtual 251	javax/net/ssl/HttpsURLConnection:connect	()V
    //   163: aload_0
    //   164: invokevirtual 254	javax/net/ssl/HttpsURLConnection:getResponseCode	()I
    //   167: sipush 200
    //   170: if_icmpeq +132 -> 302
    //   173: aload 5
    //   175: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   178: astore_1
    //   179: aload_0
    //   180: invokevirtual 254	javax/net/ssl/HttpsURLConnection:getResponseCode	()I
    //   183: istore_2
    //   184: ldc 108
    //   186: new 110	java/lang/StringBuilder
    //   189: dup
    //   190: aload_1
    //   191: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   194: invokevirtual 198	java/lang/String:length	()I
    //   197: bipush 63
    //   199: iadd
    //   200: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   203: ldc_w 256
    //   206: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: aload_1
    //   210: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: ldc_w 258
    //   216: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: iload_2
    //   220: invokevirtual 120	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   223: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: iconst_0
    //   227: anewarray 4	java/lang/Object
    //   230: invokestatic 261	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   233: aload_0
    //   234: ifnull +7 -> 241
    //   237: aload_0
    //   238: invokevirtual 264	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   241: iconst_0
    //   242: ireturn
    //   243: new 191	java/lang/String
    //   246: dup
    //   247: ldc -34
    //   249: invokespecial 265	java/lang/String:<init>	(Ljava/lang/String;)V
    //   252: astore 5
    //   254: goto -225 -> 29
    //   257: astore_0
    //   258: aload_0
    //   259: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   262: astore_1
    //   263: ldc 108
    //   265: new 110	java/lang/StringBuilder
    //   268: dup
    //   269: aload_1
    //   270: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   273: invokevirtual 198	java/lang/String:length	()I
    //   276: bipush 51
    //   278: iadd
    //   279: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   282: ldc_w 267
    //   285: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: aload_1
    //   289: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   295: aload_0
    //   296: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   299: goto -58 -> 241
    //   302: aload_0
    //   303: invokevirtual 270	javax/net/ssl/HttpsURLConnection:getContentLength	()I
    //   306: istore_3
    //   307: iload_3
    //   308: ifgt +89 -> 397
    //   311: ldc 108
    //   313: new 110	java/lang/StringBuilder
    //   316: dup
    //   317: bipush 58
    //   319: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   322: ldc_w 272
    //   325: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   328: iload_3
    //   329: invokevirtual 120	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   332: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   335: iconst_0
    //   336: anewarray 4	java/lang/Object
    //   339: invokestatic 261	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   342: aload_0
    //   343: ifnull +7 -> 350
    //   346: aload_0
    //   347: invokevirtual 264	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   350: iconst_0
    //   351: ireturn
    //   352: astore_0
    //   353: aload_0
    //   354: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   357: astore_1
    //   358: ldc 108
    //   360: new 110	java/lang/StringBuilder
    //   363: dup
    //   364: aload_1
    //   365: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   368: invokevirtual 198	java/lang/String:length	()I
    //   371: bipush 51
    //   373: iadd
    //   374: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   377: ldc_w 267
    //   380: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: aload_1
    //   384: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   387: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   390: aload_0
    //   391: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   394: goto -44 -> 350
    //   397: aload_0
    //   398: invokevirtual 276	javax/net/ssl/HttpsURLConnection:getInputStream	()Ljava/io/InputStream;
    //   401: astore 6
    //   403: new 278	java/io/FileOutputStream
    //   406: dup
    //   407: aload_1
    //   408: invokespecial 279	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   411: astore 5
    //   413: sipush 4096
    //   416: newarray <illegal type>
    //   418: astore_1
    //   419: iconst_0
    //   420: istore_2
    //   421: aload 6
    //   423: aload_1
    //   424: iconst_0
    //   425: sipush 4096
    //   428: invokevirtual 285	java/io/InputStream:read	([BII)I
    //   431: istore 4
    //   433: iload 4
    //   435: ifle +20 -> 455
    //   438: aload 5
    //   440: aload_1
    //   441: iconst_0
    //   442: iload 4
    //   444: invokevirtual 291	java/io/OutputStream:write	([BII)V
    //   447: iload_2
    //   448: iload 4
    //   450: iadd
    //   451: istore_2
    //   452: goto -31 -> 421
    //   455: iload_2
    //   456: iload_3
    //   457: if_icmpeq +113 -> 570
    //   460: ldc 108
    //   462: new 110	java/lang/StringBuilder
    //   465: dup
    //   466: bipush 59
    //   468: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   471: ldc_w 293
    //   474: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   477: iload_2
    //   478: invokevirtual 120	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   481: ldc -19
    //   483: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   486: iload_3
    //   487: invokevirtual 120	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   490: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   493: iconst_0
    //   494: anewarray 4	java/lang/Object
    //   497: invokestatic 261	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   500: aload 6
    //   502: ifnull +8 -> 510
    //   505: aload 6
    //   507: invokevirtual 294	java/io/InputStream:close	()V
    //   510: aload 5
    //   512: invokevirtual 295	java/io/OutputStream:close	()V
    //   515: aload_0
    //   516: ifnull +7 -> 523
    //   519: aload_0
    //   520: invokevirtual 264	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   523: iconst_0
    //   524: ireturn
    //   525: astore_0
    //   526: aload_0
    //   527: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   530: astore_1
    //   531: ldc 108
    //   533: new 110	java/lang/StringBuilder
    //   536: dup
    //   537: aload_1
    //   538: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   541: invokevirtual 198	java/lang/String:length	()I
    //   544: bipush 51
    //   546: iadd
    //   547: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   550: ldc_w 267
    //   553: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   556: aload_1
    //   557: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   560: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   563: aload_0
    //   564: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   567: goto -44 -> 523
    //   570: aload 6
    //   572: ifnull +8 -> 580
    //   575: aload 6
    //   577: invokevirtual 294	java/io/InputStream:close	()V
    //   580: aload 5
    //   582: invokevirtual 295	java/io/OutputStream:close	()V
    //   585: aload_0
    //   586: ifnull +7 -> 593
    //   589: aload_0
    //   590: invokevirtual 264	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   593: iconst_1
    //   594: ireturn
    //   595: astore_0
    //   596: aload_0
    //   597: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   600: astore_1
    //   601: ldc 108
    //   603: new 110	java/lang/StringBuilder
    //   606: dup
    //   607: aload_1
    //   608: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   611: invokevirtual 198	java/lang/String:length	()I
    //   614: bipush 51
    //   616: iadd
    //   617: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   620: ldc_w 267
    //   623: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   626: aload_1
    //   627: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   630: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   633: aload_0
    //   634: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   637: goto -44 -> 593
    //   640: astore 5
    //   642: aconst_null
    //   643: astore_0
    //   644: aconst_null
    //   645: astore_1
    //   646: aload 7
    //   648: astore 6
    //   650: aload 5
    //   652: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   655: astore 7
    //   657: ldc 108
    //   659: new 110	java/lang/StringBuilder
    //   662: dup
    //   663: aload 7
    //   665: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   668: invokevirtual 198	java/lang/String:length	()I
    //   671: bipush 33
    //   673: iadd
    //   674: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   677: ldc_w 297
    //   680: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   683: aload 7
    //   685: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   688: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   691: aload 5
    //   693: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   696: aload_1
    //   697: ifnull +7 -> 704
    //   700: aload_1
    //   701: invokevirtual 294	java/io/InputStream:close	()V
    //   704: aload 6
    //   706: ifnull +8 -> 714
    //   709: aload 6
    //   711: invokevirtual 295	java/io/OutputStream:close	()V
    //   714: aload_0
    //   715: ifnull +7 -> 722
    //   718: aload_0
    //   719: invokevirtual 264	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   722: iconst_0
    //   723: ireturn
    //   724: astore_0
    //   725: aload_0
    //   726: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   729: astore_1
    //   730: ldc 108
    //   732: new 110	java/lang/StringBuilder
    //   735: dup
    //   736: aload_1
    //   737: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   740: invokevirtual 198	java/lang/String:length	()I
    //   743: bipush 51
    //   745: iadd
    //   746: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   749: ldc_w 267
    //   752: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   755: aload_1
    //   756: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   759: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   762: aload_0
    //   763: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   766: goto -44 -> 722
    //   769: astore_0
    //   770: aconst_null
    //   771: astore 5
    //   773: aconst_null
    //   774: astore 6
    //   776: aload 8
    //   778: astore_1
    //   779: aload 6
    //   781: ifnull +8 -> 789
    //   784: aload 6
    //   786: invokevirtual 294	java/io/InputStream:close	()V
    //   789: aload 5
    //   791: ifnull +8 -> 799
    //   794: aload 5
    //   796: invokevirtual 295	java/io/OutputStream:close	()V
    //   799: aload_1
    //   800: ifnull +7 -> 807
    //   803: aload_1
    //   804: invokevirtual 264	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   807: aload_0
    //   808: athrow
    //   809: astore_1
    //   810: aload_1
    //   811: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   814: astore 5
    //   816: ldc 108
    //   818: new 110	java/lang/StringBuilder
    //   821: dup
    //   822: aload 5
    //   824: invokestatic 195	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   827: invokevirtual 198	java/lang/String:length	()I
    //   830: bipush 51
    //   832: iadd
    //   833: invokespecial 111	java/lang/StringBuilder:<init>	(I)V
    //   836: ldc_w 267
    //   839: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   842: aload 5
    //   844: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   847: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   850: aload_1
    //   851: invokestatic 203	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   854: goto -47 -> 807
    //   857: astore 7
    //   859: aconst_null
    //   860: astore 5
    //   862: aconst_null
    //   863: astore 6
    //   865: aload_0
    //   866: astore_1
    //   867: aload 7
    //   869: astore_0
    //   870: goto -91 -> 779
    //   873: astore 7
    //   875: aconst_null
    //   876: astore 5
    //   878: aload_0
    //   879: astore_1
    //   880: aload 7
    //   882: astore_0
    //   883: goto -104 -> 779
    //   886: astore 7
    //   888: aload_0
    //   889: astore_1
    //   890: aload 7
    //   892: astore_0
    //   893: goto -114 -> 779
    //   896: astore 8
    //   898: aload_1
    //   899: astore 7
    //   901: aload 6
    //   903: astore 5
    //   905: aload_0
    //   906: astore_1
    //   907: aload 8
    //   909: astore_0
    //   910: aload 7
    //   912: astore 6
    //   914: goto -135 -> 779
    //   917: astore 5
    //   919: aconst_null
    //   920: astore_1
    //   921: aload 7
    //   923: astore 6
    //   925: goto -275 -> 650
    //   928: astore 5
    //   930: aload 6
    //   932: astore_1
    //   933: aload 7
    //   935: astore 6
    //   937: goto -287 -> 650
    //   940: astore 8
    //   942: aload 5
    //   944: astore_1
    //   945: aload 6
    //   947: astore 7
    //   949: aload 8
    //   951: astore 5
    //   953: aload_1
    //   954: astore 6
    //   956: aload 7
    //   958: astore_1
    //   959: goto -309 -> 650
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	962	0	paramString	String
    //   0	962	1	paramFile	File
    //   183	295	2	i	int
    //   306	181	3	j	int
    //   431	20	4	k	int
    //   10	571	5	localObject1	Object
    //   640	52	5	localIOException1	java.io.IOException
    //   771	133	5	localObject2	Object
    //   917	1	5	localIOException2	java.io.IOException
    //   928	15	5	localIOException3	java.io.IOException
    //   951	1	5	localIOException4	java.io.IOException
    //   401	554	6	localObject3	Object
    //   4	680	7	str	String
    //   857	11	7	localObject4	Object
    //   873	8	7	localObject5	Object
    //   886	5	7	localObject6	Object
    //   899	58	7	localObject7	Object
    //   1	776	8	localObject8	Object
    //   896	12	8	localObject9	Object
    //   940	10	8	localIOException5	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   237	241	257	java/io/IOException
    //   346	350	352	java/io/IOException
    //   505	510	525	java/io/IOException
    //   510	515	525	java/io/IOException
    //   519	523	525	java/io/IOException
    //   575	580	595	java/io/IOException
    //   580	585	595	java/io/IOException
    //   589	593	595	java/io/IOException
    //   40	159	640	java/io/IOException
    //   700	704	724	java/io/IOException
    //   709	714	724	java/io/IOException
    //   718	722	724	java/io/IOException
    //   40	159	769	finally
    //   784	789	809	java/io/IOException
    //   794	799	809	java/io/IOException
    //   803	807	809	java/io/IOException
    //   159	233	857	finally
    //   302	307	857	finally
    //   311	342	857	finally
    //   397	403	857	finally
    //   403	413	873	finally
    //   413	419	886	finally
    //   421	433	886	finally
    //   438	447	886	finally
    //   460	500	886	finally
    //   650	696	896	finally
    //   159	233	917	java/io/IOException
    //   302	307	917	java/io/IOException
    //   311	342	917	java/io/IOException
    //   397	403	917	java/io/IOException
    //   403	413	928	java/io/IOException
    //   413	419	940	java/io/IOException
    //   421	433	940	java/io/IOException
    //   438	447	940	java/io/IOException
    //   460	500	940	java/io/IOException
  }
  
  static void b()
  {
    Object localObject2 = aal.oJ;
    Object localObject3 = aal.a(aal.oJ, "babel_apn_ota_file_prefix", "apnota-");
    String str = aal.a(aal.oJ, "babel_apn_ota_file_suffix", ".xml.gz");
    int i = aal.a(aal.oJ, "babel_apn_ota_version", -1);
    ezi.c("Babel_SMS", 32 + "ApnsOta: OTA version " + i, new Object[0]);
    Object localObject1 = (eot)ilh.a((Context)localObject2, eot.class);
    int j = ((eot)localObject1).f();
    int k = ((eot)localObject1).e();
    localObject1 = bei.a((Context)localObject2);
    if (i > k)
    {
      localObject3 = String.format(Locale.US, "%s%d%s", new Object[] { localObject3, Integer.valueOf(i), str });
      localObject2 = String.valueOf(((Context)localObject2).getFilesDir());
      localObject2 = new File(String.valueOf(localObject2).length() + 1 + String.valueOf(localObject3).length() + (String)localObject2 + "/" + (String)localObject3);
      if (a((String)localObject3, (File)localObject2))
      {
        localObject3 = bei.a((SQLiteDatabase)localObject1);
        if (!a((SQLiteDatabase)localObject1, (File)localObject2, i, (List)localObject3))
        {
          ezi.c("Babel_SMS", "ApnsOta: revert to defaults because of failure", new Object[0]);
          a((SQLiteDatabase)localObject1, (List)localObject3);
        }
      }
      ((File)localObject2).delete();
    }
    while ((i != -1) || (k == j)) {
      return;
    }
    ezi.c("Babel_SMS", "ApnsOta: forced to load defaults", new Object[0]);
    a((SQLiteDatabase)localObject1, bei.a((SQLiteDatabase)localObject1));
  }
}

/* Location:
 * Qualified Name:     emj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */