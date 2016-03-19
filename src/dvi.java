import android.content.Context;
import android.os.Build.VERSION;
import android.provider.Telephony.Sms;
import com.google.android.apps.hangouts.sms.SmsReceiver;
import java.util.ArrayList;
import java.util.List;

public final class dvi
{
  public static void a(boolean paramBoolean)
  {
    eot localeot = (eot)ilh.a(aal.oJ, eot.class);
    bfd localbfd = dvd.n();
    dvd.c = Boolean.valueOf(paramBoolean);
    localeot.b(paramBoolean);
    if (paramBoolean)
    {
      localbfd = dvd.l();
      eny.c(localbfd);
      if (localeot.a(localbfd.g())) {
        dvd.b(true);
      }
    }
    for (;;)
    {
      SmsReceiver.a();
      return;
      eny.a(localbfd);
      dvd.b(false);
    }
  }
  
  public static boolean a()
  {
    boolean bool2 = true;
    Context localContext = aal.oJ;
    if (dvd.c == null) {
      dvd.c = Boolean.valueOf(((eot)ilh.a(localContext, eot.class)).g());
    }
    if (!ezm.d()) {
      if (aal.a(dvd.c, false))
      {
        a(false);
        if (aal.a(dvd.c, false)) {
          break label76;
        }
        bool1 = true;
        aen.b(bool1);
      }
    }
    label76:
    while (Build.VERSION.SDK_INT < 19) {
      for (;;)
      {
        return aal.a(dvd.c, false);
        bool1 = false;
      }
    }
    Object localObject = (dcj)ilh.a(localContext, dcj.class);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("android.permission.READ_SMS");
    localArrayList.add("android.permission.RECEIVE_SMS");
    localArrayList.add("android.permission.SEND_SMS");
    localArrayList.add("android.permission.RECEIVE_MMS");
    if (((dcj)localObject).a(localArrayList))
    {
      localObject = Telephony.Sms.getDefaultSmsPackage(localContext);
      bool1 = localContext.getPackageName().equals(localObject);
      label173:
      if (aal.a(dvd.c, false) == bool1) {
        break label211;
      }
      a(bool1);
      if (aal.a(dvd.c, false) != bool1) {
        break label213;
      }
    }
    label211:
    label213:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      aen.b(bool1);
      break;
      bool1 = false;
      break label173;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     dvi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */