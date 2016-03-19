import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Iterator;

final class bou
  implements DialogInterface.OnClickListener
{
  bou(bng parambng, String paramString, long paramLong) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject = null;
    bng localbng;
    long l;
    String str;
    if (paramInt == 0)
    {
      localbng = c;
      paramDialogInterface = a;
      l = b;
      paramDialogInterface = aal.f(paramDialogInterface);
      if (paramDialogInterface == null) {
        break label186;
      }
      localObject = paramDialogInterface.iterator();
      if (!((Iterator)localObject).hasNext()) {
        break label181;
      }
      paramDialogInterface = (String)((Iterator)localObject).next();
      if (!((Iterator)localObject).hasNext()) {
        break label169;
      }
      str = (String)((Iterator)localObject).next();
      localObject = paramDialogInterface;
      paramDialogInterface = str;
    }
    for (;;)
    {
      if ((!TextUtils.isEmpty((CharSequence)localObject)) && ((((String)localObject).startsWith("http://")) || (((String)localObject).startsWith("https://")))) {
        RealTimeChatService.a(at.g(), (String)localObject, enn.a(paramDialogInterface, "UTF-8"), l, false);
      }
      do
      {
        return;
      } while (paramInt != 1);
      paramDialogInterface = c;
      l = b;
      RealTimeChatService.a(at, new long[] { l });
      return;
      label169:
      str = null;
      localObject = paramDialogInterface;
      paramDialogInterface = str;
      continue;
      label181:
      paramDialogInterface = null;
      break;
      label186:
      paramDialogInterface = null;
    }
  }
}

/* Location:
 * Qualified Name:     bou
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */