import android.graphics.drawable.Drawable;

public final class asi<T extends Drawable>
  implements alr<T>
{
  public final T a;
  
  private asi(T paramT)
  {
    a = ((Drawable)aal.a(paramT, "Argument must not be null"));
  }
  
  public asi(asn paramasn)
  {
    this(paramasn);
  }
  
  public Class<asn> b()
  {
    return asn.class;
  }
  
  public int d()
  {
    return ((asn)a).a();
  }
  
  public void e()
  {
    ((asn)a).stop();
    ((asn)a).g();
  }
}

/* Location:
 * Qualified Name:     asi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */