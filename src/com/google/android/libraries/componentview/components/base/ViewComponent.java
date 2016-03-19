package com.google.android.libraries.componentview.components.base;

import android.content.Context;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import com.google.android.libraries.componentview.api.external.Readyable.ReadyInfo;
import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.LogInfo;
import com.google.android.libraries.componentview.core.ComponentInterface;
import lbl;

public class ViewComponent<V extends View>
  implements View.OnAttachStateChangeListener, ComponentInterface
{
  public final Context a;
  public final ComponentsProto.Component b;
  public V c;
  public lbl<Readyable.ReadyInfo> d;
  
  public final View a()
  {
    return c;
  }
  
  public final ComponentsProto.LogInfo b()
  {
    return b.b;
  }
  
  public void onViewAttachedToWindow(View paramView) {}
  
  public void onViewDetachedFromWindow(View paramView) {}
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.ViewComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */