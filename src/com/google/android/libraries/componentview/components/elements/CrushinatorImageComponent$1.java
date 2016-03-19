package com.google.android.libraries.componentview.components.elements;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.google.android.libraries.componentview.api.external.Readyable.ReadyInfo;
import com.google.android.libraries.componentview.components.elements.api.nano.CrushinatorImageArgsProto.CrushinatorImageArgs;
import gvz;
import lat;
import lbl;

class CrushinatorImageComponent$1
  implements lat<Bitmap>
{
  public void a(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      paramBitmap = new gvz(paramBitmap, a.b, a.d());
      b.e.setImageDrawable(paramBitmap);
      paramBitmap.start();
      b.d.b(new Readyable.ReadyInfo());
    }
  }
  
  public void a(Throwable paramThrowable) {}
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.CrushinatorImageComponent.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */