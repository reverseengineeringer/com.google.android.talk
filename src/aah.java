import android.support.v7.widget.RecyclerView;

public final class aah
  extends zw
{
  public aah(RecyclerView paramRecyclerView) {}
  
  private void a()
  {
    if ((a.p) && (a.k) && (a.j))
    {
      ks.a(a, a.f);
      return;
    }
    a.o = true;
    a.requestLayout();
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a.a(null);
    if (a.c.a(paramInt1, paramInt2)) {
      a();
    }
  }
  
  public void a(int paramInt1, int paramInt2, Object paramObject)
  {
    a.a(null);
    if (a.c.a(paramInt1, paramInt2, null)) {
      a();
    }
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    a.a(null);
    if (a.c.b(paramInt1, paramInt2)) {
      a();
    }
  }
}

/* Location:
 * Qualified Name:     aah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */