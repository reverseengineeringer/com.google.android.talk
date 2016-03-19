import android.content.Context;
import java.util.concurrent.CopyOnWriteArrayList;

public final class cbj
{
  static int c = 16;
  static final Object d = new Object();
  final Context a;
  final CopyOnWriteArrayList<Integer> b;
  cbm e;
  
  public cbj(Context paramContext)
  {
    a = paramContext;
    b = new CopyOnWriteArrayList();
    new cbl(this).a(new Void[0]);
  }
  
  public CopyOnWriteArrayList<Integer> a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    while (b.remove(Integer.valueOf(paramInt))) {}
    b.add(0, Integer.valueOf(paramInt));
    if (e != null) {
      e.q_();
    }
    hbw.a(new cbk(this));
  }
  
  public void a(cbm paramcbm)
  {
    e = paramcbm;
  }
}

/* Location:
 * Qualified Name:     cbj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */