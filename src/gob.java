import com.google.android.gms.common.data.DataHolder;

public final class gob
{
  public final DataHolder a;
  private final int b;
  private int c = -1;
  
  public gob(DataHolder paramDataHolder)
  {
    a = paramDataHolder;
    b = paramDataHolder.d();
  }
  
  public int a()
  {
    return b;
  }
  
  public String a(String paramString)
  {
    return a.b(paramString, c, a.a(c));
  }
  
  public void a(int paramInt)
  {
    c = paramInt;
  }
  
  public int b()
  {
    return c;
  }
  
  public boolean c()
  {
    c += 1;
    return (c >= 0) && (c < b);
  }
  
  public boolean d()
  {
    return c >= b;
  }
}

/* Location:
 * Qualified Name:     gob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */