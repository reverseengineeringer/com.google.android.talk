import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory;
import android.view.View;

public class jk
  implements LayoutInflater.Factory
{
  final jm a;
  
  public jk(jm paramjm)
  {
    a = paramjm;
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return a.a(null, paramString, paramContext, paramAttributeSet);
  }
  
  public String toString()
  {
    return getClass().getName() + "{" + a + "}";
  }
}

/* Location:
 * Qualified Name:     jk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */