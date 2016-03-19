import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import com.google.android.apps.hangouts.quickreply.impl.QuickReplyActivity;

final class dul
  implements cyj
{
  dul(duk paramduk, Context paramContext) {}
  
  public cu a(int paramInt, cwz paramcwz, PendingIntent paramPendingIntent)
  {
    Object localObject = dvd.e(paramInt);
    Intent localIntent;
    int i;
    switch (dum.a[paramcwz.a().ordinal()])
    {
    default: 
      paramcwz = String.valueOf(paramcwz.a());
      throw new IllegalArgumentException(String.valueOf(paramcwz).length() + 30 + "Unexpected conversation type: " + paramcwz);
    case 1: 
    case 2: 
      localObject = ((bfd)localObject).u();
      localIntent = new Intent(a, QuickReplyActivity.class);
      localIntent.putExtra("account_id", paramInt);
      localIntent.putExtra("conversation_id", a);
      localIntent.putExtra("conversation_name", f);
      switch (dum.a[paramcwz.a().ordinal()])
      {
      default: 
        i = 1;
      }
      break;
    }
    for (;;)
    {
      localIntent.putExtra("transport_type", i);
      localIntent.putExtra("is_group", c);
      localIntent.putExtra("send_from_name", (String)localObject);
      localIntent.putExtra("hangouts_intent", paramPendingIntent);
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setFlags(32768);
      paramcwz = PendingIntent.getActivity(a, paramInt, localIntent, 268435456);
      paramcwz = new cv(aal.pw, a.getString(aal.pH), paramcwz);
      if ((Build.VERSION.CODENAME.equals("N")) || (Build.VERSION.SDK_INT > 23)) {
        paramcwz.a(new ef("android.intent.extra.TEXT").a(a.getString(aal.pK)).b());
      }
      return paramcwz.b();
      localObject = bfd.F();
      break;
      localObject = ((bfd)localObject).a();
      break;
      i = 3;
      continue;
      i = 2;
    }
  }
}

/* Location:
 * Qualified Name:     dul
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */