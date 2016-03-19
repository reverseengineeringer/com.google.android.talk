import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class fan
  extends LinearLayout
{
  private caj a;
  private String b;
  private long c;
  
  public fan(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a()
  {
    if (a != null) {
      a.a(b, c, true);
    }
  }
  
  public void a(long paramLong)
  {
    c = paramLong;
  }
  
  public void a(caj paramcaj)
  {
    a = paramcaj;
  }
  
  public void a(String paramString)
  {
    b = paramString;
  }
}

/* Location:
 * Qualified Name:     fan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */