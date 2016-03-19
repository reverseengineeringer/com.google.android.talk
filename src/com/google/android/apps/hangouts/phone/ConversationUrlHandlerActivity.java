package com.google.android.apps.hangouts.phone;

import aal;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import bfd;
import com.google.android.apps.hangouts.hangout.StressMode;
import czb;
import dvd;
import dvi;
import ezi;
import haw;
import hax;
import hba;
import hpv;
import hpw;
import hzy;
import iaj;
import iap;
import ilh;
import imi;
import java.util.Iterator;
import java.util.List;

public class ConversationUrlHandlerActivity
  extends imi
  implements hpw
{
  private String j;
  private String k;
  private String n;
  private boolean o;
  private String p;
  private String q;
  private int r;
  private hzy s = new hzy(this, m).a("active-hangouts-account").a(l).b(this);
  
  private void a(int paramInt1, int paramInt2)
  {
    Toast.makeText(this, paramInt1, 0).show();
    ((hba)l.a(hba.class)).a(s.a()).a(paramInt2).d();
    finish();
  }
  
  private void a(Uri paramUri)
  {
    boolean bool = false;
    Object localObject = paramUri.getQueryParameter("id");
    if (localObject != null) {
      k = ((String)localObject);
    }
    localObject = paramUri.getQueryParameter("a");
    if (localObject != null) {
      j = ((String)localObject);
    }
    localObject = paramUri.getQueryParameter("draft");
    if (localObject != null) {
      q = ((String)localObject);
    }
    localObject = paramUri.getQueryParameter("css");
    if (localObject != null) {
      r = Integer.parseInt((String)localObject);
    }
    localObject = paramUri.getQueryParameters("pi");
    if (!((List)localObject).isEmpty())
    {
      localObject = ((List)localObject).iterator();
      int i = 0;
      for (;;)
      {
        m = i;
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        String str1 = (String)((Iterator)localObject).next();
        if (n != null)
        {
          String str2 = n;
          n = (String.valueOf(str2).length() + 1 + String.valueOf(str1).length() + str2 + "|" + str1);
          i = 1;
        }
        else
        {
          n = str1;
        }
      }
    }
    int m = 0;
    if ((m != 0) || (TextUtils.equals(paramUri.getQueryParameter("group"), "1"))) {
      bool = true;
    }
    o = bool;
  }
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    if (paramhpv2 == hpv.c)
    {
      if (!TextUtils.isEmpty(k))
      {
        paramhpv1 = BabelGatewayActivity.a(this, paramInt2, k, null);
        paramhpv1.putExtra("opened_from_impression", r);
      }
      for (;;)
      {
        startActivity(paramhpv1);
        finish();
        return;
        if ((p != null) && (p.contains("key"))) {
          ((hba)l.a(hba.class)).a(paramInt2).a(1868).d();
        }
        paramhpv1 = BabelGatewayActivity.a(paramInt2, n, null, q, o, p);
      }
    }
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    Object localObject1 = null;
    super.onCreate(paramBundle);
    Object localObject2 = getIntent().getData();
    if (localObject2 == null) {
      ezi.d("Babel", "Invalid uri for conversation Url", new Object[0]);
    }
    label153:
    label200:
    label476:
    label488:
    label649:
    label652:
    for (;;)
    {
      int i = 0;
      if (i != 0) {
        break;
      }
      a(StressMode.at, 2848);
      return;
      String str = ((Uri)localObject2).getQueryParameter("path");
      if (localObject2 != null)
      {
        paramBundle = ((Uri)localObject2).getPathSegments();
        if ((((Uri)localObject2).getHost().equalsIgnoreCase("plus.google.com")) && (paramBundle.size() == 3) && (((String)paramBundle.get(0)).equalsIgnoreCase("hangouts")) && (((String)paramBundle.get(1)).equalsIgnoreCase("app")) && (((String)paramBundle.get(2)).equalsIgnoreCase("emlink")))
        {
          i = 1;
          paramBundle = (Bundle)localObject2;
          if (i != 0)
          {
            paramBundle = (Bundle)localObject2;
            if (!str.isEmpty())
            {
              paramBundle = String.valueOf("https://plus.google.com");
              localObject2 = String.valueOf(str);
              if (((String)localObject2).length() == 0) {
                break label476;
              }
              paramBundle = paramBundle.concat((String)localObject2);
              paramBundle = Uri.parse(paramBundle);
            }
          }
          if (paramBundle == null) {
            break label649;
          }
          localObject2 = paramBundle.getPathSegments();
          str = paramBundle.getHost();
          if ((!str.equalsIgnoreCase("plus.google.com")) || (((List)localObject2).size() != 3) || (!((String)((List)localObject2).get(0)).equalsIgnoreCase("hangouts")) || (!((String)((List)localObject2).get(1)).equalsIgnoreCase("app")) || (!((String)((List)localObject2).get(2)).equalsIgnoreCase("conversation"))) {
            break label488;
          }
          i = 1;
        }
      }
      for (;;)
      {
        if (i == 0) {
          break label652;
        }
        a(paramBundle);
        localObject2 = paramBundle.getPathSegments();
        if ((paramBundle.getHost().equalsIgnoreCase("hangouts.google.com")) && (((List)localObject2).size() == 2) && (((String)((List)localObject2).get(0)).equalsIgnoreCase("chat"))) {
          k = ((String)((List)localObject2).get(1));
        }
        if ((paramBundle.getHost().equalsIgnoreCase("hangouts.google.com")) && (((List)localObject2).size() == 3) && (((String)((List)localObject2).get(0)).equalsIgnoreCase("chat")) && (((String)((List)localObject2).get(1)).equalsIgnoreCase("person"))) {
          n = ((String)((List)localObject2).get(2));
        }
        p = paramBundle.toString();
        i = 1;
        break;
        i = 0;
        break label153;
        paramBundle = new String(paramBundle);
        break label200;
        if ((str.equalsIgnoreCase("hangouts.google.com")) && (((List)localObject2).size() == 1) && (((String)((List)localObject2).get(0)).equalsIgnoreCase("chat"))) {
          i = 1;
        } else if ((str.equalsIgnoreCase("hangouts.google.com")) && (((List)localObject2).size() == 2) && (((String)((List)localObject2).get(0)).equalsIgnoreCase("chat"))) {
          i = 1;
        } else if ((str.equalsIgnoreCase("hangouts.google.com")) && (((List)localObject2).size() == 3) && (((String)((List)localObject2).get(0)).equalsIgnoreCase("chat")) && (((String)((List)localObject2).get(1)).equalsIgnoreCase("person"))) {
          i = 1;
        } else {
          i = 0;
        }
      }
    }
    boolean bool;
    if (!TextUtils.isEmpty(j))
    {
      if (!"_sms_only_account".equals(j)) {
        break label835;
      }
      paramBundle = dvd.d;
      bool = dvi.a();
      ezi.a("Babel", 41 + "URL for SMS only account. Validity: " + bool, new Object[0]);
    }
    for (;;)
    {
      paramBundle = (Bundle)localObject1;
      if (bool) {
        paramBundle = dvd.a(czb.a(j));
      }
      if (paramBundle == null)
      {
        a(StressMode.as, 2849);
        return;
      }
      paramBundle = paramBundle.a();
      for (;;)
      {
        paramBundle = new iaj().b().a(paramBundle).a(iap.class);
        s.a(paramBundle);
        return;
        paramBundle = dvd.d(false);
        if (paramBundle.length == 0)
        {
          startActivity(aal.d(null));
          finish();
          paramBundle = null;
        }
        else if (paramBundle.length == 1)
        {
          paramBundle = dvd.e(paramBundle[0]).a();
        }
        else
        {
          paramBundle = null;
        }
      }
      label835:
      bool = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.ConversationUrlHandlerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */