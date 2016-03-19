import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public class dll
  implements hqg
{
  private static final boolean d = false;
  final SparseArray<dky> a = new SparseArray();
  final dlf b = new dlf();
  final hpz c;
  private final dlo e = new dlo(this);
  private final Context f;
  private final eot g;
  private final elm h;
  
  static
  {
    imx localimx = ezi.t;
  }
  
  public dll(Context paramContext)
  {
    RealTimeChatService.a(new dlm(this));
    f = paramContext;
    c = ((hpz)ilh.a(paramContext, hpz.class));
    g = ((eot)ilh.a(paramContext, eot.class));
    h = ((elm)ilh.a(paramContext, elm.class));
    aal.a(new dln(this));
  }
  
  public void Y_()
  {
    for (;;)
    {
      int i;
      synchronized (b)
      {
        i = a.size() - 1;
        if (i >= 0)
        {
          if (!c.c(a.keyAt(i)))
          {
            ((dky)a.valueAt(i)).a();
            a.removeAt(i);
          }
        }
        else {
          return;
        }
      }
      i -= 1;
    }
  }
  
  public void a(int paramInt1, String paramString, dli paramdli, int paramInt2)
  {
    boolean bool2 = true;
    aen.a(c.c(paramInt1));
    if (!TextUtils.isEmpty(paramString))
    {
      bool1 = true;
      aen.a(bool1);
      aen.a(paramdli);
      if (paramInt2 == 0) {
        break label250;
      }
    }
    label250:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      aen.a(bool1);
      Object localObject;
      if (d)
      {
        localObject = String.valueOf(ezi.b(paramString));
        new StringBuilder(String.valueOf(localObject).length() + 76).append("Registration for presence: fieldMask=").append(paramInt2).append(", gaia=").append((String)localObject).append(", account=").append(paramInt1);
      }
      int i = paramInt2;
      if (!h.a(paramInt1)) {
        i = paramInt2 & (bl ^ 0xFFFFFFFF);
      }
      synchronized (b)
      {
        dky localdky = (dky)a.get(paramInt1);
        localObject = localdky;
        if (localdky == null)
        {
          localObject = new dky(f, c, g, paramInt1, b);
          a.put(paramInt1, localObject);
          e.b();
        }
        if (((dky)localObject).a(paramString, paramdli, i)) {
          e.a();
        }
        return;
      }
      bool1 = false;
      break;
    }
  }
  
  public void a(int paramInt, String paramString, dnv paramdnv, Object paramObject)
  {
    boolean bool = false;
    if (!c.c(paramInt))
    {
      ezi.c("Babel", 56 + "Dropping presence update for invalid account " + paramInt, new Object[0]);
      return;
    }
    if (!TextUtils.isEmpty(paramString)) {
      bool = true;
    }
    aen.a(bool);
    aen.a(paramdnv);
    synchronized (b)
    {
      dky localdky2 = (dky)a.get(paramInt);
      dky localdky1 = localdky2;
      if (localdky2 == null)
      {
        localdky1 = new dky(f, c, g, paramInt, b);
        a.put(paramInt, localdky1);
      }
      localdky1.a(paramString, paramdnv, paramObject);
      return;
    }
  }
  
  public void a(dli paramdli)
  {
    for (;;)
    {
      int i;
      synchronized (b)
      {
        i = a.size() - 1;
        if (i >= 0)
        {
          if (!((dky)a.valueAt(i)).a(paramdli)) {
            a.removeAt(i);
          }
        }
        else {
          return;
        }
      }
      i -= 1;
    }
  }
}

/* Location:
 * Qualified Name:     dll
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */