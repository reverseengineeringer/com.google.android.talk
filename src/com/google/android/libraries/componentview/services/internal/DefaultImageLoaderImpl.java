package com.google.android.libraries.componentview.services.internal;

import android.content.Context;
import android.util.Base64;
import android.widget.ImageView;
import com.google.android.libraries.componentview.api.external.Readyable.ReadyInfo;
import com.google.android.libraries.componentview.core.Utils;
import com.google.android.libraries.componentview.inject.annotations.ExecutorType.BACKGROUND;
import com.google.android.libraries.componentview.services.application.Fetcher;
import java.net.URI;
import java.util.concurrent.ExecutorService;
import lau;
import lbb;
import lbl;

public class DefaultImageLoaderImpl
  implements ImageLoader
{
  private final Fetcher a;
  private final ExecutorService b;
  private final Context c;
  
  public DefaultImageLoaderImpl(Fetcher paramFetcher, @ExecutorType.BACKGROUND ExecutorService paramExecutorService, Context paramContext)
  {
    a = paramFetcher;
    b = paramExecutorService;
    c = paramContext;
  }
  
  public lbb<Readyable.ReadyInfo> a(String paramString, ImageView paramImageView)
  {
    if (paramString.startsWith("data:image/")) {
      return a(Base64.decode(paramString.substring(paramString.indexOf("base64,") + 7), 0), paramImageView);
    }
    lbl locallbl = new lbl();
    lau.a(a.a(URI.create(paramString), true), new DefaultImageLoaderImpl.1(this, locallbl, paramImageView), b);
    return locallbl;
  }
  
  public lbb<Readyable.ReadyInfo> a(byte[] paramArrayOfByte, ImageView paramImageView)
  {
    lbl locallbl = new lbl();
    b(paramArrayOfByte, paramImageView);
    locallbl.b(new Readyable.ReadyInfo());
    return locallbl;
  }
  
  void b(byte[] paramArrayOfByte, ImageView paramImageView)
  {
    paramImageView.setImageBitmap(Utils.a(paramArrayOfByte, Utils.a(c)));
    paramImageView.requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.internal.DefaultImageLoaderImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */