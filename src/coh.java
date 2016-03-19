import android.accounts.Account;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.apps.hangouts.help.impl.OpenSourceLicensesActivity;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

final class coh
  implements coa
{
  private static final Uri a = Uri.parse("https://support.google.com/hangouts/topic/6049282");
  
  static void a(Activity paramActivity)
  {
    Uri localUri = a;
    aal.w();
    int j = ((hpu)ilh.a(paramActivity, hpu.class)).a();
    Iterator localIterator = ilh.c(paramActivity, cny.class).iterator();
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
    } while (!((cny)localIterator.next()).a(paramActivity, j));
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        ((hty)ilh.a(paramActivity, hty.class)).a(new coi(paramActivity, coa.class.getName(), paramActivity, j, "hangouts", localUri));
        return;
      }
      a(paramActivity, "hangouts", localUri, null);
      return;
    }
  }
  
  static void a(Activity paramActivity, String paramString, Uri paramUri, cnx[] paramArrayOfcnx)
  {
    gzt localgzt = ((gzu)ilh.a(paramActivity, gzu.class)).a(paramString).a(paramUri).a(paramActivity);
    bdp localbdp = aal.a(paramActivity);
    localgzt.a(paramActivity.getString(aal.mr), new Intent("android.intent.action.VIEW", Uri.parse(localbdp.a("babel_privacy_policy_url", "https://www.google.com/policies/privacy/"))));
    localgzt.a(paramActivity.getString(aal.mo), new Intent(paramActivity.getApplicationContext(), OpenSourceLicensesActivity.class));
    if ("KR".equals(aal.w(paramActivity.getApplicationContext()))) {
      localgzt.a(paramActivity.getString(aal.mp), new Intent("android.intent.action.VIEW", Uri.parse(localbdp.a("babel_location_tos_url", "https://www.google.co.kr/intl/ko/policies/terms/location"))));
    }
    paramUri = localbdp.a("babel_maps_tos_url", "https://www.google.com/intl/en/help/terms_maps.html");
    paramString = paramUri;
    if (!TextUtils.isEmpty(Locale.getDefault().getLanguage()))
    {
      paramString = String.valueOf(Locale.getDefault().getLanguage());
      paramString = paramUri.replace("/en/", String.valueOf(paramString).length() + 2 + "/" + paramString + "/");
    }
    localgzt.a(paramActivity.getString(aal.mq), new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
    localgzt.a(paramActivity.getString(aal.ms), new Intent("android.intent.action.VIEW", Uri.parse(localbdp.a("babel_tos_url", "https://www.google.com/accounts/tos"))));
    paramString = new Bundle();
    paramUri = ilh.c(paramActivity, cnz.class).iterator();
    while (paramUri.hasNext()) {
      ((cnz)paramUri.next()).a(paramActivity, paramString);
    }
    localgzt.a(paramString);
    paramString = ((hba)ilh.a(paramActivity, hba.class)).a(((hpu)ilh.a(paramActivity, hpu.class)).a());
    if (paramArrayOfcnx != null)
    {
      int j = paramArrayOfcnx.length;
      int i = 0;
      while (i < j)
      {
        paramUri = paramArrayOfcnx[i];
        localgzt.a(a, b, c);
        paramString.a(2838).d();
        i += 1;
      }
    }
    localgzt.a(new gzx().a().a(paramActivity.getResources().getColor(aen.iI)));
    paramUri = (hpu)ilh.b(paramActivity, hpu.class);
    if ((paramUri != null) && (paramUri.b()))
    {
      paramUri = paramUri.c().b("account_name");
      if (paramUri.contains("@")) {
        localgzt.a(new Account(paramUri, "com.google"));
      }
    }
    paramUri = localgzt.a(paramActivity);
    ((gzw)ilh.a(paramActivity, gzw.class)).a(paramActivity).a(paramUri);
    paramString.a(1082).d();
  }
}

/* Location:
 * Qualified Name:     coh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */