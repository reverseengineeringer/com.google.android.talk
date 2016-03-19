package com.google.android.libraries.componentview.components.elements;

import android.graphics.Bitmap;
import com.google.android.libraries.componentview.core.Utils;
import com.google.android.libraries.componentview.services.application.Fetcher.Response;
import knj;

class CrushinatorImageComponent$2
  implements knj<Fetcher.Response, Bitmap>
{
  public Bitmap a(Fetcher.Response paramResponse)
  {
    if ((paramResponse == null) || (!c)) {
      return null;
    }
    return Utils.a(b, 1.0F);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.CrushinatorImageComponent.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */