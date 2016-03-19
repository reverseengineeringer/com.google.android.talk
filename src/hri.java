import android.content.SharedPreferences.Editor;
import java.util.Set;

public final class hri
  implements hrb
{
  Set<String> a;
  
  public hri(Set<String> paramSet)
  {
    a = paramSet;
  }
  
  public Object a(Object paramObject)
  {
    return a;
  }
  
  public void a(SharedPreferences.Editor paramEditor, String paramString)
  {
    paramEditor.putStringSet(paramString, a);
  }
}

/* Location:
 * Qualified Name:     hri
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */