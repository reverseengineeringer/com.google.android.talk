import android.content.Context;
import java.util.Set;

public final class ilm
{
  private volatile ilh a;
  private final Object b = new Object();
  private final iln c;
  private final boolean d = false;
  
  ilm(iln paramiln)
  {
    c = paramiln;
  }
  
  public ilh a(Context paramContext)
  {
    ilh localilh;
    Object localObject1;
    if (a == null) {
      synchronized (b)
      {
        if (a == null)
        {
          localilh = new ilh(paramContext);
          if (d) {
            localilh.a(ilh.c(paramContext));
          }
          localObject1 = c;
          if (localObject1 == null) {}
        }
      }
    }
    try
    {
      ilr localilr = (ilr)Class.forName("gen_binder.root.RootModule$Generated").newInstance();
      localObject1 = localilr.a();
      Object localObject2;
      for (;;) {}
    }
    catch (IllegalAccessException paramContext)
    {
      try
      {
        localilh.a(localilr);
        localilr.a(localilh);
        localilh.a(new ilg(paramContext, (Set)localObject1));
        a = localilh;
        return a;
      }
      catch (ClassNotFoundException localClassNotFoundException2)
      {
        for (;;) {}
      }
      paramContext = paramContext;
      throw new IllegalStateException("Failed to instantiate root module gen_binder.root.RootModule$Generated", paramContext);
      paramContext = finally;
      throw paramContext;
    }
    catch (InstantiationException paramContext)
    {
      throw new IllegalStateException("Failed to instantiate root module gen_binder.root.RootModule$Generated", paramContext);
    }
    catch (ClassNotFoundException localClassNotFoundException1)
    {
      localObject2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     ilm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */