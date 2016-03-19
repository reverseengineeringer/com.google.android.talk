package com.google.android.libraries.componentview.services.internal.glide;

import ahs;
import air;
import ajf;
import ajg;
import android.util.Log;
import aot;
import com.google.android.libraries.componentview.services.application.Fetcher;
import java.io.InputStream;
import java.net.URL;
import lau;

class GlideUrlLoader$ImageDataFetcher
  implements ajf<InputStream>
{
  private final ImageUrl b;
  
  public GlideUrlLoader$ImageDataFetcher(GlideUrlLoader paramGlideUrlLoader, ImageUrl paramImageUrl)
  {
    b = paramImageUrl;
  }
  
  public void a() {}
  
  public void a(ahs paramahs, ajg<? super InputStream> paramajg)
  {
    paramahs = new GlideUrlLoader.ImageDataFetcher.ImageCallback(this, paramajg);
    try
    {
      lau.a(a.a.a(b.a().a().toURI(), true), paramahs, a.b);
      return;
    }
    catch (Exception paramahs)
    {
      Log.e("ImageDataFetcher", "Malformed URL", paramahs);
      paramajg.a(null);
    }
  }
  
  public void b() {}
  
  public air c()
  {
    return air.b;
  }
  
  public Class<InputStream> d()
  {
    return InputStream.class;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.internal.glide.GlideUrlLoader.ImageDataFetcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */