package com.google.android.libraries.componentview.components.elements;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.LogInfo;
import com.google.android.libraries.componentview.components.elements.views.CarouselView.OnScrollCallback;
import com.google.android.libraries.componentview.core.Utils;
import com.google.android.libraries.componentview.services.application.Logger;
import kxm;

class CarouselComponent$2
  implements CarouselView.OnScrollCallback
{
  public void a(int paramInt)
  {
    c.k = paramInt;
    if ((a) && (!c.j) && (Math.abs(paramInt - c.i) > (int)(Utils.a(c.a) * 50.0F)))
    {
      c.j = true;
      c.e.a(b.f(), "", b.g(), kxm.b);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.CarouselComponent.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */