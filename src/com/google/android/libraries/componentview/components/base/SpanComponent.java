package com.google.android.libraries.componentview.components.base;

import android.view.View;
import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.LogInfo;
import com.google.android.libraries.componentview.components.base.api.nano.SpanProto.SpanArgs;
import com.google.android.libraries.componentview.core.ComponentInterface;
import com.google.android.libraries.componentview.internal.NavigationHelper;

public class SpanComponent
  implements ComponentInterface
{
  SpanProto.SpanArgs a;
  final ComponentsProto.Component b;
  final NavigationHelper c;
  
  public View a()
  {
    return null;
  }
  
  public ComponentsProto.LogInfo b()
  {
    return b.b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.SpanComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */