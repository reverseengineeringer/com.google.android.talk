package com.google.android.libraries.componentview.components.sections;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.LogInfo;
import com.google.android.libraries.componentview.components.base.ViewComponent;
import com.google.android.libraries.componentview.components.elements.Expandable;
import com.google.android.libraries.componentview.components.elements.Expandable.ExpansionControl;
import com.google.android.libraries.componentview.components.elements.Expandable.ExpansionResult;
import com.google.android.libraries.componentview.components.sections.views.FloatingActionButton;
import com.google.android.libraries.componentview.core.Utils;
import com.google.android.libraries.componentview.services.application.Logger;
import com.google.android.libraries.componentview.services.internal.Graft;
import fii;
import java.util.List;
import kxm;

public class FabFooterComponent
  extends ViewComponent<FrameLayout>
  implements View.OnClickListener, Expandable.ExpansionControl
{
  private static final int e = Utils.a("0.922, 0.922, 0.922, 1");
  private static final int f = Utils.a("0.96, 0.96, 0.96, 1");
  private static final int g = Utils.a("0, 0, 0, 0.54");
  private FloatingActionButton h;
  private TextView i;
  private String j;
  private String k;
  private boolean l;
  private Expandable m;
  private ComponentsProto.LogInfo n;
  private final Logger o;
  
  private void b(boolean paramBoolean)
  {
    Object localObject;
    if (paramBoolean)
    {
      localObject = k;
      if (i != null)
      {
        TextView localTextView = i;
        if (localObject == null) {
          break label58;
        }
        label26:
        localTextView.setText((CharSequence)localObject);
      }
      localObject = h;
      if (!paramBoolean) {
        break label64;
      }
    }
    label58:
    label64:
    for (float f1 = 180.0F;; f1 = 0.0F)
    {
      ((FloatingActionButton)localObject).setRotation(f1);
      return;
      localObject = j;
      break;
      localObject = "";
      break label26;
    }
  }
  
  public void a(Expandable paramExpandable)
  {
    m = paramExpandable;
  }
  
  public void a(boolean paramBoolean)
  {
    l = paramBoolean;
    b(paramBoolean);
  }
  
  public void onClick(View paramView)
  {
    paramView = null;
    boolean bool2 = true;
    Object localObject1;
    boolean bool1;
    label55:
    Object localObject2;
    Logger localLogger;
    label97:
    String str;
    if (m != null)
    {
      boolean bool3 = l;
      localObject1 = m;
      if (bool3) {
        break label137;
      }
      bool1 = true;
      localObject1 = ((Expandable)localObject1).a(bool1);
      if (((Expandable.ExpansionResult)localObject1).a())
      {
        if (bool3) {
          break label142;
        }
        bool1 = bool2;
        l = bool1;
        b(l);
        localObject2 = ((Expandable.ExpansionResult)localObject1).b();
        localLogger = o;
        if (n == null) {
          break label147;
        }
        localObject1 = n.f();
        str = Graft.a((List)localObject2);
        ComponentsProto.LogInfo localLogInfo = n;
        if (localLogInfo == null) {
          break label153;
        }
        paramView = localLogInfo.g();
      }
    }
    for (;;)
    {
      localLogger.a((String)localObject1, str, paramView, kxm.b);
      return;
      label137:
      bool1 = false;
      break;
      label142:
      bool1 = false;
      break label55;
      label147:
      localObject1 = null;
      break label97;
      label153:
      localObject2 = ((Graft)((List)localObject2).get(fii.a(0, ((List)localObject2).size()))).a();
      if (localObject2 != null) {
        paramView = ((ComponentsProto.LogInfo)localObject2).g();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.sections.FabFooterComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */