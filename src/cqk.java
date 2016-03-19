import android.content.Context;
import android.content.res.Resources;

public final class cqk
  implements fct
{
  static final eyz a = eyz.c;
  long b;
  private final Context c;
  private final bzy d;
  private final Resources e;
  private final dlj f;
  
  public cqk(Context paramContext, int paramInt, bzy parambzy, Resources paramResources)
  {
    c = paramContext;
    d = parambzy;
    e = paramResources;
    f = new cql(this, paramContext, (iog)ilh.b(paramContext).a(ino.class), paramInt);
  }
  
  void a()
  {
    Object localObject1 = null;
    Object localObject2;
    if (b > 0L)
    {
      long l = System.currentTimeMillis();
      localObject2 = aal.a(c, b, l, 262144);
      if (localObject2 != null)
      {
        localObject2 = e.getString(aal.nv, new Object[] { localObject2 });
        localObject1 = aal.a(c, b, l, 0);
        localObject1 = e.getString(aal.nv, new Object[] { localObject1 });
      }
    }
    for (;;)
    {
      d.a((String)localObject2, (String)localObject1);
      return;
      localObject2 = null;
    }
  }
  
  public void a(String paramString)
  {
    f.a(paramString);
  }
  
  public void a(boolean paramBoolean) {}
}

/* Location:
 * Qualified Name:     cqk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */