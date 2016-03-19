import com.google.android.gms.common.data.DataHolder;

public final class gve
  extends fkn
  implements grk
{
  private final int c;
  
  public gve(DataHolder paramDataHolder, int paramInt1, int paramInt2)
  {
    super(paramDataHolder, paramInt1);
    c = paramInt2;
  }
  
  public grm W_()
  {
    return new gsu(a, b, c);
  }
  
  public int b()
  {
    return a("event_type");
  }
  
  public String toString()
  {
    String str;
    if (b() == 1) {
      str = "changed";
    }
    for (;;)
    {
      return "DataEventRef{ type=" + str + ", dataitem=" + W_() + " }";
      if (b() == 2) {
        str = "deleted";
      } else {
        str = "unknown";
      }
    }
  }
}

/* Location:
 * Qualified Name:     gve
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */