package com.google.android.apps.hangouts.settings;

import aal;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import ejj;
import hpu;
import hqb;
import hqo;
import ild;
import ilv;
import qe;

public class AccountSettingsActivity
  extends ilv
{
  public hpu j = new hqo(this, B).a(A).e();
  
  public AccountSettingsActivity()
  {
    new ild(this, B);
    new ejj(this, this, B);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.fz);
    hqb localhqb = j.c();
    qe localqe = g();
    Object localObject = localhqb.b("display_name");
    paramBundle = localhqb.b("account_name");
    boolean bool = localhqb.d("is_plus_page");
    if (localqe != null)
    {
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        localqe.a(paramBundle);
      }
      do
      {
        return;
        localqe.a((CharSequence)localObject);
      } while (bool);
      localObject = SpannableStringBuilder.valueOf(paramBundle);
      ((SpannableStringBuilder)localObject).setSpan(new ForegroundColorSpan(getResources().getColor(aal.dp)), 0, paramBundle.length(), 33);
      localqe.b((CharSequence)localObject);
      return;
    }
    if ((bool) && (!TextUtils.isEmpty((CharSequence)localObject))) {
      paramBundle = (Bundle)localObject;
    }
    for (;;)
    {
      setTitle(paramBundle);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.settings.AccountSettingsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */