.class public Lcom/google/android/talk/fragments/BuddyListFragment;
.super Lcom/google/android/talk/fragments/RosterListFragment;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/BuddyListFragment$14;,
        Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;,
        Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;,
        Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;,
        Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;,
        Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;,
        Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;,
        Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;,
        Lcom/google/android/talk/fragments/BuddyListFragment$Controller;,
        Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    }
.end annotation


# static fields
.field private static final SINGLE_CONTACT_USERNAME_PROJECTION:[Ljava/lang/String;

.field private static sInjectedAdapter:Lcom/google/android/talk/IRosterListAdapter;


# instance fields
.field private mCallStateClient:Lcom/google/android/videochat/CallStateClient;

.field private mCallStateUpdateHack:Ljava/lang/Runnable;

.field private mChatListener:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

.field private mCloseAllChatsMenuItem:Landroid/view/MenuItem;

.field private mColumnAccount:I

.field private mColumnCapabilities:I

.field private mColumnContactId:I

.field private mColumnGroupChat:I

.field private mColumnNickname:I

.field private mColumnSubscStatus:I

.field private mColumnSubscType:I

.field private mColumnType:I

.field private mColumnUsername:I

.field private mConnectionListener:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

.field mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

.field private mCurrentSearchString:Ljava/lang/String;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFullSearchListener:Landroid/view/View$OnClickListener;

.field private mGroupChatInvitationListener:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsOnline:Z

.field private mNarrow:Z

.field private mRosterListener:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

.field private mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

.field private mSortChoiceDialog:Landroid/app/Dialog;

.field private mStatusButton:Landroid/widget/ImageButton;

.field private mUpdateStatusRunnable:Ljava/lang/Runnable;

.field private mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 236
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "username"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/fragments/BuddyListFragment;->SINGLE_CONTACT_USERNAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/android/talk/fragments/RosterListFragment;-><init>()V

    .line 123
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$1;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mUpdateStatusRunnable:Ljava/lang/Runnable;

    .line 255
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$2;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mIsOnline:Z

    .line 2029
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$13;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$13;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mFullSearchListener:Landroid/view/View$OnClickListener;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/BuddyListFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->updateStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/fragments/BuddyListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/BuddyListFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->accountInfoAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/talk/fragments/BuddyListFragment;)Lcom/google/android/videochat/VideoChatServiceBinder;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/BuddyListFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/talk/fragments/BuddyListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/BuddyListFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCurrentSearchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/BuddyListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/BuddyListFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/BuddyListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/talk/fragments/BuddyListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/BuddyListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setIsOnline(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/talk/fragments/BuddyListFragment;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/BuddyListFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCloseAllChatsMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/fragments/BuddyListFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/BuddyListFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateUpdateHack:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/BuddyListFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateUpdateHack:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/talk/fragments/BuddyListFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/BuddyListFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSortChoiceDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/talk/fragments/BuddyListFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/BuddyListFragment;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSortChoiceDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private accountInfoAvailable()Z
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private blockContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 5

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v0, :cond_1

    .line 1662
    const-string v0, "talk"

    const-string v1, "[BuddyList] blockContact: mImSession is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :cond_0
    :goto_0
    return-void

    .line 1665
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1666
    if-eqz v1, :cond_0

    .line 1670
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getUsernameFromMenuInfo(Landroid/widget/AdapterView$AdapterContextMenuInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1672
    if-eqz v0, :cond_2

    .line 1674
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v2, v0}, Lcom/google/android/gtalkservice/IImSession;->blockContact(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/DatabaseUtils;->removeChatsByContactId(Landroid/content/ContentResolver;J)I

    goto :goto_0

    .line 1675
    :catch_0
    move-exception v0

    .line 1676
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BuddyList] blockContact caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private closeAllChats()V
    .locals 1

    .prologue
    .line 1767
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$11;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$11;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->endActiveVideoOrVoiceChat(Ljava/lang/Runnable;)V

    .line 1787
    return-void
.end method

.method private confirmRemoveSelectedContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 7

    .prologue
    .line 1613
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1614
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 1649
    :cond_0
    :goto_0
    return-void

    .line 1617
    :cond_1
    iget-wide v1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->getUsernameForId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 1618
    if-eqz v1, :cond_0

    .line 1624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1625
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    const v4, 0x7f0c0022

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1629
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1630
    const v0, 0x1010355

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1631
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1632
    const v0, 0x104000a

    new-instance v2, Lcom/google/android/talk/fragments/BuddyListFragment$9;

    invoke-direct {v2, p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$9;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1647
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1648
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private dismissStatusbarNotifications(Lcom/google/android/gtalkservice/IGTalkService;)V
    .locals 3

    .prologue
    .line 1499
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1504
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-interface {p1, v0, v1}, Lcom/google/android/gtalkservice/IGTalkService;->dismissNotificationsForAccount(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1508
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1509
    if-eqz v0, :cond_0

    .line 1510
    invoke-static {v0}, Lcom/google/android/talk/ActivityUtils;->dismissPopupNotification(Landroid/app/Activity;)V

    goto :goto_0

    .line 1505
    :catch_0
    move-exception v0

    .line 1506
    const-string v1, "talk"

    const-string v2, "dismissStatusbarNotifications caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private endActiveVideoOrVoiceChat(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "onEndedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1790
    iget-object v2, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v2}, Lcom/google/android/talk/IRosterListAdapter;->getActiveCallState()Lcom/google/android/talk/RosterListAdapter$CallState;

    move-result-object v0

    .line 1791
    .local v0, "activeCallState":Lcom/google/android/talk/RosterListAdapter$CallState;
    if-eqz v0, :cond_0

    .line 1792
    iget-object v1, v0, Lcom/google/android/talk/RosterListAdapter$CallState;->mBareJid:Ljava/lang/String;

    .line 1794
    .local v1, "bareJid":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    new-instance v3, Lcom/google/android/talk/fragments/BuddyListFragment$12;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/android/talk/fragments/BuddyListFragment$12;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lcom/google/android/videochat/VideoChatServiceBinder;->bind(Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;)V

    .line 1805
    .end local v1    # "bareJid":Ljava/lang/String;
    :goto_0
    return-void

    .line 1803
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private getFilterMode(Landroid/app/Activity;)Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 1081
    const/4 v0, 0x0

    .line 1082
    .local v0, "mode":I
    if-eqz p1, :cond_0

    .line 1083
    invoke-virtual {p1, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1084
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "gtalk-view-mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1087
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    if-nez v0, :cond_1

    .line 1088
    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->QUICK_CONTACTS:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    .line 1090
    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL_MINUS_HIDDEN:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    goto :goto_0
.end method

.method private static getStatusUrls(Ljava/lang/String;)[Landroid/text/style/URLSpan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1131
    if-nez p0, :cond_0

    .line 1132
    new-array v0, v3, [Landroid/text/style/URLSpan;

    .line 1138
    :goto_0
    return-object v0

    .line 1134
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1135
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1136
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    goto :goto_0

    .line 1138
    :cond_1
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_0
.end method

.method private static getUsernameForId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1880
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACT_ID:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/talk/fragments/BuddyListFragment;->SINGLE_CONTACT_USERNAME_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1887
    if-eqz v1, :cond_1

    .line 1889
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1890
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1893
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1899
    :goto_0
    return-object v3

    .line 1893
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1896
    :cond_1
    const-string v0, "getUsernameForId"

    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getUsernameFromMenuInfo(Landroid/widget/AdapterView$AdapterContextMenuInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .prologue
    .line 1652
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1653
    .local v0, "activity":Landroid/app/Activity;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 1654
    :cond_0
    const/4 v1, 0x0

    .line 1657
    :goto_0
    return-object v1

    :cond_1
    iget-wide v1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->getUsernameForId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private hideContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;Z)V
    .locals 4

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v0, :cond_1

    .line 1709
    const-string v0, "talk"

    const-string v1, "[BuddyList] hideContact: mImSession is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_0
    :goto_0
    return-void

    .line 1713
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getUsernameFromMenuInfo(Landroid/widget/AdapterView$AdapterContextMenuInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1715
    if-eqz v0, :cond_0

    .line 1717
    if-eqz p2, :cond_2

    .line 1718
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1, v0}, Lcom/google/android/gtalkservice/IImSession;->hideContact(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1722
    :catch_0
    move-exception v0

    .line 1723
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyList] hideContact caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1720
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1, v0}, Lcom/google/android/gtalkservice/IImSession;->clearContactFlags(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private isInvite(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1143
    iget v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnSubscStatus:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    .line 1144
    .local v0, "subscriptionStatus":J
    iget v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnSubscType:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v2, v4

    .line 1146
    .local v2, "subscriptionType":J
    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x5

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static launchSearchActivity(Ljava/lang/String;Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 2041
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2042
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2044
    const-string v1, "from"

    iget-object v2, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2046
    const-string v1, "query"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2047
    const-string v1, "accountId"

    iget-wide v2, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2049
    const-class v1, Lcom/google/android/talk/SearchActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2050
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2051
    return-void
.end method

.method private launchStatusUrl(Landroid/widget/AdapterView$AdapterContextMenuInfo;I)V
    .locals 4

    .prologue
    .line 1850
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1851
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 1865
    :cond_0
    :goto_0
    return-void

    .line 1855
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v2, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1856
    const-string v2, "status"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getStatusUrls(Ljava/lang/String;)[Landroid/text/style/URLSpan;

    move-result-object v0

    .line 1859
    if-ltz p2, :cond_0

    array-length v2, v0

    if-ge p2, v2, :cond_0

    .line 1860
    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1861
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1862
    const-string v0, "com.android.browser.application_id"

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1863
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private leaveChat(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 7

    .prologue
    .line 1812
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->accountInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1847
    :goto_0
    return-void

    .line 1815
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1816
    const-string v1, "username"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1818
    const-string v2, "account"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leaveChat: for contact "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 1824
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-interface {v0, v4, v5}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    .line 1826
    if-eqz v0, :cond_3

    .line 1827
    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    .line 1828
    if-nez v0, :cond_1

    .line 1829
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    .line 1831
    :cond_1
    if-eqz v0, :cond_2

    .line 1832
    invoke-interface {v0}, Lcom/google/android/gtalkservice/IChatSession;->leave()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1846
    :goto_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onLeaveChat(JLjava/lang/String;)V

    goto :goto_0

    .line 1837
    :cond_2
    :try_start_1
    const-string v0, "talk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "leaveChat: no ChatSession found for contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1843
    :catch_0
    move-exception v0

    .line 1844
    const-string v4, "talk"

    const-string v5, "leaveChat: caught "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1840
    :cond_3
    :try_start_2
    const-string v0, "talk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "leaveChat: no ImSession found for account id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private loadSelfStatus()V
    .locals 2

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-nez v0, :cond_0

    .line 1970
    :goto_0
    return-void

    .line 1958
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatusCursor()Lcom/google/android/talk/SelfStatusCursor;

    move-result-object v0

    .line 1959
    if-nez v0, :cond_1

    .line 1960
    const-string v0, "loadSelfStatus: null cursor returned!"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 1964
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    if-eqz v1, :cond_2

    .line 1965
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    invoke-virtual {v1}, Lcom/google/android/talk/SelfStatusCursor;->close()V

    .line 1967
    :cond_2
    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    .line 1968
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v1, v0}, Lcom/google/android/talk/IRosterListAdapter;->setSelfStatusCursor(Landroid/database/Cursor;)V

    .line 1969
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mUpdateStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/SelfStatusCursor;->setOnAvatarRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadSelfStatusCursor()Lcom/google/android/talk/SelfStatusCursor;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1973
    sget-object v0, Lcom/google/android/gtalkservice/Presence;->OFFLINE:Lcom/google/android/gtalkservice/Presence;

    .line 1978
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v2, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1987
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    .line 1988
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1992
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 1993
    new-instance v1, Lcom/google/android/talk/SelfStatusCursor;

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/talk/SelfStatusCursor;-><init>(Landroid/app/Activity;Lcom/google/android/gtalkservice/Presence;Lcom/google/android/talk/TalkApp$AccountInfo;)V

    move-object v0, v1

    .line 1997
    :goto_0
    return-object v0

    .line 1981
    :catch_0
    move-exception v0

    .line 1982
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSelfStatusCursor: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1983
    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static logEmptyCursor(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1950
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BuddyList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1944
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1945
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BuddyList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_0
    return-void
.end method

.method private logout()V
    .locals 5

    .prologue
    .line 1732
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_1

    .line 1733
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IImSession;->logout()V

    .line 1737
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    .line 1738
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iget-wide v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-static {v0, v1}, Lcom/google/android/talk/AccountLoginUtils;->setInactiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/TalkApp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1748
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$10;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$10;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->endActiveVideoOrVoiceChat(Ljava/lang/Runnable;)V

    .line 1755
    return-void

    .line 1742
    :cond_1
    :try_start_1
    const-string v0, "talk"

    const-string v1, "[BuddyList] logout: mImSession is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1744
    :catch_0
    move-exception v0

    .line 1745
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyList] logout: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1938
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1939
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BuddyList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_0
    return-void
.end method

.method private pinContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;Z)V
    .locals 4

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v0, :cond_1

    .line 1686
    const-string v0, "talk"

    const-string v1, "[BuddyList] pinContact: mImSession is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1690
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getUsernameFromMenuInfo(Landroid/widget/AdapterView$AdapterContextMenuInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1692
    if-eqz v0, :cond_0

    .line 1694
    if-eqz p2, :cond_2

    .line 1695
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1, v0}, Lcom/google/android/gtalkservice/IImSession;->pinContact(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1699
    :catch_0
    move-exception v0

    .line 1700
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyList] pinContact caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1697
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1, v0}, Lcom/google/android/gtalkservice/IImSession;->clearContactFlags(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private registerCallStateListener()V
    .locals 4

    .prologue
    .line 994
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    if-nez v0, :cond_0

    .line 995
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$LocalCallStateClient;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallStateClient;->startListening()V

    .line 998
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallStateClient;->requestUpdate()V

    .line 1003
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$6;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$6;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateUpdateHack:Ljava/lang/Runnable;

    .line 1010
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateUpdateHack:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1011
    return-void
.end method

.method private registerForIntentBroadcast()V
    .locals 3

    .prologue
    .line 1023
    const-string v0, "registerForIntentBroadcast"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 1025
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mFilter:Landroid/content/IntentFilter;

    .line 1026
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.GTALK_AVATAR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1028
    return-void
.end method

.method private setIsOnline(Z)V
    .locals 2
    .param p1, "isOnline"    # Z

    .prologue
    .line 1486
    iput-boolean p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mIsOnline:Z

    .line 1487
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v1, p1}, Lcom/google/android/talk/IRosterListAdapter;->setIsOnline(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1488
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1489
    .local v0, "l":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1490
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->updateStatus(Z)V

    .line 1493
    .end local v0    # "l":Landroid/widget/ListView;
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mStatusButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 1494
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mStatusButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1496
    :cond_1
    return-void
.end method

.method private setQuickContactsMenuItemState()V
    .locals 5

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getFilterMode()Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    move-result-object v0

    .line 1115
    .local v0, "filterMode":Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getSortMode()Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    move-result-object v2

    .line 1117
    .local v2, "sortMode":Lcom/google/android/talk/loaders/RosterListLoader$SortMode;
    const/4 v1, 0x0

    .line 1119
    .local v1, "menuId":I
    sget-object v3, Lcom/google/android/talk/fragments/BuddyListFragment$14;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$FilterMode:[I

    invoke-virtual {v0}, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1128
    :goto_0
    return-void

    .line 1122
    :pswitch_0
    const v1, 0x7f0c001f

    .line 1123
    goto :goto_0

    .line 1125
    :pswitch_1
    const v1, 0x7f0c0020

    goto :goto_0

    .line 1119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showSelectedContactInfo(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .prologue
    .line 1868
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1877
    :cond_0
    :goto_0
    return-void

    .line 1872
    :cond_1
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;

    invoke-direct {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;-><init>()V

    .line 1873
    .local v0, "buddyInfo":Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    iget-wide v1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v1, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mContactId:J

    .line 1874
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iput-wide v1, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    .line 1876
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v1, v0}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    goto :goto_0
.end method

.method private showSortChoicesDialog()V
    .locals 17

    .prologue
    .line 1366
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 1367
    if-nez v5, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1372
    :cond_0
    const/4 v1, 0x3

    new-array v6, v1, [Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_STATUS_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    aput-object v2, v6, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    aput-object v2, v6, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->RECENCY_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    aput-object v2, v6, v1

    .line 1377
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1378
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 1380
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1381
    const v1, 0x7f0c00f9

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1384
    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1385
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1386
    const v2, 0x7f04003f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 1387
    const v1, 0x7f100090

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 1388
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 1389
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 1391
    aget-object v4, v7, v3

    .line 1392
    aget-object v11, v8, v3

    .line 1393
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1395
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1397
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 1399
    new-instance v13, Landroid/text/style/TextAppearanceSpan;

    const v14, 0x1030044

    invoke-direct {v13, v5, v14}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1400
    new-instance v14, Landroid/text/style/TextAppearanceSpan;

    const v15, 0x1030046

    invoke-direct {v14, v5, v15}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1402
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v13, v15, v4, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1403
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x0

    invoke-virtual {v12, v14, v4, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1405
    invoke-virtual {v2, v12}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1406
    aget-object v4, v6, v3

    invoke-virtual {v4}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ordinal()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getSortMode()Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    move-result-object v4

    aget-object v11, v6, v3

    if-ne v4, v11, :cond_1

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1388
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 1408
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 1411
    :cond_2
    const v2, 0x7f100015

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/talk/fragments/BuddyListFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/talk/fragments/BuddyListFragment$7;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1421
    new-instance v2, Lcom/google/android/talk/fragments/BuddyListFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$8;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;Landroid/widget/RadioGroup;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1444
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1445
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSortChoiceDialog:Landroid/app/Dialog;

    .line 1446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSortChoiceDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private startSelfStatusActivityIfOnline()V
    .locals 3

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->accountInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mIsOnline:Z

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onRequestSetSelfStatus(J)V

    goto :goto_0
.end method

.method private startVideoChat(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1325
    if-nez p1, :cond_0

    .line 1326
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->startSelfStatusActivityIfOnline()V

    .line 1328
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 1331
    .local v2, "c":Landroid/database/Cursor;
    if-nez v2, :cond_2

    .line 1346
    :cond_1
    :goto_0
    return-void

    .line 1336
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->wifiRequiredForVideoChat(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1337
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->showAlertIfNoWifi(Landroid/content/Context;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1342
    :cond_3
    iget v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnUsername:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1343
    .local v3, "contact":Ljava/lang/String;
    iget v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnAccount:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1345
    .local v0, "account":J
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0, v1, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityToInitiate(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0
.end method

.method private startVoiceChat(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1302
    if-nez p1, :cond_0

    .line 1303
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->startSelfStatusActivityIfOnline()V

    .line 1305
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 1308
    .local v2, "c":Landroid/database/Cursor;
    if-nez v2, :cond_2

    .line 1322
    :cond_1
    :goto_0
    return-void

    .line 1312
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->wifiRequiredForVideoChat(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1313
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->showAlertIfNoWifi(Landroid/content/Context;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1318
    :cond_3
    iget v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnUsername:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1319
    .local v3, "contact":Ljava/lang/String;
    iget v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnAccount:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1321
    .local v0, "account":J
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0, v1, v3}, Lcom/google/android/talk/BuddyListCombo;->startVoiceChat(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterCallStateListener()V
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallStateClient;->stopListening()V

    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    .line 991
    :cond_0
    return-void
.end method

.method private unregisterForIntentBroadcast()V
    .locals 2

    .prologue
    .line 1031
    const-string v0, "unregisterForIntentBroadcast"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1033
    return-void
.end method

.method private updateStatus()V
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->updateStatus(Z)V

    .line 675
    return-void
.end method

.method private updateStatus(Z)V
    .locals 4
    .param p1, "clearAvatarCache"    # Z

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->accountInfoAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    if-eqz p1, :cond_2

    .line 682
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/talk/AvatarCache;->getInstance(JZ)Lcom/google/android/talk/AvatarCache;

    move-result-object v0

    .line 683
    .local v0, "cache":Lcom/google/android/talk/AvatarCache;
    if-eqz v0, :cond_2

    .line 684
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/AvatarCache;->clear(Ljava/lang/String;)V

    .line 688
    .end local v0    # "cache":Lcom/google/android/talk/AvatarCache;
    :cond_2
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    invoke-interface {v1, v2}, Lcom/google/android/talk/IRosterListAdapter;->setSelfStatusCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method protected addRemoteListeners()V
    .locals 3

    .prologue
    .line 1549
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_3

    .line 1550
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mConnectionListener:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    if-nez v0, :cond_0

    .line 1551
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mConnectionListener:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    .line 1552
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mConnectionListener:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListener:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    if-nez v0, :cond_1

    .line 1555
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListener:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    .line 1556
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListener:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mChatListener:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    if-nez v0, :cond_2

    .line 1560
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mChatListener:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    .line 1561
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mChatListener:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 1564
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mGroupChatInvitationListener:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    if-nez v0, :cond_3

    .line 1565
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;Lcom/google/android/talk/TalkApp;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mGroupChatInvitationListener:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    .line 1566
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mGroupChatInvitationListener:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1574
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1575
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->dismissStatusbarNotifications(Lcom/google/android/gtalkservice/IGTalkService;)V

    .line 1577
    :cond_4
    return-void

    .line 1569
    :catch_0
    move-exception v0

    .line 1570
    const-string v1, "talk"

    const-string v2, "addRemoteListeners caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addToContacts(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v0, p2}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onAddToContacts(Ljava/lang/String;)V

    .line 1809
    return-void
.end method

.method public cancelSearch()V
    .locals 2

    .prologue
    .line 2054
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCurrentSearchString:Ljava/lang/String;

    .line 2055
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getFilterMode()Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getSortMode()Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V

    .line 2056
    return-void
.end method

.method protected createRosterListAdapter()Lcom/google/android/talk/IRosterListAdapter;
    .locals 7

    .prologue
    .line 830
    sget-object v3, Lcom/google/android/talk/fragments/BuddyListFragment;->sInjectedAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-eqz v3, :cond_1

    .line 831
    new-instance v1, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;

    sget-object v3, Lcom/google/android/talk/fragments/BuddyListFragment;->sInjectedAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-direct {v1, p0, v3}, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;Lcom/google/android/talk/IRosterListAdapter;)V

    .line 844
    .local v1, "adapter":Lcom/google/android/talk/IRosterListAdapter;
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    .line 845
    .local v0, "accountInfo":Lcom/google/android/talk/TalkApp$AccountInfo;
    if-eqz v0, :cond_0

    .line 846
    iget-wide v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/google/android/talk/fragments/BuddyListFragment$4;

    invoke-direct {v6, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$4;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/android/talk/IRosterListAdapter;->init(JLandroid/app/Activity;Ljava/lang/Runnable;)V

    .line 855
    :cond_0
    new-instance v3, Lcom/google/android/talk/fragments/BuddyListFragment$5;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$5;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    invoke-interface {v1, v3}, Lcom/google/android/talk/IRosterListAdapter;->setOnVideoButtonClickedListener(Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;)V

    .line 909
    return-object v1

    .line 835
    .end local v0    # "accountInfo":Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1    # "adapter":Lcom/google/android/talk/IRosterListAdapter;
    :cond_1
    new-instance v2, Lcom/google/android/talk/RosterListAdapter;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/talk/RosterListAdapter;-><init>(Landroid/content/Context;)V

    .line 836
    .local v2, "inner":Lcom/google/android/talk/RosterListAdapter;
    new-instance v1, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;

    invoke-direct {v1, p0, v2}, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;Lcom/google/android/talk/IRosterListAdapter;)V

    .line 840
    .restart local v1    # "adapter":Lcom/google/android/talk/IRosterListAdapter;
    iget-boolean v3, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mNarrow:Z

    invoke-interface {v1, v3}, Lcom/google/android/talk/IRosterListAdapter;->setNarrowLayout(Z)V

    .line 841
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getFilterMode()Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getSortMode()Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/google/android/talk/IRosterListAdapter;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V

    goto :goto_0
.end method

.method public doHistorySearch()V
    .locals 2

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mFullSearchListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2025
    return-void
.end method

.method protected getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 199
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 200
    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v1
.end method

.method public getFilterMode()Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;
    .locals 1

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getFilterMode(Landroid/app/Activity;)Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    move-result-object v0

    return-object v0
.end method

.method public getSortMode()Lcom/google/android/talk/loaders/RosterListLoader$SortMode;
    .locals 1

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getSortMode(Landroid/app/Activity;)Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    move-result-object v0

    return-object v0
.end method

.method public getSortMode(Landroid/app/Activity;)Lcom/google/android/talk/loaders/RosterListLoader$SortMode;
    .locals 3

    .prologue
    .line 1095
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_STATUS_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v0}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ordinal()I

    move-result v0

    .line 1096
    if-eqz p1, :cond_0

    .line 1097
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1098
    const-string v1, "gtalk-sort-mode"

    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_STATUS_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v2}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    .line 1100
    :goto_0
    const-class v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 914
    invoke-super {p0, p1}, Lcom/google/android/talk/fragments/RosterListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 916
    new-instance v0, Lcom/google/android/videochat/VideoChatServiceBinder;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/google/android/talk/videochat/VideoChatOutputReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/videochat/VideoChatServiceBinder;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    .line 919
    invoke-virtual {p0, v5}, Lcom/google/android/talk/fragments/BuddyListFragment;->setHasOptionsMenu(Z)V

    .line 922
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->createRosterListAdapter()Lcom/google/android/talk/IRosterListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    .line 923
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/talk/IRosterListAdapter;->suppressVideoButton(Z)V

    .line 924
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getFilterMode()Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getSortMode()Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V

    .line 925
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->setListAdapter(Lcom/google/android/talk/IRosterListAdapter;)V

    .line 926
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    iget-boolean v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mNarrow:Z

    invoke-interface {v0, v1}, Lcom/google/android/talk/IRosterListAdapter;->setNarrowLayout(Z)V

    .line 928
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    instance-of v0, v0, Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v0, :cond_0

    .line 929
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    check-cast v0, Landroid/widget/AbsListView$RecyclerListener;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v0, v5}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onDisplayProgress(Z)V

    .line 934
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 177
    const-string v1, "onAttach"

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->logd(Ljava/lang/String;)V

    .line 178
    invoke-super {p0, p1}, Lcom/google/android/talk/fragments/RosterListFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 180
    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    .line 181
    .local v0, "host":Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;
    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->getBuddyListController()Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setController(Lcom/google/android/talk/fragments/BuddyListFragment$Controller;)V

    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 183
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 1237
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v7

    check-cast v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1239
    .local v7, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    .line 1241
    .local v8, "itemId":I
    packed-switch v8, :pswitch_data_0

    .line 1292
    const/16 v1, 0x64

    if-lt v8, v1, :cond_0

    .line 1293
    add-int/lit8 v0, v8, -0x64

    invoke-direct {p0, v7, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->launchStatusUrl(Landroid/widget/AdapterView$AdapterContextMenuInfo;I)V

    move v0, v10

    .line 1298
    :cond_0
    :goto_0
    return v0

    .line 1243
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1244
    .local v6, "activity":Landroid/app/Activity;
    if-eqz v7, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move v0, v10

    .line 1245
    goto :goto_0

    .line 1247
    :cond_2
    iget-wide v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v6, v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getUsernameForId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 1248
    .local v9, "username":Ljava/lang/String;
    invoke-virtual {p0, v6, v9}, Lcom/google/android/talk/fragments/BuddyListFragment;->addToContacts(Landroid/app/Activity;Ljava/lang/String;)V

    move v0, v10

    .line 1249
    goto :goto_0

    .line 1252
    .end local v6    # "activity":Landroid/app/Activity;
    .end local v9    # "username":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, v7}, Lcom/google/android/talk/fragments/BuddyListFragment;->confirmRemoveSelectedContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    move v0, v10

    .line 1253
    goto :goto_0

    .line 1256
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/google/android/talk/fragments/BuddyListFragment;->blockContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    move v0, v10

    .line 1257
    goto :goto_0

    .line 1260
    :pswitch_3
    invoke-direct {p0, v7, v10}, Lcom/google/android/talk/fragments/BuddyListFragment;->hideContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;Z)V

    move v0, v10

    .line 1261
    goto :goto_0

    .line 1264
    :pswitch_4
    invoke-direct {p0, v7, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->hideContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;Z)V

    move v0, v10

    .line 1265
    goto :goto_0

    .line 1268
    :pswitch_5
    invoke-direct {p0, v7, v10}, Lcom/google/android/talk/fragments/BuddyListFragment;->pinContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;Z)V

    move v0, v10

    .line 1269
    goto :goto_0

    .line 1272
    :pswitch_6
    invoke-direct {p0, v7, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->pinContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;Z)V

    move v0, v10

    .line 1273
    goto :goto_0

    .line 1276
    :pswitch_7
    invoke-direct {p0, v7}, Lcom/google/android/talk/fragments/BuddyListFragment;->showSelectedContactInfo(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    move v0, v10

    .line 1277
    goto :goto_0

    .line 1280
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget v3, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/fragments/BuddyListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    move v0, v10

    .line 1281
    goto :goto_0

    .line 1283
    :pswitch_9
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->startVoiceChat(I)V

    move v0, v10

    .line 1284
    goto :goto_0

    .line 1286
    :pswitch_a
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->startVideoChat(I)V

    move v0, v10

    .line 1287
    goto :goto_0

    .line 1289
    :pswitch_b
    invoke-direct {p0, v7}, Lcom/google/android/talk/fragments/BuddyListFragment;->leaveChat(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    move v0, v10

    .line 1290
    goto :goto_0

    .line 1241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 18
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1152
    move-object/from16 v1, p3

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1155
    .local v1, "c":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v11, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-nez v11, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v11

    iget v12, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    .line 1160
    .local v4, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->isInvite(Landroid/database/Cursor;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1164
    const-string v11, "last_message_date"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1166
    .local v6, "lastMessageDate":J
    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-eqz v11, :cond_2

    const/4 v8, 0x1

    .line 1167
    .local v8, "showChat":Z
    :goto_1
    const-string v11, "status"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/talk/fragments/BuddyListFragment;->getStatusUrls(Ljava/lang/String;)[Landroid/text/style/URLSpan;

    move-result-object v9

    .line 1170
    .local v9, "statusUrls":[Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnNickname:I

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1172
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnType:I

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1173
    .local v10, "type":I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 1178
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnCapabilities:I

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1180
    .local v2, "capabilities":I
    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 1181
    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    const v14, 0x7f0c0016

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1182
    const/4 v11, 0x0

    const/16 v12, 0xb

    const/4 v13, 0x0

    const v14, 0x7f0c0017

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1214
    :goto_2
    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    .line 1215
    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    const v14, 0x7f0c001e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    const/16 v12, 0x40

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1219
    const/4 v11, 0x5

    if-ne v10, v11, :cond_a

    .line 1220
    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    const v14, 0x7f0c000f

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1226
    :goto_3
    const/4 v11, 0x4

    if-ne v10, v11, :cond_b

    .line 1227
    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    const v14, 0x7f0c0011

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1166
    .end local v2    # "capabilities":I
    .end local v8    # "showChat":Z
    .end local v9    # "statusUrls":[Landroid/text/style/URLSpan;
    .end local v10    # "type":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1183
    .restart local v2    # "capabilities":I
    .restart local v8    # "showChat":Z
    .restart local v9    # "statusUrls":[Landroid/text/style/URLSpan;
    .restart local v10    # "type":I
    :cond_3
    if-eqz v8, :cond_6

    .line 1184
    invoke-static {v2}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1185
    const/4 v11, 0x0

    const/16 v12, 0xc

    const/4 v13, 0x0

    const v14, 0x7f0c0013

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1187
    :cond_4
    invoke-static {v2}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1188
    const/4 v11, 0x0

    const/16 v12, 0xd

    const/4 v13, 0x0

    const v14, 0x7f0c0014

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1190
    :cond_5
    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    const v14, 0x7f0c0016

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1191
    const/4 v11, 0x0

    const/16 v12, 0xb

    const/4 v13, 0x0

    const v14, 0x7f0c0017

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1192
    const/4 v11, 0x0

    const/4 v12, 0x7

    const/4 v13, 0x0

    const v14, 0x7f0c0018

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1193
    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const v14, 0x7f0c000d

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1195
    :cond_6
    const/4 v11, 0x0

    const/16 v12, 0x9

    const/4 v13, 0x0

    const v14, 0x7f0c0012

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1196
    invoke-static {v2}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1197
    const/4 v11, 0x0

    const/16 v12, 0xc

    const/4 v13, 0x0

    const v14, 0x7f0c0013

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1199
    :cond_7
    invoke-static {v2}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1200
    const/4 v11, 0x0

    const/16 v12, 0xd

    const/4 v13, 0x0

    const v14, 0x7f0c0014

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1202
    :cond_8
    const/4 v11, 0x0

    const/4 v12, 0x7

    const/4 v13, 0x0

    const v14, 0x7f0c0018

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1203
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1204
    .local v3, "context":Landroid/content/Context;
    array-length v11, v9

    if-lez v11, :cond_9

    if-eqz v3, :cond_9

    .line 1205
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v11, v9

    if-ge v5, v11, :cond_9

    .line 1206
    const/4 v11, 0x0

    add-int/lit8 v12, v5, 0x64

    const/4 v13, 0x0

    const v14, 0x7f0c0019

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v17, v9, v5

    invoke-virtual/range {v17 .. v17}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v3, v14, v15}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1205
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1210
    .end local v5    # "i":I
    :cond_9
    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const v14, 0x7f0c000d

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1211
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const v14, 0x7f0c000c

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1222
    .end local v3    # "context":Landroid/content/Context;
    :cond_a
    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    const v14, 0x7f0c000e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1229
    :cond_b
    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x0

    const v14, 0x7f0c0010

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 559
    const-string v2, "onCreateLoader"

    invoke-direct {p0, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 561
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->accountInfoAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-object v0

    .line 564
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 566
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 569
    new-instance v0, Lcom/google/android/talk/loaders/RosterListLoader;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getFilterMode(Landroid/app/Activity;)Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getSortMode(Landroid/app/Activity;)Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    move-result-object v5

    new-instance v6, Lcom/google/android/talk/fragments/BuddyListFragment$3;

    invoke-direct {v6, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$3;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/loaders/RosterListLoader;-><init>(Landroid/content/Context;JLcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 1350
    const v0, 0x7f0f0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1352
    const v0, 0x7f1000ba

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCloseAllChatsMenuItem:Landroid/view/MenuItem;

    .line 1354
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCloseAllChatsMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-eqz v0, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCloseAllChatsMenuItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v1}, Lcom/google/android/talk/IRosterListAdapter;->hasActiveChats()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCloseAllChatsMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 946
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/talk/fragments/RosterListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 953
    .local v0, "root":Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 954
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setListAdapter(Lcom/google/android/talk/IRosterListAdapter;)V

    .line 955
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->updateStatus()V

    .line 957
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-eqz v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 960
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCurrentSearchString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 963
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 964
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 967
    :cond_1
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "list"    # Landroid/widget/ListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1905
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    if-eqz v2, :cond_1

    .line 1909
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCurrentSearchString:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    .line 1910
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->startSelfStatusActivityIfOnline()V

    .line 1912
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1915
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 1935
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 1918
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_2
    new-instance v1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;

    iget v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnUsername:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnAccount:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;-><init>(Ljava/lang/String;J)V

    .line 1921
    .local v1, "info":Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->isInvite(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1922
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v2, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onMakeInvite(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    goto :goto_0

    .line 1924
    :cond_3
    iget v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnGroupChat:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1925
    iget v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnContactId:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mContactId:J

    .line 1926
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v2, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onOpenGroupChat(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    goto :goto_0

    .line 1928
    :cond_4
    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v2, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onOpenChat(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    .line 1931
    iget-object v2, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 648
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "onLoadFinished"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0, p2}, Lcom/google/android/talk/fragments/BuddyListFragment;->setData(Landroid/database/Cursor;)V

    .line 651
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V

    .line 652
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->setEnabled(Z)V

    .line 653
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/talk/fragments/BuddyListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1452
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->accountInfoAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1482
    :goto_0
    return v1

    .line 1455
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1461
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-interface {v1, v3, v4}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onInviteFriend(J)V

    move v1, v2

    .line 1462
    goto :goto_0

    .line 1457
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->showSortChoicesDialog()V

    goto :goto_0

    .line 1465
    :pswitch_2
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;

    invoke-direct {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;-><init>()V

    .line 1466
    .local v0, "info":Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-wide v3, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iput-wide v3, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    .line 1467
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v1, v0}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onShowInvites(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    move v1, v2

    .line 1468
    goto :goto_0

    .line 1472
    .end local v0    # "info":Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logout()V

    move v1, v2

    .line 1473
    goto :goto_0

    .line 1477
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->closeAllChats()V

    move v1, v2

    .line 1478
    goto :goto_0

    .line 1455
    :pswitch_data_0
    .packed-switch 0x7f1000b8
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 978
    invoke-super {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->onPause()V

    .line 979
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    invoke-virtual {v0}, Lcom/google/android/talk/SelfStatusCursor;->close()V

    .line 981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    .line 983
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 972
    invoke-super {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->onResume()V

    .line 973
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V

    .line 974
    return-void
.end method

.method public onSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V
    .locals 4

    .prologue
    .line 1516
    invoke-super {p0, p1}, Lcom/google/android/talk/fragments/RosterListFragment;->onSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V

    .line 1518
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1544
    :cond_0
    :goto_0
    return-void

    .line 1523
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/TalkApp;->asyncPruneOldChatsAndMessages(Lcom/google/android/gtalkservice/IImSession;)V

    .line 1525
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->updateStatus()V

    .line 1529
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v0

    .line 1530
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1531
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 1532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 1533
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/gtalkservice/IImSession;->login(Ljava/lang/String;Z)V

    .line 1537
    :cond_2
    const-string v0, "onSessionCreated: request batch presence"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 1538
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IImSession;->requestBatchedBuddyPresence()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1542
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V

    goto :goto_0

    .line 1539
    :catch_0
    move-exception v0

    .line 1540
    :try_start_1
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IImSession login: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1542
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V

    throw v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 938
    invoke-super {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->onStart()V

    .line 939
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->registerForIntentBroadcast()V

    .line 940
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->registerCallStateListener()V

    .line 941
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1015
    invoke-super {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->onStop()V

    .line 1016
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->unregisterForIntentBroadcast()V

    .line 1017
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->unregisterCallStateListener()V

    .line 1019
    invoke-static {}, Lcom/google/android/talk/RosterListItem;->onStop()V

    .line 1020
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 1066
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/loaders/RosterListLoader;

    .line 1067
    .local v0, "loader":Lcom/google/android/talk/loaders/RosterListLoader;
    if-eqz v0, :cond_0

    .line 1068
    invoke-virtual {v0}, Lcom/google/android/talk/loaders/RosterListLoader;->forceLoad()V

    .line 1070
    :cond_0
    return-void
.end method

.method protected removeRemoteListeners()V
    .locals 3

    .prologue
    .line 1582
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_3

    .line 1583
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mConnectionListener:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mConnectionListener:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 1585
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mConnectionListener:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->clearRefs()V

    .line 1586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mConnectionListener:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    .line 1589
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListener:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    if-eqz v0, :cond_1

    .line 1590
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListener:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 1591
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListener:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->clearRefs()V

    .line 1592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListener:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    .line 1595
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mChatListener:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    if-eqz v0, :cond_2

    .line 1596
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mChatListener:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 1597
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mChatListener:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->clearRefs()V

    .line 1598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mChatListener:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    .line 1601
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mGroupChatInvitationListener:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    if-eqz v0, :cond_3

    .line 1602
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mGroupChatInvitationListener:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 1603
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mGroupChatInvitationListener:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;->clearRefs()V

    .line 1604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mGroupChatInvitationListener:Lcom/google/android/talk/fragments/BuddyListFragment$GroupChatInvitationListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1610
    :cond_3
    :goto_0
    return-void

    .line 1607
    :catch_0
    move-exception v0

    .line 1608
    const-string v1, "talk"

    const-string v2, "removeRemoteListeners caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setController(Lcom/google/android/talk/fragments/BuddyListFragment$Controller;)V
    .locals 0
    .param p1, "controller"    # Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    .line 211
    return-void
.end method

.method public setData(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCurrentSearchString:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/google/android/talk/IRosterListAdapter;->changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 217
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onDisplayProgress(Z)V

    .line 222
    :cond_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnContactId:I

    .line 223
    const-string v0, "username"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnUsername:I

    .line 224
    const-string v0, "nickname"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnNickname:I

    .line 225
    const-string v0, "account"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnAccount:I

    .line 226
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnType:I

    .line 227
    const-string v0, "subscriptionStatus"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnSubscStatus:I

    .line 228
    const-string v0, "subscriptionType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnSubscType:I

    .line 229
    const-string v0, "groupchat"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnGroupChat:I

    .line 230
    const-string v0, "cap"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mColumnCapabilities:I

    .line 233
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->restoreListViewState()V

    .line 234
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    :cond_0
    return-void
.end method

.method public setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V
    .locals 7
    .param p1, "mode"    # Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;
    .param p2, "sortMode"    # Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1036
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1037
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1063
    :goto_0
    return-void

    .line 1040
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1043
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "gtalk-view-mode"

    sget-object v6, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->QUICK_CONTACTS:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    if-ne p1, v6, :cond_2

    :goto_1
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1048
    const-string v3, "gtalk-sort-mode"

    invoke-virtual {p2}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ordinal()I

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1050
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1051
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->setQuickContactsMenuItemState()V

    .line 1054
    iget-object v3, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getFilterMode()Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getSortMode()Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/google/android/talk/IRosterListAdapter;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V

    .line 1056
    invoke-virtual {p0, v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->getLoader(I)Landroid/content/Loader;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/loaders/RosterListLoader;

    .line 1057
    .local v2, "loader":Lcom/google/android/talk/loaders/RosterListLoader;
    if-eqz v2, :cond_1

    .line 1058
    invoke-virtual {v2, p1, p2}, Lcom/google/android/talk/loaders/RosterListLoader;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V

    .line 1059
    invoke-virtual {v2}, Lcom/google/android/talk/loaders/RosterListLoader;->resetProjection()V

    .line 1062
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .end local v2    # "loader":Lcom/google/android/talk/loaders/RosterListLoader;
    :cond_2
    move v3, v4

    .line 1043
    goto :goto_1
.end method

.method public setFocus(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-eqz v0, :cond_0

    .line 2011
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setFocus(Landroid/content/Intent;)V

    .line 2013
    :cond_0
    return-void
.end method

.method public setListAdapter(Lcom/google/android/talk/IRosterListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/google/android/talk/IRosterListAdapter;

    .prologue
    .line 2017
    if-eqz p1, :cond_0

    .line 2018
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/talk/IRosterListAdapter;->setIncludeSelfItem(Z)V

    .line 2020
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/talk/fragments/RosterListFragment;->setListAdapter(Lcom/google/android/talk/IRosterListAdapter;)V

    .line 2021
    return-void
.end method

.method public setNarrowMode(Z)V
    .locals 1
    .param p1, "narrow"    # Z

    .prologue
    .line 2071
    iput-boolean p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mNarrow:Z

    .line 2072
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-eqz v0, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setNarrowLayout(Z)V

    .line 2075
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->updateStatus(Z)V

    .line 2076
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 3
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 2059
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment;->mCurrentSearchString:Ljava/lang/String;

    .line 2061
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/loaders/RosterListLoader;

    .line 2062
    .local v0, "loader":Lcom/google/android/talk/loaders/RosterListLoader;
    if-nez v0, :cond_0

    .line 2068
    :goto_0
    return-void

    .line 2067
    :cond_0
    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/talk/loaders/RosterListLoader;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public softUiReset()V
    .locals 2

    .prologue
    .line 2001
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 2003
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2004
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mDontRestoreListViewState:Z

    .line 2005
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->dismissStatusbarNotifications(Lcom/google/android/gtalkservice/IGTalkService;)V

    .line 2007
    :cond_0
    return-void
.end method

.method public switchAccounts(Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 7
    .param p1, "accountInfo"    # Lcom/google/android/talk/TalkApp$AccountInfo;

    .prologue
    .line 604
    const-string v4, "switchAccounts"

    invoke-direct {p0, v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 605
    iget-boolean v4, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mCreated:Z

    if-nez v4, :cond_1

    .line 606
    const-string v4, "switchAccounts: fragment\'s onCreate not called yet"

    invoke-direct {p0, v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iput-object p1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 611
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->getLoader(I)Landroid/content/Loader;

    move-result-object v3

    check-cast v3, Lcom/google/android/talk/loaders/RosterListLoader;

    .line 612
    .local v3, "loader":Lcom/google/android/talk/loaders/RosterListLoader;
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-nez v4, :cond_4

    .line 613
    :cond_2
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 614
    if-nez v3, :cond_3

    const-string v4, "switchAccounts: loader is NULL"

    invoke-direct {p0, v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 615
    :cond_3
    iget-object v4, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-nez v4, :cond_0

    const-string v4, "switchAccounts: mRosterListAdapter is NULL"

    invoke-direct {p0, v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v4

    iget-wide v0, v4, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 620
    .local v0, "accountId":J
    iget-object v4, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v4, v0, v1}, Lcom/google/android/talk/IRosterListAdapter;->setAccountId(J)V

    .line 621
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->removeRemoteListeners()V

    .line 622
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 628
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v4}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 629
    iget-object v4, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v4, :cond_5

    .line 630
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V

    .line 631
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->addRemoteListeners()V

    .line 633
    const-string v4, "switchAccounts: request batch presence"

    invoke-direct {p0, v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V

    .line 634
    iget-object v4, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v4}, Lcom/google/android/gtalkservice/IImSession;->requestBatchedBuddyPresence()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :cond_5
    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/google/android/talk/loaders/RosterListLoader;->switchAccounts(J)V

    .line 642
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->unregisterCallStateListener()V

    .line 643
    invoke-direct {p0}, Lcom/google/android/talk/fragments/BuddyListFragment;->registerCallStateListener()V

    goto :goto_0

    .line 636
    :catch_0
    move-exception v2

    .line 637
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "talk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchAccounts: caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
