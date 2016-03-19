import android.support.v7.widget.RecyclerView;

public final class zr
  implements Runnable
{
  public zr(RecyclerView paramRecyclerView) {}
  
  public void run()
  {
    if ((!a.l) || (a.isLayoutRequested())) {
      return;
    }
    if (a.n)
    {
      a.m = true;
      return;
    }
    a.e();
  }
}

/* Location:
 * Qualified Name:     zr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */