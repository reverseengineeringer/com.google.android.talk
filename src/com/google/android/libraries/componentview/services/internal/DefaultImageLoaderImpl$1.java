package com.google.android.libraries.componentview.services.internal;

import android.util.Log;
import android.widget.ImageView;
import com.google.android.libraries.componentview.api.external.Readyable.ReadyInfo;
import com.google.android.libraries.componentview.services.application.Fetcher.Response;
import lat;
import lbl;

class DefaultImageLoaderImpl$1
  implements lat<Fetcher.Response>
{
  DefaultImageLoaderImpl$1(DefaultImageLoaderImpl paramDefaultImageLoaderImpl, lbl paramlbl, ImageView paramImageView) {}
  
  public void a(Fetcher.Response paramResponse)
  {
    if ((paramResponse == null) || (!c))
    {
      Log.e("DefaultImageLoaderImpl", "Fetch failed with no response");
      a.a(new RuntimeException("Fetch failed with no response"));
      return;
    }
    c.b(b, b);
    a.b(new Readyable.ReadyInfo());
  }
  
  public void a(Throwable paramThrowable)
  {
    Log.e("DefaultImageLoaderImpl", "Fetch failed for url", paramThrowable);
    a.a(new RuntimeException("Fetch failed"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.internal.DefaultImageLoaderImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */