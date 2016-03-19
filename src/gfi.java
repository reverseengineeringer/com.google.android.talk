import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

public final class gfi
{
  public gfi(csa paramcsa, String paramString, double paramDouble1, double paramDouble2, av paramav) {}
  
  public void a()
  {
    if (e.a.h())
    {
      e.a.B();
      return;
    }
    String str = a;
    double d1 = b;
    double d2 = c;
    Object localObject = 53 + "geo:" + d1 + "," + d2;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(d1);
    localStringBuilder.append(",");
    localStringBuilder.append(d2);
    if (!TextUtils.isEmpty(str))
    {
      localStringBuilder.append("(");
      localStringBuilder.append(str);
      localStringBuilder.append(")");
    }
    str = Uri.encode(localStringBuilder.toString());
    localObject = new Intent("android.intent.action.VIEW", Uri.parse(String.valueOf(localObject).length() + 17 + String.valueOf(str).length() + (String)localObject + "?q=" + str + "&z=16"));
    d.startActivity((Intent)localObject);
  }
}

/* Location:
 * Qualified Name:     gfi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */