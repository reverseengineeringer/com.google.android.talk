import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.SystemClock;
import com.google.android.libraries.hangouts.video.internal.DecoderManager;
import com.google.android.libraries.hangouts.video.internal.EncoderManager;
import com.google.android.libraries.hangouts.video.internal.Stats;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;

public final class hcx
{
  private final Context b;
  private final int c;
  private final int d;
  private final long e;
  private final String f;
  private hkt g;
  private String h;
  private String i;
  private boolean j;
  private int k;
  private int l;
  private String m;
  private String n;
  private String o;
  
  hcx(hcw paramhcw, Context paramContext, int paramInt1, int paramInt2, long paramLong, String paramString)
  {
    b = paramContext;
    c = paramInt1;
    d = paramInt2;
    e = paramLong;
    f = paramString;
  }
  
  private static int a(hgu paramhgu)
  {
    int i1 = Math.max(ba, bb);
    if (i1 > 1920) {
      return 6;
    }
    if (i1 > 1280) {
      return 5;
    }
    if (i1 > 960) {
      return 4;
    }
    if (i1 > 640) {
      return 3;
    }
    if (i1 > 320) {
      return 2;
    }
    return 1;
  }
  
  private static hli<hdd> a(hli<hdd> paramhli1, hli<hdd> paramhli2)
  {
    int i1 = 0;
    hli localhli = new hli(1200);
    if (paramhli2 == null)
    {
      while (i1 < paramhli1.a())
      {
        localhli.a(paramhli1.a(i1));
        i1 += 1;
      }
      return localhli;
    }
    i1 = 0;
    int i2 = 0;
    int i3;
    for (;;)
    {
      i3 = i2;
      if (i2 >= paramhli1.a()) {
        break;
      }
      i3 = i2;
      if (i1 >= paramhli2.a()) {
        break;
      }
      if (ab < ab)
      {
        localhli.a(paramhli1.a(i2));
        i2 += 1;
      }
      else
      {
        localhli.a(paramhli2.a(i1));
        i1 += 1;
      }
    }
    for (;;)
    {
      i2 = i1;
      if (i3 >= paramhli1.a()) {
        break;
      }
      localhli.a(paramhli1.a(i3));
      i3 += 1;
    }
    while (i2 < paramhli2.a())
    {
      localhli.a(paramhli2.a(i2));
      i2 += 1;
    }
    return localhli;
  }
  
  private static jvf a(int paramInt1, int paramInt2)
  {
    jvf localjvf = new jvf();
    if (hgu.b(paramInt2) == null) {
      return null;
    }
    a = Integer.valueOf(paramInt1);
    b = Integer.valueOf(a(hgu.a(paramInt2)));
    d = Integer.valueOf(a(hgu.b(paramInt2)));
    return localjvf;
  }
  
  private void a(String paramString, jui paramjui)
  {
    paramString = (hcz)a.f.get(paramString);
    if (paramString != null) {}
    for (paramString = c;; paramString = null)
    {
      paramString = a(a.g, paramString);
      Object localObject2 = a.h.c();
      Object localObject1 = new hli(((List)localObject2).size());
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((hli)localObject1).a((hdd)((Iterator)localObject2).next());
      }
      localObject2 = a(paramString, (hli)localObject1);
      hbs.b("Expected non-null", localObject2);
      int i2 = ((hli)localObject2).a();
      ArrayList localArrayList = new ArrayList();
      paramString = null;
      long l1 = Long.MIN_VALUE;
      int i1 = 0;
      if (i1 < i2)
      {
        hdd localhdd = (hdd)((hli)localObject2).a(i1);
        if (b == l1) {
          hbs.b("Expected non-null", paramString);
        }
        for (localObject1 = paramString;; localObject1 = paramString)
        {
          c.addTo(paramString);
          i1 += 1;
          paramString = (String)localObject1;
          break;
          paramString = new juk();
          a = Integer.valueOf((int)b);
          l1 = b;
          localArrayList.add(paramString);
        }
      }
      if (paramString == null)
      {
        i1 = 1;
        if (i2 != 0) {
          break label304;
        }
        i2 = 1;
        label258:
        if (i1 != i2) {
          break label310;
        }
      }
      label304:
      label310:
      for (boolean bool = true;; bool = false)
      {
        hbs.a("Expected condition to be true", bool);
        i = ((juk[])localArrayList.toArray(new juk[localArrayList.size()]));
        return;
        i1 = 0;
        break;
        i2 = 0;
        break label258;
      }
    }
  }
  
  private jvc b()
  {
    jvc localjvc = new jvc();
    f = Integer.valueOf(hdf.b);
    Object localObject = hdf.a;
    int i1;
    if (localObject != null)
    {
      i1 = ((hdf)localObject).c();
      if (i1 >= 0) {
        g = Integer.valueOf(i1 / 1000);
      }
    }
    a = "android";
    n = Build.VERSION.RELEASE;
    u = c();
    for (;;)
    {
      try
      {
        v = b.getPackageManager().getPackageInfo(b.getPackageName(), 0).versionName;
        s = String.format("%s/%s", new Object[] { Build.DEVICE, Build.MODEL });
        localObject = new jve();
        int i3 = EncoderManager.a(b);
        if ((i3 & 0x1) == 0) {
          break label324;
        }
        i1 = 1;
        int i2 = i1;
        if ((i3 & 0x2) != 0) {
          i2 = i1 | 0x2;
        }
        b = Integer.valueOf(i2);
        i3 = DecoderManager.a(b);
        if ((i3 & 0x1) != 0)
        {
          i1 = 1;
          i2 = i1;
          if ((i3 & 0x2) != 0) {
            i2 = i1 | 0x2;
          }
          a = Integer.valueOf(i2);
          new hde().a(b);
          ArrayList localArrayList = new ArrayList();
          localArrayList.add(a(1, 0));
          jvf localjvf = a(2, 1);
          if (localjvf != null) {
            localArrayList.add(localjvf);
          }
          c = ((jvf[])localArrayList.toArray(new jvf[localArrayList.size()]));
          w = ((jve)localObject);
          return localjvc;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        throw new RuntimeException(localNameNotFoundException);
      }
      i1 = 0;
      continue;
      label324:
      i1 = 0;
    }
  }
  
  /* Error */
  private jvd c()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: iconst_0
    //   4: istore_3
    //   5: new 314	jvd
    //   8: dup
    //   9: invokespecial 315	jvd:<init>	()V
    //   12: astore 11
    //   14: aload_0
    //   15: getfield 35	hcx:b	Landroid/content/Context;
    //   18: ldc_w 317
    //   21: invokevirtual 321	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   24: checkcast 323	android/telephony/TelephonyManager
    //   27: invokevirtual 326	android/telephony/TelephonyManager:getPhoneType	()I
    //   30: ifeq +181 -> 211
    //   33: iconst_1
    //   34: istore 9
    //   36: aload 11
    //   38: iload 9
    //   40: invokestatic 331	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   43: putfield 334	jvd:a	Ljava/lang/Boolean;
    //   46: aload_0
    //   47: getfield 35	hcx:b	Landroid/content/Context;
    //   50: ldc_w 336
    //   53: invokevirtual 321	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   56: checkcast 338	android/view/WindowManager
    //   59: astore 10
    //   61: new 340	android/util/DisplayMetrics
    //   64: dup
    //   65: invokespecial 341	android/util/DisplayMetrics:<init>	()V
    //   68: astore 12
    //   70: getstatic 344	android/os/Build$VERSION:SDK_INT	I
    //   73: bipush 17
    //   75: if_icmplt +142 -> 217
    //   78: aload 10
    //   80: invokeinterface 348 1 0
    //   85: aload 12
    //   87: invokevirtual 354	android/view/Display:getRealMetrics	(Landroid/util/DisplayMetrics;)V
    //   90: aload 12
    //   92: getfield 357	android/util/DisplayMetrics:widthPixels	I
    //   95: i2f
    //   96: aload 12
    //   98: getfield 361	android/util/DisplayMetrics:xdpi	F
    //   101: fdiv
    //   102: fstore_1
    //   103: aload 12
    //   105: getfield 364	android/util/DisplayMetrics:heightPixels	I
    //   108: i2f
    //   109: aload 12
    //   111: getfield 367	android/util/DisplayMetrics:ydpi	F
    //   114: fdiv
    //   115: fstore_2
    //   116: aload 11
    //   118: fload_1
    //   119: ldc_w 368
    //   122: fmul
    //   123: f2i
    //   124: invokestatic 96	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   127: putfield 369	jvd:b	Ljava/lang/Integer;
    //   130: aload 11
    //   132: fload_2
    //   133: ldc_w 368
    //   136: fmul
    //   137: f2i
    //   138: invokestatic 96	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   141: putfield 371	jvd:c	Ljava/lang/Integer;
    //   144: new 373	android/hardware/Camera$CameraInfo
    //   147: dup
    //   148: invokespecial 374	android/hardware/Camera$CameraInfo:<init>	()V
    //   151: astore 10
    //   153: invokestatic 379	android/hardware/Camera:getNumberOfCameras	()I
    //   156: istore 8
    //   158: iconst_0
    //   159: istore 5
    //   161: iconst_0
    //   162: istore 4
    //   164: iload 4
    //   166: istore 7
    //   168: iload_3
    //   169: istore 6
    //   171: iload 5
    //   173: iload 8
    //   175: if_icmpge +96 -> 271
    //   178: iload 5
    //   180: aload 10
    //   182: invokestatic 383	android/hardware/Camera:getCameraInfo	(ILandroid/hardware/Camera$CameraInfo;)V
    //   185: aload 10
    //   187: getfield 386	android/hardware/Camera$CameraInfo:facing	I
    //   190: istore 6
    //   192: iload 6
    //   194: iconst_1
    //   195: if_icmpne +37 -> 232
    //   198: iload_3
    //   199: iconst_1
    //   200: iadd
    //   201: istore_3
    //   202: iload 5
    //   204: iconst_1
    //   205: iadd
    //   206: istore 5
    //   208: goto -44 -> 164
    //   211: iconst_0
    //   212: istore 9
    //   214: goto -178 -> 36
    //   217: aload 10
    //   219: invokeinterface 348 1 0
    //   224: aload 12
    //   226: invokevirtual 389	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   229: goto -139 -> 90
    //   232: iload 4
    //   234: iconst_1
    //   235: iadd
    //   236: istore 4
    //   238: goto -36 -> 202
    //   241: astore 10
    //   243: iconst_0
    //   244: istore 5
    //   246: iload 4
    //   248: istore_3
    //   249: iload 5
    //   251: istore 4
    //   253: ldc_w 391
    //   256: ldc_w 393
    //   259: aload 10
    //   261: invokestatic 398	hlk:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   264: iload_3
    //   265: istore 6
    //   267: iload 4
    //   269: istore 7
    //   271: aload 11
    //   273: iload 6
    //   275: invokestatic 96	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   278: putfield 399	jvd:d	Ljava/lang/Integer;
    //   281: aload 11
    //   283: iload 7
    //   285: invokestatic 96	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   288: putfield 401	jvd:e	Ljava/lang/Integer;
    //   291: aload 11
    //   293: areturn
    //   294: astore 10
    //   296: goto -43 -> 253
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	299	0	this	hcx
    //   102	17	1	f1	float
    //   115	18	2	f2	float
    //   4	261	3	i1	int
    //   1	267	4	i2	int
    //   159	91	5	i3	int
    //   169	105	6	i4	int
    //   166	118	7	i5	int
    //   156	20	8	i6	int
    //   34	179	9	bool	boolean
    //   59	159	10	localObject	Object
    //   241	19	10	localRuntimeException1	RuntimeException
    //   294	1	10	localRuntimeException2	RuntimeException
    //   12	280	11	localjvd	jvd
    //   68	157	12	localDisplayMetrics	android.util.DisplayMetrics
    // Exception table:
    //   from	to	target	type
    //   144	158	241	java/lang/RuntimeException
    //   178	192	294	java/lang/RuntimeException
  }
  
  private kju c(String paramString)
  {
    jui localjui = null;
    int i1 = 219;
    kju localkju = new kju();
    d = f;
    p = Integer.valueOf(59);
    j = b();
    juq localjuq = new juq();
    f = Integer.valueOf(c);
    g = Long.valueOf(e);
    Object localObject1;
    label150:
    label199:
    Object localObject2;
    if (j)
    {
      i1 = 0;
      if (i1 != -1) {
        a = Integer.valueOf(i1);
      }
      localObject1 = new jvb();
      if (g != null)
      {
        if (g.g() == null) {
          break label1374;
        }
        a = g.g();
        b = g.h();
      }
      g = Integer.valueOf(d);
      b = ((jvb)localObject1);
      if (i != null) {
        d = aal.z(i);
      }
      if (d == 1) {
        break label1426;
      }
      localObject1 = null;
      c = ((juz)localObject1);
      k = localjuq;
      c = a.c.c();
      if (h != null) {
        a = h;
      }
      localObject1 = localjui;
      if (i != null)
      {
        b = a.c.e();
        localObject1 = aal.z(i);
        e = aal.A(i);
      }
      if ((paramString != null) && (k != 0))
      {
        localjui = new jui();
        a = paramString;
        localObject2 = new SimpleDateFormat("EEE MMM d HH:mm:ss yyyy", Locale.US);
        ((SimpleDateFormat)localObject2).setTimeZone(TimeZone.getTimeZone("GMT"));
        b = ((SimpleDateFormat)localObject2).format(Long.valueOf(a.a));
        if (a.l != 0) {
          d = Integer.valueOf(a.l);
        }
        i1 = 64536;
        if (a.b > 0L)
        {
          int i2 = (int)(SystemClock.elapsedRealtime() - a.b);
          i1 = i2;
          if (a.e > 0L)
          {
            e = Long.valueOf(a.e - a.b);
            i1 = i2;
            if (a.d > 0L)
            {
              f = Long.valueOf(a.d - a.e);
              i1 = i2;
            }
          }
        }
        c = Integer.valueOf(i1 / 1000);
        g = ((String)localObject1);
        j = Boolean.valueOf(a.i);
        k = Integer.valueOf(l);
        localObject1 = (hcz)a.f.get(paramString);
        if (localObject1 != null) {
          break label1563;
        }
      }
    }
    for (i1 = k;; i1 = b)
    {
      l = Integer.valueOf(hcw.d(i1));
      if (o != null) {
        m = o;
      }
      a(paramString, localjui);
      f = localjui;
      if (a.m != 0)
      {
        if (a.k == null) {
          a.k = new jux();
        }
        a.k.b = Integer.valueOf(a.m);
      }
      if (a.k != null) {
        m = a.k;
      }
      t = Long.valueOf(System.currentTimeMillis());
      return localkju;
      switch (k)
      {
      case 30: 
      case 1004: 
      case 1007: 
      case 1009: 
      case 1013: 
      default: 
        i1 = k;
        hbs.a(45 + "startupEntry unexpected endCause: " + i1);
        i1 = -1;
        break;
      case 0: 
        hbs.a("endCause is not set");
        i1 = -1;
        break;
      case 1: 
        i1 = 302;
        break;
      case 1016: 
        i1 = 318;
        break;
      case 2: 
        if ((g == null) || (g.g() != null) || (g.i() != null))
        {
          i1 = 306;
          break;
        }
        i1 = 217;
        break;
      case 3: 
        i1 = 304;
        break;
      case 4: 
        i1 = 308;
        break;
      case 5: 
        i1 = 309;
        break;
      case 6: 
        i1 = 310;
        break;
      case 7: 
        i1 = 312;
        break;
      case 8: 
        i1 = 313;
        break;
      case 9: 
        i1 = 314;
        break;
      case 11: 
        i1 = 316;
        break;
      case 12: 
        i1 = 201;
        break;
      case 13: 
        i1 = 202;
        break;
      case 14: 
        i1 = 216;
        break;
      case 15: 
        i1 = 307;
        break;
      case 16: 
        i1 = 303;
        break;
      case 17: 
        i1 = 212;
        break;
      case 19: 
      case 26: 
        i1 = 218;
        break;
      case 20: 
        i1 = 206;
        break;
      case 21: 
      case 22: 
        i1 = 305;
        break;
      case 1000: 
        i1 = 300;
        break;
      case 1001: 
        i1 = 210;
        break;
      case 1002: 
        i1 = 208;
        break;
      case 1003: 
        i1 = 305;
        break;
      case 1005: 
        i1 = 229;
        break;
      case 18: 
        i1 = 209;
        break;
      case 28: 
        i1 = 223;
        break;
      case 1011: 
        i1 = 100;
        break;
      case 1010: 
        i1 = 102;
        break;
      case 1006: 
        i1 = 230;
        break;
      case 1015: 
      case 1018: 
        i1 = 317;
        break;
      case 1017: 
        i1 = 319;
        h = o;
        break;
      case 46: 
        i1 = 300;
        break;
        label1374:
        if (g.i() != null)
        {
          d = g.i();
          e = g.j();
          break label150;
        }
        f = g.f();
        break label150;
        label1426:
        if ((a.j == 0) && (m == null) && (n == null))
        {
          localObject1 = null;
          break label199;
        }
        localObject2 = new juz();
        if (a.j != 0) {
          c = Integer.valueOf(a.j);
        }
        if (m != null)
        {
          a = new jva();
          a.a = m;
        }
        localObject1 = localObject2;
        if (n == null) {
          break label199;
        }
        b = new jva();
        b.a = n;
        localObject1 = localObject2;
        break label199;
        label1563:
        if (!a)
        {
          a = true;
          b = k;
        }
        break;
      }
    }
  }
  
  public hcx a(hkt paramhkt)
  {
    g = paramhkt;
    return this;
  }
  
  public hcx a(String paramString)
  {
    h = paramString;
    return this;
  }
  
  public hcx a(String paramString1, String paramString2, String paramString3)
  {
    m = paramString1;
    n = paramString2;
    o = paramString3;
    return this;
  }
  
  public hcx a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    j = paramBoolean;
    k = paramInt1;
    l = paramInt2;
    return this;
  }
  
  public List<kju> a()
  {
    hbs.a();
    ArrayList localArrayList = new ArrayList();
    if ((a.f.isEmpty()) && (a.h.b()))
    {
      localArrayList.add(c(a.c.d()));
      return localArrayList;
    }
    if (a.f.size() <= 2) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      Object localObject = a.c.f();
      if ((!a.f.containsKey(localObject)) && (!a.h.b())) {
        localArrayList.add(c((String)localObject));
      }
      localObject = a.f.keySet().iterator();
      while (((Iterator)localObject).hasNext()) {
        localArrayList.add(c((String)((Iterator)localObject).next()));
      }
      break;
    }
  }
  
  public hcx b(String paramString)
  {
    i = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     hcx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */