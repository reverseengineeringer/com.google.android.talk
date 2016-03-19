package com.google.android.libraries.componentview.components.base;

import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import com.google.android.libraries.componentview.components.base.api.nano.LinkProto.LinkArgs;
import com.google.android.libraries.componentview.internal.NavigationHelper;

public class LinkControllerComponent
  extends AbstractControllerComponent<LinkProto.LinkArgs>
  implements View.OnClickListener
{
  private final NavigationHelper d;
  
  public void onClick(View paramView)
  {
    d.a(a).c, b.b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.LinkControllerComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */