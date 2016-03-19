package com.google.android.apps.hangouts.phone;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import bfd;
import cj;
import ck;
import com.google.android.apps.hangouts.hangout.StressMode;
import dhq;
import dvd;
import ezi;
import fe;
import imi;

public class BabelProfileActionActivity
  extends imi
  implements ck<Cursor>
{
  private static final String[] j = { "account_name", "sourceid", "data5", "display_name" };
  
  public void a(Cursor paramCursor)
  {
    if ((paramCursor == null) || (!paramCursor.moveToFirst()))
    {
      Toast.makeText(this, StressMode.hJ, 0).show();
      finish();
      return;
    }
    String str = paramCursor.getString(1);
    if ((TextUtils.isEmpty(str)) || (!str.startsWith("g:")))
    {
      Toast.makeText(this, StressMode.hJ, 0).show();
      finish();
      return;
    }
    str = str.substring(2);
    Object localObject = dvd.a(paramCursor.getString(0), null);
    int i;
    if (localObject != null)
    {
      i = ((bfd)localObject).g();
      localObject = paramCursor.getString(2);
      paramCursor = paramCursor.getString(3);
      if (!"conversation".equals(localObject)) {
        break label158;
      }
      paramCursor = BabelGatewayActivity.a(i, str, paramCursor, null, false, null);
      paramCursor.addFlags(33554432);
      startActivity(paramCursor);
    }
    for (;;)
    {
      finish();
      return;
      i = -1;
      break;
      label158:
      if (!"hangout".equals(localObject)) {
        break label195;
      }
      paramCursor = BabelGatewayActivity.a(i, str, paramCursor, null, null, 51, 0);
      paramCursor.addFlags(33554432);
      startActivity(paramCursor);
    }
    label195:
    paramCursor = String.valueOf(localObject);
    if (paramCursor.length() != 0) {}
    for (paramCursor = "Unrecognized profile command: ".concat(paramCursor);; paramCursor = new String("Unrecognized profile command: "))
    {
      ezi.e("Babel", paramCursor, new Object[0]);
      break;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getData();
    if (paramBundle == null)
    {
      finish();
      return;
    }
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("data_uri", paramBundle);
    f().a(0, localBundle, this);
  }
  
  public fe<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new dhq(this, null, (Uri)paramBundle.getParcelable("data_uri"), j, null, null, null);
  }
  
  public void onLoaderReset(fe<Cursor> paramfe) {}
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.BabelProfileActionActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */