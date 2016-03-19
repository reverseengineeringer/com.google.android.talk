package com.google.android.libraries.componentview.services.internal.glide;

import aja;
import apg;
import aph;
import com.google.android.libraries.componentview.services.application.Fetcher;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;

public class GlideUrlLoader
  implements apg<ImageUrl, InputStream>
{
  final Fetcher a;
  final ExecutorService b;
  
  public GlideUrlLoader(Fetcher paramFetcher, ExecutorService paramExecutorService)
  {
    a = paramFetcher;
    b = paramExecutorService;
  }
  
  public aph<InputStream> a(int paramInt, aja paramaja)
  {
    return new aph(paramInt.a(), new GlideUrlLoader.ImageDataFetcher(this, paramInt));
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.internal.glide.GlideUrlLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */