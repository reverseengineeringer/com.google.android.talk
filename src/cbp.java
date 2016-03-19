import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;

public abstract class cbp
  extends img
{
  private boolean a;
  private boolean b;
  private final Handler c = new cbq(this);
  
  protected void at()
  {
    if ((isAdded()) && (!isPaused()))
    {
      View localView = getView();
      if (localView != null) {
        doShowEmptyViewProgress(localView);
      }
    }
  }
  
  protected void au()
  {
    c.removeMessages(0);
  }
  
  public void displayDeleteConversationDialog(int paramInt)
  {
    bxq localbxq = bxq.a(getString(StressMode.hT), getString(StressMode.hS), getString(StressMode.hR), getString(StressMode.U));
    localbxq.setTargetFragment(this, 0);
    localbxq.getArguments().putInt("account_id", paramInt);
    localbxq.a(getFragmentManager(), "delete_conversation");
  }
  
  public void doShowEmptyViewProgress(View paramView)
  {
    if (isEmpty())
    {
      paramView.findViewById(16908292).setVisibility(0);
      paramView.findViewById(aen.dQ).setVisibility(8);
      paramView.findViewById(aen.dP).setVisibility(0);
    }
  }
  
  public bfd getAccountForConversationDeletion(Bundle paramBundle)
  {
    paramBundle = dvd.e(paramBundle.getInt("account_id"));
    if (paramBundle == null) {
      ezi.e("Babel", "Delete conversation called for unknown account", new Object[0]);
    }
    return paramBundle;
  }
  
  public abstract boolean isEmpty();
  
  public boolean isPaused()
  {
    return a;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      b = true;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle, int paramInt)
  {
    return paramLayoutInflater.inflate(paramInt, paramViewGroup, false);
  }
  
  public void onPause()
  {
    a = true;
    super.onPause();
  }
  
  public void onResume()
  {
    a = false;
    super.onResume();
  }
  
  public void setupEmptyView(View paramView, int paramInt1, int paramInt2)
  {
    ezc.a((TextView)paramView.findViewById(aen.dQ), paramView.findViewById(16908292), paramInt1, paramInt2, 0);
  }
  
  public void showContent(View paramView)
  {
    au();
    paramView.findViewById(16908292).setVisibility(8);
  }
  
  public void showEmptyView(View paramView)
  {
    au();
    if (isEmpty())
    {
      paramView.findViewById(16908292).setVisibility(0);
      paramView.findViewById(aen.dQ).setVisibility(0);
      paramView.findViewById(aen.dP).setVisibility(8);
    }
  }
  
  public void showEmptyViewProgress(View paramView)
  {
    if (b)
    {
      if ((!c.hasMessages(0)) && (isEmpty())) {
        c.sendEmptyMessageDelayed(0, 800L);
      }
      return;
    }
    doShowEmptyViewProgress(paramView);
  }
}

/* Location:
 * Qualified Name:     cbp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */