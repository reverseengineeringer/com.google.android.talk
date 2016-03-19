import android.support.v7.widget.RecyclerView;

public final class abi
{
  public abi(RecyclerView paramRecyclerView) {}
  
  public void a(aao paramaao)
  {
    a.h.a(a, a.b);
  }
  
  public void a(aao paramaao, zz paramzz1, zz paramzz2)
  {
    a.b.b(paramaao);
    RecyclerView localRecyclerView = a;
    localRecyclerView.a(paramaao);
    paramaao.a(false);
    if (s.a(paramaao, paramzz1, paramzz2)) {
      localRecyclerView.s();
    }
  }
  
  public void b(aao paramaao, zz paramzz1, zz paramzz2)
  {
    RecyclerView localRecyclerView = a;
    paramaao.a(false);
    if (s.b(paramaao, paramzz1, paramzz2)) {
      localRecyclerView.s();
    }
  }
  
  public void c(aao paramaao, zz paramzz1, zz paramzz2)
  {
    paramaao.a(false);
    if (a.r) {
      if (a.s.a(paramaao, paramaao, paramzz1, paramzz2)) {
        a.s();
      }
    }
    while (!a.s.c(paramaao, paramzz1, paramzz2)) {
      return;
    }
    a.s();
  }
}

/* Location:
 * Qualified Name:     abi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */