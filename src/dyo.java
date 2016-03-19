import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;

public final class dyo
  implements dyr
{
  public dyo(ArrayList paramArrayList, Context paramContext) {}
  
  public void a(dtw paramdtw, axn paramaxn) {}
  
  public void a(dtw paramdtw, axt paramaxt)
  {
    String str1 = paramaxt.d();
    String str2 = paramaxt.g();
    if (!TextUtils.isEmpty(a)) {
      if (str1 == null)
      {
        localObject = null;
        String str3 = a;
        String str4 = b;
        String str5 = d;
        if (TextUtils.isEmpty(str1))
        {
          paramdtw = e;
          label60:
          paramdtw = aal.a(str3, str4, null, str5, str1, (String)localObject, paramdtw, str2, null, null);
          C = paramaxt.l();
          B = paramaxt.j();
          A = paramaxt.k();
          a.add(paramdtw);
        }
      }
      else
      {
        localObject = str1.split(" ");
        if (localObject.length <= 0) {
          break label163;
        }
      }
    }
    label163:
    for (Object localObject = localObject[0];; localObject = str1)
    {
      break;
      paramdtw = str1;
      break label60;
      a.add(aal.a(b, d, str1, str2));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dyo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */