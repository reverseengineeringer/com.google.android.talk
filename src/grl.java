import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

public final class grl
  extends fko<grk>
  implements fim
{
  private final Status b;
  
  public grl(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    b = new Status(paramDataHolder.b());
  }
  
  protected String f()
  {
    return "path";
  }
  
  public Status j()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     grl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */