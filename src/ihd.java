import android.content.Context;
import android.util.Log;
import java.util.List;

public final class ihd
  implements ihg
{
  private final Context a;
  private ihr[] b;
  
  public ihd(Context paramContext)
  {
    a = paramContext;
  }
  
  private void a()
  {
    try
    {
      List localList = ilh.c(a, ihr.class);
      b = ((ihr[])localList.toArray(new ihr[localList.size()]));
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(ihi paramihi)
  {
    if (b == null) {
      a();
    }
    Object localObject1 = b;
    int j = localObject1.length;
    int i = 0;
    while (i < j)
    {
      Object localObject2 = localObject1[i];
      paramihi = g;
      paramihi = ((ihr)localObject2).a();
      i += 1;
    }
    j = h.f();
    if (Log.isLoggable("HttpOperation", 3))
    {
      localObject1 = String.valueOf(paramihi.j());
      if (((String)localObject1).length() == 0) {
        break label293;
      }
      "Starting op: ".concat((String)localObject1);
    }
    for (;;)
    {
      if (h.e()) {
        n = 2;
      }
      if (j != null) {
        j.a(paramihi.i(), paramihi.k());
      }
      paramihi.n();
      paramihi.o();
      if (j != null)
      {
        j.a(q);
        q.h();
        j.d();
        paramihi.q();
        if (h.f() == null) {
          j.a("");
        }
      }
      if ((paramihi.m()) && (Log.isLoggable("HttpOperation", 4)))
      {
        localObject1 = String.valueOf(paramihi.i());
        i = k;
        paramihi = String.valueOf(m);
        new StringBuilder(String.valueOf(localObject1).length() + 36 + String.valueOf(paramihi).length()).append("[").append((String)localObject1).append("] failed due to error: ").append(i).append(" ").append(paramihi);
      }
      return;
      label293:
      new String("Starting op: ");
    }
  }
}

/* Location:
 * Qualified Name:     ihd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */