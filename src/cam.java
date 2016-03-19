import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.apps.hangouts.fragments.ConversationListFragment;
import com.google.android.apps.hangouts.fragments.ConversationListFragment.InviteListItem;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.views.ConversationListItemView;
import com.google.android.apps.hangouts.views.ConversationListItemWrapper;

public final class cam
  extends dhp
{
  private final Context k;
  private final bfd l;
  private final ConversationListFragment m;
  private long n = Long.MAX_VALUE;
  private long o = 0L;
  private long p = 0L;
  
  public cam(ConversationListFragment paramConversationListFragment1, Context paramContext, bfd parambfd, ConversationListFragment paramConversationListFragment2)
  {
    super(paramContext, null);
    k = paramContext;
    l = parambfd;
    m = paramConversationListFragment2;
  }
  
  private void b(View paramView, Cursor paramCursor)
  {
    long l1 = aal.b(k, l.g());
    View localView = ConversationListFragment.b(paramView);
    Object localObject = paramCursor.getString(23);
    paramView = paramCursor.getString(19);
    if ((paramView == null) || (localObject == null)) {
      return;
    }
    localObject = ((String)localObject).split("\\|");
    String[] arrayOfString = paramView.split("\\|");
    StringBuilder localStringBuilder = new StringBuilder();
    int i = Integer.MAX_VALUE;
    int i1 = localObject.length - 1;
    CharSequence localCharSequence;
    if (i1 >= 0)
    {
      localCharSequence = localObject[i1];
      if (i1 < arrayOfString.length)
      {
        paramView = arrayOfString[i1];
        label113:
        long l2 = Long.parseLong(paramView);
        if ((i != Integer.MAX_VALUE) || (l1 < l2)) {
          break label290;
        }
        i = localStringBuilder.length();
      }
    }
    label290:
    for (;;)
    {
      if (!TextUtils.isEmpty(localCharSequence))
      {
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append(localCharSequence);
      }
      i1 -= 1;
      break;
      paramView = "0";
      break label113;
      paramView = k.getResources();
      ((TextView)localView.findViewById(aen.dC)).setText(paramView.getString(StressMode.fp, new Object[] { ConversationListFragment.c(paramCursor.getInt(21)) }));
      paramView = new SpannableStringBuilder(localStringBuilder.toString());
      paramView.setSpan(new StyleSpan(1), 0, Math.min(i, paramView.length()), 0);
      ((TextView)localView.findViewById(aen.dB)).setText(paramView);
      localView.setSelected(false);
      return;
    }
  }
  
  public View a(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    LayoutInflater localLayoutInflater = (LayoutInflater)paramContext.getSystemService("layout_inflater");
    int i1 = getItemViewType(paramCursor.getPosition());
    int i;
    switch (i1)
    {
    default: 
      return null;
    case 0: 
      i = aal.fl;
      if (ConversationListFragment.a) {
        switch (i1)
        {
        default: 
          paramContext = 29 + "UNKNOWN viewType: " + i1;
          label115:
          paramCursor = String.valueOf(paramContext);
          if (i == aal.fl) {
            paramContext = "conversation_list_item_view";
          }
          break;
        }
      }
      break;
    }
    for (;;)
    {
      paramContext = String.valueOf(paramContext);
      new StringBuilder(String.valueOf(paramCursor).length() + 23 + String.valueOf(paramContext).length()).append("newView viewType: ").append(paramCursor).append(" id: ").append(paramContext);
      paramContext = localLayoutInflater.inflate(i, null, false);
      if ((paramContext instanceof ConversationListItemView)) {
        ((ConversationListItemView)paramContext).a(m.i);
      }
      paramCursor = (ConversationListItemWrapper)localLayoutInflater.inflate(aal.fm, paramViewGroup, false);
      paramCursor.a(paramContext);
      return paramCursor;
      i = aal.gh;
      break;
      i = aal.gi;
      break;
      paramContext = "VIEW_TYPE_CONVERSATION";
      break label115;
      paramContext = "VIEW_TYPE_INVITATION";
      break label115;
      paramContext = "VIEW_TYPE_INVITATION_SET";
      break label115;
      if (i == aal.gh) {
        paramContext = "invite_list_item_view";
      } else if (i == aal.gi) {
        paramContext = "invite_set_list_item_view";
      } else {
        paramContext = 27 + "UNKNOWN viewId: " + i;
      }
    }
  }
  
  public void a(View paramView, Cursor paramCursor)
  {
    ((ConversationListItemWrapper)paramView).f();
    label127:
    Object localObject1;
    switch (getItemViewType(paramCursor.getPosition()))
    {
    default: 
      ezi.e("Babel", "bindView called with cursor at unknown position.", new Object[0]);
    case 0: 
    case 2: 
      for (;;)
      {
        paramView = ((ConversationListItemWrapper)paramView).e();
        if ((paramView instanceof fan))
        {
          paramView = (fan)paramView;
          paramView.a(m.h);
          paramView.a(ConversationListFragment.c(paramCursor));
          paramView.a(paramCursor.getLong(4));
        }
        return;
        long l1 = System.nanoTime();
        if (paramCursor.getInt(14) == 1)
        {
          bool = true;
          hbs.b("Expected condition to be false", bool);
          localObject1 = (ConversationListItemView)ConversationListFragment.b(paramView);
          if (m.aj != 3) {
            break label331;
          }
        }
        label331:
        for (boolean bool = true;; bool = false)
        {
          ((ConversationListItemView)localObject1).a(paramCursor, l, bool, null);
          long l2 = paramCursor.getLong(4);
          if (n > l2) {
            n = l2;
          }
          ((ConversationListItemView)localObject1).setSelected(false);
          l2 = System.nanoTime();
          if (!ConversationListFragment.a) {
            break;
          }
          l1 = (l2 - l1) / 1000L;
          o += l1;
          p += 1L;
          l2 = o / p;
          long l3 = p;
          ezi.d("Babel", 88 + "BIND: CURRENT: " + l1 + " AVERAGE: " + l2 + " (" + l3 + ")", new Object[0]);
          break;
          bool = false;
          break label127;
        }
        b(paramView, paramCursor);
      }
    }
    ConversationListFragment.InviteListItem localInviteListItem = (ConversationListFragment.InviteListItem)ConversationListFragment.b(paramView);
    String str = ConversationListFragment.c(paramCursor);
    int i;
    label374:
    TextView localTextView1;
    TextView localTextView2;
    Object localObject3;
    Object localObject2;
    if (paramCursor.getInt(3) == 2)
    {
      i = 1;
      localTextView1 = (TextView)localInviteListItem.findViewById(aen.dG);
      localTextView2 = (TextView)localInviteListItem.findViewById(aen.dD);
      localObject3 = j.getResources();
      if (i == 0) {
        break label700;
      }
      i = paramCursor.getString(7).split(", ").length - 1;
      localObject1 = paramCursor.getString(6);
      localObject2 = paramCursor.getString(18);
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {
        break label583;
      }
      if (!TextUtils.isEmpty((CharSequence)localObject2)) {
        break label541;
      }
      localObject2 = ((Resources)localObject3).getString(StressMode.eT);
      localObject1 = ((Resources)localObject3).getQuantityString(aal.ho, i + 1, new Object[] { Integer.valueOf(i + 1) });
      label502:
      localTextView1.setText((CharSequence)localObject2);
      localTextView2.setText((CharSequence)localObject1);
    }
    for (;;)
    {
      localInviteListItem.a(l, str);
      localInviteListItem.setSelected(false);
      break;
      i = 0;
      break label374;
      label541:
      if (i == 0)
      {
        localObject1 = ((Resources)localObject3).getString(StressMode.eY);
        break label502;
      }
      localObject1 = ((Resources)localObject3).getQuantityString(aal.hq, i, new Object[] { Integer.valueOf(i) });
      break label502;
      label583:
      if (TextUtils.isEmpty((CharSequence)localObject2))
      {
        localObject3 = ((Resources)localObject3).getQuantityString(aal.ho, i + 1, new Object[] { Integer.valueOf(i + 1) });
        localObject2 = localObject1;
        localObject1 = localObject3;
        break label502;
      }
      if (i == 0)
      {
        localObject3 = ((Resources)localObject3).getString(StressMode.eX, new Object[] { localObject2 });
        localObject2 = localObject1;
        localObject1 = localObject3;
        break label502;
      }
      localObject3 = ((Resources)localObject3).getQuantityString(aal.hp, i, new Object[] { Integer.valueOf(i), localObject2 });
      localObject2 = localObject1;
      localObject1 = localObject3;
      break label502;
      label700:
      localTextView1.setText(((Resources)localObject3).getString(StressMode.eU));
      localTextView2.setText(paramCursor.getString(18));
    }
  }
  
  public void c()
  {
    if (n != Long.MAX_VALUE) {
      RealTimeChatService.b(j.b.a(), n);
    }
  }
  
  public void d()
  {
    n = Long.MAX_VALUE;
  }
  
  public int getItemViewType(int paramInt)
  {
    int i = 2;
    Cursor localCursor = a();
    localCursor.moveToPosition(paramInt);
    if (ConversationListFragment.a)
    {
      int i1 = localCursor.getInt(14);
      new StringBuilder(48).append("getItemViewType position ").append(paramInt).append(" ").append(i1);
    }
    if (localCursor.getInt(14) == 2) {
      paramInt = 0;
    }
    do
    {
      return paramInt;
      paramInt = i;
    } while (localCursor.getInt(21) > 1);
    return 1;
  }
  
  public int getViewTypeCount()
  {
    return 3;
  }
}

/* Location:
 * Qualified Name:     cam
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */