package com.google.android.libraries.stitch.incompat;

import android.content.Intent;
import android.os.Bundle;
import au;
import ba;
import ilp;
import imy;

public final class PlatformBugActivity
  extends ba
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (!getIntent().hasExtra("extra_error_type")) {
      throw new IllegalStateException("This needs a type to tell the user about!");
    }
    ((imy)new ilp(this, imy.class).a(getIntent().getStringExtra("extra_error_type"))).b().a(C_(), "dialog");
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.stitch.incompat.PlatformBugActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */