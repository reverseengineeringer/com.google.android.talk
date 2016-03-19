import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

final class bss
  implements hsb
{
  bss(bsr parambsr) {}
  
  public void onActivityResult(int paramInt, Intent paramIntent)
  {
    if ((paramInt == -1) && (paramIntent != null))
    {
      paramIntent = aal.a(paramIntent);
      if (paramIntent == null) {
        return;
      }
      Object localObject = Uri.parse(paramIntent);
      boolean bool = aal.d(a.getContext().getContentResolver().getType((Uri)localObject));
      localObject = (bvc)a.binder.a(bvc.class);
      if (bool)
      {
        paramInt = 2327;
        ((bvc)localObject).a(paramInt);
        if (!bool) {
          break label113;
        }
      }
      label113:
      for (paramIntent = bqt.b(a.context, paramIntent);; paramIntent = bqt.a(a.context, paramIntent))
      {
        a.a.a(aal.jU, paramIntent);
        return;
        paramInt = 2326;
        break;
      }
    }
    ((bvc)a.binder.a(bvc.class)).a(2328);
  }
}

/* Location:
 * Qualified Name:     bss
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */