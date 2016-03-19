import android.content.Intent;
import android.os.Bundle;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

final class eej
  extends LinkedHashMap<String, String>
{
  eej(eei parameei, Intent paramIntent)
  {
    put("action", a.getAction());
    put("data", a.getDataString());
    put("type", a.getType());
    put("package", a.getPackage());
    parameei = a.getExtras();
    paramIntent = parameei.keySet().iterator();
    while (paramIntent.hasNext())
    {
      String str = (String)paramIntent.next();
      put(str, parameei.getString(str));
    }
  }
}

/* Location:
 * Qualified Name:     eej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */