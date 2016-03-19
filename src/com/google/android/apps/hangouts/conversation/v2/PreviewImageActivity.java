package com.google.android.apps.hangouts.conversation.v2;

import aal;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.VideoView;
import blb;
import brd;
import bre;
import com.google.android.libraries.quantum.fab.FloatingActionButton;
import ezi;
import hpu;
import hqo;
import ilv;
import qe;

public class PreviewImageActivity
  extends ilv
{
  public View j;
  public ImageView k;
  public VideoView l;
  public blb m;
  public Boolean n;
  private final hpu o = new hqo(this, B).a(A);
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.ke);
    paramBundle = (Toolbar)findViewById(aal.jX);
    a(paramBundle);
    g().a(true);
    g().a();
    setTitle("");
    paramBundle.bringToFront();
    paramBundle = getIntent();
    Object localObject = paramBundle.getStringExtra("photo_url");
    if (paramBundle.hasExtra("is_video")) {
      n = Boolean.valueOf(paramBundle.getBooleanExtra("is_video", false));
    }
    localObject = Uri.parse((String)localObject);
    paramBundle = String.valueOf(((Uri)localObject).toString());
    if (paramBundle.length() != 0) {}
    for (paramBundle = "Starting preview for: ".concat(paramBundle);; paramBundle = new String("Starting preview for: "))
    {
      ezi.c("Babel_PreviewImage", paramBundle, new Object[0]);
      j = findViewById(aal.kb);
      j.bringToFront();
      j.setVisibility(8);
      new bre(this, this, o.a(), (Uri)localObject).execute(new Void[0]);
      k = ((ImageView)findViewById(aal.jY));
      l = ((VideoView)findViewById(aal.ka));
      ((FloatingActionButton)findViewById(aal.jZ)).setOnClickListener(new brd(this));
      return;
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    super.onBackPressed();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.conversation.v2.PreviewImageActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */