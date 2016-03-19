import android.content.Context;
import java.util.ArrayList;
import java.util.List;

public final class ihz
{
  public static final String a = ihg.class.getName();
  public static final String b = ihh.class.getName();
  public static final String c = ims.class.getName();
  private static ihy d;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (d == null) {
      d = new ihy();
    }
    paramilh.a(ihg.class, new ihd(paramContext));
  }
  
  public static void a(ilh paramilh)
  {
    if (d == null) {
      d = new ihy();
    }
    imw localimw = ims.a;
    paramilh.a(ims.class, new ims[0]);
  }
  
  public static void b(Context paramContext, ilh paramilh)
  {
    if (d == null) {
      d = new ihy();
    }
    ArrayList localArrayList = new ArrayList(2);
    imw localimw = ihe.a;
    paramContext = (ifh)ilh.b(paramContext, ifh.class);
    if (paramContext != null) {
      localArrayList.add(new ihu(paramContext));
    }
    paramilh.a(ihh.class, (ihh[])localArrayList.toArray(new ihh[localArrayList.size()]));
  }
}

/* Location:
 * Qualified Name:     ihz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */