package com.google.android.libraries.componentview.components.elements;

import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.libraries.componentview.components.base.ViewComponent;
import com.google.android.libraries.componentview.components.elements.api.nano.CardProto.CardArgs;
import com.google.android.libraries.componentview.core.ComponentInterface;
import com.google.android.libraries.componentview.core.ContainerInterface;
import com.google.android.libraries.componentview.core.Utils;
import com.google.android.libraries.componentview.services.internal.Graft;
import com.google.android.libraries.componentview.services.internal.Graft.Action;
import gvm;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kxr;

public class CardComponent
  extends ViewComponent<gvm>
  implements Expandable, ContainerInterface
{
  CardProto.CardArgs e;
  boolean f;
  private final List<ComponentInterface> g;
  private int h;
  private List<CardComponent.CardChild> i;
  
  private List<Graft> a()
  {
    Object localObject1 = g.iterator();
    int m = 0;
    Object localObject2;
    boolean bool;
    if (((Iterator)localObject1).hasNext())
    {
      localObject2 = Utils.a((ComponentInterface)((Iterator)localObject1).next());
      if (!(localObject2 instanceof Expandable.ExpansionControl)) {
        break label436;
      }
      ((Expandable.ExpansionControl)localObject2).a(this);
      ((Expandable.ExpansionControl)localObject2).a(bool);
    }
    label325:
    label436:
    for (int k = 1;; k = m)
    {
      m = k;
      break;
      localObject1 = new ArrayList();
      localObject2 = new ArrayList();
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = i.iterator();
      int j;
      if (localIterator.hasNext())
      {
        CardComponent.CardChild localCardChild = (CardComponent.CardChild)localIterator.next();
        if ((a instanceof CardLayoutParamsComponent)) {
          if (((b) && (!bool)) || ((c) && (bool))) {
            k = 1;
          }
        }
        View localView;
        for (;;)
        {
          localView = a.a();
          int n = localView.getVisibility();
          if (((k == 0) || (n == 0)) && ((k != 0) || (n != 0))) {
            break;
          }
          if (k == 0) {
            break label325;
          }
          localView.setVisibility(0);
          if ((j != 0) && (localView.getParent() != null)) {
            ((List)localObject1).add(localView);
          }
          ((List)localObject2).add(new Graft(a.b(), Graft.Action.a));
          break;
          k = 0;
          continue;
          if ((m != 0) && (!(Utils.a(a) instanceof Expandable.ExpansionControl)))
          {
            Log.e("CardComponent", "Children of cards with an expander need to be wrapped in a <card-layout-params> (unless they are an expander). Hiding the child.");
            k = 0;
          }
          else
          {
            k = 1;
          }
        }
        if ((j == 0) || (localView.getParent() == null)) {
          localView.setVisibility(8);
        }
        for (;;)
        {
          ((List)localObject2).add(new Graft(a.b(), Graft.Action.b));
          break;
          localArrayList.add(localView);
        }
      }
      Runnable localRunnable;
      if (j != 0)
      {
        f = true;
        ((gvm)c).getViewTreeObserver().addOnPreDrawListener(new CardComponent.3(this, j, (List)localObject1, localArrayList, localRunnable));
        return (List<Graft>)localObject2;
      }
      localRunnable.run();
      return (List<Graft>)localObject2;
    }
  }
  
  public Expandable.ExpansionResult a(boolean paramBoolean)
  {
    if (f) {
      return new Expandable.ExpansionResult(false, kxr.a);
    }
    if (e.d() == paramBoolean) {
      return new Expandable.ExpansionResult(true, kxr.a);
    }
    if (paramBoolean) {}
    for (List localList = a(true, h, new CardComponent.1(this));; localList = a(false, h, new CardComponent.2(this))) {
      return new Expandable.ExpansionResult(true, localList);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.CardComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */