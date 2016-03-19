package com.google.android.libraries.componentview.services.internal.glide;

import air;
import android.graphics.drawable.Drawable;
import android.util.Log;
import auj;
import auw;
import com.google.android.libraries.componentview.api.external.Readyable.ReadyInfo;
import lbl;

public class GlideImageLoaderImpl$ImageListener
  implements auj<Drawable>
{
  private final String b;
  private final lbl<Readyable.ReadyInfo> c;
  
  GlideImageLoaderImpl$ImageListener(String paramString, lbl<Readyable.ReadyInfo> paramlbl)
  {
    b = paramlbl;
    lbl locallbl;
    c = locallbl;
  }
  
  public boolean a(auw<Drawable> paramauw, boolean paramBoolean)
  {
    paramBoolean = String.valueOf(b);
    if (paramBoolean.length() != 0) {}
    for (paramBoolean = "Glide load failed for ".concat(paramBoolean);; paramBoolean = new String("Glide load failed for "))
    {
      Log.e("GlideImageLoader", paramBoolean, paramauw);
      c.a(new RuntimeException("Glide load failed"));
      return false;
    }
  }
  
  public boolean b(Object paramObject, auw<Drawable> paramauw, air paramair, boolean paramBoolean)
  {
    c.b(new Readyable.ReadyInfo());
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.internal.glide.GlideImageLoaderImpl.ImageListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */