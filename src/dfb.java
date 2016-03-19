import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.google.android.apps.hangouts.phone.DebugActivity;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.requestwriter.RequestWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class dfb
  implements AdapterView.OnItemClickListener
{
  dfb(DebugActivity paramDebugActivity) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = (Intent)paramAdapterView.getItemAtPosition(paramInt);
    View localView = a.getLayoutInflater().inflate(aal.fA, null);
    ListView localListView = (ListView)localView.findViewById(16908298);
    Bundle localBundle = localIntent.getExtras();
    ArrayList localArrayList1 = new ArrayList(localBundle.keySet());
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator = localArrayList1.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localBundle.get((String)localIterator.next());
      paramView = (View)localObject;
      if (localObject == null) {
        paramView = "NULL";
      }
      localArrayList2.add(paramView);
    }
    paramAdapterView = RequestWriter.a(paramAdapterView.getContext(), localIntent, a.g.g());
    if (paramAdapterView != null)
    {
      localArrayList1.add("Server Request");
      localArrayList2.add(paramAdapterView);
    }
    paramAdapterView = RealTimeChatService.c(localIntent);
    if (paramAdapterView != null)
    {
      localArrayList1.add("Server Response");
      localArrayList2.add(paramAdapterView);
    }
    paramAdapterView = egt.a(localIntent, a.g.g(), false);
    if (paramAdapterView != null)
    {
      localArrayList1.add("Server Update");
      localArrayList2.add(paramAdapterView);
    }
    localListView.setAdapter(a.a(localArrayList1, localArrayList2));
    localListView.setOnItemClickListener(new dey(a));
    localListView.setOnItemLongClickListener(new dez(a));
    a.a(localView, null, null);
  }
}

/* Location:
 * Qualified Name:     dfb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */