package com.google.android.libraries.componentview.services.internal.glide;

import ajg;
import android.util.Log;
import com.google.android.libraries.componentview.services.application.Fetcher.Response;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import lat;

class GlideUrlLoader$ImageDataFetcher$ImageCallback
  implements lat<Fetcher.Response>
{
  ajg<? super InputStream> a;
  
  GlideUrlLoader$ImageDataFetcher$ImageCallback(ajg<? super InputStream> paramajg)
  {
    ajg localajg;
    a = localajg;
  }
  
  public void a(Fetcher.Response paramResponse)
  {
    if ((paramResponse == null) || (!c))
    {
      Log.e("ImageDataFetcher", "Fetch failed with no response");
      a.a(null);
      return;
    }
    paramResponse = new ByteArrayInputStream(b);
    a.a(paramResponse);
  }
  
  public void a(Throwable paramThrowable)
  {
    Log.e("ImageDataFetcher", "Fetch failed", paramThrowable);
    a.a(null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.internal.glide.GlideUrlLoader.ImageDataFetcher.ImageCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */