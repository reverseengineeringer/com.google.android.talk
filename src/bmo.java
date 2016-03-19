import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.CamcorderProfile;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video.Media;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class bmo
{
  private static CamcorderProfile a;
  
  static
  {
    try
    {
      a = CamcorderProfile.get(1);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      a = null;
    }
  }
  
  private static int a(Uri paramUri, ContentResolver paramContentResolver)
  {
    localObject = null;
    ContentResolver localContentResolver = null;
    try
    {
      paramContentResolver = paramContentResolver.openInputStream(paramUri);
      localContentResolver = paramContentResolver;
      localObject = paramContentResolver;
      int i = aal.a(paramContentResolver, -1L);
      if (paramContentResolver != null) {}
      try
      {
        paramContentResolver.close();
        return i;
      }
      catch (IOException paramUri)
      {
        ezi.c("Babel_TempMediaFileUtil", "Exception closing", paramUri);
        return i;
      }
      try
      {
        ((InputStream)localObject).close();
        throw paramUri;
      }
      catch (IOException paramContentResolver)
      {
        for (;;)
        {
          ezi.c("Babel_TempMediaFileUtil", "Exception closing", paramContentResolver);
        }
      }
    }
    catch (Exception paramContentResolver)
    {
      localObject = localContentResolver;
      paramUri = String.valueOf(paramUri);
      localObject = localContentResolver;
      ezi.d("Babel_TempMediaFileUtil", String.valueOf(paramUri).length() + 35 + "Error figuring out orientation for " + paramUri, paramContentResolver);
      if (localContentResolver != null) {}
      try
      {
        localContentResolver.close();
        return 0;
      }
      catch (IOException paramUri)
      {
        for (;;)
        {
          ezi.c("Babel_TempMediaFileUtil", "Exception closing", paramUri);
        }
      }
    }
    finally
    {
      if (localObject == null) {}
    }
  }
  
  public static Uri a(ContentResolver paramContentResolver, String paramString, bkr parambkr)
  {
    int i;
    if (parambkr == bkr.c)
    {
      i = 1;
      parambkr = new ContentValues();
      parambkr.put("_data", paramString);
      if (i == 0) {
        break label76;
      }
      paramString = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
      label32:
      paramString = paramContentResolver.insert(paramString, parambkr);
      if (paramString != null) {
        return paramString;
      }
      ezi.d("Babel_TempMediaFileUtil", "Insert to media store failed!", new Object[0]);
      if (i == 0) {
        break label83;
      }
    }
    label76:
    label83:
    for (paramString = MediaStore.Video.Media.getContentUri("phoneStorage");; paramString = MediaStore.Images.Media.getContentUri("phoneStorage"))
    {
      return paramContentResolver.insert(paramString, parambkr);
      i = 0;
      break;
      paramString = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
      break label32;
    }
    return paramString;
  }
  
  public static blb a(Context paramContext, int paramInt, bkr parambkr, Uri paramUri, String paramString1, String paramString2)
  {
    boolean bool1 = true;
    String str2 = null;
    String str1 = null;
    Object localObject = null;
    boolean bool2 = false;
    aal.x();
    blb localblb = new blb();
    b = paramString1;
    if (!a(paramUri, paramContext, paramInt, localblb)) {
      return null;
    }
    paramString1 = paramContext.getContentResolver();
    if (paramString2 != null)
    {
      d = paramString2;
      if (parambkr != bkr.a) {
        break label252;
      }
      if (!aal.d(d)) {
        break label241;
      }
      c = bkr.c;
      label91:
      if (c != bkr.c) {
        break label314;
      }
      aal.x();
      if (c != bkr.c) {
        break label261;
      }
      label116:
      aen.a(bool1);
      parambkr = new MediaMetadataRetriever();
      parambkr.setDataSource(paramContext, paramUri);
      paramString2 = parambkr.extractMetadata(18);
      str1 = parambkr.extractMetadata(19);
      str2 = parambkr.extractMetadata(9);
      paramContext = (Context)localObject;
      if (Build.VERSION.SDK_INT >= 17) {
        paramContext = parambkr.extractMetadata(24);
      }
    }
    for (;;)
    {
      try
      {
        e = Integer.parseInt(str1);
        f = Integer.parseInt(paramString2);
        h = Integer.parseInt(str2);
        if (paramContext != null) {
          continue;
        }
        paramInt = eye.a(paramString1, paramUri);
        g = paramInt;
      }
      catch (NumberFormatException paramContext)
      {
        label241:
        label252:
        label261:
        e = 0;
        f = 0;
        h = 0;
        g = 0;
        ezi.d("Babel", "Failed to parse video column strings", new Object[0]);
        continue;
      }
      return localblb;
      d = eye.b(paramString1, paramUri);
      break;
      c = bkr.b;
      break label91;
      c = parambkr;
      break label91;
      bool1 = false;
      break label116;
      paramInt = Integer.parseInt(paramContext);
      continue;
      label314:
      if (c == bkr.b)
      {
        aal.x();
        bool1 = bool2;
        if (c == bkr.b) {
          bool1 = true;
        }
        aen.a(bool1);
        g = a(paramUri, paramString1);
        paramString2 = new BitmapFactory.Options();
        inJustDecodeBounds = true;
        paramContext = str2;
        parambkr = str1;
        try
        {
          paramUri = paramString1.openInputStream(paramUri);
          paramContext = paramUri;
          parambkr = paramUri;
          BitmapFactory.decodeStream(paramUri, null, paramString2);
          paramContext = paramUri;
          parambkr = paramUri;
          e = outHeight;
          paramContext = paramUri;
          parambkr = paramUri;
          f = outWidth;
          if (paramUri != null) {
            try
            {
              paramUri.close();
            }
            catch (IOException paramContext)
            {
              ezi.c("Babel_TempMediaFileUtil", "Exception closing", paramContext);
            }
          }
        }
        catch (IOException paramUri)
        {
          parambkr = paramContext;
          ezi.d("Babel_TempMediaFileUtil", "TempMediaFileUtil: IOEx loading image", paramUri);
          if (paramContext != null) {
            try
            {
              paramContext.close();
            }
            catch (IOException paramContext)
            {
              ezi.c("Babel_TempMediaFileUtil", "Exception closing", paramContext);
            }
          }
        }
        finally
        {
          if (parambkr == null) {}
        }
      }
    }
    try
    {
      parambkr.close();
      throw paramContext;
    }
    catch (IOException parambkr)
    {
      for (;;)
      {
        ezi.c("Babel_TempMediaFileUtil", "Exception closing", parambkr);
      }
    }
  }
  
  public static blb a(Context paramContext, int paramInt, bkr parambkr, String paramString1, String paramString2)
  {
    aal.x();
    paramString1 = new File(null, paramString1);
    if (!paramString1.exists()) {
      return null;
    }
    return a(paramContext, paramInt, parambkr, Uri.fromFile(paramString1), paramString1.getName(), paramString2);
  }
  
  public static String a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "";
    case 1: 
      return "camera-p.jpg";
    }
    if (a != null)
    {
      paramInt = afileFormat;
      if (paramInt == 2) {
        return "camera-p.mp4";
      }
      if (paramInt == 1) {
        return "camera-p.3gp";
      }
      ezi.d("Babel", "Saved video file is not mp4 or 3gpp", new Object[0]);
      return "camera-p.3gp";
    }
    return "";
  }
  
  public static boolean a(Uri paramUri)
  {
    return (paramUri.getLastPathSegment().equals(a(1))) || (paramUri.getLastPathSegment().equals(a(2)));
  }
  
  /* Error */
  private static boolean a(Uri paramUri, Context paramContext, int paramInt, blb paramblb)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 11
    //   3: aconst_null
    //   4: astore 7
    //   6: aconst_null
    //   7: astore 9
    //   9: aconst_null
    //   10: astore 12
    //   12: aconst_null
    //   13: astore 13
    //   15: aconst_null
    //   16: astore 10
    //   18: iconst_0
    //   19: istore 4
    //   21: invokestatic 128	aal:x	()V
    //   24: aload_1
    //   25: invokevirtual 144	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   28: astore 14
    //   30: aload 14
    //   32: aload_0
    //   33: invokevirtual 30	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   36: astore 8
    //   38: aload 11
    //   40: astore_1
    //   41: aload 8
    //   43: astore 7
    //   45: aload 12
    //   47: astore 9
    //   49: aload 13
    //   51: astore 10
    //   53: iload_2
    //   54: new 277	java/util/Random
    //   57: dup
    //   58: invokespecial 278	java/util/Random:<init>	()V
    //   61: invokevirtual 282	java/util/Random:nextLong	()J
    //   64: invokestatic 288	java/lang/Math:abs	(J)J
    //   67: invokestatic 293	com/google/android/apps/hangouts/content/EsProvider:a	(IJ)Landroid/net/Uri;
    //   70: astore 15
    //   72: aload 11
    //   74: astore_1
    //   75: aload 8
    //   77: astore 7
    //   79: aload 12
    //   81: astore 9
    //   83: aload 13
    //   85: astore 10
    //   87: aload 14
    //   89: aload 15
    //   91: invokevirtual 297	android/content/ContentResolver:openOutputStream	(Landroid/net/Uri;)Ljava/io/OutputStream;
    //   94: astore 11
    //   96: lconst_0
    //   97: lstore 5
    //   99: aload 11
    //   101: astore_1
    //   102: aload 8
    //   104: astore 7
    //   106: aload 11
    //   108: astore 9
    //   110: aload 11
    //   112: astore 10
    //   114: sipush 1024
    //   117: newarray <illegal type>
    //   119: astore 12
    //   121: aload 11
    //   123: astore_1
    //   124: aload 8
    //   126: astore 7
    //   128: aload 11
    //   130: astore 9
    //   132: aload 11
    //   134: astore 10
    //   136: aload 8
    //   138: aload 12
    //   140: iconst_0
    //   141: sipush 1024
    //   144: invokevirtual 301	java/io/InputStream:read	([BII)I
    //   147: istore_2
    //   148: iload_2
    //   149: iconst_m1
    //   150: if_icmpeq +37 -> 187
    //   153: aload 11
    //   155: astore_1
    //   156: aload 8
    //   158: astore 7
    //   160: aload 11
    //   162: astore 9
    //   164: aload 11
    //   166: astore 10
    //   168: aload 11
    //   170: aload 12
    //   172: iconst_0
    //   173: iload_2
    //   174: invokevirtual 307	java/io/OutputStream:write	([BII)V
    //   177: lload 5
    //   179: iload_2
    //   180: i2l
    //   181: ladd
    //   182: lstore 5
    //   184: goto -63 -> 121
    //   187: aload 11
    //   189: astore_1
    //   190: aload 8
    //   192: astore 7
    //   194: aload 11
    //   196: astore 9
    //   198: aload 11
    //   200: astore 10
    //   202: aload_3
    //   203: lload 5
    //   205: putfield 311	blb:i	J
    //   208: aload 11
    //   210: astore_1
    //   211: aload 8
    //   213: astore 7
    //   215: aload 11
    //   217: astore 9
    //   219: aload 11
    //   221: astore 10
    //   223: aload_3
    //   224: aload 15
    //   226: invokevirtual 312	android/net/Uri:toString	()Ljava/lang/String;
    //   229: putfield 314	blb:a	Ljava/lang/String;
    //   232: aload 11
    //   234: ifnull +8 -> 242
    //   237: aload 11
    //   239: invokevirtual 315	java/io/OutputStream:close	()V
    //   242: aload 8
    //   244: ifnull +8 -> 252
    //   247: aload 8
    //   249: invokevirtual 42	java/io/InputStream:close	()V
    //   252: iconst_1
    //   253: istore 4
    //   255: iload 4
    //   257: ireturn
    //   258: astore_0
    //   259: ldc 44
    //   261: ldc 46
    //   263: aload_0
    //   264: invokestatic 52	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   267: goto -25 -> 242
    //   270: astore_0
    //   271: ldc 44
    //   273: ldc 46
    //   275: aload_0
    //   276: invokestatic 52	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   279: goto -27 -> 252
    //   282: astore_3
    //   283: aconst_null
    //   284: astore 8
    //   286: aload 10
    //   288: astore_1
    //   289: aload 8
    //   291: astore 7
    //   293: aload_0
    //   294: invokevirtual 312	android/net/Uri:toString	()Ljava/lang/String;
    //   297: invokestatic 58	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   300: astore_0
    //   301: aload 10
    //   303: astore_1
    //   304: aload 8
    //   306: astore 7
    //   308: aload_0
    //   309: invokevirtual 64	java/lang/String:length	()I
    //   312: ifeq +65 -> 377
    //   315: aload 10
    //   317: astore_1
    //   318: aload 8
    //   320: astore 7
    //   322: ldc_w 317
    //   325: aload_0
    //   326: invokevirtual 321	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   329: astore_0
    //   330: aload 10
    //   332: astore_1
    //   333: aload 8
    //   335: astore 7
    //   337: ldc 44
    //   339: aload_0
    //   340: aload_3
    //   341: invokestatic 81	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   344: aload 10
    //   346: ifnull +8 -> 354
    //   349: aload 10
    //   351: invokevirtual 315	java/io/OutputStream:close	()V
    //   354: aload 8
    //   356: ifnull -101 -> 255
    //   359: aload 8
    //   361: invokevirtual 42	java/io/InputStream:close	()V
    //   364: iconst_0
    //   365: ireturn
    //   366: astore_0
    //   367: ldc 44
    //   369: ldc 46
    //   371: aload_0
    //   372: invokestatic 52	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   375: iconst_0
    //   376: ireturn
    //   377: aload 10
    //   379: astore_1
    //   380: aload 8
    //   382: astore 7
    //   384: new 54	java/lang/String
    //   387: dup
    //   388: ldc_w 317
    //   391: invokespecial 324	java/lang/String:<init>	(Ljava/lang/String;)V
    //   394: astore_0
    //   395: goto -65 -> 330
    //   398: astore_0
    //   399: aload_1
    //   400: ifnull +7 -> 407
    //   403: aload_1
    //   404: invokevirtual 315	java/io/OutputStream:close	()V
    //   407: aload 7
    //   409: ifnull +8 -> 417
    //   412: aload 7
    //   414: invokevirtual 42	java/io/InputStream:close	()V
    //   417: aload_0
    //   418: athrow
    //   419: astore_0
    //   420: ldc 44
    //   422: ldc 46
    //   424: aload_0
    //   425: invokestatic 52	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   428: goto -74 -> 354
    //   431: astore_0
    //   432: aconst_null
    //   433: astore 8
    //   435: aload 9
    //   437: astore_1
    //   438: aload 8
    //   440: astore 7
    //   442: ldc 44
    //   444: ldc_w 326
    //   447: aload_0
    //   448: invokestatic 81	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   451: aload 9
    //   453: ifnull +8 -> 461
    //   456: aload 9
    //   458: invokevirtual 315	java/io/OutputStream:close	()V
    //   461: aload 8
    //   463: ifnull -208 -> 255
    //   466: aload 8
    //   468: invokevirtual 42	java/io/InputStream:close	()V
    //   471: iconst_0
    //   472: ireturn
    //   473: astore_0
    //   474: ldc 44
    //   476: ldc 46
    //   478: aload_0
    //   479: invokestatic 52	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   482: iconst_0
    //   483: ireturn
    //   484: astore_0
    //   485: ldc 44
    //   487: ldc 46
    //   489: aload_0
    //   490: invokestatic 52	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   493: goto -32 -> 461
    //   496: astore_1
    //   497: ldc 44
    //   499: ldc 46
    //   501: aload_1
    //   502: invokestatic 52	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   505: goto -98 -> 407
    //   508: astore_1
    //   509: ldc 44
    //   511: ldc 46
    //   513: aload_1
    //   514: invokestatic 52	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   517: goto -100 -> 417
    //   520: astore_0
    //   521: aconst_null
    //   522: astore_3
    //   523: aload 7
    //   525: astore_1
    //   526: aload_3
    //   527: astore 7
    //   529: goto -130 -> 399
    //   532: astore_0
    //   533: goto -98 -> 435
    //   536: astore_3
    //   537: goto -251 -> 286
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	540	0	paramUri	Uri
    //   0	540	1	paramContext	Context
    //   0	540	2	paramInt	int
    //   0	540	3	paramblb	blb
    //   19	237	4	bool	boolean
    //   97	107	5	l	long
    //   4	524	7	localObject1	Object
    //   36	431	8	localInputStream	InputStream
    //   7	450	9	localObject2	Object
    //   16	362	10	localObject3	Object
    //   1	237	11	localOutputStream	java.io.OutputStream
    //   10	161	12	arrayOfByte	byte[]
    //   13	71	13	localObject4	Object
    //   28	60	14	localContentResolver	ContentResolver
    //   70	155	15	localUri	Uri
    // Exception table:
    //   from	to	target	type
    //   237	242	258	java/io/IOException
    //   247	252	270	java/io/IOException
    //   30	38	282	java/net/MalformedURLException
    //   359	364	366	java/io/IOException
    //   53	72	398	finally
    //   87	96	398	finally
    //   114	121	398	finally
    //   136	148	398	finally
    //   168	177	398	finally
    //   202	208	398	finally
    //   223	232	398	finally
    //   293	301	398	finally
    //   308	315	398	finally
    //   322	330	398	finally
    //   337	344	398	finally
    //   384	395	398	finally
    //   442	451	398	finally
    //   349	354	419	java/io/IOException
    //   30	38	431	java/io/IOException
    //   466	471	473	java/io/IOException
    //   456	461	484	java/io/IOException
    //   403	407	496	java/io/IOException
    //   412	417	508	java/io/IOException
    //   30	38	520	finally
    //   53	72	532	java/io/IOException
    //   87	96	532	java/io/IOException
    //   114	121	532	java/io/IOException
    //   136	148	532	java/io/IOException
    //   168	177	532	java/io/IOException
    //   202	208	532	java/io/IOException
    //   223	232	532	java/io/IOException
    //   53	72	536	java/net/MalformedURLException
    //   87	96	536	java/net/MalformedURLException
    //   114	121	536	java/net/MalformedURLException
    //   136	148	536	java/net/MalformedURLException
    //   168	177	536	java/net/MalformedURLException
    //   202	208	536	java/net/MalformedURLException
    //   223	232	536	java/net/MalformedURLException
  }
  
  public static String b(Uri paramUri)
  {
    Object localObject = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "Hangouts");
    if ((!((File)localObject).exists()) && (!((File)localObject).mkdirs()))
    {
      localObject = String.valueOf(((File)localObject).getPath());
      if (((String)localObject).length() != 0)
      {
        localObject = "Create Directory failed: ".concat((String)localObject);
        ezi.d("Babel_TempMediaFileUtil", (String)localObject, new Object[0]);
        localObject = null;
      }
    }
    for (;;)
    {
      if (localObject != null) {
        break label89;
      }
      return null;
      localObject = new String("Create Directory failed: ");
      break;
    }
    label89:
    String str2 = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date());
    String str1 = ".jpg";
    String str3 = paramUri.getLastPathSegment();
    int i = str3.lastIndexOf('.');
    if (i >= 0) {
      str1 = str3.substring(i);
    }
    str3 = String.valueOf("image-");
    localObject = new File((File)localObject, String.valueOf(str3).length() + 0 + String.valueOf(str2).length() + String.valueOf(str1).length() + str3 + str2 + str1);
    try
    {
      kzh.a(new File(paramUri.getPath()), (File)localObject);
      paramUri = ((File)localObject).getPath();
      return paramUri;
    }
    catch (IOException paramUri)
    {
      ezi.c("Babel_TempMediaFileUtil", "Failed to copy an image file.", paramUri);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bmo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */