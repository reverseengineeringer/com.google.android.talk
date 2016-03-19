package com.google.android.libraries.componentview.services.internal.glide;

import ahu;
import ahw;
import android.content.Context;
import android.widget.ImageView;
import atr;
import com.google.android.libraries.componentview.api.external.Readyable.ReadyInfo;
import com.google.android.libraries.componentview.inject.annotations.ExecutorType.BACKGROUND;
import com.google.android.libraries.componentview.services.application.Fetcher;
import com.google.android.libraries.componentview.services.internal.ImageLoader;
import java.util.concurrent.ExecutorService;
import lbb;
import lbl;

public class GlideImageLoaderImpl
  implements ImageLoader
{
  private final Context a;
  
  public GlideImageLoaderImpl(Fetcher paramFetcher, @ExecutorType.BACKGROUND ExecutorService paramExecutorService, Context paramContext)
  {
    GlideUrlLoader.Factory.a = paramFetcher;
    GlideUrlLoader.Factory.b = paramExecutorService;
    a = paramContext;
  }
  
  public lbb<Readyable.ReadyInfo> a(String paramString, ImageView paramImageView)
  {
    lbl locallbl = new lbl();
    if (paramString.startsWith("data:image/")) {
      localObject = a;
    }
    for (Object localObject = atr.a.a((Context)localObject).a(paramString);; localObject = atr.a.a((Context)localObject).a(new ImageUrl(paramString)))
    {
      ((ahu)localObject).a(new GlideImageLoaderImpl.ImageListener(this, paramString, locallbl)).a(paramImageView);
      return locallbl;
      localObject = a;
    }
  }
  
  public lbb<Readyable.ReadyInfo> a(byte[] paramArrayOfByte, ImageView paramImageView)
  {
    lbl locallbl = new lbl();
    Context localContext = a;
    atr.a.a(localContext).h().a(paramArrayOfByte).a(paramImageView);
    locallbl.b(new Readyable.ReadyInfo());
    return locallbl;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.internal.glide.GlideImageLoaderImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */