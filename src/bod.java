import android.view.View;
import android.widget.AbsListView;

final class bod
  implements bje
{
  bod(bng parambng, bfd parambfd, boolean paramBoolean1, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean2, int paramInt4, View paramView, AbsListView paramAbsListView) {}
  
  public void a(bjb parambjb)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (j.aK) {
      aal.a(a, 2978);
    }
    if (fcu.f) {
      aal.a(a, 2979);
    }
    int k;
    int m;
    int n;
    if (b)
    {
      aal.a(a, 2758, c - d - e);
      if (d == 0) {
        aal.a(a, 2977);
      }
      if (aal.g(j.d()))
      {
        aal.a(a, 2942);
        if (j.aI.size() > 1) {
          aal.a(a, 2946);
        }
        parambjb = String.valueOf("message list loaded without bottom message showing, first message showing: ");
        k = d;
        m = d;
        n = e;
        i1 = c;
        i2 = j.d();
        if (j.aI.size() <= 1) {
          break label356;
        }
        ezi.c("Babel_Scroll", String.valueOf(parambjb).length() + 118 + parambjb + k + ", last message showing: " + (m + n - 1) + ", total: " + i1 + ", transport: " + i2 + ", merged conversation? " + bool1, new Object[0]);
      }
    }
    label356:
    while (!f) {
      for (;;)
      {
        int i1;
        int i2;
        if (aal.a(j.getContext(), "babel_crash_on_conversation_scroll_error", false)) {
          hbs.a("message list not aligned");
        }
        return;
        if (aal.e(j.d()))
        {
          aal.a(a, 2943);
        }
        else if (aal.h(j.d()))
        {
          aal.a(a, 2944);
        }
        else
        {
          aal.a(a, 2945);
          continue;
          bool1 = false;
        }
      }
    }
    aal.a(a, 2759, g);
    if (aal.g(j.d()))
    {
      aal.a(a, 2948);
      label406:
      if (j.aI.size() > 1) {
        aal.a(a, 2952);
      }
      parambjb = String.valueOf("message list loaded with bottom message not aligned, last bottom: ");
      k = h.getBottom();
      m = i.getBottom();
      n = j.d();
      if (j.aI.size() <= 1) {
        break label613;
      }
    }
    label613:
    for (bool1 = bool2;; bool1 = false)
    {
      ezi.c("Babel_Scroll", String.valueOf(parambjb).length() + 87 + parambjb + k + ", listBottom: " + m + ", transport: " + n + ", merged conversation?" + bool1, new Object[0]);
      break;
      if (aal.e(j.d()))
      {
        aal.a(a, 2949);
        break label406;
      }
      if (aal.h(j.d()))
      {
        aal.a(a, 2950);
        break label406;
      }
      aal.a(a, 2951);
      break label406;
    }
  }
}

/* Location:
 * Qualified Name:     bod
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */