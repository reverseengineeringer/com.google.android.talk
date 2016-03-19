import android.support.v7.widget.RecyclerView;
import android.view.View;

public final class zy
{
  public zy(RecyclerView paramRecyclerView) {}
  
  public void a(aao paramaao)
  {
    int i = 1;
    paramaao.a(true);
    if ((g != null) && (h == null)) {
      g = null;
    }
    h = null;
    if ((i & 0x10) != 0) {}
    for (;;)
    {
      if (i == 0)
      {
        RecyclerView localRecyclerView = a;
        Object localObject = a;
        localRecyclerView.f();
        boolean bool = d.g((View)localObject);
        if (bool)
        {
          localObject = RecyclerView.b((View)localObject);
          b.b((aao)localObject);
          b.a((aao)localObject);
        }
        localRecyclerView.a(false);
        if ((!bool) && (paramaao.n())) {
          a.removeDetachedView(a, false);
        }
      }
      return;
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     zy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */