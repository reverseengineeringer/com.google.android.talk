package com.google.android.talk.videochat;

import android.app.ActionBar;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Handler;
import android.provider.MediaStore.Video.Media;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLayoutChangeListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.GridView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.SimpleAdapter;
import android.widget.SimpleAdapter.ViewBinder;
import android.widget.Switch;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

class VideoChatActivity$SpecialEffectManager
{
  private ProgressDialog mBackgroundReplaceDialog;
  private int mCurrentPopupMode;
  private int mGridColumnWidth = -1;
  private boolean mInSpecialEffectsMode;
  private PopupWindow mPopupWindow;
  private final Object mSpecialEffectsModeLock = new Object();
  
  VideoChatActivity$SpecialEffectManager(VideoChatActivity paramVideoChatActivity) {}
  
  private void enterSpecialEffectsMode()
  {
    synchronized (mSpecialEffectsModeLock)
    {
      if (!mInSpecialEffectsMode)
      {
        mInSpecialEffectsMode = true;
        this$0.invalidateOptionsMenu();
        VideoChatActivity.access$300(this$0).startSwapAnimation();
        VideoChatActivity.access$2700(this$0).setTitle(2131493124);
        VideoChatActivity.access$2700(this$0).show();
      }
      return;
    }
  }
  
  private boolean hideSpecialEffectsPicker()
  {
    if (mPopupWindow != null)
    {
      mPopupWindow.dismiss();
      mPopupWindow = null;
      return true;
    }
    return false;
  }
  
  private boolean leaveSpecialEffectsMode()
  {
    synchronized (mSpecialEffectsModeLock)
    {
      if (mInSpecialEffectsMode)
      {
        mInSpecialEffectsMode = false;
        this$0.invalidateOptionsMenu();
        VideoChatActivity.access$3900(this$0);
        hideSpecialEffectsPicker();
        VideoChatActivity.access$300(this$0).reverseSwapAnimation();
        VideoChatActivity.access$2700(this$0).setTitle(null);
        return true;
      }
      return false;
    }
  }
  
  private void onStop()
  {
    hideSpecialEffectsPicker();
    if (mBackgroundReplaceDialog != null)
    {
      mBackgroundReplaceDialog.cancel();
      mBackgroundReplaceDialog = null;
    }
  }
  
  private void showPickerForBackgrounds(View paramView)
  {
    String[] arrayOfString1 = this$0.getResources().getStringArray(2131230722);
    String[] arrayOfString2 = this$0.getResources().getStringArray(2131230724);
    TypedArray localTypedArray = this$0.getResources().obtainTypedArray(2131230723);
    AdapterView.OnItemClickListener local5 = new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        VideoChatActivity.SpecialEffectManager.this.hideSpecialEffectsPicker();
        paramAnonymousAdapterView = paramAnonymousView.getTag();
        if (paramAnonymousAdapterView != null)
        {
          paramAnonymousAdapterView = Uri.parse((String)paramAnonymousAdapterView);
          VideoChatActivity.SpecialEffectManager.this.startBackgroundReplaceTraining(paramAnonymousAdapterView);
          return;
        }
        paramAnonymousAdapterView = new Intent("android.intent.action.PICK");
        paramAnonymousAdapterView.setDataAndType(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, "video/*");
        paramAnonymousAdapterView.putExtra("android.intent.extra.LOCAL_ONLY", true);
        this$0.startActivityForResult(paramAnonymousAdapterView, 100);
      }
    };
    showPickerPopup(paramView, makeAdapter(arrayOfString1, localTypedArray, arrayOfString2), 2131493117, local5, 2);
  }
  
  private void showPickerForFunnyFace(View paramView)
  {
    String[] arrayOfString = this$0.getResources().getStringArray(2131230720);
    TypedArray localTypedArray = this$0.getResources().obtainTypedArray(2131230721);
    AdapterView.OnItemClickListener local4 = new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        VideoChatActivity.SpecialEffectManager.this.hideSpecialEffectsPicker();
        VideoChatActivity.access$3300(this$0, new VideoChatActivity.Effect(4, paramAnonymousView.getTag()));
      }
    };
    showPickerPopup(paramView, makeAdapter(arrayOfString, localTypedArray, new Integer[] { Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3), Integer.valueOf(4), Integer.valueOf(5) }), 2131493116, local4, 3);
  }
  
  private void showPickerPopup(View paramView, ListAdapter paramListAdapter, int paramInt1, AdapterView.OnItemClickListener paramOnItemClickListener, int paramInt2)
  {
    View localView = this$0.getLayoutInflater().inflate(2130968642, null);
    showPopup(paramView, paramInt1, localView);
    paramView = (GridView)localView.findViewById(2131755156);
    ((TextView)localView.findViewById(2131755155)).setText(paramInt1);
    paramView.setLayoutParams(new LinearLayout.LayoutParams(mGridColumnWidth * paramInt2, -2));
    paramView.setNumColumns(paramInt2);
    paramView.setOnItemClickListener(paramOnItemClickListener);
    paramView.setAdapter(paramListAdapter);
  }
  
  private void showPopup(final View paramView1, int paramInt, View paramView2)
  {
    hideSpecialEffectsPicker();
    TextView localTextView = (TextView)paramView2.findViewById(2131755118);
    if (localTextView != null) {
      localTextView.setText(paramInt);
    }
    mPopupWindow = new PopupWindow(paramView2);
    mPopupWindow.setWindowLayoutMode(-2, -2);
    mPopupWindow.setFocusable(true);
    mPopupWindow.setOnDismissListener(new PopupWindow.OnDismissListener()
    {
      public void onDismiss()
      {
        VideoChatActivity.SpecialEffectManager.access$3602(VideoChatActivity.SpecialEffectManager.this, null);
      }
    });
    paramView2.addOnLayoutChangeListener(new View.OnLayoutChangeListener()
    {
      public void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, int paramAnonymousInt6, int paramAnonymousInt7, int paramAnonymousInt8)
      {
        paramAnonymousInt1 = paramAnonymousInt3 - paramAnonymousInt1;
        mPopupWindow.update(paramView1, -paramAnonymousInt1 / 2 + paramView1.getWidth() / 2, 0, paramAnonymousInt1, paramAnonymousInt4 - paramAnonymousInt2);
      }
    });
    mPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
    mPopupWindow.showAsDropDown(paramView1, 0, 1);
  }
  
  private void startBackgroundReplaceTraining(Uri paramUri)
  {
    BgReplacementManager localBgReplacementManager = new BgReplacementManager(null);
    localBgReplacementManager.startTraining(paramUri);
    VideoChatActivity.access$300(this$0).setSpecialEffectsStateCallback(localBgReplacementManager);
  }
  
  public void clearSpecialEffects()
  {
    VideoChatActivity.access$3300(this$0, new VideoChatActivity.Effect(0, null));
  }
  
  SimpleAdapter makeAdapter(String[] paramArrayOfString, TypedArray paramTypedArray, Object[] paramArrayOfObject)
  {
    ArrayList localArrayList = new ArrayList();
    int j = 0;
    int k = paramArrayOfString.length;
    int i = 0;
    while (i < k)
    {
      String str = paramArrayOfString[i];
      HashMap localHashMap = new HashMap();
      localHashMap.put("text", str);
      localHashMap.put("icon", Integer.valueOf(paramTypedArray.getResourceId(j, -1)));
      localHashMap.put("tag", paramArrayOfObject[j]);
      localArrayList.add(localHashMap);
      j += 1;
      i += 1;
    }
    paramArrayOfString = new SimpleAdapter(this$0, localArrayList, 2130968641, new String[] { "text", "icon", "tag" }, new int[] { 2131755076, 2131755117, 2131755154 });
    paramArrayOfString.setViewBinder(new SimpleAdapter.ViewBinder()
    {
      public boolean setViewValue(View paramAnonymousView, Object paramAnonymousObject, String paramAnonymousString)
      {
        if (paramAnonymousView.getId() == 2131755154)
        {
          paramAnonymousView.setTag(paramAnonymousObject);
          return true;
        }
        return false;
      }
    });
    return paramArrayOfString;
  }
  
  public void show(View paramView)
  {
    int i = paramView.getId();
    if ((mPopupWindow != null) && (mCurrentPopupMode == i)) {
      return;
    }
    if (mGridColumnWidth == -1) {
      mGridColumnWidth = this$0.getResources().getDimensionPixelSize(2131427395);
    }
    mCurrentPopupMode = i;
    switch (i)
    {
    default: 
      return;
    case 2131755158: 
      showPickerForBackgrounds(paramView);
      return;
    case 2131755164: 
      showPickerForFunnyFace(paramView);
      return;
    case 2131755168: 
      showVirtualCameraSpecialEffect(paramView);
      return;
    }
    showImageStabilizationSpecialEffect(paramView);
  }
  
  public void showImageStabilizationSpecialEffect(View paramView)
  {
    String[] arrayOfString = this$0.getResources().getStringArray(2131230725);
    TypedArray localTypedArray = this$0.getResources().obtainTypedArray(2131230726);
    AdapterView.OnItemClickListener local6 = new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        VideoChatActivity.SpecialEffectManager.this.hideSpecialEffectsPicker();
        VideoChatActivity.access$3300(this$0, new VideoChatActivity.Effect(1, paramAnonymousView.getTag()));
      }
    };
    showPickerPopup(paramView, makeAdapter(arrayOfString, localTypedArray, new Integer[] { Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3) }), 2131493120, local6, 3);
  }
  
  public void showVirtualCameraSpecialEffect(View paramView)
  {
    View localView = this$0.getLayoutInflater().inflate(2130968640, null);
    Switch localSwitch = (Switch)localView.findViewById(2131755153);
    if (VideoChatActivity.access$300(this$0).getEffectsController().getActiveEffect() == 2) {}
    for (boolean bool = true;; bool = false)
    {
      localSwitch.setChecked(bool);
      localSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          if (!paramAnonymousBoolean) {
            clearSpecialEffects();
          }
          for (;;)
          {
            VideoChatActivity.access$2800(this$0).hideSpecialEffectsPicker();
            return;
            VideoChatActivity.access$3300(this$0, new VideoChatActivity.Effect(2, Integer.valueOf(0)));
          }
        }
      });
      showPopup(paramView, 2131493118, localView);
      return;
    }
  }
  
  private class BgReplacementManager
    implements EffectsController.StateCallback
  {
    private View mMessageView;
    
    private BgReplacementManager() {}
    
    private void cancelTraining()
    {
      clearSpecialEffects();
      leaveTraining(false);
    }
    
    private void leaveTraining(final boolean paramBoolean)
    {
      VideoChatActivity.access$900(this$0).post(new Runnable()
      {
        public void run()
        {
          if (mMessageView != null) {
            mMessageView.setVisibility(8);
          }
          if (paramBoolean)
          {
            VideoChatActivity.access$2800(this$0).leaveSpecialEffectsMode();
            return;
          }
          VideoChatActivity.access$000(this$0);
        }
      });
    }
    
    public void onBackgroundReplacementTraningSuccess()
    {
      leaveTraining(true);
    }
    
    public void startTraining(Uri paramUri)
    {
      mMessageView = this$0.findViewById(2131755174);
      mMessageView.setVisibility(0);
      VideoChatActivity.access$2900(this$0);
      ((Button)this$0.findViewById(2131755176)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          VideoChatActivity.SpecialEffectManager.BgReplacementManager.this.cancelTraining();
        }
      });
      VideoChatActivity.access$3300(this$0, new VideoChatActivity.Effect(3, paramUri));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.SpecialEffectManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */