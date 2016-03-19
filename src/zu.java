import android.view.ViewGroup;

public abstract class zu<VH extends aao>
{
  public final zv a = new zv();
  public boolean b = false;
  
  public abstract int a();
  
  public int a(int paramInt)
  {
    return 0;
  }
  
  public abstract VH a(ViewGroup paramViewGroup, int paramInt);
  
  public final void a(int paramInt1, int paramInt2)
  {
    a.a(paramInt1, paramInt2);
  }
  
  public abstract void a(VH paramVH, int paramInt);
  
  public void a(zw paramzw)
  {
    a.registerObserver(paramzw);
  }
  
  public void a(boolean paramBoolean)
  {
    if (a.a()) {
      throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
    }
    b = paramBoolean;
  }
  
  public long b(int paramInt)
  {
    return -1L;
  }
  
  public final void b(int paramInt1, int paramInt2)
  {
    a.b(paramInt1, paramInt2);
  }
  
  public void b()
  {
    aao localaao;
    int i;
    a(localaao, i);
  }
  
  public void b(zw paramzw)
  {
    a.unregisterObserver(paramzw);
  }
}

/* Location:
 * Qualified Name:     zu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */