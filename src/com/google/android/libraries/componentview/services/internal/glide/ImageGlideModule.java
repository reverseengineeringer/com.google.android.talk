package com.google.android.libraries.componentview.services.internal.glide;

import ahl;
import aht;
import ais;
import atw;
import auk;
import com.google.android.apps.common.proguard.UsedByReflection;
import java.io.InputStream;

@UsedByReflection
public class ImageGlideModule
  implements atw
{
  private static final ais a = ais.a;
  
  public void a(ahl paramahl)
  {
    paramahl.a(auk.b(a));
  }
  
  public void a(aht paramaht)
  {
    paramaht.c(ImageUrl.class, InputStream.class, new GlideUrlLoader.Factory());
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.internal.glide.ImageGlideModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */