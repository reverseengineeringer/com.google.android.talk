package com.google.android.talk;

import android.app.Activity;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Paint.Style;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.LineHeightSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.URLSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.google.android.talk.util.Markup;
import java.util.Date;
import java.util.Formatter;
import java.util.HashMap;

class ChatView$MessageItem
  extends RelativeLayout
{
  private Divot mAvatar;
  private int mBarColorNormal;
  private int mBarColorTop;
  private String mBody;
  public StyleSpan mBold = new StyleSpan(1);
  public java.text.DateFormat mDateFormat;
  public String mDateFormatStr;
  private boolean mIsFirstItemInList;
  private boolean mIsLastItemInList;
  private float[] mLinePoints = new float[20];
  private Markup mMarkup;
  private CharSequence mMeString;
  public View mMessageBlock;
  public TextView mMessageView;
  private Paint mPaint = new Paint();
  public SpannableStringBuilder mSB = new SpannableStringBuilder();
  public TextView mSentAt;
  private LineHeightSpan mSpan = new LineHeightSpan()
  {
    public void chooseHeight(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, Paint.FontMetricsInt paramAnonymousFontMetricsInt)
    {
      ascent -= 10;
    }
  };
  public StringBuilder mStringBuilder = new StringBuilder();
  private int mViewType;
  
  public ChatView$MessageItem(ChatView paramChatView, Activity paramActivity, int paramInt)
  {
    super(paramActivity);
    paramChatView.setOrientation(1);
    Resources localResources = ChatView.access$4600(paramChatView);
    switch (paramInt)
    {
    }
    for (;;)
    {
      mAvatar = ((Divot)findViewById(2131755018));
      mMessageView = ((TextView)findViewById(2131755074));
      mSentAt = ((TextView)findViewById(2131755075));
      mMeString = ChatView.access$4600(paramChatView).getText(2131492917);
      mViewType = paramInt;
      mDateFormat = android.text.format.DateFormat.getTimeFormat(ChatView.access$2400(paramChatView));
      mDateFormatStr = ChatView.access$4600(paramChatView).getString(2131492935);
      mBarColorTop = localResources.getColor(2131296285);
      mBarColorNormal = localResources.getColor(2131296286);
      mMarkup = new Markup(paramActivity, 0, 0);
      mMessageBlock = findViewById(2131755073);
      if (ChatView.access$4800() == 0) {
        ChatView.access$4802(localResources.getColor(2131296269));
      }
      if (mSentAt != null) {
        mSentAt.setAllCaps(true);
      }
      setWillNotDraw(false);
      return;
      ChatView.access$4700(paramChatView).inflate(2130968601, this, true);
      setPadding(localResources.getDimensionPixelOffset(2131427344), localResources.getDimensionPixelOffset(2131427345), localResources.getDimensionPixelOffset(2131427346), localResources.getDimensionPixelOffset(2131427347));
      continue;
      ChatView.access$4700(paramChatView).inflate(2130968603, this, true);
      setPadding(localResources.getDimensionPixelOffset(2131427348), localResources.getDimensionPixelOffset(2131427349), localResources.getDimensionPixelOffset(2131427350), localResources.getDimensionPixelOffset(2131427351));
      continue;
      ChatView.access$4700(paramChatView).inflate(2130968602, this, true);
      setPadding(localResources.getDimensionPixelOffset(2131427352), localResources.getDimensionPixelOffset(2131427353), localResources.getDimensionPixelOffset(2131427354), localResources.getDimensionPixelOffset(2131427355));
      continue;
      ChatView.access$4700(paramChatView).inflate(2130968604, this, true);
      setPadding(localResources.getDimensionPixelOffset(2131427356), localResources.getDimensionPixelOffset(2131427357), localResources.getDimensionPixelOffset(2131427358), localResources.getDimensionPixelOffset(2131427359));
    }
  }
  
  private int colorForNickname(String paramString, boolean paramBoolean)
  {
    int j = -16777216;
    int i = j;
    if (paramBoolean)
    {
      i = j;
      if (paramString != null)
      {
        if (ChatView.access$5800(this$0) == null) {
          ChatView.access$5802(this$0, new int[] { -65536, -16711936, -16776961 });
        }
        if (!ChatView.access$5900(this$0).containsKey(paramString)) {
          break label88;
        }
        i = ((Integer)ChatView.access$5900(this$0).get(paramString)).intValue();
      }
    }
    return i;
    label88:
    int k = Math.abs(paramString.hashCode()) % ChatView.access$5800(this$0).length;
    j = ChatView.access$5800(this$0).length;
    i = -16777216;
    for (;;)
    {
      if (j > 0)
      {
        k %= ChatView.access$5800(this$0).length;
        i = ChatView.access$5800(this$0)[k];
        if (i != 0) {
          ChatView.access$5800(this$0)[k] = 0;
        }
      }
      else
      {
        ChatView.access$5900(this$0).put(paramString, Integer.valueOf(i));
        return i;
      }
      k += 1;
      j -= 1;
    }
  }
  
  private SpannableString convertToSpannableString(CharSequence paramCharSequence, boolean paramBoolean)
  {
    if (paramBoolean) {
      return mMarkup.markup(paramCharSequence);
    }
    if ((paramCharSequence instanceof SpannableString)) {
      return (SpannableString)paramCharSequence;
    }
    return new SpannableString(paramCharSequence);
  }
  
  private View inflatePictureView(int paramInt)
  {
    Integer localInteger = new Integer(paramInt);
    View localView = findViewWithTag(localInteger);
    if (TalkApp.verboseLoggable()) {
      ChatView.access$4200(this$0, "inflatePictureView looking for tag: " + localInteger + " this: " + this);
    }
    if (localView != null)
    {
      if (TalkApp.verboseLoggable()) {
        ChatView.access$4200(this$0, "inflatePictureView found view with tag: " + localInteger + " getTag: " + localView.getTag() + " pictureView: " + localView);
      }
      localView.setVisibility(0);
      return localView;
    }
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131755073);
    if (localLinearLayout == null)
    {
      Log.d("talk", "linearLayoutRoot is NULL, can't find message_block, tag: " + localInteger);
      debug(0);
      return null;
    }
    Object localObject2 = (LinearLayout)findViewWithTag("wrapperView");
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = new LinearLayout(getContext());
      ((LinearLayout)localObject1).setOrientation(1);
      ((LinearLayout)localObject1).setTag("wrapperView");
      localObject2 = new LinearLayout.LayoutParams(-2, -2);
      if (TalkApp.verboseLoggable()) {
        ChatView.access$4200(this$0, "inflatePictureView linearLayoutRoot: " + localLinearLayout + " wrapperView: " + localObject1 + " params: " + localObject2);
      }
      localLinearLayout.addView((View)localObject1, (ViewGroup.LayoutParams)localObject2);
      localLinearLayout.setId(2131755073);
    }
    ChatView.access$4700(this$0).inflate(2130968618, (ViewGroup)localObject1, true);
    int i = ((LinearLayout)localObject1).getChildCount();
    paramInt = 0;
    boolean bool;
    if (paramInt < i)
    {
      localObject2 = ((LinearLayout)localObject1).getChildAt(paramInt);
      if ((((View)localObject2).getId() == 2131755112) && (((View)localObject2).getTag() == null))
      {
        ((View)localObject2).setTag(localInteger);
        localObject1 = localObject2;
        bool = true;
      }
    }
    for (;;)
    {
      if (TalkApp.verboseLoggable()) {
        ChatView.access$4200(this$0, "inflatePictureView had to inflate view. found: " + bool + " CREATED tag: " + localInteger + " getTag: " + ((View)localObject1).getTag() + " pictureView: " + localObject1 + " parent: " + ((View)localObject1).getParent() + " dump: ");
      }
      ((View)localObject1).setVisibility(0);
      return (View)localObject1;
      paramInt += 1;
      break;
      bool = false;
      localObject1 = localView;
    }
  }
  
  private void removeAllPictureViews()
  {
    for (Integer localInteger = new Integer(0);; localInteger = Integer.valueOf(localInteger.intValue() + 1))
    {
      View localView = findViewWithTag(localInteger);
      if (localView == null) {
        break;
      }
      if (localView.getId() == 2131755112) {
        localView.setVisibility(8);
      }
    }
  }
  
  private void setPicture(PictureCache.PictureData paramPictureData, ImageView paramImageView)
  {
    int j = 0;
    if (TalkApp.verboseLoggable()) {
      ChatView.access$4200(this$0, "setPicture pictureData: " + paramPictureData + " desc: " + paramPictureData.getDescription());
    }
    View localView = (View)paramImageView.getParent().getParent().getParent();
    localView.setVisibility(0);
    ((ImageView)localView.findViewById(16908301)).setVisibility(8);
    localView.findViewById(2131755113).setVisibility(0);
    paramImageView.setImageDrawable(paramPictureData.getDrawable());
    paramImageView = paramPictureData.getDescription();
    int i;
    int k;
    if (!TextUtils.isEmpty(paramImageView))
    {
      i = 1;
      String str = paramPictureData.getTitle();
      mSB.clear();
      mSB.clearSpans();
      if (!TextUtils.isEmpty(str))
      {
        mSB.append(str);
        mSB.setSpan(new ForegroundColorSpan(ChatView.access$4600(this$0).getColor(2131296265)), 0, mSB.length(), 33);
        if (i != 0) {
          mSB.append("\n");
        }
      }
      if (i != 0) {
        mSB.append(paramImageView);
      }
      ((TextView)localView.findViewById(2131755116)).setText(mSB);
      k = paramPictureData.getType();
      if (k != 4) {
        break label288;
      }
      i = 2130837563;
    }
    for (;;)
    {
      paramPictureData = (ImageView)localView.findViewById(2131755115);
      if (i == 0) {
        break label317;
      }
      paramPictureData.setImageResource(i);
      return;
      i = 0;
      break;
      label288:
      if (k == 3)
      {
        i = 2130837683;
      }
      else
      {
        i = j;
        if (k == 2) {
          i = 2130837709;
        }
      }
    }
    label317:
    paramPictureData.setImageDrawable(null);
  }
  
  private void showPictures(CharSequence paramCharSequence)
  {
    paramCharSequence = getMessageLinks();
    int j = paramCharSequence.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = paramCharSequence[i].getURL();
      if (PictureCache.allowScraping((String)localObject))
      {
        localObject = ChatView.access$6100(this$0).getPictureDataIfInCache((String)localObject, 0, 0, ChatView.access$6000(this$0), null);
        ChatView.access$4200(this$0, "showPictures pictureData: " + localObject);
        if ((localObject != null) && (((PictureCache.PictureData)localObject).getDrawable() != null)) {
          setPicture((PictureCache.PictureData)localObject, (ImageView)inflatePictureView(i).findViewById(2131755114));
        }
      }
      i += 1;
    }
  }
  
  void appendAnnotation(SpannableStringBuilder paramSpannableStringBuilder, long paramLong, boolean paramBoolean)
  {
    if (paramBoolean) {
      mMessageView.setAutoLinkMask(15);
    }
    paramSpannableStringBuilder = convertToSpannableString(paramSpannableStringBuilder, false);
    mMessageView.setText(paramSpannableStringBuilder, TextView.BufferType.EDITABLE);
    if (paramLong != 0L) {
      setTimeStamp(paramLong);
    }
  }
  
  public void appendGroupChatConversionMessage(long paramLong)
  {
    CharSequence localCharSequence = ChatView.access$4600(this$0).getText(2131492932);
    mSB.clear();
    mSB.clearSpans();
    mSB.append(localCharSequence);
    int i = localCharSequence.length();
    mSB.setSpan(new ForegroundColorSpan(ChatView.access$4600(this$0).getColor(2131296258)), 0, i, 33);
    appendAnnotation(mSB, 0L, false);
  }
  
  void appendInboxMessage(String paramString1, String paramString2, long paramLong, boolean paramBoolean, Cursor paramCursor)
  {
    paramCursor = mStringBuilder;
    paramCursor.setLength(0);
    paramCursor.append(paramString2);
    mSB.clear();
    mSB.clearSpans();
    mSB.append(paramCursor);
    boolean bool = this$0.isGroupChat();
    paramString2 = null;
    if (bool) {
      paramString2 = ChatView.access$4600(this$0).getString(2131492918, new Object[] { paramString1 });
    }
    appendMessage(mSB, paramLong, paramBoolean, paramString2, colorForNickname(paramString1, bool), true, true, false);
  }
  
  void appendMessage(SpannableStringBuilder paramSpannableStringBuilder, long paramLong, boolean paramBoolean1, String paramString, int paramInt, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    if (paramBoolean2) {
      mMessageView.setAutoLinkMask(15);
    }
    if (paramString != null)
    {
      paramSpannableStringBuilder.insert(0, paramString);
      paramSpannableStringBuilder.setSpan(new ForegroundColorSpan(-8355712), 0, paramString.length(), 0);
    }
    if (paramBoolean4) {
      mSentAt.setText(ChatView.access$4600(this$0).getString(2131492936));
    }
    for (;;)
    {
      paramString = convertToSpannableString(paramSpannableStringBuilder, paramBoolean3);
      mMessageView.setText(paramString, TextView.BufferType.EDITABLE);
      showPictures(paramSpannableStringBuilder);
      return;
      if (paramBoolean1) {
        setTimeStamp(paramLong);
      }
    }
  }
  
  public void appendOffTheRecordStatus(String paramString)
  {
    mSB.clear();
    mSB.clearSpans();
    mSB.append(paramString);
    int i = paramString.length();
    mSB.setSpan(new ForegroundColorSpan(ChatView.access$4600(this$0).getColor(2131296260)), 0, i, 33);
    mSB.setSpan(new StyleSpan(2), 0, i, 33);
    mSB.setSpan(new RelativeSizeSpan(0.8F), 0, i, 33);
    appendAnnotation(mSB, 0L, false);
  }
  
  public void appendPresenceUpdates(String paramString, int paramInt, long paramLong)
  {
    Object localObject;
    switch (paramInt)
    {
    default: 
      localObject = ChatView.access$4600(this$0);
      if (!ChatView.access$4900(this$0)) {
        break;
      }
    }
    for (paramInt = 2131492925;; paramInt = 2131492929)
    {
      localObject = ((Resources)localObject).getText(paramInt);
      for (;;)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        new Formatter(localStringBuilder).format(localObject.toString(), new Object[] { paramString });
        paramString = localStringBuilder.toString();
        mSB.clear();
        mSB.clearSpans();
        mSB.append(paramString);
        paramInt = paramString.length();
        mSB.setSpan(new ForegroundColorSpan(ChatView.access$4600(this$0).getColor(2131296258)), 0, paramInt, 33);
        mSB.setSpan(new StyleSpan(2), 0, paramInt, 33);
        mSB.setSpan(new RelativeSizeSpan(0.8F), 0, paramInt, 33);
        appendAnnotation(mSB, paramLong, false);
        return;
        localObject = ChatView.access$4600(this$0);
        if (ChatView.access$4900(this$0)) {}
        for (paramInt = 2131492924;; paramInt = 2131492926)
        {
          localObject = ((Resources)localObject).getText(paramInt);
          break;
        }
        localObject = ChatView.access$4600(this$0).getText(2131492927);
        continue;
        localObject = ChatView.access$4600(this$0).getText(2131492928);
      }
    }
  }
  
  void appendSentMessage(String paramString, long paramLong, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    StringBuilder localStringBuilder = mStringBuilder;
    localStringBuilder.setLength(0);
    localStringBuilder.length();
    localStringBuilder.append(paramString);
    int i = 0;
    if (paramInt > 0)
    {
      i = localStringBuilder.length();
      localStringBuilder.append("\n");
      localStringBuilder.append(ChatView.access$4600(this$0).getString(2131492946));
    }
    mSB.clear();
    mSB.clearSpans();
    mSB.append(localStringBuilder);
    if (paramInt > 0)
    {
      paramInt = mSB.length();
      mSB.setSpan(new ForegroundColorSpan(ChatView.access$4600(this$0).getColor(2131296259)), 0, paramInt, 33);
      mSB.setSpan(new StyleSpan(2), 0, paramInt, 33);
      if (i > 0) {
        mSB.setSpan(new RelativeSizeSpan(0.8F), i, paramInt, 33);
      }
    }
    appendMessage(mSB, paramLong, paramBoolean1, null, -16777216, true, true, paramBoolean2);
  }
  
  public void appendStatusMessage(String paramString, long paramLong)
  {
    mSB.clear();
    mSB.clearSpans();
    mSB.append(paramString);
    int i = paramString.length();
    mSB.setSpan(new ForegroundColorSpan(ChatView.access$4600(this$0).getColor(2131296260)), 0, i, 33);
    mSB.setSpan(new StyleSpan(2), 0, i, 33);
    mSB.setSpan(new RelativeSizeSpan(0.8F), 0, i, 33);
    appendAnnotation(mSB, 0L, false);
  }
  
  public void appendUserStatusMessage(String paramString, long paramLong, boolean paramBoolean)
  {
    mSB.clear();
    mSB.clearSpans();
    paramString = ChatView.access$4600(this$0).getString(2131493128, new Object[] { ChatView.access$800(this$0), paramString });
    mSB.append(paramString);
    paramString = mSB;
    if (paramBoolean) {}
    for (;;)
    {
      appendAnnotation(paramString, paramLong, true);
      return;
      paramLong = 0L;
    }
  }
  
  public void bind(Cursor paramCursor)
  {
    long l1 = paramCursor.getLong(ChatView.access$2700(this$0));
    int i = paramCursor.getInt(ChatView.access$2800(this$0));
    boolean bool1;
    label67:
    String str2;
    String str1;
    Object localObject;
    label150:
    label196:
    boolean bool2;
    if (paramCursor.getPosition() == 0)
    {
      bool1 = true;
      mIsFirstItemInList = bool1;
      if (paramCursor.getPosition() != paramCursor.getCount() - 1) {
        break label431;
      }
      bool1 = true;
      mIsLastItemInList = bool1;
      mSentAt.setText("");
      mMessageView.setText("");
      str2 = paramCursor.getString(ChatView.access$2600(this$0));
      mBody = str2;
      if (!ChatView.access$4900(this$0)) {
        break label437;
      }
      str1 = paramCursor.getString(ChatView.access$2500(this$0));
      localObject = ChatView.access$5000(this$0, str1);
      int j = paramCursor.getInt(ChatView.access$2900(this$0));
      long l2 = paramCursor.getLong(ChatView.access$3100(this$0));
      if ((j != 1) && (l2 <= 60000L)) {
        break label452;
      }
      bool1 = true;
      if (paramCursor.getInt(ChatView.access$3200(this$0)) != 1) {
        break label458;
      }
      bool2 = true;
      label216:
      if (paramCursor.getPosition() == paramCursor.getCount() - 1)
      {
        if (TalkApp.verboseLoggable()) {
          ChatView.access$4200(this$0, "delta = " + l2 + ", showTs=" + bool1);
        }
        if (bool1) {
          break label464;
        }
        ChatView.access$5100(this$0, 60000L);
      }
      label293:
      removeAllPictureViews();
      if (mAvatar != null) {
        mAvatar.asImageView().setBackgroundColor(0);
      }
      switch (i)
      {
      case 2: 
      case 3: 
      case 4: 
      case 5: 
      case 8: 
      default: 
        appendPresenceUpdates((String)localObject, i, l1);
      }
    }
    for (;;)
    {
      if (!mIsLastItemInList) {
        break label882;
      }
      mSentAt.setVisibility(0);
      return;
      bool1 = false;
      break;
      label431:
      bool1 = false;
      break label67;
      label437:
      str1 = null;
      localObject = this$0.getNickname();
      break label150;
      label452:
      bool1 = false;
      break label196;
      label458:
      bool2 = false;
      break label216;
      label464:
      ChatView.access$5200(this$0);
      break label293;
      appendInboxMessage((String)localObject, str2, l1, bool1, paramCursor);
      if (ChatView.access$4900(this$0))
      {
        paramCursor = ChatView.access$5300(this$0, str1);
        ChatView.access$2002(this$0, ChatView.access$5400(this$0).getAvatar(paramCursor, this));
        label527:
        if (ChatView.access$2000(this$0) == null) {
          break label599;
        }
        mAvatar.asImageView().setImageDrawable(ChatView.access$2000(this$0));
        label556:
        localObject = mAvatar;
        if (!ChatView.access$4900(this$0)) {
          break label624;
        }
      }
      label599:
      label624:
      for (paramCursor = null;; paramCursor = ChatView.access$1700(this$0))
      {
        ((Divot)localObject).assignContactFromEmail(paramCursor);
        break;
        ChatView.access$2000(this$0).mutate();
        break label527;
        mAvatar.asImageView().setImageDrawable(ChatView.access$5500(this$0).getGenericAvatar());
        break label556;
      }
      appendSentMessage(str2, l1, bool1, paramCursor.getInt(ChatView.access$3000(this$0)), bool2);
      mAvatar.asImageView().setImageDrawable(ChatView.access$5600(this$0));
      mAvatar.assignContactFromEmail(ChatView.access$5700(this$0));
      continue;
      appendGroupChatConversionMessage(l1);
      continue;
      appendOffTheRecordStatus(ChatView.access$4600(this$0).getString(2131492937));
      continue;
      appendOffTheRecordStatus(ChatView.access$4600(this$0).getString(2131492938));
      continue;
      appendOffTheRecordStatus(ChatView.access$4600(this$0).getString(2131492939));
      continue;
      appendOffTheRecordStatus(ChatView.access$4600(this$0).getString(2131492940, new Object[] { localObject }));
      continue;
      appendStatusMessage(str2, l1);
      continue;
      appendUserStatusMessage(ChatView.access$4600(this$0).getString(2131492931, new Object[] { str2 }), l1, false);
      continue;
      appendUserStatusMessage(ChatView.access$4600(this$0).getString(2131492930, new Object[] { str2 }), l1, true);
      continue;
      appendStatusMessage(str2, l1);
    }
    label882:
    paramCursor = mSentAt;
    if (mSentAt.getText().length() == 0) {}
    for (i = 8;; i = 0)
    {
      paramCursor.setVisibility(i);
      return;
    }
  }
  
  public void dispatchDraw(Canvas paramCanvas)
  {
    Object localObject = mMessageBlock;
    if (localObject != null)
    {
      float f2 = ((View)localObject).getX();
      float f5 = ((View)localObject).getY();
      float f1 = ((View)localObject).getX() + ((View)localObject).getWidth();
      float f4 = ((View)localObject).getY() + ((View)localObject).getHeight();
      localObject = mPaint;
      ((Paint)localObject).setStyle(Paint.Style.FILL);
      ((Paint)localObject).setColor(-1);
      paramCanvas.drawRect(f2, f5 + 1.0F, f1, f4, (Paint)localObject);
      super.dispatchDraw(paramCanvas);
      float f3 = f1 - 1.0F;
      f1 = f4;
      if (mIsLastItemInList) {
        f1 = f4 - 1.0F;
      }
      if ((mAvatar.getPosition() == 4) || (mAvatar.getPosition() == 1))
      {
        if (mAvatar.getPosition() != 4) {
          break label388;
        }
        f4 = f2;
        if (mAvatar.getPosition() != 4) {
          break label395;
        }
      }
      for (;;)
      {
        mLinePoints[0] = f4;
        mLinePoints[1] = (mAvatar.getCloseOffset() + f5);
        mLinePoints[2] = f4;
        mLinePoints[3] = f5;
        mLinePoints[4] = f4;
        mLinePoints[5] = f5;
        mLinePoints[6] = f3;
        mLinePoints[7] = f5;
        mLinePoints[8] = f3;
        mLinePoints[9] = f5;
        mLinePoints[10] = f3;
        mLinePoints[11] = f1;
        mLinePoints[12] = f3;
        mLinePoints[13] = f1;
        mLinePoints[14] = f4;
        mLinePoints[15] = f1;
        mLinePoints[16] = f4;
        mLinePoints[17] = f1;
        mLinePoints[18] = f4;
        mLinePoints[19] = (mAvatar.getFarOffset() + f5);
        ((Paint)localObject).setColor(-3355444);
        ((Paint)localObject).setStrokeWidth(1.0F);
        ((Paint)localObject).setStyle(Paint.Style.STROKE);
        paramCanvas.drawLines(mLinePoints, (Paint)localObject);
        return;
        label388:
        f4 = f3;
        break;
        label395:
        f3 = f2;
      }
    }
    super.dispatchDraw(paramCanvas);
  }
  
  final URLSpan[] getMessageLinks()
  {
    return mMessageView.getUrls();
  }
  
  void setTimeStamp(long paramLong)
  {
    Object localObject = new Date(paramLong);
    Date localDate = new Date(System.currentTimeMillis());
    String str = mDateFormat.format((Date)localObject);
    CharSequence localCharSequence = android.text.format.DateFormat.format(mDateFormatStr, (Date)localObject);
    if ((localDate.getDate() == ((Date)localObject).getDate()) && (localDate.getMonth() == ((Date)localObject).getMonth()) && (localDate.getYear() == ((Date)localObject).getYear()))
    {
      i = 1;
      if (i == 0) {
        break label135;
      }
    }
    label135:
    for (int i = 2131492934;; i = 2131492933)
    {
      localObject = ChatView.access$4600(this$0).getString(i, new Object[] { str, localCharSequence });
      mSentAt.setText((CharSequence)localObject);
      return;
      i = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.MessageItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */