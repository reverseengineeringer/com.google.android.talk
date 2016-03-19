package com.google.android.apps.hangouts.phone;

import aal;
import aen;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.MenuItem;
import axj;
import bfd;
import bg;
import bkw;
import bz;
import cat;
import cau;
import cbr;
import ccu;
import cgu;
import dhm;
import dvd;
import dvv;
import dvx;
import epc;
import hbs;
import hpu;
import hqo;
import ihb;
import ilh;
import qe;

public class EditAudienceActivity
  extends cbr
  implements cau, dvx
{
  private final hpu n = new hqo(this, B).a(A);
  private bfd o;
  
  public EditAudienceActivity()
  {
    new epc(this, B).b(A);
  }
  
  public void a()
  {
    setResult(-1);
    finish();
  }
  
  public void a(String paramString, int paramInt, boolean paramBoolean, ihb paramihb)
  {
    if (paramBoolean)
    {
      startActivity(aal.a(new cgu(o.a(), 1).a("conversation").b(paramString).a(), aal.a(this, paramihb), true, 61, SystemClock.elapsedRealtime()));
      paramString = new Intent();
      paramString.putExtra("new_conversation_created", true);
      setResult(-1, paramString);
    }
    for (;;)
    {
      paramString = new Intent();
      paramString.putExtra("new_conversation_created", true);
      setResult(-1, paramString);
      finish();
      return;
      paramihb = aal.a(o.g(), paramString, paramInt);
      Object localObject = new axj(paramString, paramInt);
      d = true;
      k = getIntent().getIntExtra("opened_from_impression", 0);
      paramihb.putExtra("conversation_parameters", (Parcelable)localObject);
      localObject = (Intent)getIntent().getParcelableExtra("share_intent");
      if (localObject != null)
      {
        ((Intent)localObject).putExtra("conversation_id", paramString);
        paramihb.putExtra("share_intent", (Parcelable)localObject);
      }
      startActivity(paramihb);
    }
  }
  
  protected boolean a(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      finish();
      return true;
    }
    return super.a(paramMenuItem);
  }
  
  public void b(dvv paramdvv)
  {
    boolean bool = true;
    if (paramdvv.b() == 1) {}
    for (;;)
    {
      hbs.a("Expected condition to be true", bool);
      paramdvv = o;
      Intent localIntent = new Intent(aal.oJ, CallContactPickerActivity.class);
      localIntent.putExtra("com.google.android.apps.hangouts.voiceCallActionMode", 2);
      if (paramdvv != null) {
        localIntent.putExtra("account_id", paramdvv.g());
      }
      startActivityForResult(localIntent, 1001);
      return;
      bool = false;
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 5100) && (paramInt2 == -1)) {
      b((dvv)paramIntent.getParcelableExtra("com.google.android.apps.hangouts.voiceCallActionInfo"));
    }
    while ((paramInt1 != 1001) || (paramInt2 != -1)) {
      return;
    }
    a();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    o = dvd.e(n.a());
    setContentView(aal.fD);
    bg localbg = C_();
    Object localObject = (cat)localbg.a(aen.bM);
    paramBundle = (Bundle)localObject;
    if (localObject == null)
    {
      paramBundle = (bkw)getIntent().getSerializableExtra("conversation_type");
      localObject = getIntent().getStringExtra("conversation_id");
      dhm localdhm = (dhm)getIntent().getSerializableExtra("edit_audience_mode");
      ihb localihb = (ihb)getIntent().getSerializableExtra("audience");
      paramBundle = ((ccu)ilh.a(this, ccu.class)).a(paramBundle, (String)localObject, localdhm, localihb);
      localbg.a().a(aen.bM, paramBundle, cat.class.getName()).b();
    }
    paramBundle.a(this);
    setTitle(null);
  }
  
  protected void onStart()
  {
    super.onStart();
    qe localqe = g();
    if (localqe != null) {
      localqe.a(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.EditAudienceActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */