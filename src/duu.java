import android.content.Context;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public final class duu
{
  private static final boolean a = false;
  private final hpz b;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  public duu(Context paramContext)
  {
    b = ((hpz)ilh.a(paramContext, hpz.class));
  }
  
  private void b(int paramInt, long paramLong)
  {
    if (paramInt == -1) {
      return;
    }
    b.b(paramInt).b("cachehash_client_hash", paramLong).d();
  }
  
  private void c(int paramInt, long paramLong)
  {
    if (paramInt == -1) {
      return;
    }
    b.b(paramInt).b("cachehash_latest_rollup_version", paramLong).d();
  }
  
  private void d(int paramInt)
  {
    if (paramInt == -1) {
      return;
    }
    b.b(paramInt).a("cachehash_update_ids", null).d();
  }
  
  public long a(int paramInt)
  {
    if (paramInt == -1) {
      return -1L;
    }
    return b.a(paramInt).a("cachehash_client_hash", -1L);
  }
  
  public void a(int paramInt, long paramLong)
  {
    if (paramInt == -1) {}
    long l;
    do
    {
      return;
      l = b.a(paramInt).a("cachehash_client_hash", -1L);
    } while (l == -1L);
    b.b(paramInt).b("cachehash_client_hash", l + paramLong).d();
  }
  
  public void a(int paramInt, long paramLong1, long paramLong2)
  {
    if (paramInt == -1) {
      return;
    }
    b(paramInt, paramLong1);
    c(paramInt, paramLong2);
    d(paramInt);
  }
  
  public boolean a(int paramInt, String paramString)
  {
    if (paramInt == -1) {}
    Set localSet;
    do
    {
      return false;
      localSet = b.a(paramInt).c("cachehash_update_ids");
    } while ((localSet == null) || (!localSet.contains(paramString)));
    return true;
  }
  
  public long b(int paramInt)
  {
    if (paramInt == -1) {
      return -1L;
    }
    return b.a(paramInt).a("cachehash_latest_rollup_version", -1L);
  }
  
  public void b(int paramInt, String paramString)
  {
    if (paramInt == -1) {
      return;
    }
    Object localObject = b.a(paramInt).c("cachehash_update_ids");
    if (localObject == null) {}
    for (localObject = new HashSet();; localObject = new HashSet((Collection)localObject))
    {
      ((Set)localObject).add(paramString);
      b.b(paramInt).a("cachehash_update_ids", (Set)localObject).d();
      return;
    }
  }
  
  public void c(int paramInt)
  {
    if (paramInt == -1) {
      return;
    }
    b(paramInt, -1L);
    c(paramInt, -1L);
    d(paramInt);
  }
}

/* Location:
 * Qualified Name:     duu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */