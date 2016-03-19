package com.google.android.libraries.componentview.services;

import android.content.Context;
import com.google.android.libraries.componentview.inject.annotations.ExecutorType.BACKGROUND;
import com.google.android.libraries.componentview.services.application.Fetcher;
import com.google.android.libraries.componentview.services.internal.DefaultImageLoaderImpl;
import com.google.android.libraries.componentview.services.internal.ImageLoader;
import com.google.android.libraries.componentview.services.internal.glide.GlideImageLoaderImpl;
import java.util.concurrent.ExecutorService;

public final class CoreServicesModule$ImageLoaderModule
{
  private final boolean a = true;
  
  public CoreServicesModule$ImageLoaderModule()
  {
    this((byte)0);
  }
  
  private CoreServicesModule$ImageLoaderModule(byte paramByte) {}
  
  ImageLoader a(Fetcher paramFetcher, @ExecutorType.BACKGROUND ExecutorService paramExecutorService, Context paramContext)
  {
    if (a) {
      return new GlideImageLoaderImpl(paramFetcher, paramExecutorService, paramContext);
    }
    return new DefaultImageLoaderImpl(paramFetcher, paramExecutorService, paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.CoreServicesModule.ImageLoaderModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */