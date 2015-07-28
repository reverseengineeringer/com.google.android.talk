package com.google.android.talk;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.util.Rfc822Token;
import android.text.util.Rfc822Tokenizer;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.MultiAutoCompleteTextView;
import android.widget.Toast;
import com.android.common.Rfc822Validator;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;

public class AddBuddyScreen
  extends Activity
  implements TextWatcher
{
  private static Rfc822Validator sValidator = new Rfc822Validator(null);
  private EmailAddressAdapter mAddressAdapter;
  private TalkApp mApp;
  View.OnClickListener mButtonHandler = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      switch (paramAnonymousView.getId())
      {
      default: 
        return;
      case 2131755030: 
        inviteBuddies();
        return;
      }
      finish();
    }
  };
  private MultiAutoCompleteTextView mEmailList;
  protected final Handler mHandler = new Handler();
  private IImSession mImSession;
  private View mInviteButton;
  private View mInviteText;
  View.OnKeyListener mKeyHandler = new View.OnKeyListener()
  {
    public final boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      if ((paramAnonymousView.getId() == 2131755032) && (paramAnonymousInt == 66))
      {
        inviteBuddies();
        return true;
      }
      return false;
    }
  };
  private boolean mTabletMode;
  
  private void checkEmailAddress()
  {
    Object localObject = mEmailList.getText();
    boolean bool = false;
    if (((Editable)localObject).length() > 0)
    {
      localObject = localObject.toString();
      if ((((String)localObject).indexOf('@') == -1) || (((String)localObject).indexOf('.') == -1)) {
        break label77;
      }
    }
    label77:
    for (bool = true;; bool = false)
    {
      if (mInviteButton != null) {
        mInviteButton.setEnabled(bool);
      }
      if (mInviteText != null) {
        mInviteText.setEnabled(bool);
      }
      return;
    }
  }
  
  private void initView()
  {
    mEmailList = ((MultiAutoCompleteTextView)findViewById(2131755032));
    mEmailList.setAdapter(mAddressAdapter);
    mEmailList.setTokenizer(new Rfc822Tokenizer());
    mEmailList.setValidator(sValidator);
    mEmailList.addTextChangedListener(this);
    mEmailList.setOnKeyListener(mKeyHandler);
    ActionBar localActionBar = getActionBar();
    if (localActionBar != null)
    {
      localView = localActionBar.getCustomView();
      if ((localActionBar == null) || (localView == null)) {
        break label171;
      }
      mInviteButton = localView.findViewById(2131755030);
    }
    for (View localView = localView.findViewById(2131755029);; localView = findViewById(2131755029))
    {
      if (mInviteButton != null)
      {
        mInviteButton.setOnClickListener(mButtonHandler);
        mInviteText = mInviteButton.findViewById(2131755031);
      }
      if (localView != null) {
        localView.setOnClickListener(mButtonHandler);
      }
      mEmailList.setText(getIntent().getStringExtra("start_name"));
      return;
      localView = null;
      break;
      label171:
      mInviteButton = findViewById(2131755030);
    }
  }
  
  public static void inviteBuddies(IImSession paramIImSession, CharSequence paramCharSequence)
  {
    Rfc822Token[] arrayOfRfc822Token = Rfc822Tokenizer.tokenize(paramCharSequence);
    try
    {
      int j = arrayOfRfc822Token.length;
      int i = 0;
      while (i < j)
      {
        Rfc822Token localRfc822Token = arrayOfRfc822Token[i];
        String str = localRfc822Token.getAddress();
        paramCharSequence = null;
        if (!TextUtils.isEmpty(localRfc822Token.getAddress())) {
          paramCharSequence = localRfc822Token.getName();
        }
        if (Log.isLoggable("talk", 3)) {
          log("inviteBuddies: " + str + ", nickname=" + paramCharSequence);
        }
        paramIImSession.addContact(str, paramCharSequence, null);
        i += 1;
      }
      return;
    }
    catch (RemoteException paramIImSession)
    {
      loge("inviteBuddies: caught " + paramIImSession);
    }
  }
  
  private static void log(String paramString)
  {
    Log.v("talk", "[AddBuddyScreen] " + paramString);
  }
  
  private static void loge(String paramString)
  {
    Log.e("talk", "[AddBuddyScreen] " + paramString);
  }
  
  private void registerForSessionAvailable()
  {
    mApp.addImSessionAvailableCallback(mHandler, mApp.getAccountIdFromActivityIntent(getIntent()), new SessionAvailableRunnable()
    {
      public void run(IGTalkService paramAnonymousIGTalkService, IImSession paramAnonymousIImSession)
      {
        AddBuddyScreen.this.sessionAvailable(paramAnonymousIGTalkService, paramAnonymousIImSession);
      }
    });
  }
  
  private void sessionAvailable(IGTalkService paramIGTalkService, IImSession paramIImSession)
  {
    if (paramIGTalkService != null)
    {
      mImSession = paramIImSession;
      if (mImSession == null)
      {
        Log.w("talk", "Empty IM session. Finish!");
        ActivityUtils.showLandingPage(this);
      }
      return;
    }
    finish();
  }
  
  private void unregisterForSessionAvailable()
  {
    mApp.removeImSessionAvailableCallback(mHandler);
  }
  
  public final void afterTextChanged(Editable paramEditable)
  {
    checkEmailAddress();
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void finish()
  {
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getWindow().getDecorView().getWindowToken(), 0);
    super.finish();
  }
  
  void inviteBuddies()
  {
    if (mImSession == null) {
      return;
    }
    inviteBuddies(mImSession, mEmailList.getText());
    Toast.makeText(this, 2131492970, 1).show();
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    mTabletMode = ActivityUtils.isTablet(this);
    if (!mTabletMode) {
      setTheme(16974105);
    }
    super.onCreate(paramBundle);
    paramBundle = getActionBar();
    if ((paramBundle != null) && (!mTabletMode))
    {
      paramBundle.setDisplayOptions(16);
      paramBundle.setCustomView(getLayoutInflater().inflate(2130968583, new LinearLayout(this), false));
    }
    mApp = TalkApp.getApplication(this);
    mAddressAdapter = new EmailAddressAdapter(this);
    setContentView(2130968585);
    getWindow().setSoftInputMode(16);
    initView();
    registerForSessionAvailable();
  }
  
  protected void onRestart()
  {
    super.onRestart();
    mApp.ensureServiceBound();
    registerForSessionAvailable();
  }
  
  protected void onStop()
  {
    super.onStop();
    unregisterForSessionAvailable();
  }
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.google.android.talk.AddBuddyScreen
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */