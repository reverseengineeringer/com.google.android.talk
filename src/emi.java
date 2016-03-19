import android.content.Context;
import android.content.res.Resources;
import java.util.Collection;
import java.util.Iterator;

public final class emi
  implements emf
{
  private static void c(Context paramContext, av paramav, String paramString1, String paramString2, String paramString3)
  {
    aen.a(paramString1, "Couldn't start SmartProfile because personId was null");
    ezi.a("Babel", "Starting SmartProfile with personId = %s, name = %s", new Object[] { ezi.b(paramString1), ezi.b(paramString2) });
    bfd localbfd = dvd.e(((hpu)ilh.a(paramContext, hpu.class)).a());
    int i = paramContext.getResources().getColor(aal.dh);
    int j = paramContext.getResources().getColor(aal.dg);
    paramav.startActivityForResult(((haf)ilh.a(paramContext, haf.class)).a().b(paramString1).a(localbfd.a()).a().a(j).c(paramString2).d(paramString3).b().b(i).c(), 0);
  }
  
  public void a(Context paramContext, av paramav, bdy parambdy)
  {
    Object localObject1;
    Object localObject2;
    if (parambdy.l())
    {
      localObject1 = String.valueOf("c:");
      localObject2 = String.valueOf(parambdy.m());
      if (((String)localObject2).length() != 0) {
        localObject1 = ((String)localObject1).concat((String)localObject2);
      }
    }
    for (;;)
    {
      c(paramContext, paramav, (String)localObject1, parambdy.e(), parambdy.f());
      return;
      localObject1 = new String((String)localObject1);
      continue;
      if (parambdy.h())
      {
        localObject2 = parambdy.j().iterator();
        for (;;)
        {
          if (((Iterator)localObject2).hasNext())
          {
            localObject1 = (bdx)((Iterator)localObject2).next();
            if (!((bdx)localObject1).f())
            {
              localObject2 = String.valueOf("g:");
              localObject1 = String.valueOf(((bdx)localObject1).a());
              if (((String)localObject1).length() != 0)
              {
                localObject1 = ((String)localObject2).concat((String)localObject1);
                break;
              }
              localObject1 = new String((String)localObject2);
              break;
            }
          }
        }
      }
      localObject2 = parambdy.a();
      if (localObject2 != null)
      {
        localObject1 = String.valueOf("p:");
        localObject2 = String.valueOf(((bee)localObject2).b());
        if (((String)localObject2).length() != 0) {
          localObject1 = ((String)localObject1).concat((String)localObject2);
        } else {
          localObject1 = new String((String)localObject1);
        }
      }
      else
      {
        localObject2 = parambdy.c();
        if (localObject2 != null)
        {
          localObject1 = String.valueOf("e:");
          localObject2 = String.valueOf(localObject2);
          if (((String)localObject2).length() != 0) {
            localObject1 = ((String)localObject1).concat((String)localObject2);
          } else {
            localObject1 = new String((String)localObject1);
          }
        }
        else
        {
          localObject1 = null;
        }
      }
    }
  }
  
  public void a(Context paramContext, av paramav, String paramString1, String paramString2, String paramString3)
  {
    String str = String.valueOf("g:");
    paramString1 = String.valueOf(paramString1);
    if (paramString1.length() != 0) {}
    for (paramString1 = str.concat(paramString1);; paramString1 = new String(str))
    {
      c(paramContext, paramav, paramString1, paramString2, paramString3);
      return;
    }
  }
  
  public void b(Context paramContext, av paramav, String paramString1, String paramString2, String paramString3)
  {
    String str = String.valueOf("p:");
    paramString1 = String.valueOf(paramString1);
    if (paramString1.length() != 0) {}
    for (paramString1 = str.concat(paramString1);; paramString1 = new String(str))
    {
      c(paramContext, paramav, paramString1, paramString2, paramString3);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     emi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */