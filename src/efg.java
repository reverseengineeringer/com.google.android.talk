import android.content.Context;
import android.content.SharedPreferences;
import java.util.Locale;

public class efg
  extends ihc
{
  private if<efh, String> a;
  
  public efg(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("rpc", 0);
    a = new if();
    efh[] arrayOfefh = efh.values();
    int j = arrayOfefh.length;
    while (i < j)
    {
      efh localefh = arrayOfefh[i];
      a.put(localefh, paramContext.getString(f, g.a()));
      i += 1;
    }
  }
  
  public String a(efh paramefh)
  {
    String str = (String)a.get(paramefh);
    paramefh = String.valueOf(paramefh);
    hbs.b(String.valueOf(paramefh).length() + 11 + "Unkown API " + paramefh, str);
    return str;
  }
  
  public String a(String paramString)
  {
    Object localObject = efh.valueOf(paramString.toUpperCase(Locale.US));
    paramString = (String)a.get(localObject);
    localObject = String.valueOf(localObject);
    hbs.b(String.valueOf(localObject).length() + 11 + "Unkown API " + (String)localObject, paramString);
    return paramString;
  }
}

/* Location:
 * Qualified Name:     efg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */