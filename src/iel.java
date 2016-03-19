import java.util.ArrayList;

public final class iel
{
  static ien a = null;
  static final ThreadLocal<ArrayList<ien>> b = new iem();
  private static final long c = ipu.a("picasasync.metrics.time");
  
  public static void a(long paramLong)
  {
    Object localObject = (ArrayList)b.get();
    int i = ((ArrayList)localObject).size();
    if (i > 0)
    {
      localObject = (ien)((ArrayList)localObject).get(i - 1);
      a += paramLong;
    }
  }
}

/* Location:
 * Qualified Name:     iel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */