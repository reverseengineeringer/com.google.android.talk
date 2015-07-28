.class Lcom/google/android/talk/ChatView$ChatListener;
.super Lcom/google/android/gtalkservice/IChatListener$Stub;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChatListener"
.end annotation


# instance fields
.field volatile mChatView:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .param p1, "chatView"    # Lcom/google/android/talk/ChatView;

    .prologue
    .line 2840
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IChatListener$Stub;-><init>()V

    .line 2841
    iput-object p1, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2842
    return-void
.end method

.method private simpleRequery()V
    .locals 1

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2983
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_0

    .line 2987
    :goto_0
    return-void

    .line 2986
    :cond_0
    # invokes: Lcom/google/android/talk/ChatView;->requeryForChatHistory()V
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$3800(Lcom/google/android/talk/ChatView;)V

    goto :goto_0
.end method


# virtual methods
.method public callEnded()V
    .locals 0

    .prologue
    .line 3020
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$ChatListener;->simpleRequery()V

    .line 3021
    return-void
.end method

.method public chatClosed(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 2897
    return-void
.end method

.method public chatRead(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 2901
    return-void
.end method

.method public clearRefs()V
    .locals 1

    .prologue
    .line 2845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2846
    return-void
.end method

.method public convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "oldJid"    # Ljava/lang/String;
    .param p2, "groupChatRoom"    # Ljava/lang/String;
    .param p3, "groupId"    # J

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2876
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_0

    .line 2893
    :goto_0
    return-void

    .line 2879
    :cond_0
    # getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/talk/ChatView$ChatListener$2;

    invoke-direct {v2, p0, p2}, Lcom/google/android/talk/ChatView$ChatListener$2;-><init>(Lcom/google/android/talk/ChatView$ChatListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public missedCall()V
    .locals 0

    .prologue
    .line 3014
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$ChatListener;->simpleRequery()V

    .line 3015
    return-void
.end method

.method public newMessageReceived(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "notify"    # Z

    .prologue
    const/4 v7, 0x1

    .line 2948
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2949
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_1

    .line 2979
    :cond_0
    :goto_0
    return-void

    .line 2952
    :cond_1
    # setter for: Lcom/google/android/talk/ChatView;->mJid:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/talk/ChatView;->access$6702(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    .line 2953
    # setter for: Lcom/google/android/talk/ChatView;->mMayHaveUnreadChat:Z
    invoke-static {v0, v7}, Lcom/google/android/talk/ChatView;->access$6802(Lcom/google/android/talk/ChatView;Z)Z

    .line 2956
    # invokes: Lcom/google/android/talk/ChatView;->requeryForChatHistory()V
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$3800(Lcom/google/android/talk/ChatView;)V

    .line 2958
    # getter for: Lcom/google/android/talk/ChatView;->mFocused:Z
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$6900(Lcom/google/android/talk/ChatView;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p3, :cond_0

    .line 2959
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v4

    # getter for: Lcom/google/android/talk/ChatView;->mAccountId:J
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$7000(Lcom/google/android/talk/ChatView;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v3

    .line 2961
    .local v3, "settingsQueryMap":Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    const-string v4, "off"

    invoke-virtual {v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextNotification()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2963
    const-string v4, "notification setting is off"

    # invokes: Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    goto :goto_0

    .line 2968
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextRingtoneURI()Ljava/lang/String;

    move-result-object v2

    .line 2970
    .local v2, "ringtoneUrl":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 2971
    new-instance v1, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;-><init>(Landroid/content/Context;)V

    .line 2973
    .local v1, "ringer":Lcom/google/android/talk/videochat/NotificationRingtonePlayer;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 2974
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->setStreamType(I)V

    .line 2975
    invoke-virtual {v1, v7}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->setLowVolume(Z)V

    .line 2976
    invoke-virtual {v1}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->ring()V

    goto :goto_0
.end method

.method public newMessageSent(Ljava/lang/String;)V
    .locals 6
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 2992
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2993
    .local v1, "cv":Lcom/google/android/talk/ChatView;
    if-nez v1, :cond_1

    .line 3009
    :cond_0
    :goto_0
    return-void

    .line 2996
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$ChatListener;->simpleRequery()V

    .line 2998
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 3000
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3001
    const/16 v4, 0x40

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 3003
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0107

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3005
    .local v3, "msg":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3006
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 3007
    invoke-virtual {v1, v2}, Lcom/google/android/talk/ChatView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public participantJoined(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "room"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2907
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_0

    .line 2922
    :goto_0
    return-void

    .line 2910
    :cond_0
    # getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/talk/ChatView$ChatListener$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/talk/ChatView$ChatListener$3;-><init>(Lcom/google/android/talk/ChatView$ChatListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public participantLeft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "room"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2928
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_0

    .line 2943
    :goto_0
    return-void

    .line 2931
    :cond_0
    # getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/talk/ChatView$ChatListener$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/talk/ChatView$ChatListener$4;-><init>(Lcom/google/android/talk/ChatView$ChatListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public useLightweightNotify()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3026
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 3027
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_1

    .line 3030
    :cond_0
    :goto_0
    return v1

    :cond_1
    # getter for: Lcom/google/android/talk/ChatView;->mFocused:Z
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$6900(Lcom/google/android/talk/ChatView;)Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/google/android/talk/ChatView;->mPaused:Z
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$7100(Lcom/google/android/talk/ChatView;)Z

    move-result v2

    if-nez v2, :cond_0

    # getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public willConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "oldJid"    # Ljava/lang/String;
    .param p2, "groupChatRoom"    # Ljava/lang/String;
    .param p3, "groupId"    # J

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2855
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_0

    .line 2867
    :goto_0
    return-void

    .line 2858
    :cond_0
    # getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/talk/ChatView$ChatListener$1;

    invoke-direct {v2, p0, p2}, Lcom/google/android/talk/ChatView$ChatListener$1;-><init>(Lcom/google/android/talk/ChatView$ChatListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
