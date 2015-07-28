package com.google.android.talk;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.QuickContactBadge;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gtalkservice.GroupChatInvitation;
import com.google.android.talk.util.Markup;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public class RosterListItem
  extends DividerDrawingListItem
  implements AnimatedAdapter2.ListViewBindHelper
{
  private static HashSet<RosterListItem> sAnimatingItems = new HashSet();
  private final TalkApp mApp;
  private int mAvatarHashColumn;
  private BindHandler mBind = new BindHandler(null);
  private int mCapabilitiesColumn;
  private int mClientTypeColumn;
  private boolean mComputedColumns;
  private int mContactTypeColumn;
  private ViewGroup mContainerView;
  private Animator mCurrentAnimator;
  private boolean mCurrentAnimatorIsFast;
  private Cursor mCursor;
  private int mCursorPos;
  private int mCustomStatusColumn;
  private int mDefaultLine1TextColor;
  private int mDefaultLine2TextColor;
  private boolean mIsSelfItem;
  private int mLastUnreadMessageColumn;
  private TextView mLine1;
  private Typeface mLine1Typeface;
  private TextView mLine2;
  private CharArrayBuffer mLine2Buffer;
  private Markup mMarkup;
  private boolean mNarrow;
  private int mNicknameColumn;
  private View mNoQuickBadge;
  private int mPresenceStatusColumn;
  private ImageView mPresenceView;
  private View mQuickBadge;
  private int mQuickContactColumn;
  private Resources mResources;
  private View mSeparator;
  private int mShoveDistance;
  private View mShover;
  private int mSubscriptionStatusColumn;
  private int mSubscriptionTypeColumn;
  private View mTextWrapper;
  private String mUsername;
  private int mUsernameColumn;
  private IRosterListAdapter.VideoButtonClickHandler mVideoButtonClickedHandler;
  private View.OnClickListener mVideoButtonClickedListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if (mVideoButtonClickedHandler != null) {
        mVideoButtonClickedHandler.onVideoButtonClicked(RosterListItem.this);
      }
    }
  };
  private View mVideoButtonContainerView;
  private ImageView mVideoButtonView;
  
  public RosterListItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    mApp = TalkApp.getApplication((Activity)paramContext);
    setDescendantFocusability(393216);
  }
  
  public RosterListItem(IRosterListAdapter.VideoButtonClickHandler paramVideoButtonClickHandler, Context paramContext)
  {
    this(paramContext, null);
    mVideoButtonClickedHandler = paramVideoButtonClickHandler;
  }
  
  private void clearColorFilter(ImageView paramImageView)
  {
    paramImageView.clearColorFilter();
    paramImageView = paramImageView.getDrawable();
    if (paramImageView != null) {
      paramImageView.mutate().clearColorFilter();
    }
  }
  
  private static RosterListItem findRosterListItem(View paramView)
  {
    for (paramView = paramView.getParent(); (paramView instanceof ViewGroup); paramView = paramView.getParent()) {
      if ((paramView instanceof RosterListItem)) {
        return (RosterListItem)paramView;
      }
    }
    return null;
  }
  
  public static int getItemViewType(TalkApp paramTalkApp, Cursor paramCursor)
  {
    int i = paramCursor.getInt(paramCursor.getColumnIndexOrThrow("type"));
    String str = paramCursor.getString(paramCursor.getColumnIndexOrThrow("username"));
    boolean bool = false;
    if (i == 2) {
      if ((GroupChatInvitation)mGroupChatInvitations.get(str) == null) {
        break label63;
      }
    }
    label63:
    for (bool = true;; bool = false) {
      return internalGetItemViewType(paramCursor, bool);
    }
  }
  
  private void handleAnimation()
  {
    int i = 1;
    if ((mBind.itemViewType == 1) && (mBind.callState != null) && (mBind.callState.appliesToContact(mUsername))) {}
    for (;;)
    {
      if (((i != 0) && (mCurrentAnimator != null) && (mCurrentAnimatorIsFast != mBind.callState.mPending)) || ((i == 0) && (mCurrentAnimator != null)))
      {
        mCurrentAnimator.cancel();
        setAnimator(null);
      }
      if ((i != 0) && (mCurrentAnimator == null))
      {
        mCurrentAnimatorIsFast = mBind.callState.mPending;
        setAnimator(makeAnimator(mBind.callState.mPending, this));
        if ((mCurrentAnimator != null) && (!mCurrentAnimator.isRunning())) {
          mCurrentAnimator.start();
        }
      }
      return;
      i = 0;
    }
  }
  
  private void handleDebug(Cursor paramCursor) {}
  
  private void init(Cursor paramCursor)
  {
    mUsernameColumn = paramCursor.getColumnIndexOrThrow("username");
    mNicknameColumn = paramCursor.getColumnIndexOrThrow("nickname");
    mContactTypeColumn = paramCursor.getColumnIndexOrThrow("type");
    mSubscriptionStatusColumn = paramCursor.getColumnIndexOrThrow("subscriptionStatus");
    mSubscriptionTypeColumn = paramCursor.getColumnIndexOrThrow("subscriptionType");
    mPresenceStatusColumn = paramCursor.getColumnIndexOrThrow("mode");
    mCustomStatusColumn = paramCursor.getColumnIndexOrThrow("status");
    mClientTypeColumn = paramCursor.getColumnIndexOrThrow("client_type");
    mLastUnreadMessageColumn = paramCursor.getColumnIndexOrThrow("last_unread_message");
    mQuickContactColumn = paramCursor.getColumnIndexOrThrow("qc");
    mAvatarHashColumn = paramCursor.getColumnIndexOrThrow("avatars_hash");
    mCapabilitiesColumn = paramCursor.getColumnIndexOrThrow("cap");
    mLine2Buffer = new CharArrayBuffer(32);
  }
  
  private static int internalGetItemViewType(Cursor paramCursor, boolean paramBoolean)
  {
    if (paramBoolean) {}
    long l;
    do
    {
      return 0;
      l = paramCursor.getInt(paramCursor.getColumnIndexOrThrow("subscriptionType"));
    } while (l == 5L);
    if (l == 0L) {
      return 3;
    }
    if (paramCursor.getInt(paramCursor.getColumnIndexOrThrow("is_active")) != 0) {}
    for (int i = 1; i != 0; i = 0) {
      return 1;
    }
    return 2;
  }
  
  private static boolean joined(RosterListItem paramRosterListItem)
  {
    if (mIsSelfItem) {}
    label37:
    label58:
    label63:
    label66:
    for (;;)
    {
      return true;
      int j;
      if ((mBind.capabilities & 0x1) != 0)
      {
        i = 1;
        if ((mBind.capabilities & 0x2) == 0) {
          break label58;
        }
        j = 1;
        if ((i == 0) && (j == 0)) {
          break label63;
        }
      }
      for (int i = 1;; i = 0)
      {
        if (i == 0) {
          break label66;
        }
        return false;
        i = 0;
        break;
        j = 0;
        break label37;
      }
    }
  }
  
  private AnimatorSet makeAnimator(boolean paramBoolean, RosterListItem paramRosterListItem)
  {
    final AnimatorSet localAnimatorSet = new AnimatorSet();
    int i;
    if (paramBoolean)
    {
      i = 250;
      if (!paramBoolean) {
        break label203;
      }
    }
    label203:
    for (int j = 1000;; j = 0)
    {
      localAnimatorSet.playSequentially(new Animator[] { ObjectAnimator.ofFloat(paramRosterListItem, "VideoPresenceAlpha", new float[] { 0.4F, 1.0F }).setDuration(i), ObjectAnimator.ofFloat(paramRosterListItem, "VideoPresenceAlpha", new float[] { 1.0F, 0.4F }).setDuration(i), ObjectAnimator.ofFloat(paramRosterListItem, "VideoPresenceAlpha", new float[] { 0.4F, 1.0F }).setDuration(i), ObjectAnimator.ofFloat(paramRosterListItem, "VideoPresenceAlpha", new float[] { 1.0F, 0.4F }).setDuration(i), ObjectAnimator.ofFloat(paramRosterListItem, "VideoPresenceAlpha", new float[] { 0.4F, 0.4F }).setDuration(j) });
      localAnimatorSet.addListener(new Animator.AnimatorListener()
      {
        boolean mCanceled;
        
        public void onAnimationCancel(Animator paramAnonymousAnimator)
        {
          mCanceled = true;
          setVideoPresenceAlpha(1.0F);
        }
        
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          if (!mCanceled)
          {
            localAnimatorSet.start();
            return;
          }
          setVideoPresenceAlpha(1.0F);
        }
        
        public void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public void onAnimationStart(Animator paramAnonymousAnimator)
        {
          mCanceled = false;
        }
      });
      return localAnimatorSet;
      i = 1500;
      break;
    }
  }
  
  public static void onStop()
  {
    Iterator localIterator = sAnimatingItems.iterator();
    while (localIterator.hasNext())
    {
      RosterListItem localRosterListItem = (RosterListItem)localIterator.next();
      if (mCurrentAnimator != null)
      {
        mCurrentAnimator.cancel();
        mCurrentAnimator = null;
      }
    }
    sAnimatingItems.clear();
  }
  
  private void setAnimator(Animator paramAnimator)
  {
    if (paramAnimator == null) {
      sAnimatingItems.remove(this);
    }
    for (;;)
    {
      mCurrentAnimator = paramAnimator;
      return;
      sAnimatingItems.add(this);
    }
  }
  
  public void bind(Cursor paramCursor, long paramLong, boolean paramBoolean1, Markup paramMarkup, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, RosterListAdapter.CallState paramCallState, boolean paramBoolean5, boolean paramBoolean6)
  {
    if (!mComputedColumns)
    {
      mComputedColumns = true;
      init(paramCursor);
    }
    mMarkup = paramMarkup;
    mCursor = paramCursor;
    mCursorPos = paramCursor.getPosition();
    mNarrow = paramBoolean3;
    if (mTextWrapper == null) {
      return;
    }
    String str = mUsername;
    mBind.compute(paramCursor, paramCallState, paramBoolean4, paramLong, paramBoolean5, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean6);
    if (!TextUtils.equals(mUsername, str)) {
      jumpDrawablesToCurrentState();
    }
    handleDebug(paramCursor);
    mBind.bindLines(paramMarkup, paramCursor, false);
    mBind.bindPresence(paramCursor);
    mBind.bindVideoButton(paramCursor);
    mBind.bindShover(false);
    mBind.bindAvatar(paramCursor);
    mBind.handleLayout(false);
    mBind.handleNarrow();
    if (mBind.suppressVideoButton)
    {
      mVideoButtonContainerView.setVisibility(8);
      mSeparator.setVisibility(8);
    }
    handleAnimation();
  }
  
  public void bindEmpty() {}
  
  public int getCapabilities()
  {
    if (mBind == null) {
      return 0;
    }
    return mBind.capabilities;
  }
  
  public String getContact()
  {
    return mUsername;
  }
  
  public int getPresence()
  {
    if (mBind == null) {
      return 0;
    }
    return mBind.presenceMode;
  }
  
  public void onFinishInflate()
  {
    super.onFinishInflate();
    mResources = getResources();
    mShoveDistance = mResources.getDimensionPixelOffset(2131427333);
    mContainerView = ((ViewGroup)findViewById(2131755053));
    mLine1 = ((TextView)findViewById(2131755019));
    mLine2 = ((TextView)findViewById(2131755126));
    mShover = findViewById(2131755121);
    mPresenceView = ((ImageView)findViewById(2131755022));
    mVideoButtonView = ((ImageView)findViewById(2131755125));
    mVideoButtonContainerView = findViewById(2131755124);
    mTextWrapper = findViewById(2131755122);
    mQuickBadge = findViewById(2131755033);
    mNoQuickBadge = findViewById(2131755034);
    Resources localResources = mResources;
    mDefaultLine1TextColor = mResources.getColor(2131296298);
    mDefaultLine2TextColor = mResources.getColor(2131296299);
    mLine1Typeface = mLine1.getTypeface();
    setId(2131755120);
  }
  
  public void onMovedToScrapHeap()
  {
    if (mCurrentAnimator != null)
    {
      mCurrentAnimator.cancel();
      setAnimator(null);
    }
  }
  
  public void rebindAlternate()
  {
    if ((!mCursor.isClosed()) && (mCursor.moveToPosition(mCursorPos)))
    {
      mBind.bindShover(true);
      mBind.bindLines(mMarkup, mCursor, true);
      mBind.handleLayout(true);
      mBind.handleNarrow();
      if (isActivated()) {
        setActivated(false);
      }
    }
  }
  
  public void setActivated(boolean paramBoolean)
  {
    mContainerView.setActivated(paramBoolean);
  }
  
  public void setIsSelfItem(boolean paramBoolean)
  {
    mIsSelfItem = true;
  }
  
  public void setVideoPresenceAlpha(float paramFloat)
  {
    if (mVideoButtonView != null) {
      mVideoButtonView.setAlpha(paramFloat);
    }
  }
  
  protected boolean shoverEnabled()
  {
    return mShover.getVisibility() == 0;
  }
  
  private class BindHandler
  {
    long accountId;
    boolean audioCapable;
    RosterListAdapter.CallState callState;
    int capabilities;
    int clientType;
    int contactType;
    private boolean fastTrack;
    GroupChatInvitation invitation;
    boolean isGroupChat;
    boolean isGroupChatInvitation;
    int itemViewType;
    private boolean narrow;
    CharSequence nickname;
    int presenceMode;
    private boolean scrolling;
    boolean suppressIndent;
    private boolean suppressVideoButton;
    boolean tabletMode;
    boolean videoCapable;
    
    private BindHandler() {}
    
    private void bindAvatar(Cursor paramCursor)
    {
      int k = 1;
      Object localObject;
      label39:
      ImageView localImageView;
      label59:
      int m;
      int i;
      if ((!isGroupChat) && (fastTrack) && (!narrow))
      {
        j = 1;
        if (j != 0) {
          break label183;
        }
        localObject = mNoQuickBadge;
        localImageView = (ImageView)localObject;
        if (j == 0) {
          break label195;
        }
        localObject = mNoQuickBadge;
        localObject = (ImageView)localObject;
        localImageView.setVisibility(0);
        ((ImageView)localObject).setVisibility(8);
        m = 0;
        i = 0;
        if (!isGroupChat) {
          break label207;
        }
        setAvatar(localImageView, mApp.mGroupAvatar);
        if (!scrolling)
        {
          RosterListItem.this.clearColorFilter(localImageView);
          if (itemViewType != 0) {
            RosterListItem.this.clearColorFilter(mVideoButtonView);
          }
        }
        if (presenceMode == 0) {
          break label274;
        }
      }
      label183:
      label195:
      label207:
      label274:
      for (int j = k;; j = 0)
      {
        if ((j != 0) || (i == 0)) {
          break label279;
        }
        localImageView.setColorFilter(mApp.getDesaturedColorFilter());
        return;
        j = 0;
        break;
        localObject = mQuickBadge;
        break label39;
        localObject = mQuickBadge;
        break label59;
        paramCursor = getAvatar(paramCursor, accountId, scrolling);
        if (paramCursor == null) {
          paramCursor = mApp.getGenericAvatar();
        }
        for (i = m;; i = 1)
        {
          if (j != 0) {
            ((QuickContactBadge)localImageView).assignContactFromEmail(mUsername, true);
          }
          setAvatar(localImageView, paramCursor);
          break;
        }
      }
      label279:
      localImageView.clearColorFilter();
    }
    
    private void bindLines(Markup paramMarkup, Cursor paramCursor, boolean paramBoolean)
    {
      mLine1.setTypeface(mLine1Typeface);
      mLine1.setTextColor(mDefaultLine1TextColor);
      mLine2.setTextColor(mDefaultLine2TextColor);
      if (itemViewType == 0)
      {
        if (isGroupChat)
        {
          mLine1.setText(mResources.getString(2131492922));
          mLine2.setText(StringUtils.parseBareAddress(invitation.getInviter()));
          return;
        }
        mLine1.setText(mResources.getString(2131492903));
        mLine2.setText(nickname);
        return;
      }
      mLine1.setText(nickname);
      int i = 0;
      int j = 0;
      if ((itemViewType == 3) || ((tabletMode) && (mContainerView.isActivated())))
      {
        mLine1.setTypeface(mLine1.getTypeface(), 1);
        mLine1.setTextColor(-1);
        mLine2.setTextColor(-1);
      }
      boolean bool;
      if (itemViewType == 1)
      {
        bool = true;
        label247:
        if (bool != paramBoolean)
        {
          String str = paramCursor.getString(mLastUnreadMessageColumn);
          if (!TextUtils.isEmpty(str))
          {
            mLine1.setTypeface(mLine1.getTypeface(), 1);
            mLine2.setText(paramMarkup.markup('"' + str + '"'));
            j = 1;
          }
          i = j;
          if (!mContainerView.isActivated()) {}
        }
        switch (clientType)
        {
        default: 
          i = j;
          label388:
          j = i;
          if (i == 0)
          {
            if (!isGroupChat) {
              break label491;
            }
            mLine2.setText(2131492921);
            j = 1;
          }
          break;
        }
      }
      while (j == 0)
      {
        paramCursor = mUsername;
        paramMarkup = paramCursor;
        if (mApp.shouldHideRemoteJid(paramCursor)) {
          paramMarkup = "";
        }
        mLine2.setText(paramMarkup);
        return;
        bool = false;
        break label247;
        mLine2.setText(2131493121);
        i = j;
        break label388;
        label491:
        if ((presenceMode != 5) && (presenceMode != 4) && (presenceMode != 3))
        {
          j = i;
          if (presenceMode != 2) {}
        }
        else
        {
          paramCursor.copyStringToBuffer(mCustomStatusColumn, mLine2Buffer);
          j = i;
          if (mLine2Buffer.sizeCopied > 0)
          {
            mLine2.setText(mLine2Buffer.data, 0, mLine2Buffer.sizeCopied);
            j = 1;
          }
        }
      }
    }
    
    private void bindPresence(Cursor paramCursor)
    {
      mPresenceView.setImageResource(mApp.getStatusIcon(presenceMode, 0));
    }
    
    private void bindShover(boolean paramBoolean)
    {
      int i = 0;
      if (suppressIndent)
      {
        i = 0;
        j = i;
        if (paramBoolean) {
          if (i != 0) {
            break label118;
          }
        }
      }
      label118:
      for (int j = 1;; j = 0)
      {
        mShover.setVisibility(8);
        mTextWrapper.getLayoutParams()).leftMargin = mResources.getDimensionPixelOffset(2131427339);
        if (j != 0) {
          mShover.setVisibility(0);
        }
        return;
        if (itemViewType == 3)
        {
          i = 0;
          break;
        }
        if (itemViewType == 0) {
          break;
        }
        if (itemViewType != 1) {}
        for (i = 1;; i = 0) {
          break;
        }
      }
    }
    
    private void bindVideoButton(Cursor paramCursor)
    {
      int i;
      if ((callState != null) && (callState.appliesToContact(mUsername)))
      {
        i = 1;
        RosterListItem.access$1402(RosterListItem.this, findViewById(2131755123));
        mSeparator.setVisibility(8);
        mVideoButtonContainerView.setVisibility(0);
        mVideoButtonContainerView.setOnClickListener(null);
        mVideoButtonContainerView.setClickable(false);
        if (i == 0) {
          break label203;
        }
        mVideoButtonView.setImageResource(mApp.getAudioVideoButtonIcon(capabilities));
        if (!callState.mIsVideo) {
          break label187;
        }
        mVideoButtonView.setImageResource(2130837637);
        mVideoButtonContainerView.setOnClickListener(mVideoButtonClickedListener);
      }
      for (;;)
      {
        mSeparator.setVisibility(0);
        mVideoButtonContainerView.setBackgroundResource(2130837706);
        return;
        i = 0;
        break;
        label187:
        mVideoButtonView.setImageResource(2130837567);
      }
      label203:
      if ((!mIsSelfItem) && ((ActivityUtils.isVideoChatCapable(capabilities)) || (ActivityUtils.isAudioChatCapable(capabilities))))
      {
        mVideoButtonView.setImageResource(mApp.getAudioVideoButtonIcon(capabilities));
        mVideoButtonContainerView.setVisibility(0);
        mVideoButtonContainerView.setOnClickListener(mVideoButtonClickedListener);
        mVideoButtonContainerView.setBackgroundResource(2130837706);
        mSeparator.setVisibility(0);
        return;
      }
      mVideoButtonContainerView.setVisibility(8);
      mSeparator.setVisibility(8);
    }
    
    private Drawable getAvatar(Cursor paramCursor, long paramLong, boolean paramBoolean)
    {
      AvatarCache localAvatarCache = AvatarCache.getInstance(paramLong, true);
      int i = paramCursor.getColumnIndex("avatars_data");
      if (paramBoolean) {
        return localAvatarCache.getAvatarIfInCache(paramCursor, mAvatarHashColumn, i, mUsername, null, null);
      }
      return localAvatarCache.getAvatar(paramCursor, mAvatarHashColumn, i, mUsername, null);
    }
    
    private void handleLayout(boolean paramBoolean)
    {
      int i = 0;
      setPadding(0, 0, 0, 0);
      if (presenceMode != 0) {
        i = 1;
      }
      setBackgroundDrawable(null);
      if (mBind.itemViewType == 3) {
        mContainerView.setBackgroundResource(mApp.getStatusColorId(presenceMode));
      }
      for (;;)
      {
        mTextWrapper.setPadding(mTextWrapper.getPaddingLeft(), mTextWrapper.getPaddingTop(), mResources.getDimensionPixelOffset(2131427376), mTextWrapper.getPaddingBottom());
        return;
        if (mBind.itemViewType == 1) {
          mContainerView.setBackgroundResource(2130837665);
        } else if (i != 0) {
          mContainerView.setBackgroundResource(2130837667);
        } else {
          mContainerView.setBackgroundResource(2130837663);
        }
      }
    }
    
    private void handleNarrow()
    {
      int i = 0;
      if (narrow)
      {
        mVideoButtonContainerView.setVisibility(8);
        mSeparator.setVisibility(8);
        return;
      }
      mLine1.setVisibility(0);
      TextView localTextView = mLine2;
      if (mLine2.getText().length() > 0) {}
      for (;;)
      {
        localTextView.setVisibility(i);
        return;
        i = 8;
      }
    }
    
    private void setAvatar(ImageView paramImageView, Drawable paramDrawable)
    {
      paramImageView.setImageDrawable(paramDrawable);
      paramImageView.requestLayout();
    }
    
    void compute(Cursor paramCursor, RosterListAdapter.CallState paramCallState, boolean paramBoolean1, long paramLong, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6)
    {
      boolean bool = true;
      callState = paramCallState;
      suppressIndent = paramBoolean1;
      suppressVideoButton = paramBoolean6;
      RosterListItem.access$102(RosterListItem.this, paramCursor.getString(mUsernameColumn));
      isGroupChat = false;
      isGroupChatInvitation = false;
      invitation = null;
      contactType = paramCursor.getInt(mContactTypeColumn);
      if (contactType == 2)
      {
        isGroupChat = true;
        invitation = ((GroupChatInvitation)mApp.mGroupChatInvitations.get(mUsername));
        if (invitation != null)
        {
          paramBoolean1 = true;
          isGroupChatInvitation = paramBoolean1;
        }
      }
      else
      {
        itemViewType = RosterListItem.internalGetItemViewType(paramCursor, isGroupChatInvitation);
        nickname = paramCursor.getString(mNicknameColumn);
        capabilities = paramCursor.getInt(mCapabilitiesColumn);
        if ((capabilities & 0x1) == 0) {
          break label294;
        }
        paramBoolean1 = true;
        label183:
        audioCapable = paramBoolean1;
        if ((capabilities & 0x2) == 0) {
          break label299;
        }
        paramBoolean1 = bool;
        label200:
        videoCapable = paramBoolean1;
        tabletMode = paramBoolean2;
        accountId = paramLong;
        narrow = paramBoolean5;
        scrolling = paramBoolean3;
        fastTrack = paramBoolean4;
        if (TextUtils.isEmpty(nickname)) {
          if (!isGroupChat) {
            break label304;
          }
        }
      }
      label294:
      label299:
      label304:
      for (paramCallState = mResources.getText(2131492920);; paramCallState = mUsername)
      {
        nickname = paramCallState;
        presenceMode = paramCursor.getInt(mPresenceStatusColumn);
        return;
        paramBoolean1 = false;
        break;
        paramBoolean1 = false;
        break label183;
        paramBoolean1 = false;
        break label200;
      }
    }
  }
  
  public static class DontPressWithParentFrameLayout
    extends FrameLayout
  {
    public DontPressWithParentFrameLayout(Context paramContext)
    {
      super();
    }
    
    public DontPressWithParentFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public DontPressWithParentFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
    {
      super(paramAttributeSet, paramInt);
    }
    
    public void setPressed(boolean paramBoolean)
    {
      if (paramBoolean == isPressed()) {}
      RosterListItem localRosterListItem;
      do
      {
        return;
        if (!paramBoolean) {
          break;
        }
        localRosterListItem = RosterListItem.findRosterListItem(this);
      } while (localRosterListItem == null);
      if (!RosterListItem.joined(localRosterListItem))
      {
        if (localRosterListItem.isPressed())
        {
          super.setPressed(false);
          return;
        }
        mTextWrapper.setPressed(paramBoolean);
        return;
      }
      super.setPressed(paramBoolean);
    }
  }
  
  public static class RelativeLayoutPressHandler
    extends RelativeLayout
  {
    public RelativeLayoutPressHandler(Context paramContext)
    {
      super();
    }
    
    public RelativeLayoutPressHandler(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public RelativeLayoutPressHandler(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
    {
      super(paramAttributeSet, paramInt);
    }
    
    public void setPressed(boolean paramBoolean)
    {
      getParent();
      RosterListItem localRosterListItem = RosterListItem.findRosterListItem(this);
      if (localRosterListItem == null) {
        return;
      }
      if (!RosterListItem.joined(localRosterListItem)) {
        mVideoButtonContainerView.setPressed(false);
      }
      mQuickBadge.setPressed(false);
      mNoQuickBadge.setPressed(false);
      super.setPressed(paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */