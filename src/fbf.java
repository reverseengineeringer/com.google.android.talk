import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.views.ConversationListItemView;

public final class fbf
  implements View.OnClickListener
{
  public fbf(ConversationListItemView paramConversationListItemView) {}
  
  public void onClick(View paramView)
  {
    boolean bool;
    int i;
    if (a.i == 0)
    {
      bool = true;
      if (!a.p()) {
        break label98;
      }
      i = 1;
      label25:
      if (!bool) {
        break label103;
      }
    }
    label98:
    label103:
    for (int j = 57;; j = 58)
    {
      if ((a.j != null) && (a.f != null))
      {
        paramView = a.j;
        String str = a.f;
        int k = a.g;
        paramView.a(str, bool, i, j);
      }
      return;
      bool = false;
      break;
      i = 2;
      break label25;
    }
  }
}

/* Location:
 * Qualified Name:     fbf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */