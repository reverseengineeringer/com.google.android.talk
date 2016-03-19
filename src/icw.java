import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.RectF;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Images.Thumbnails;
import android.provider.MediaStore.Video.Media;
import android.provider.MediaStore.Video.Thumbnails;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;

public final class icw
  extends hya
  implements igm, ign
{
  private static final icz A = w.a(v);
  private static final icz[] B = { p, o.a(p), y, s.a(p), t.a(q), r.a(q), u.a(q), v.a(q) };
  private static final icz[] C = { o, s, z, v.a(t), q, w.a(t), r.a(t), u.a(t) };
  private static final icz[] D = { o, v, A, t, r.a(w), u.a(w), x.a(w) };
  private static boolean E;
  private static boolean F;
  private static int G;
  private static int H;
  private static int I;
  private static int J;
  private static int K;
  static int d;
  static int e;
  private static final icz o = new icz(3, 0);
  private static final icz p = new icz(6, 3);
  private static final icz q = new icz(6, 2);
  private static final icz r = new icz(6, 1);
  private static final icz s = new icz(7, 3);
  private static final icz t = new icz(7, 2);
  private static final icz u = new icz(7, 1);
  private static final icz v = new icz(8, 3);
  private static final icz w = new icz(8, 2);
  private static final icz x = new icz(8, 1);
  private static final icz y = q.a(p);
  private static final icz z = t.a(s);
  private String L;
  private File M;
  private File N;
  private icz O;
  private icz P;
  private String Q;
  private ConnectivityManager R;
  private icx S;
  private int T = -1;
  private int U = -1;
  private int V = 0;
  private int W = 0;
  private int X = -1;
  private int Y = -1;
  
  public icw(hye paramhye, icy paramicy)
  {
    super(paramhye, paramicy);
    if (!E)
    {
      int i = paramhye.d();
      H = i;
      d = (int)(i * 0.5F);
      e = (int)(H * 0.3F);
      float f = paramhye.j();
      if (f < 0.75D)
      {
        F = true;
        G = (int)(f * 8192.0F);
      }
      I = paramhye.e();
      J = paramhye.f();
      paramhye = aal.M(paramhye.l());
      K = Math.min(widthPixels, heightPixels) / 4;
      E = true;
    }
    if (d != -1)
    {
      S = ((icx)ilh.a(a.l(), icx.class));
      T = S.b();
      U = S.c();
    }
  }
  
  private Bitmap a(Context paramContext, Uri paramUri, int paramInt)
  {
    Object localObject2 = paramContext.getContentResolver();
    Object localObject3 = aal.a((ContentResolver)localObject2, paramUri);
    int i = Math.max(x / paramInt, y / paramInt);
    Object localObject1 = null;
    if (i == 1) {
      localObject1 = a.a(x, y);
    }
    localObject2 = aal.a((ContentResolver)localObject2, paramUri, i, (Bitmap)localObject1);
    if (localObject2 != localObject1) {
      a.a((Bitmap)localObject1);
    }
    i = ((Bitmap)localObject2).getWidth();
    int j = ((Bitmap)localObject2).getHeight();
    float f = paramInt / Math.max(i, j);
    Bitmap localBitmap;
    if (f < 1.0F)
    {
      localBitmap = a.a(Math.round(i * f), Math.round(j * f));
      if (f >= 1.0F)
      {
        localObject1 = localObject2;
        localObject3 = localObject1;
        if (localObject1 != localBitmap) {
          a.a(localBitmap);
        }
      }
    }
    for (localObject3 = localObject1;; localObject3 = localObject2)
    {
      if (localObject3 != localObject2) {
        a.a((Bitmap)localObject2);
      }
      paramContext = a(paramContext, paramUri, (Bitmap)localObject3);
      if (paramContext != localObject3) {
        a.a((Bitmap)localObject3);
      }
      return paramContext;
      if (localBitmap == null) {}
      for (localObject1 = Bitmap.createBitmap(Math.round(((Bitmap)localObject2).getWidth() * f), Math.round(((Bitmap)localObject2).getHeight() * f), Bitmap.Config.ARGB_8888);; localObject1 = localBitmap)
      {
        localObject3 = new Matrix();
        ((Matrix)localObject3).setScale(f, f);
        new Canvas((Bitmap)localObject1).drawBitmap((Bitmap)localObject2, (Matrix)localObject3, new Paint(3));
        break;
      }
    }
  }
  
  private Bitmap a(Context paramContext, Uri paramUri, Bitmap paramBitmap)
  {
    int i = aal.b(paramContext.getContentResolver(), paramUri);
    paramContext = paramBitmap;
    if (i != 0)
    {
      paramUri = a.a(paramBitmap.getWidth(), paramBitmap.getHeight());
      Matrix localMatrix = new Matrix();
      localMatrix.setRotate(i);
      RectF localRectF = new RectF(0.0F, 0.0F, paramBitmap.getWidth(), paramBitmap.getHeight());
      localMatrix.mapRect(localRectF);
      i = Math.round(localRectF.width());
      int j = Math.round(localRectF.height());
      paramContext = a.a(i, j);
      localMatrix.postTranslate(-left, -top);
      new Canvas(paramContext).drawBitmap(paramBitmap, localMatrix, new Paint(3));
      if (paramContext != paramUri) {
        a.a(paramUri);
      }
    }
    return paramContext;
  }
  
  private static String a(icu paramicu, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    StringBuilder localStringBuilder = ipr.a();
    a(localStringBuilder, paramicu.b()).append(File.separatorChar).append(paramInt2).append(',').append(paramInt3).append(',').append(paramInt4).append(',').append(paramInt5).append(',');
    a(localStringBuilder, paramInt1);
    localStringBuilder.append(',');
    return ipr.a(localStringBuilder);
  }
  
  private static StringBuilder a(StringBuilder paramStringBuilder, String paramString)
  {
    paramStringBuilder.append(aal.D(aal.E(paramString))).append('+');
    return paramStringBuilder;
  }
  
  private void a(Bitmap paramBitmap, String paramString)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 85, localByteArrayOutputStream);
      a.b().a(paramString, localByteArrayOutputStream.toByteArray());
      return;
    }
    finally
    {
      localByteArrayOutputStream.close();
    }
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt)
  {
    if ((paramInt & 0x4) != 0) {
      paramStringBuilder.append("-a");
    }
    if ((paramInt & 0x20) != 0) {
      paramStringBuilder.append("-nw");
    }
    if ((paramInt & 0x100) != 0) {
      paramStringBuilder.append("-p");
    }
    if ((0x20000 & paramInt) != 0) {
      paramStringBuilder.append("-ip");
    }
  }
  
  private static boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 != 0) && (paramInt2 != 0))
    {
      paramInt1 -= paramInt3;
      paramInt2 -= paramInt3;
      if (paramInt1 <= 0) {
        break label33;
      }
      if (paramInt2 < 0) {}
      while (paramInt2 > paramInt1) {
        return true;
      }
    }
    label33:
    while ((paramInt2 >= 0) || (paramInt2 >= paramInt1)) {
      return false;
    }
    return true;
  }
  
  private static boolean a(icy paramicy)
  {
    return (c == 0) && (d != -1) && (h == null) && (g == null) && (b.g()) && ((b.e() == ida.a) || (b.e() == ida.d));
  }
  
  private void s()
  {
    int i = ((icy)g).d();
    icz[] arrayOficz = null;
    label48:
    Object localObject2;
    switch (i)
    {
    default: 
      String str = b();
      i = 0;
      if (i < arrayOficz.length)
      {
        localObject1 = String.valueOf(str);
        localObject2 = String.valueOf(c);
        if (((String)localObject2).length() == 0) {
          break label158;
        }
        localObject1 = ((String)localObject1).concat((String)localObject2);
        label86:
        localObject2 = a.b().a((String)localObject1);
        if (localObject2 != null) {
          break label177;
        }
      }
      break;
    }
    label158:
    label177:
    for (Object localObject1 = a.c().a((String)localObject1);; localObject1 = localObject2)
    {
      if (localObject1 != null)
      {
        O = arrayOficz[i];
        N = ((File)localObject1);
        return;
        arrayOficz = B;
        break;
        arrayOficz = C;
        break;
        arrayOficz = D;
        break;
        localObject1 = new String((String)localObject1);
        break label86;
      }
      i += 1;
      break label48;
    }
  }
  
  private boolean t()
  {
    if (R == null) {
      R = ((ConnectivityManager)a.l().getSystemService("connectivity"));
    }
    ConnectivityManager localConnectivityManager = R;
    NetworkInfo localNetworkInfo = localConnectivityManager.getNetworkInfo(1);
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected())) {
      return false;
    }
    return !gl.a.a(localConnectivityManager);
  }
  
  private icz u()
  {
    switch (((icy)g).d())
    {
    default: 
      return A;
    case 6: 
      return y;
    }
    return z;
  }
  
  private boolean v()
  {
    Object localObject = g).b.c();
    if (ipk.a((Uri)localObject)) {}
    for (M = new File(((Uri)localObject).getPath());; M = new File((String)localObject))
    {
      return true;
      localObject = ipk.a(a.l().getContentResolver(), (Uri)localObject);
      if (localObject == null)
      {
        localObject = String.valueOf(g);
        a(String.valueOf(localObject).length() + 32 + "Couldn't compute raw file name: " + (String)localObject, null);
        return false;
      }
    }
  }
  
  public Uri a(Uri paramUri)
  {
    icq localicq = (icq)ilh.a(a.l(), icq.class);
    paramUri.getPath();
    paramUri = ida.a;
    return localicq.c();
  }
  
  public String a()
  {
    icy localicy = (icy)g;
    icu localicu = b;
    Object localObject1 = localicu.b();
    Object localObject2 = localObject1;
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      localObject1 = (icq)ilh.b(a.l(), icq.class);
      localicu.c();
      if (localObject1 != null) {}
      for (localObject1 = ((icq)localObject1).a();; localObject1 = null)
      {
        localObject2 = localObject1;
        if (localObject1 != null) {
          break;
        }
        if (p())
        {
          localObject1 = String.valueOf(g);
          new StringBuilder(String.valueOf(localObject1).length() + 33).append("Cannot retrieve content URI for: ").append((String)localObject1);
        }
        return null;
      }
    }
    localObject1 = aal.E((String)localObject2);
    localObject2 = (icy)g;
    int i = 6;
    int k = i;
    int j;
    if ((k & 0x4) == 0)
    {
      i = 22;
      j = i;
      if ((k & 0x20) == 0) {
        j = i | 0x20;
      }
      i = j;
      if ((k & 0x4000) != 0) {
        i = j | 0x80;
      }
      if (g == null) {
        break label600;
      }
      i |= 0x400;
    }
    label312:
    label600:
    for (;;)
    {
      if ((0x20000 & k) != 0) {
        i |= 0x200;
      }
      for (;;)
      {
        switch (c)
        {
        case 4: 
        default: 
          return (String)localObject1;
        case 0: 
          j = i;
          if (e != 0)
          {
            j = i;
            if (f != 0)
            {
              if ((i & 0x100) != 0) {
                break;
              }
              j = i | 0x48;
            }
          }
          if (d == -1) {}
          break;
        }
        for (i = S.a();; i = j)
        {
          return idd.a((String)localObject1, i, e, f, T, U, g);
          if ((k & 0x20) != 0) {
            break;
          }
          i = 16390;
          break;
          j = i;
          if ((i & 0x200) != 512) {
            break label312;
          }
          j = i | 0x40;
          break label312;
          j = i;
          if ((i & 0x100) == 0) {
            j = i | 0x8;
          }
          return idd.a((String)localObject1, j, I, g);
          return idd.a((String)localObject1, i, J, g);
          return idd.a((String)localObject1, i, g);
          localObject2 = (icy)g;
          k = Math.max(e, f);
          j = k;
          if (k == 0) {
            j = H;
          }
          k = j;
          if ((i & 0x400) == 0)
          {
            if (P == null) {
              P = u();
            }
            k = j;
            switch (P.b)
            {
            default: 
              k = j;
            }
          }
          for (;;)
          {
            return idd.a((String)localObject1, i, k, g);
            k = j;
            if (F) {
              k = G * j / 8192;
            }
          }
        }
      }
    }
  }
  
  public void a(Object paramObject)
  {
    icy localicy = (icy)g;
    switch (c)
    {
    }
    for (;;)
    {
      super.a(paramObject);
      return;
      if (P != null)
      {
        O = P;
        P = null;
        continue;
        V = e;
        W = f;
        X = T;
        Y = U;
      }
    }
  }
  
  public String b()
  {
    Object localObject2;
    if (L == null)
    {
      localObject2 = (icy)g;
      if (a((icy)localObject2)) {
        L = a(b, i, e, f, T, U);
      }
    }
    else
    {
      return L;
    }
    Object localObject1 = b;
    int i = i;
    int j = c;
    int k = e;
    int m = f;
    RectF localRectF = g;
    if (h == null)
    {
      localObject2 = null;
      label114:
      if (!((icu)localObject1).g()) {
        break label291;
      }
      if (((icu)localObject1).e() != ida.b) {
        break label281;
      }
      localObject1 = idh.a(((icu)localObject1).b());
      label143:
      if (localObject2 == null) {
        break label506;
      }
      localObject1 = String.valueOf(localObject1);
      localObject2 = String.valueOf(localObject2);
      if (((String)localObject2).length() == 0) {
        break label431;
      }
      localObject1 = ((String)localObject1).concat((String)localObject2);
    }
    label179:
    label281:
    label291:
    label431:
    label506:
    for (;;)
    {
      localObject2 = ipr.a();
      ((StringBuilder)localObject2).append(aal.D((String)localObject1));
      switch (j)
      {
      }
      for (;;)
      {
        a((StringBuilder)localObject2, i);
        if (localRectF != null) {
          ((StringBuilder)localObject2).append(idd.a(localRectF));
        }
        L = ipr.a((StringBuilder)localObject2);
        break;
        localObject2 = h.t();
        break label114;
        localObject1 = ((icu)localObject1).b();
        break label143;
        if (((icu)localObject1).h())
        {
          String str = String.valueOf(((icu)localObject1).c());
          localObject1 = String.valueOf(((icu)localObject1).d());
          localObject1 = String.valueOf(str).length() + 0 + String.valueOf(localObject1).length() + str + (String)localObject1;
          break label143;
        }
        if (((icu)localObject1).i())
        {
          localObject1 = Long.toString(((icu)localObject1).a());
          break label143;
        }
        localObject1 = String.valueOf(localObject1);
        throw new IllegalStateException(String.valueOf(localObject1).length() + 31 + "A media ref should have a URI: " + (String)localObject1);
        localObject1 = new String((String)localObject1);
        break label179;
        ((StringBuilder)localObject2).append('-').append(k).append('x').append(m);
        continue;
        ((StringBuilder)localObject2).append("-t");
        continue;
        ((StringBuilder)localObject2).append("-l");
        continue;
        ((StringBuilder)localObject2).append("-z");
      }
    }
  }
  
  public void b(int paramInt)
  {
    int i = 0;
    switch (paramInt)
    {
    default: 
      paramInt = i;
    }
    for (;;)
    {
      if (p())
      {
        String str = String.valueOf(g);
        new StringBuilder(String.valueOf(str).length() + 66).append("Delivering resource type to consumers: ").append(str).append(" resource type: ").append(paramInt);
      }
      if (paramInt != 0) {
        a.b(this, paramInt);
      }
      return;
      if (ipk.a(Q))
      {
        paramInt = 2;
      }
      else if (ipk.b(Q))
      {
        paramInt = 1;
      }
      else
      {
        paramInt = -1;
        continue;
        paramInt = 4;
        continue;
        paramInt = 3;
      }
    }
  }
  
  public void b(Object paramObject)
  {
    int i = 1;
    int n = 0;
    super.b(paramObject);
    icy localicy;
    if (q() != 0) {
      localicy = (icy)g;
    }
    switch (c)
    {
    default: 
      return;
    case 5: 
      if (O != null)
      {
        paramObject = O.d;
        if (paramObject != null) {
          if (b == 2)
          {
            P = ((icz)paramObject);
            label93:
            if (P == null) {
              break label151;
            }
          }
        }
      }
      while (i != 0)
      {
        h();
        return;
        if ((b != 3) || (!F) || ((i & 0x1000) != 0) || (!t())) {
          break label93;
        }
        P = ((icz)paramObject);
        break label93;
        label151:
        i = 0;
      }
    }
    i = n;
    if (!b.h())
    {
      i = n;
      if (a(localicy))
      {
        i = n;
        if (d != -1)
        {
          i = n;
          if ((i & 0x1000) == 0)
          {
            if (X != 0) {
              break label251;
            }
            if (Y <= U) {
              break label268;
            }
            i = 1;
          }
        }
      }
    }
    label234:
    label251:
    label268:
    label284:
    label306:
    int k;
    label333:
    int m;
    while ((i != 0) && (t()))
    {
      h();
      return;
      if (Y < U)
      {
        i = 1;
      }
      else
      {
        if (!(paramObject instanceof Bitmap)) {
          break label390;
        }
        j = ((Bitmap)paramObject).getWidth();
        if (!(h instanceof Bitmap)) {
          break label415;
        }
        i = ((Bitmap)h).getHeight();
        double d1 = j / i;
        if (e != 0) {
          break label446;
        }
        k = (int)(f * d1);
        if (V != 0) {
          break label456;
        }
        m = (int)(d1 * W);
        label350:
        i = n;
        if (k - K > m) {
          if (m <= j) {
            break label465;
          }
        }
      }
    }
    label390:
    label415:
    label446:
    label456:
    label465:
    for (int j = 1;; j = 0)
    {
      i = n;
      if (j != 0) {
        break label234;
      }
      i = 1;
      break label234;
      break;
      if ((paramObject instanceof hxu))
      {
        j = b;
        break label284;
      }
      j = 0;
      break label284;
      if ((h instanceof hxu))
      {
        i = h).c;
        break label306;
      }
      i = 0;
      break label306;
      k = e;
      break label333;
      m = V;
      break label350;
    }
  }
  
  public void c()
  {
    Object localObject1 = (icy)g;
    Object localObject2 = b;
    if (((i & 0x2) != 0) && (((icu)localObject2).h()))
    {
      if (v())
      {
        if (p())
        {
          localObject1 = String.valueOf(g);
          localObject2 = String.valueOf(f());
          new StringBuilder(String.valueOf(localObject1).length() + 46 + String.valueOf(localObject2).length()).append("Returning file name to consumers: ").append((String)localObject1).append(" file name: ").append((String)localObject2);
        }
        a.a(this, 1, f());
        return;
      }
      a.a(this, 5, null);
      return;
    }
    super.c();
  }
  
  public String d()
  {
    if (P != null)
    {
      String str1 = String.valueOf(b());
      String str2 = String.valueOf(P.c);
      if (str2.length() != 0) {
        return str1.concat(str2);
      }
      return new String(str1);
    }
    return b();
  }
  
  public File f()
  {
    if (M != null) {
      return M;
    }
    return super.f();
  }
  
  public File g()
  {
    if (M != null) {
      return M;
    }
    Object localObject1 = (icy)g;
    if ((i & 0x400) != 0) {
      return a.c().a(b());
    }
    switch (c)
    {
    default: 
    case 0: 
      for (;;)
      {
        return super.g();
        if (a((icy)localObject1))
        {
          icy localicy = (icy)g;
          localObject1 = a.b();
          N = null;
          V = 0;
          W = 0;
          X = -1;
          Y = -1;
          Object localObject2 = ipr.a();
          a((StringBuilder)localObject2, b.b());
          File localFile = new File(((hxm)localObject1).b(ipr.a((StringBuilder)localObject2)));
          double d1;
          int j;
          String str3;
          File[] arrayOfFile;
          if (localFile.exists())
          {
            if ((e != 0) && (f != 0)) {
              break label347;
            }
            d1 = -1.0D;
            j = i & 0xFFFFFFDF;
            localObject1 = ipr.a();
            a((StringBuilder)localObject1, j);
            str3 = ipr.a((StringBuilder)localObject1);
            arrayOfFile = localFile.listFiles();
            if ((arrayOfFile != null) && (arrayOfFile.length != 0)) {
              break label364;
            }
          }
          for (;;)
          {
            if (N != null)
            {
              if (Log.isLoggable("ImageResource", 3))
              {
                localObject1 = String.valueOf(N.getParent());
                localObject2 = String.valueOf(N.getName());
                new StringBuilder(String.valueOf(localObject1).length() + 24 + String.valueOf(localObject2).length()).append("Cached resource found: ").append((String)localObject1).append("/").append((String)localObject2);
              }
              return N;
              label347:
              d1 = e / f;
              break;
              label364:
              int i = 0;
              localObject1 = null;
              label467:
              label481:
              int k;
              label768:
              Object localObject3;
              if (i < arrayOfFile.length)
              {
                String str2 = arrayOfFile[i].getName();
                String[] arrayOfString = str2.split(",");
                if (arrayOfString.length < 4)
                {
                  new File(localFile, str2).delete();
                  localObject2 = localObject1;
                }
                String str1;
                do
                {
                  do
                  {
                    i += 1;
                    localObject1 = localObject2;
                    break;
                    localObject2 = localObject1;
                  } while (arrayOfString.length >= 6);
                  if (j == 0) {
                    break label481;
                  }
                  if (arrayOfString.length < 5) {
                    break label768;
                  }
                  str1 = arrayOfString[4];
                  localObject2 = localObject1;
                } while (!str3.equals(str1));
                for (;;)
                {
                  int m;
                  int i1;
                  try
                  {
                    k = Integer.parseInt(arrayOfString[0]);
                    m = Integer.parseInt(arrayOfString[1]);
                    int n = Integer.parseInt(arrayOfString[2]);
                    i1 = Integer.parseInt(arrayOfString[3]);
                    if ((k != 0) && (m != 0)) {
                      break label795;
                    }
                    d2 = -1.0D;
                    localObject2 = localObject1;
                    if (d2 < d1 - 0.1D) {
                      break;
                    }
                    localObject2 = localObject1;
                    if (d2 > d1 + 0.1D) {
                      break;
                    }
                    localObject2 = localObject1;
                    if (n != T) {
                      break;
                    }
                    if (localObject1 != null)
                    {
                      if (n != 0) {
                        break label806;
                      }
                      localObject2 = localObject1;
                      if (Y < i1) {
                        break;
                      }
                      if ((V == e) && (W == f))
                      {
                        localObject2 = localObject1;
                        if (k != e) {
                          break;
                        }
                        localObject2 = localObject1;
                        if (m != f) {
                          break;
                        }
                      }
                      localObject2 = localObject1;
                      if (a(V, k, e)) {
                        break;
                      }
                      localObject2 = localObject1;
                      if (a(W, m, f)) {
                        break;
                      }
                      if ((e != 0) && (V != 0))
                      {
                        localObject2 = localObject1;
                        if (k == 0) {
                          break;
                        }
                      }
                      if ((f != 0) && (W != 0))
                      {
                        localObject2 = localObject1;
                        if (m == 0) {
                          break;
                        }
                      }
                    }
                    V = k;
                    W = m;
                    X = n;
                    Y = i1;
                    localObject2 = str2;
                  }
                  catch (NumberFormatException localNumberFormatException)
                  {
                    Log.e("ImageResource", "NumberFormatException parsing cached file's filename.");
                    localObject3 = localObject1;
                  }
                  str1 = "";
                  break label467;
                  break;
                  label795:
                  double d2 = k / m;
                  continue;
                  label806:
                  localObject3 = localObject1;
                  if (Y > i1) {
                    break;
                  }
                }
              }
              if (localObject1 != null)
              {
                N = new File(localFile, (String)localObject1);
                if (b.e() == ida.a)
                {
                  if ((e != 0) && (V != 0))
                  {
                    d1 = V / e;
                    label884:
                    if (d1 < 2.0D) {
                      break label1125;
                    }
                    j = (int)Math.pow(2.0D, Math.floor(Math.log(d1) / Math.log(2.0D)));
                  }
                  for (;;)
                  {
                    try
                    {
                      localObject1 = aal.a(a.l().getContentResolver(), Uri.fromFile(N), j, null);
                      if (localObject1 == null) {
                        break;
                      }
                      k = ((Bitmap)localObject1).getWidth();
                      i = ((Bitmap)localObject1).getHeight();
                      if (V == 0) {
                        break label1127;
                      }
                      i = V - k * j;
                      if (Math.abs(i) >= j) {
                        break;
                      }
                      V /= j;
                      W /= j;
                      localObject3 = a(b, i, V, W, X, Y);
                      a((Bitmap)localObject1, (String)localObject3);
                      N = new File(a.b().b((String)localObject3));
                    }
                    catch (Exception localException)
                    {
                      Log.e("ImageResource", "Cannot save downsampled bitmap", localException);
                    }
                    break;
                    if ((f == 0) || (W == 0)) {
                      break;
                    }
                    d1 = W / f;
                    break label884;
                    label1125:
                    break;
                    label1127:
                    k = W;
                    i = k - i * j;
                  }
                }
              }
            }
          }
          if (!Log.isLoggable("ImageResource", 3)) {}
        }
      }
    }
    s();
    return N;
  }
  
  protected void h()
  {
    Object localObject1 = (icy)g;
    if ((P == null) && (c == 5) && ((i & 0x400) == 0))
    {
      P = u();
      if ((P.d != null) && ((i & 0x8000) != 0) && (t())) {
        P = P.d;
      }
    }
    localObject1 = g).b;
    Object localObject4;
    Object localObject5;
    int i;
    label178:
    long l1;
    Context localContext;
    Object localObject6;
    Object localObject7;
    boolean bool1;
    boolean bool2;
    boolean bool3;
    boolean bool4;
    if (((icu)localObject1).h())
    {
      localObject1 = ((icu)localObject1).c();
      localObject4 = ((Uri)localObject1).getScheme();
      localObject5 = (icq)ilh.b(a.l(), icq.class);
      if ((localObject5 != null) && (((icq)localObject5).b()))
      {
        i = 1;
        if ((localObject4 == null) || (((String)localObject4).startsWith("http")) || (i != 0)) {
          break label612;
        }
        if (localObject1 == null) {
          break label1812;
        }
        l1 = SystemClock.currentThreadTimeMillis();
        localContext = a.l();
        localObject6 = (icy)g;
        localObject7 = b.c();
        if (p())
        {
          localObject1 = String.valueOf(localObject7);
          new StringBuilder(String.valueOf(localObject1).length() + 23).append("Loading local resource ").append((String)localObject1);
        }
        Q = ipk.b(localContext.getContentResolver(), (Uri)localObject7);
        bool1 = ipk.c(Q);
        bool2 = ipk.a(Q);
        bool3 = ipk.b((Uri)localObject7);
        bool4 = ipk.a((Uri)localObject7);
        if ((bool1) || (bool2)) {
          break label618;
        }
        igk.a(localContext).a((Uri)localObject7, Q, this, this);
        label334:
        localObject4 = null;
        localObject5 = null;
      }
    }
    int k;
    int m;
    int j;
    try
    {
      k = e;
      m = f;
      if (c != 2) {
        break label642;
      }
      i = I;
      j = i;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      for (;;)
      {
        a(6);
        return;
        i = J;
        j = i;
        continue;
        i = m;
        j = k;
        if (k == 0)
        {
          i = m;
          j = k;
          if (m == 0)
          {
            i = J;
            j = i;
            continue;
            str = new String(localOutOfMemoryError);
          }
        }
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      for (;;)
      {
        a(3);
        return;
        if ((!bool2) || ((i & 0x4) == 0)) {
          break;
        }
        if (!v()) {
          break label1876;
        }
        localObject2 = aal.a(M, false);
        localObject4 = localObject5;
      }
      if (!bool3) {
        break label1687;
      }
      localObject2 = (icy)g;
      if ((c != 2) && (!bool1)) {
        break label1634;
      }
      if ((j != 0) || (i != 0)) {
        break label877;
      }
      throw new IllegalArgumentException("Both width and height cannot be zero.");
    }
    catch (Exception localException)
    {
      a(5);
      return;
    }
    localObject1 = null;
    Object localObject8;
    if (bool4)
    {
      localObject1 = String.valueOf(((Uri)localObject7).getPath());
      localObject8 = String.valueOf("-thumb");
      if (((String)localObject8).length() != 0)
      {
        localObject1 = ((String)localObject1).concat((String)localObject8);
        localObject1 = new File((String)localObject1);
      }
    }
    else
    {
      if ((c != 2) || (localObject1 == null) || (!((File)localObject1).exists())) {
        break label781;
      }
      localObject1 = aal.a((File)localObject1, false);
      localObject4 = localObject5;
    }
    for (;;)
    {
      label612:
      label618:
      label642:
      label692:
      label781:
      label877:
      float f1;
      if (localObject4 != null)
      {
        if ((i & 0x1) == 0)
        {
          l1 = SystemClock.currentThreadTimeMillis();
          a((Bitmap)localObject4, d());
          if (p())
          {
            localObject1 = String.valueOf(g);
            localObject5 = String.valueOf(f());
            localObject6 = String.valueOf(aal.d(SystemClock.currentThreadTimeMillis() - l1));
            new StringBuilder(String.valueOf(localObject1).length() + 62 + String.valueOf(localObject5).length() + String.valueOf(localObject6).length()).append("Saved local thumbnail in file cache: ").append((String)localObject1).append(" file name: ").append((String)localObject5).append(" time spent: ").append((String)localObject6);
          }
        }
        b(localObject4);
        return;
        i = 0;
        break;
        localObject1 = null;
        break label178;
        if (!bool2) {
          break label334;
        }
        this.k = 2;
        a.b(this, 2);
        break label334;
        i = m;
        j = k;
        switch (c)
        {
        case 0: 
        case 1: 
        case 2: 
        case 4: 
          throw new UnsupportedOperationException();
        case 3: 
        case 5: 
          String str;
          Object localObject2;
          localObject4 = a.a(512, 384);
          if (localObject7 == null)
          {
            localObject3 = null;
            if (localObject3 != localObject4) {
              a.a((Bitmap)localObject4);
            }
            m = ((Bitmap)localObject3).getWidth();
            k = ((Bitmap)localObject3).getHeight();
            f1 = m / k;
            if (j == 0)
            {
              j = Math.round(f1 * i);
              label957:
              j = Math.min(m, j);
              i = Math.min(k, i);
              localObject4 = a(localContext, (Uri)localObject7, (Bitmap)localObject3);
              if (localObject4 != localObject3) {
                a.a((Bitmap)localObject3);
              }
              localObject5 = a.a(j, i);
              if (localObject4 != null) {
                break label1442;
              }
              localObject3 = null;
              label1028:
              if (localObject4 != localObject3) {
                a.a((Bitmap)localObject4);
              }
              localObject4 = localObject3;
              if (localObject5 != localObject3)
              {
                a.a((Bitmap)localObject5);
                localObject4 = localObject3;
              }
              label1072:
              a(l1, "mediastore", -1, -1, -1, (Bitmap)localObject4);
              localObject3 = null;
            }
          }
          else
          {
            if (!ipk.b((Uri)localObject7)) {
              break label1843;
            }
            localObject3 = ((Uri)localObject7).getPath();
            localObject5 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI.getPath();
            localObject8 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI.getPath();
            if (((String)localObject3).startsWith((String)localObject5)) {
              break label1823;
            }
            if (!((String)localObject3).startsWith((String)localObject8)) {
              break label1837;
            }
          }
          break;
        }
      }
      label1243:
      label1261:
      label1273:
      label1285:
      label1442:
      label1528:
      label1619:
      label1634:
      label1687:
      label1812:
      label1823:
      label1837:
      label1843:
      label1847:
      for (;;)
      {
        localObject5 = localContext.getContentResolver();
        long l2 = ContentUris.parseId((Uri)localObject7);
        localObject8 = new BitmapFactory.Options();
        if (Build.VERSION.SDK_INT >= 19)
        {
          if ((localObject4 == null) || (((Bitmap)localObject4).getWidth() != 512) || (((Bitmap)localObject4).getHeight() != 384)) {
            break label1243;
          }
          inBitmap = ((Bitmap)localObject4);
        }
        for (;;)
        {
          localObject3 = ipk.b((ContentResolver)localObject5, (Uri)localObject7);
          if (!ipk.b((String)localObject3)) {
            break;
          }
          localObject3 = MediaStore.Images.Thumbnails.getThumbnail((ContentResolver)localObject5, l2, 1, (BitmapFactory.Options)localObject8);
          break label1849;
          if (Log.isLoggable("MediaStoreUtil", 3))
          {
            if (localObject4 != null) {
              break label1852;
            }
            bool1 = true;
            if (localObject4 == null) {
              break label1858;
            }
            k = ((Bitmap)localObject4).getWidth();
            if (localObject4 == null) {
              break label1864;
            }
            m = ((Bitmap)localObject4).getHeight();
            new StringBuilder(117).append("getMediaStoreThumbnail: got null or bitmap with invalid dimensions null? ").append(bool1).append(" width: ").append(k).append(" height: ").append(m);
          }
        }
        if (ipk.c((String)localObject3))
        {
          localObject3 = MediaStore.Video.Thumbnails.getThumbnail((ContentResolver)localObject5, l2, 1, (BitmapFactory.Options)localObject8);
        }
        else
        {
          if (!Log.isLoggable("MediaStoreUtil", 5)) {
            break label1870;
          }
          localObject5 = String.valueOf(localObject7);
          new StringBuilder(String.valueOf(localObject3).length() + 42 + String.valueOf(localObject5).length()).append("getThumbnail: unrecognized mimeType=").append((String)localObject3).append(", uri=").append((String)localObject5);
          break label1870;
          if (i == 0)
          {
            i = Math.round(j / f1);
            break label957;
            if ((((Bitmap)localObject4).getWidth() == j) && (((Bitmap)localObject4).getHeight() == i))
            {
              localObject3 = localObject4;
              break label1028;
            }
            float f2 = 0.0F;
            f1 = 0.0F;
            localObject7 = new Matrix();
            float f3;
            if (((Bitmap)localObject4).getWidth() * i > ((Bitmap)localObject4).getHeight() * j)
            {
              f3 = i / ((Bitmap)localObject4).getHeight();
              f2 = (j - ((Bitmap)localObject4).getWidth() * f3) * 0.5F;
              ((Matrix)localObject7).setScale(f3, f3);
              ((Matrix)localObject7).postTranslate((int)f2 + 0.5F, (int)f1 + 0.5F);
              if (localObject5 == null) {
                break label1619;
              }
            }
            for (localObject3 = localObject5;; localObject3 = Bitmap.createBitmap(j, i, Bitmap.Config.ARGB_8888))
            {
              new Canvas((Bitmap)localObject3).drawBitmap((Bitmap)localObject4, (Matrix)localObject7, new Paint(3));
              break;
              f3 = j / ((Bitmap)localObject4).getWidth();
              f1 = (i - ((Bitmap)localObject4).getHeight() * f3) * 0.5F;
              break label1528;
            }
            if (c == 1)
            {
              localObject4 = aal.a(localContext.getContentResolver(), (Uri)localObject7, a.a());
              break label1072;
            }
            localObject4 = a(localContext, (Uri)localObject7, Math.max(j, i));
            break label1072;
            if (bool1)
            {
              localObject4 = aal.a(localContext, (Uri)localObject7, j, i);
              a(l1, "video", -1, -1, -1, (Bitmap)localObject4);
              localObject3 = null;
              break;
            }
            if (c == 1) {}
            for (localObject4 = aal.a(localContext.getContentResolver(), (Uri)localObject7, a.a());; localObject4 = a(localContext, (Uri)localObject7, Math.max(j, i)))
            {
              a(l1, ((Uri)localObject7).getAuthority(), -1, -1, -1, (Bitmap)localObject4);
              break;
            }
            if (localObject3 != null)
            {
              a(localObject3);
              return;
            }
            a(3);
            return;
            super.h();
            return;
          }
          break label957;
          break label692;
          k = 1;
          for (;;)
          {
            if (k != 0) {
              break label1847;
            }
            localObject3 = null;
            break;
            k = 0;
            continue;
            k = 0;
          }
        }
      }
      for (;;)
      {
        label1849:
        break;
        label1852:
        bool1 = false;
        break label1261;
        label1858:
        k = -1;
        break label1273;
        label1864:
        m = -1;
        break label1285;
        label1870:
        localObject3 = null;
      }
      label1876:
      Object localObject3 = null;
    }
  }
}

/* Location:
 * Qualified Name:     icw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */