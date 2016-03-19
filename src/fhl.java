import com.google.android.gms.clearcut.LogEventParcelable;

final class fhl
  extends fir
{
  private final LogEventParcelable b;
  
  fhl(fhe paramfhe, LogEventParcelable paramLogEventParcelable, fic paramfic)
  {
    super(paramfic);
    b = paramLogEventParcelable;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof fhl)) {
      return false;
    }
    paramObject = (fhl)paramObject;
    return b.equals(b);
  }
  
  public String toString()
  {
    return "MethodImpl(" + b + ")";
  }
}

/* Location:
 * Qualified Name:     fhl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */