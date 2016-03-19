import android.content.res.Resources;
import android.database.Cursor;
import android.util.SparseBooleanArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AbsListView.MultiChoiceModeListener;
import android.widget.ListAdapter;
import com.google.android.apps.hangouts.fragments.ConversationListFragment;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.listui.SwipeableListView;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class dkx
{
  public final dkv a = new dkv(this);
  
  public dkx(ConversationListFragment paramConversationListFragment) {}
  
  public void a()
  {
    b.ao = null;
    b.i.j();
    b.getActivity().findViewById(aen.di).setVisibility(0);
  }
  
  public void a(dkv paramdkv, int paramInt, boolean paramBoolean)
  {
    int i = 0;
    SparseBooleanArray localSparseBooleanArray = ((SwipeableListView)b.bB).getCheckedItemPositions();
    localSparseBooleanArray.put(paramInt, paramBoolean);
    int k = localSparseBooleanArray.size();
    int j = 0;
    paramInt = i;
    for (i = j; paramInt < k; i = j)
    {
      j = i;
      if (localSparseBooleanArray.valueAt(paramInt)) {
        j = i + 1;
      }
      paramInt += 1;
    }
    if (i == 0) {
      b.ao.c();
    }
    paramdkv.b();
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    long[] arrayOfLong = ((SwipeableListView)b.bB).getCheckedItemIds();
    ConversationListFragment localConversationListFragment;
    ArrayList localArrayList2;
    if (arrayOfLong.length > 0)
    {
      localConversationListFragment = b;
      Cursor localCursor = b.bA.a();
      ArrayList localArrayList1 = new ArrayList();
      localArrayList2 = new ArrayList();
      int k = arrayOfLong.length;
      int i = 0;
      while (i < k)
      {
        long l1 = arrayOfLong[i];
        int j = 0;
        if (j < localCursor.getCount())
        {
          localCursor.moveToPosition(j);
          Object localObject;
          if (localCursor.getLong(0) == l1)
          {
            localObject = ConversationListFragment.c(localCursor);
            long l2 = localCursor.getLong(4);
            String str;
            if (paramMenuItem.getItemId() == aen.fr)
            {
              localObject = aal.f((String)localObject).iterator();
              while (((Iterator)localObject).hasNext())
              {
                str = (String)((Iterator)localObject).next();
                RealTimeChatService.a(d, str, 10);
              }
            }
            if (paramMenuItem.getItemId() == aen.fv)
            {
              localObject = aal.f((String)localObject).iterator();
              while (((Iterator)localObject).hasNext())
              {
                str = (String)((Iterator)localObject).next();
                RealTimeChatService.a(d, str, 30);
              }
            }
            if (paramMenuItem.getItemId() == aen.fq)
            {
              localObject = aal.f((String)localObject).iterator();
              while (((Iterator)localObject).hasNext()) {
                localArrayList1.add((String)((Iterator)localObject).next());
              }
            }
            if (paramMenuItem.getItemId() == aen.fn)
            {
              localObject = aal.f((String)localObject).iterator();
              while (((Iterator)localObject).hasNext())
              {
                localArrayList1.add((String)((Iterator)localObject).next());
                localArrayList2.add(Long.valueOf(l2));
              }
            }
            if (paramMenuItem.getItemId() == aen.fu)
            {
              localObject = aal.f((String)localObject).iterator();
              while (((Iterator)localObject).hasNext())
              {
                str = (String)((Iterator)localObject).next();
                h.a(str, l2);
              }
            }
            if (paramMenuItem.getItemId() != aen.fl) {
              break label479;
            }
            h.a((String)localObject);
            h.a((String)localObject, l2, false);
          }
          for (;;)
          {
            j += 1;
            break;
            label479:
            if (paramMenuItem.getItemId() == aen.ft) {
              new cai(localConversationListFragment, (String)localObject).execute(new Void[0]);
            }
          }
        }
        i += 1;
      }
      if (paramMenuItem.getItemId() == aen.fl) {
        h.a();
      }
      if ((paramMenuItem.getItemId() != aen.fq) && (paramMenuItem.getItemId() != aen.fn)) {
        break label649;
      }
      e = ((String[])localArrayList1.toArray(new String[localArrayList1.size()]));
      if (paramMenuItem.getItemId() != aen.fq) {
        break label608;
      }
      localConversationListFragment.e();
    }
    for (;;)
    {
      return true;
      label608:
      f = ((Long[])localArrayList2.toArray(new Long[localArrayList2.size()]));
      localConversationListFragment.displayDeleteConversationDialog(d.g());
      continue;
      label649:
      if (ao != null) {
        ao.c();
      }
    }
  }
  
  public boolean a(dkv paramdkv, Menu paramMenu)
  {
    b.ao = paramdkv;
    b.getActivity().getMenuInflater().inflate(aal.gY, paramMenu);
    b.i.u_();
    b.getActivity().findViewById(aen.di).setVisibility(4);
    return true;
  }
  
  public AbsListView.MultiChoiceModeListener b()
  {
    return a.a();
  }
  
  public boolean b(dkv paramdkv, Menu paramMenu)
  {
    int i = 0;
    while (i < paramMenu.size())
    {
      paramMenu.getItem(i).setVisible(false);
      i += 1;
    }
    int k = 0;
    int i5 = 1;
    int n = 1;
    int i4 = 1;
    int m = 1;
    int j = 0;
    SparseBooleanArray localSparseBooleanArray = ((SwipeableListView)b.bB).getCheckedItemPositions();
    int i9 = localSparseBooleanArray.size();
    Object localObject = b.b();
    int i7;
    int i1;
    int i2;
    label165:
    label250:
    boolean bool1;
    if (localObject == null)
    {
      i = 0;
      i6 = ((SwipeableListView)b.bB).getHeaderViewsCount();
      i7 = ((SwipeableListView)b.bB).getFooterViewsCount();
      i3 = 0;
      i1 = 1;
      i2 = 1;
      if (i - i6 - i7 <= 0) {
        break label973;
      }
      i6 = 0;
      i5 = 1;
      k = 0;
      i7 = 0;
      i = j;
      i1 = i2;
      j = i7;
      i2 = i5;
      if (i6 >= i9) {
        break label506;
      }
      if (!localSparseBooleanArray.valueAt(i6)) {
        break label924;
      }
      i5 = i3 + 1;
      localObject = b.a(localSparseBooleanArray.keyAt(i6));
      if (!(localObject instanceof Cursor)) {
        break label875;
      }
      localObject = (Cursor)localObject;
      if (localObject == null) {
        break label875;
      }
      long l = ((Cursor)localObject).getLong(3);
      if (((Cursor)localObject).getInt(2) != 10) {
        break label478;
      }
      i3 = 1;
      bool1 = aal.f(((Cursor)localObject).getInt(29));
      if (bool1) {
        break label872;
      }
      i1 = 0;
      if ((l == 2L) && (!bool1)) {
        break label865;
      }
      i2 = 0;
      label289:
      n = m;
      if (l != 1L)
      {
        n = m;
        if (!bool1) {
          n = 0;
        }
      }
      if (i3 == 0) {
        break label484;
      }
      m = 1;
      label320:
      if (((Cursor)localObject).getInt(15) != 2) {
        break label494;
      }
      k = 1;
      label336:
      if (k != 0) {
        break label500;
      }
    }
    label416:
    int i8;
    label478:
    label484:
    label494:
    label500:
    for (int i3 = 1;; i3 = 0)
    {
      i4 = ((cam)b.bA).getItemViewType(((Cursor)localObject).getPosition());
      if ((i4 != 1) && (i4 != 2)) {
        break label812;
      }
      i7 = 1;
      i = i1;
      i4 = i3;
      i3 = j;
      j = n;
      n = m;
      i1 = k;
      m = j;
      j = i7;
      k = i5;
      i8 = i6 + 1;
      i5 = i2;
      i7 = i3;
      i6 = j;
      i3 = k;
      i2 = i1;
      k = n;
      j = i7;
      i1 = i;
      i = i6;
      n = i5;
      i6 = i8;
      break label165;
      i = ((ListAdapter)localObject).getCount();
      break;
      i3 = 0;
      break label250;
      j = 1;
      m = k;
      break label320;
      k = 0;
      break label336;
    }
    label506:
    int i6 = j;
    j = i4;
    i5 = n;
    i4 = i;
    n = i6;
    i = m;
    for (;;)
    {
      if ((i != 0) && (i3 > 1) && (i1 == 0)) {
        i = 0;
      }
      for (;;)
      {
        boolean bool2;
        label571:
        boolean bool3;
        label584:
        boolean bool4;
        label597:
        boolean bool5;
        if ((n != 0) && (i4 == 0))
        {
          bool1 = true;
          if ((k == 0) || (i4 != 0)) {
            break label779;
          }
          bool2 = true;
          if ((j == 0) || (i4 != 0)) {
            break label785;
          }
          bool3 = true;
          if ((i2 == 0) || (i4 != 0)) {
            break label791;
          }
          bool4 = true;
          if ((i5 == 0) || (i4 != 0)) {
            break label797;
          }
          bool5 = true;
          label610:
          if ((i == 0) || (i4 != 0)) {
            break label803;
          }
        }
        label779:
        label785:
        label791:
        label797:
        label803:
        for (boolean bool6 = true;; bool6 = false)
        {
          paramdkv.a(b.getResources().getString(StressMode.aF, new Object[] { Integer.valueOf(i3) }));
          paramMenu.findItem(aen.fl).setVisible(bool3);
          paramMenu.findItem(aen.fu).setVisible(bool4);
          paramMenu.findItem(aen.fq).setVisible(bool5);
          paramMenu.findItem(aen.fr).setVisible(bool1);
          paramMenu.findItem(aen.fv).setVisible(bool2);
          paramMenu.findItem(aen.fn).setVisible(bool6);
          paramMenu.findItem(aen.ft).setVisible(ezc.a());
          return false;
          bool1 = false;
          break;
          bool2 = false;
          break label571;
          bool3 = false;
          break label584;
          bool4 = false;
          break label597;
          bool5 = false;
          break label610;
        }
      }
      label812:
      i4 = i5;
      i8 = k;
      i5 = m;
      m = i;
      i7 = j;
      i = i1;
      k = i4;
      j = m;
      m = n;
      i1 = i8;
      i4 = i3;
      n = i5;
      i3 = i7;
      break label416;
      label865:
      i2 = n;
      break label289;
      label872:
      break;
      label875:
      i7 = i1;
      i1 = i2;
      i2 = i5;
      i3 = k;
      i8 = i;
      i5 = j;
      i = i7;
      k = i2;
      j = i8;
      i2 = n;
      n = i3;
      i3 = i5;
      break label416;
      label924:
      i7 = i1;
      i1 = i2;
      i2 = i3;
      i3 = k;
      i8 = i;
      i5 = j;
      i = i7;
      k = i2;
      j = i8;
      i2 = n;
      n = i3;
      i3 = i5;
      break label416;
      label973:
      i2 = 1;
      j = 1;
      n = 0;
      i = 1;
      i4 = 0;
      i3 = 0;
    }
  }
}

/* Location:
 * Qualified Name:     dkx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */