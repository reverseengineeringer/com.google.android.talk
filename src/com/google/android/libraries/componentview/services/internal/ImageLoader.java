package com.google.android.libraries.componentview.services.internal;

import android.widget.ImageView;
import com.google.android.libraries.componentview.api.external.Readyable.ReadyInfo;
import lbb;

public abstract interface ImageLoader
{
  public abstract lbb<Readyable.ReadyInfo> a(String paramString, ImageView paramImageView);
  
  public abstract lbb<Readyable.ReadyInfo> a(byte[] paramArrayOfByte, ImageView paramImageView);
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.services.internal.ImageLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */