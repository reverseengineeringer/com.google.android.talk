import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

public final class bem
  extends bhs
  implements bhv
{
  private static final boolean i = false;
  private static final double v = 2.0D / (Math.sqrt(2.0D) + 2.0D);
  private static final double w = (1.0D - Math.sin(Math.acos(0.5D))) / 4.0D;
  private Bitmap j;
  private Canvas k;
  private boolean l = false;
  private boolean m = true;
  private int n = 0;
  private int o;
  private int p;
  private List<String> q;
  private final bhs[] r = new bhs[4];
  private final elz s = new elz();
  private Rect t;
  private Rect u;
  
  static
  {
    imx localimx = ezi.d;
  }
  
  private bem(ben paramben, int paramInt, List<String> paramList, bhv parambhv, boolean paramBoolean, Object paramObject)
  {
    super(paramben, parambhv, paramBoolean, paramObject);
    p = paramInt;
    q = paramList;
  }
  
  public static bhs a(List<String> paramList1, int paramInt1, List<String> paramList2, String paramString1, int paramInt2, String paramString2, bhv parambhv, Object paramObject, String paramString3, boolean paramBoolean1, beo parambeo, boolean paramBoolean2)
  {
    if (paramList1 != null)
    {
      if (i)
      {
        String str = String.valueOf(paramList1);
        new StringBuilder(String.valueOf(paramString3).length() + 73 + String.valueOf(str).length()).append("makeImageRequest oldKey=").append(paramString3).append(" size=").append(paramInt2).append(" urls=").append(str).append("defaultAvatars=").append(paramInt1);
      }
      if (paramList1.size() + paramInt1 == 0) {
        paramList1 = null;
      }
      do
      {
        return paramList1;
        if ((paramList1.size() == 1) && (paramInt1 == 0))
        {
          paramList1 = new bhs(new eyd((String)paramList1.get(0), paramString1).a(paramInt2).d(true).b(true).e(paramBoolean1).a(parambeo), parambhv, paramBoolean2, paramObject);
          paramList1.b(false);
          return paramList1;
        }
        paramList1 = new ben(paramList1, paramString1, paramString2, paramInt2);
        paramList1.e(paramBoolean1).a(parambeo);
        if (TextUtils.equals(paramList1.s(), paramString3)) {
          return null;
        }
        paramList2 = new bem(paramList1, paramInt1, paramList2, parambhv, paramBoolean2, paramObject);
        paramList1 = paramList2;
      } while (!i);
      paramList1 = String.valueOf(paramList2.toString());
      if (paramList1.length() != 0)
      {
        "makeImageRequest create new AvatarImageRequest=".concat(paramList1);
        return paramList2;
      }
      new String("makeImageRequest create new AvatarImageRequest=");
      return paramList2;
    }
    return null;
  }
  
  private void a(Bitmap paramBitmap, int paramInt)
  {
    boolean bool;
    int i1;
    int i2;
    int i3;
    if ((paramInt >= 0) && (paramInt < n))
    {
      bool = true;
      hbs.a("Expected condition to be true", bool);
      if (t == null) {
        t = new Rect();
      }
      if (u == null) {
        u = new Rect();
      }
      paramBitmap = b(paramBitmap);
      i1 = ((ben)f).d();
      i2 = i1 / 2;
      i3 = paramBitmap.getWidth();
      int i4 = paramBitmap.getHeight();
      a(t, i3, i4);
      switch (n)
      {
      }
    }
    for (;;)
    {
      Object localObject;
      if (i)
      {
        localObject = String.valueOf(toString());
        new StringBuilder(String.valueOf(localObject).length() + 70).append("AvatarImageRequest  drew onto composite position=").append(paramInt).append(" compound:").append((String)localObject);
      }
      if (j == null)
      {
        j = eye.a().b(i1, i1);
        k = new Canvas(j);
      }
      k.drawBitmap(paramBitmap, t, u, null);
      return;
      bool = false;
      break;
      switch (paramInt)
      {
      default: 
        break;
      case 0: 
        a(u, i1, i1);
        continue;
        i2 = (int)(v * i1);
        i3 = i1 - i2;
        u.set(0, 0, i2, i2);
        switch (paramInt)
        {
        case 0: 
        default: 
          break;
        case 1: 
          u.offset(i3, i3);
          continue;
          u.set(0, 0, i2, i2);
          i3 = (int)(i1 * w);
          switch (paramInt)
          {
          default: 
            break;
          case 0: 
            u.offset(i2 / 2, i3);
            break;
          case 1: 
            u.offset(0, i2 - i3);
            break;
          case 2: 
            u.offset(i2, i2 - i3);
            continue;
            localObject = u;
            i2 = i1 / 2;
            i3 = i1 - i2;
            ((Rect)localObject).set(0, 0, i2, i2);
            switch (paramInt)
            {
            default: 
              break;
            case 0: 
              ((Rect)localObject).offset(0, 0);
              break;
            case 1: 
              ((Rect)localObject).offset(i3, 0);
              break;
            case 2: 
              ((Rect)localObject).offset(0, i3);
              break;
            case 3: 
              ((Rect)localObject).offset(i3, i3);
            }
            break;
          }
          break;
        }
        break;
      }
    }
  }
  
  private static void a(Rect paramRect, int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2)
    {
      paramInt1 = (paramInt1 - paramInt2) / 2;
      paramRect.set(paramInt1, 0, paramInt1 + paramInt2, paramInt2);
      return;
    }
    paramInt2 = (paramInt2 - paramInt1) / 2;
    paramRect.set(0, paramInt2, paramInt1, paramInt2 + paramInt1);
  }
  
  private void p()
  {
    if (o == 0)
    {
      eys localeys = new eys(j, c());
      localeys.a();
      eye.a().a(c(), localeys);
      ((eit)ilh.a(aal.oJ, eit.class)).a(this, localeys);
      j = null;
      k = null;
    }
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    int i1 = 0;
    hbs.a("Expected null", paramexs);
    hbs.b();
    if (i)
    {
      paramexs = String.valueOf(parambhs.toString());
      ??? = String.valueOf(toString());
      new StringBuilder(String.valueOf(paramexs).length() + 92 + String.valueOf(???).length()).append("AvatarImageRequest setImageBitmap for request ").append(paramexs).append(" success=").append(paramBoolean1).append(" loadedFromCache=").append(paramBoolean2).append(" compound:").append((String)???);
    }
    if (!paramBoolean1) {
      paramexs = bfq.b();
    }
    synchronized (r)
    {
      while (l)
      {
        if (parameys != null) {
          parameys.b();
        }
        return;
        paramexs = parameys.e();
      }
      while ((i1 < n) && (r[i1] != parambhs)) {
        i1 += 1;
      }
      if (i1 >= n)
      {
        if (parameys != null) {
          parameys.b();
        }
        ezi.e("Babel", "Received image that was not part of the requested set", new Object[0]);
        return;
      }
    }
    a(paramexs, i1);
    if (parameys != null) {
      parameys.b();
    }
    r[i1] = null;
    o -= 1;
    if (i)
    {
      i1 = o;
      parameys = String.valueOf(parambhs);
      paramexs = String.valueOf(toString());
      new StringBuilder(String.valueOf(parameys).length() + 70 + String.valueOf(paramexs).length()).append("AvatarImageRequest pending size=").append(i1).append(" request removed=").append(parameys).append(" compound:").append(paramexs);
    }
    p();
  }
  
  public void a(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public boolean a()
  {
    return false;
  }
  
  public void b()
  {
    int i1 = 0;
    super.b();
    for (;;)
    {
      synchronized (r)
      {
        l = true;
        if (i1 < n)
        {
          if (r[i1] != null)
          {
            r[i1].b();
            r[i1] = null;
          }
        }
        else
        {
          o = 0;
          if (j != null)
          {
            eye.a().a(j);
            j = null;
            k = null;
          }
          return;
        }
      }
      i1 += 1;
    }
  }
  
  public eis k_()
  {
    int i2 = 0;
    Object localObject2;
    int i3;
    int i4;
    if (i)
    {
      ??? = String.valueOf(toString());
      if (((String)???).length() != 0) {
        "AvatarImageRequest getBytes for request ".concat((String)???);
      }
    }
    else
    {
      hbs.b();
      localObject2 = (ben)f;
      i3 = ((ben)localObject2).d();
      i4 = a.size();
    }
    label502:
    label505:
    label512:
    label519:
    for (;;)
    {
      int i1;
      synchronized (r)
      {
        if (l)
        {
          return null;
          new String("AvatarImageRequest getBytes for request ");
          break;
        }
        n = Math.min(p + i4, 4);
        i1 = 0;
        Object localObject4;
        Object localObject5;
        String str;
        if (i1 < Math.min(i4, 4))
        {
          localObject4 = (String)a.get(i1);
          if (TextUtils.isEmpty((CharSequence)localObject4)) {
            break label505;
          }
          localObject4 = new bhs(new eyd((String)localObject4, m()).a(i3).d(true).b(m), this, false, null);
          ((bhs)localObject4).b(d());
          if (i)
          {
            localObject5 = String.valueOf(((bhs)localObject4).toString());
            str = String.valueOf(toString());
            new StringBuilder(String.valueOf(localObject5).length() + 51 + String.valueOf(str).length()).append("AvatarImageRequest creating ImageRequest ").append((String)localObject5).append(" compound:").append(str);
          }
          r[o] = localObject4;
          o += 1;
          break label505;
        }
        localObject2 = aal.oJ;
        i1 = i2;
        if (i1 < o)
        {
          localObject4 = r[i1];
          if (((bhs)localObject4).e()) {
            break label512;
          }
          ((eit)ilh.a((Context)localObject2, eit.class)).c((ehx)localObject4);
          break label512;
        }
        if (o < n)
        {
          localObject4 = eye.a().b(i3, i3);
          i1 = o;
          localObject5 = q.iterator();
          if (((Iterator)localObject5).hasNext())
          {
            str = (String)((Iterator)localObject5).next();
            if (i1 < n)
            {
              if (!elz.a((Context)localObject2, (Bitmap)localObject4, str, i3, emb.a, aal.dh)) {
                break label502;
              }
              i2 = i1 + 1;
              a((Bitmap)localObject4, i1);
              i1 = i2;
              break label519;
            }
          }
          eye.a().a((Bitmap)localObject4);
          localObject2 = bfq.b();
          if (i1 < n)
          {
            a((Bitmap)localObject2, i1);
            i1 += 1;
            continue;
          }
        }
        p();
        return null;
      }
      break label519;
      i1 += 1;
      continue;
      i1 += 1;
    }
  }
}

/* Location:
 * Qualified Name:     bem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */