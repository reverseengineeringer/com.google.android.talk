package com.google.android.libraries.componentview.services.internal.glide;

import android.content.Context;
import apg;
import api;
import apo;
import com.google.android.libraries.componentview.services.application.Fetcher;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;

public class GlideUrlLoader$Factory
  implements api<ImageUrl, InputStream>
{
  static Fetcher a;
  static ExecutorService b;
  
  public apg<ImageUrl, InputStream> a(Context paramContext, apo paramapo)
  {
    return new GlideUrlLoader(a, b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.internal.glide.GlideUrlLoader.Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */