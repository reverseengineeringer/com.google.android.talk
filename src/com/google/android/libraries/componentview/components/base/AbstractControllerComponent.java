package com.google.android.libraries.componentview.components.base;

import android.view.View;
import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.LogInfo;
import com.google.android.libraries.componentview.core.ComponentInterface;
import com.google.android.libraries.componentview.core.WrapperComponent;
import lyi;

public class AbstractControllerComponent<V extends lyi>
  implements WrapperComponent
{
  public final V a;
  public final ComponentsProto.Component b;
  public ComponentInterface c;
  
  public View a()
  {
    return c.a();
  }
  
  public ComponentsProto.LogInfo b()
  {
    return b.b;
  }
  
  public ComponentInterface c()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.AbstractControllerComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */