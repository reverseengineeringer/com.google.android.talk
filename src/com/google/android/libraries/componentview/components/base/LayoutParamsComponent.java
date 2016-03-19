package com.google.android.libraries.componentview.components.base;

import android.view.View;
import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.LogInfo;
import com.google.android.libraries.componentview.core.ComponentInterface;
import com.google.android.libraries.componentview.core.WrapperComponent;

public class LayoutParamsComponent
  implements WrapperComponent
{
  public ComponentInterface a;
  private final ComponentsProto.Component b;
  
  public View a()
  {
    if (a == null) {
      return null;
    }
    return a.a();
  }
  
  public ComponentsProto.LogInfo b()
  {
    return b.b;
  }
  
  public ComponentInterface c()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.LayoutParamsComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */