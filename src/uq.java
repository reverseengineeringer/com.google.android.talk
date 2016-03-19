import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class uq
  extends DataSetObservable
{
  static final String a = uq.class.getSimpleName();
  private static final Object e = new Object();
  private static final Map<String, uq> f = new HashMap();
  final Context b;
  final String c;
  boolean d = true;
  private final Object g = new Object();
  private final List<ur> h = new ArrayList();
  private final List<ut> i = new ArrayList();
  private Intent j;
  private us k = new us(this);
  private int l = 50;
  private boolean m = false;
  private boolean n = true;
  private boolean o = false;
  private a p;
  
  private uq(Context paramContext, String paramString)
  {
    b = paramContext.getApplicationContext();
    if ((!TextUtils.isEmpty(paramString)) && (!paramString.endsWith(".xml")))
    {
      c = (paramString + ".xml");
      return;
    }
    c = paramString;
  }
  
  public static uq a(Context paramContext, String paramString)
  {
    synchronized (e)
    {
      uq localuq2 = (uq)f.get(paramString);
      uq localuq1 = localuq2;
      if (localuq2 == null)
      {
        localuq1 = new uq(paramContext, paramString);
        f.put(paramString, localuq1);
      }
      return localuq1;
    }
  }
  
  private boolean a(ut paramut)
  {
    boolean bool = i.add(paramut);
    Object[] arrayOfObject;
    if (bool)
    {
      n = true;
      f();
      if (!m) {
        throw new IllegalStateException("No preceding call to #readHistoricalData");
      }
      if (n)
      {
        n = false;
        if (!TextUtils.isEmpty(c))
        {
          paramut = new uu(this);
          arrayOfObject = new Object[2];
          arrayOfObject[0] = new ArrayList(i);
          arrayOfObject[1] = c;
          if (Build.VERSION.SDK_INT < 11) {
            break label126;
          }
          paramut.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, arrayOfObject);
        }
      }
    }
    for (;;)
    {
      e();
      notifyChanged();
      return bool;
      label126:
      paramut.execute(arrayOfObject);
    }
  }
  
  private void d()
  {
    int i2 = 1;
    int i1;
    if ((o) && (j != null))
    {
      o = false;
      h.clear();
      List localList = b.getPackageManager().queryIntentActivities(j, 0);
      int i3 = localList.size();
      i1 = 0;
      while (i1 < i3)
      {
        ResolveInfo localResolveInfo = (ResolveInfo)localList.get(i1);
        h.add(new ur(this, localResolveInfo));
        i1 += 1;
      }
      i1 = 1;
      if ((!d) || (!n) || (TextUtils.isEmpty(c))) {
        break label167;
      }
      d = false;
      m = true;
      g();
    }
    for (;;)
    {
      f();
      if ((i1 | i2) != 0)
      {
        e();
        notifyChanged();
      }
      return;
      i1 = 0;
      break;
      label167:
      i2 = 0;
    }
  }
  
  private boolean e()
  {
    if ((k != null) && (j != null) && (!h.isEmpty()) && (!i.isEmpty()))
    {
      k.a(h, Collections.unmodifiableList(i));
      return true;
    }
    return false;
  }
  
  private void f()
  {
    int i2 = i.size() - l;
    if (i2 <= 0) {}
    for (;;)
    {
      return;
      n = true;
      int i1 = 0;
      while (i1 < i2)
      {
        i.remove(0);
        i1 += 1;
      }
    }
  }
  
  /* Error */
  private void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 92	uq:b	Landroid/content/Context;
    //   4: aload_0
    //   5: getfield 118	uq:c	Ljava/lang/String;
    //   8: invokevirtual 233	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore_2
    //   12: invokestatic 239	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   15: astore_3
    //   16: aload_3
    //   17: aload_2
    //   18: ldc -15
    //   20: invokeinterface 247 3 0
    //   25: iconst_0
    //   26: istore_1
    //   27: iload_1
    //   28: iconst_1
    //   29: if_icmpeq +18 -> 47
    //   32: iload_1
    //   33: iconst_2
    //   34: if_icmpeq +13 -> 47
    //   37: aload_3
    //   38: invokeinterface 250 1 0
    //   43: istore_1
    //   44: goto -17 -> 27
    //   47: ldc -4
    //   49: aload_3
    //   50: invokeinterface 255 1 0
    //   55: invokevirtual 258	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   58: ifne +52 -> 110
    //   61: new 227	org/xmlpull/v1/XmlPullParserException
    //   64: dup
    //   65: ldc_w 260
    //   68: invokespecial 261	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   71: athrow
    //   72: astore_3
    //   73: getstatic 43	uq:a	Ljava/lang/String;
    //   76: new 108	java/lang/StringBuilder
    //   79: dup
    //   80: ldc_w 263
    //   83: invokespecial 264	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   86: aload_0
    //   87: getfield 118	uq:c	Ljava/lang/String;
    //   90: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: aload_3
    //   97: invokestatic 269	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   100: pop
    //   101: aload_2
    //   102: ifnull +7 -> 109
    //   105: aload_2
    //   106: invokevirtual 274	java/io/FileInputStream:close	()V
    //   109: return
    //   110: aload_0
    //   111: getfield 67	uq:i	Ljava/util/List;
    //   114: astore 4
    //   116: aload 4
    //   118: invokeinterface 183 1 0
    //   123: aload_3
    //   124: invokeinterface 250 1 0
    //   129: istore_1
    //   130: iload_1
    //   131: iconst_1
    //   132: if_icmpeq +144 -> 276
    //   135: iload_1
    //   136: iconst_3
    //   137: if_icmpeq -14 -> 123
    //   140: iload_1
    //   141: iconst_4
    //   142: if_icmpeq -19 -> 123
    //   145: ldc_w 276
    //   148: aload_3
    //   149: invokeinterface 255 1 0
    //   154: invokevirtual 258	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   157: ifne +54 -> 211
    //   160: new 227	org/xmlpull/v1/XmlPullParserException
    //   163: dup
    //   164: ldc_w 278
    //   167: invokespecial 261	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   170: athrow
    //   171: astore_3
    //   172: getstatic 43	uq:a	Ljava/lang/String;
    //   175: new 108	java/lang/StringBuilder
    //   178: dup
    //   179: ldc_w 263
    //   182: invokespecial 264	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   185: aload_0
    //   186: getfield 118	uq:c	Ljava/lang/String;
    //   189: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   195: aload_3
    //   196: invokestatic 269	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   199: pop
    //   200: aload_2
    //   201: ifnull -92 -> 109
    //   204: aload_2
    //   205: invokevirtual 274	java/io/FileInputStream:close	()V
    //   208: return
    //   209: astore_2
    //   210: return
    //   211: aload 4
    //   213: new 280	ut
    //   216: dup
    //   217: aload_3
    //   218: aconst_null
    //   219: ldc_w 282
    //   222: invokeinterface 286 3 0
    //   227: aload_3
    //   228: aconst_null
    //   229: ldc_w 288
    //   232: invokeinterface 286 3 0
    //   237: invokestatic 294	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   240: aload_3
    //   241: aconst_null
    //   242: ldc_w 296
    //   245: invokeinterface 286 3 0
    //   250: invokestatic 302	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   253: invokespecial 305	ut:<init>	(Ljava/lang/String;JF)V
    //   256: invokeinterface 138 2 0
    //   261: pop
    //   262: goto -139 -> 123
    //   265: astore_3
    //   266: aload_2
    //   267: ifnull +7 -> 274
    //   270: aload_2
    //   271: invokevirtual 274	java/io/FileInputStream:close	()V
    //   274: aload_3
    //   275: athrow
    //   276: aload_2
    //   277: ifnull -168 -> 109
    //   280: aload_2
    //   281: invokevirtual 274	java/io/FileInputStream:close	()V
    //   284: return
    //   285: astore_2
    //   286: return
    //   287: astore_2
    //   288: return
    //   289: astore_2
    //   290: goto -16 -> 274
    //   293: astore_2
    //   294: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	295	0	this	uq
    //   26	117	1	i1	int
    //   11	194	2	localFileInputStream	java.io.FileInputStream
    //   209	72	2	localIOException1	java.io.IOException
    //   285	1	2	localIOException2	java.io.IOException
    //   287	1	2	localIOException3	java.io.IOException
    //   289	1	2	localIOException4	java.io.IOException
    //   293	1	2	localFileNotFoundException	java.io.FileNotFoundException
    //   15	35	3	localXmlPullParser	org.xmlpull.v1.XmlPullParser
    //   72	77	3	localXmlPullParserException	org.xmlpull.v1.XmlPullParserException
    //   171	70	3	localIOException5	java.io.IOException
    //   265	10	3	localObject	Object
    //   114	98	4	localList	List
    // Exception table:
    //   from	to	target	type
    //   12	25	72	org/xmlpull/v1/XmlPullParserException
    //   37	44	72	org/xmlpull/v1/XmlPullParserException
    //   47	72	72	org/xmlpull/v1/XmlPullParserException
    //   110	123	72	org/xmlpull/v1/XmlPullParserException
    //   123	130	72	org/xmlpull/v1/XmlPullParserException
    //   145	171	72	org/xmlpull/v1/XmlPullParserException
    //   211	262	72	org/xmlpull/v1/XmlPullParserException
    //   12	25	171	java/io/IOException
    //   37	44	171	java/io/IOException
    //   47	72	171	java/io/IOException
    //   110	123	171	java/io/IOException
    //   123	130	171	java/io/IOException
    //   145	171	171	java/io/IOException
    //   211	262	171	java/io/IOException
    //   204	208	209	java/io/IOException
    //   12	25	265	finally
    //   37	44	265	finally
    //   47	72	265	finally
    //   73	101	265	finally
    //   110	123	265	finally
    //   123	130	265	finally
    //   145	171	265	finally
    //   172	200	265	finally
    //   211	262	265	finally
    //   280	284	285	java/io/IOException
    //   105	109	287	java/io/IOException
    //   270	274	289	java/io/IOException
    //   0	12	293	java/io/FileNotFoundException
  }
  
  public int a()
  {
    synchronized (g)
    {
      d();
      int i1 = h.size();
      return i1;
    }
  }
  
  public int a(ResolveInfo paramResolveInfo)
  {
    for (;;)
    {
      int i1;
      synchronized (g)
      {
        d();
        List localList = h;
        int i2 = localList.size();
        i1 = 0;
        if (i1 < i2)
        {
          if (geta == paramResolveInfo) {
            return i1;
          }
        }
        else {
          return -1;
        }
      }
      i1 += 1;
    }
  }
  
  public ResolveInfo a(int paramInt)
  {
    synchronized (g)
    {
      d();
      ResolveInfo localResolveInfo = h.get(paramInt)).a;
      return localResolveInfo;
    }
  }
  
  public Intent b(int paramInt)
  {
    synchronized (g)
    {
      if (j == null) {
        return null;
      }
      d();
      Object localObject2 = (ur)h.get(paramInt);
      localObject2 = new ComponentName(a.activityInfo.packageName, a.activityInfo.name);
      Intent localIntent = new Intent(j);
      localIntent.setComponent((ComponentName)localObject2);
      if (p != null)
      {
        new Intent(localIntent);
        if (p.a()) {
          return null;
        }
      }
      a(new ut((ComponentName)localObject2, System.currentTimeMillis(), 1.0F));
      return localIntent;
    }
  }
  
  public ResolveInfo b()
  {
    synchronized (g)
    {
      d();
      if (!h.isEmpty())
      {
        ResolveInfo localResolveInfo = h.get(0)).a;
        return localResolveInfo;
      }
      return null;
    }
  }
  
  public int c()
  {
    synchronized (g)
    {
      d();
      int i1 = i.size();
      return i1;
    }
  }
  
  public void c(int paramInt)
  {
    for (;;)
    {
      synchronized (g)
      {
        d();
        ur localur1 = (ur)h.get(paramInt);
        ur localur2 = (ur)h.get(0);
        if (localur2 != null)
        {
          f1 = b - b + 5.0F;
          a(new ut(new ComponentName(a.activityInfo.packageName, a.activityInfo.name), System.currentTimeMillis(), f1));
          return;
        }
      }
      float f1 = 1.0F;
    }
  }
}

/* Location:
 * Qualified Name:     uq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */