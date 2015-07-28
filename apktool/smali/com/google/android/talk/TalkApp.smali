.class public Lcom/google/android/talk/TalkApp;
.super Landroid/app/Application;
.source "TalkApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;,
        Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;,
        Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;,
        Lcom/google/android/talk/TalkApp$AccountInfo;,
        Lcom/google/android/talk/TalkApp$AccountIdUpdatedListener;,
        Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    }
.end annotation


# static fields
.field private static mSelfAvatarMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/talk/DatabaseUtils$AvatarData;",
            ">;"
        }
    .end annotation
.end field

.field private static mTalkLogLevel:I


# instance fields
.field private mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAccountsLoaded:Z

.field private final mAccountsLoadedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountListChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountsRetriever:Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;

.field mAndroidConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

.field mAndroidConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

.field private mAppHandler:Landroid/os/Handler;

.field mAvailablePresenceIcon:[I

.field mAwayPresenceIcon:[I

.field mBusyPresenceIcon:[I

.field public mChatStatusIcon:Landroid/graphics/drawable/Drawable;

.field private mConnection:Landroid/content/ServiceConnection;

.field public mDefaultStatusStrings:[Ljava/lang/String;

.field private volatile mDefaultTextNotificationUri:Ljava/lang/String;

.field mDesaturatedColorFilter:Landroid/graphics/ColorFilter;

.field private mFindRingtone:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGTalkServiceIntent:Landroid/content/Intent;

.field public mGenericAvatar:Landroid/graphics/drawable/Drawable;

.field private mGlobalCallStateMonitor:Lcom/google/android/talk/GlobalCallStateMonitor;

.field private mGmail:Lcom/google/android/talk/GmailProviderWrapper;

.field public mGroupAvatar:Landroid/graphics/drawable/Drawable;

.field public mGroupChatInvitations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gtalkservice/GroupChatInvitation;",
            ">;"
        }
    .end annotation
.end field

.field mInvisiblePresenceIcon:I

.field private mJidDomainsToHide:[Ljava/lang/String;

.field mMobileConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

.field mMobileConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

.field mOfflineColorFilter:Landroid/graphics/ColorFilter;

.field mOfflinePresenceIcon:I

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private final mServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mServiceState:Lcom/google/android/talk/TalkServiceState;

.field private final mSettingsMonitor:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getLogLevelForTalk()I

    move-result v0

    sput v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    .line 1146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/talk/TalkApp;->mSelfAvatarMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 208
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 116
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[I

    .line 117
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[I

    .line 118
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[I

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Lcom/google/android/talk/TalkServiceState;

    invoke-direct {v0}, Lcom/google/android/talk/TalkServiceState;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    new-instance v0, Lcom/google/android/talk/TalkApp$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/TalkApp$1;-><init>(Lcom/google/android/talk/TalkApp;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mSettingsMonitor:Landroid/content/BroadcastReceiver;

    .line 168
    new-instance v0, Lcom/google/android/talk/TalkApp$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/TalkApp$2;-><init>(Lcom/google/android/talk/TalkApp;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    .line 1233
    new-instance v0, Lcom/google/android/talk/TalkApp$5;

    invoke-direct {v0, p0}, Lcom/google/android/talk/TalkApp$5;-><init>(Lcom/google/android/talk/TalkApp;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mFindRingtone:Landroid/os/AsyncTask;

    .line 210
    const-string v0, "talk"

    const-string v1, "##### TalkApp constructor #####"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    .line 213
    return-void
.end method

.method public static LOG(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "loglevel"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "logmessage"    # Ljava/lang/String;

    .prologue
    .line 237
    sget v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    if-lt p0, v0, :cond_0

    .line 238
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    return-void
.end method

.method public static LOGD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "logmessage"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public static LOGE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "logmessage"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public static LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "logmessage"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 263
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    return-void
.end method

.method public static LOGI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "logmessage"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method public static LOGV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "logmessage"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public static LOGW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "logmessage"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method public static Logwtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1051
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/TalkApp;)Lcom/google/android/talk/TalkServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/TalkApp;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/talk/TalkApp;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/TalkApp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/talk/TalkApp;->setDefaultRingtoneUriForAllAccounts(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/TalkApp;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/TalkApp;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/TalkApp;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/TalkApp;
    .param p1, "x1"    # Lcom/google/android/gtalkservice/IImSession;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/talk/TalkApp;->pruneOldChats(Lcom/google/android/gtalkservice/IImSession;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/TalkApp;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/TalkApp;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/TalkApp;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->verifyAccountInPrefs()V

    return-void
.end method

.method static synthetic access$602(Lcom/google/android/talk/TalkApp;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/TalkApp;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/TalkApp;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->broadcastAccountListChanged()V

    return-void
.end method

.method static synthetic access$800()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/talk/TalkApp;->mSelfAvatarMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/talk/TalkApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/TalkApp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/talk/TalkApp;->mDefaultTextNotificationUri:Ljava/lang/String;

    return-object p1
.end method

.method private bindService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 320
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string v0, "bindService"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 324
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mGTalkServiceIntent:Landroid/content/Intent;

    .line 325
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGTalkServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/TalkApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 327
    const-string v0, "--- bindGTalkService ---"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGTalkServiceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/talk/TalkApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    const-string v0, "skipping bindService; bind already pending"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private broadcastAccountIdUpdate(Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 9
    .param p1, "accountInfo"    # Lcom/google/android/talk/TalkApp$AccountInfo;

    .prologue
    .line 961
    iget-object v7, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 962
    :try_start_0
    iget-object v6, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 963
    .local v3, "count":I
    iget-object v6, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    new-array v8, v3, [Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    .line 965
    .local v1, "accountsLoadedListeners":[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 967
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "broadcastAccountIdUpdate count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 969
    :cond_0
    move-object v2, v1

    .local v2, "arr$":[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 970
    .local v0, "accountChangeListener":Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    instance-of v6, v0, Lcom/google/android/talk/TalkApp$AccountIdUpdatedListener;

    if-eqz v6, :cond_1

    .line 971
    check-cast v0, Lcom/google/android/talk/TalkApp$AccountIdUpdatedListener;

    .end local v0    # "accountChangeListener":Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    invoke-interface {v0, p1}, Lcom/google/android/talk/TalkApp$AccountIdUpdatedListener;->onAccountIdUpdated(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 969
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 965
    .end local v1    # "accountsLoadedListeners":[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .end local v2    # "arr$":[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .end local v3    # "count":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 975
    .restart local v1    # "accountsLoadedListeners":[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .restart local v2    # "arr$":[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .restart local v3    # "count":I
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_2
    return-void
.end method

.method private broadcastAccountListChanged()V
    .locals 9

    .prologue
    .line 982
    iget-object v7, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 983
    :try_start_0
    iget-object v6, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 984
    .local v3, "count":I
    iget-object v6, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    new-array v8, v3, [Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    .line 986
    .local v1, "accountsLoadedListeners":[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 988
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "broadcastAccountListChanged count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 990
    :cond_0
    move-object v2, v1

    .local v2, "arr$":[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 991
    .local v0, "accountChangeListener":Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    invoke-interface {v0}, Lcom/google/android/talk/TalkApp$AccountListChangeListener;->onAccountListChanged()V

    .line 990
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 986
    .end local v0    # "accountChangeListener":Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .end local v1    # "accountsLoadedListeners":[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .end local v2    # "arr$":[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .end local v3    # "count":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 993
    .restart local v1    # "accountsLoadedListeners":[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .restart local v2    # "arr$":[Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    .restart local v3    # "count":I
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_1
    return-void
.end method

.method private computeCapabilityIndex(I)I
    .locals 1
    .param p1, "capabilities"    # I

    .prologue
    .line 405
    invoke-static {p1}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const/4 v0, 0x2

    .line 413
    :goto_0
    return v0

    .line 409
    :cond_0
    invoke-static {p1}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    const/4 v0, 0x1

    goto :goto_0

    .line 413
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructCachedDrawables()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 361
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 363
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f020049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mGenericAvatar:Landroid/graphics/drawable/Drawable;

    .line 365
    const v2, 0x7f02004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mGroupAvatar:Landroid/graphics/drawable/Drawable;

    .line 367
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[I

    const v3, 0x108006b

    aput v3, v2, v4

    .line 368
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[I

    const v3, 0x10800b1

    aput v3, v2, v5

    .line 369
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[I

    const v3, 0x10800ae

    aput v3, v2, v6

    .line 371
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[I

    const v3, 0x1080067

    aput v3, v2, v4

    .line 372
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[I

    const v3, 0x10800af

    aput v3, v2, v5

    .line 373
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[I

    const v3, 0x10800ac

    aput v3, v2, v6

    .line 375
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[I

    const v3, 0x1080068

    aput v3, v2, v4

    .line 376
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[I

    const v3, 0x10800b0

    aput v3, v2, v5

    .line 377
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[I

    const v3, 0x10800ad

    aput v3, v2, v6

    .line 379
    const v2, 0x108006a

    iput v2, p0, Lcom/google/android/talk/TalkApp;->mOfflinePresenceIcon:I

    .line 380
    const v2, 0x1080069

    iput v2, p0, Lcom/google/android/talk/TalkApp;->mInvisiblePresenceIcon:I

    .line 382
    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mAndroidConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

    .line 383
    const v2, 0x7f020091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mMobileConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

    .line 385
    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mAndroidConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

    .line 386
    const v2, 0x7f02008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mMobileConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

    .line 388
    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mChatStatusIcon:Landroid/graphics/drawable/Drawable;

    .line 390
    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "awayString":Ljava/lang/String;
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f0c0004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0c0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f0c0002

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x7f0c0001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mDefaultStatusStrings:[Ljava/lang/String;

    .line 400
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, -0x557f7f80

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mOfflineColorFilter:Landroid/graphics/ColorFilter;

    .line 402
    return-void
.end method

.method public static debugLoggable()Z
    .locals 2

    .prologue
    .line 233
    const/4 v0, 0x3

    sget v1, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method public static getLogLevelForTag(Ljava/lang/String;)I
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 1071
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1080
    :goto_0
    return v0

    .line 1073
    :cond_0
    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1074
    goto :goto_0

    .line 1075
    :cond_1
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 1076
    goto :goto_0

    .line 1077
    :cond_2
    invoke-static {p0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 1078
    goto :goto_0

    .line 1080
    :cond_3
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private static getLogLevelForTalk()I
    .locals 1

    .prologue
    .line 1061
    const-string v0, "talk"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->getLogLevelForTag(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTalkLogLevel()I
    .locals 1

    .prologue
    .line 225
    sget v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    return v0
.end method

.method private initializeDefaultTextNotificationUri()V
    .locals 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mFindRingtone:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1204
    return-void
.end method

.method public static isDisallowedUser(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1299
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "gtalk_allow_nonprimary_user"

    invoke-static {v0, v2, v1}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 1301
    if-eqz v0, :cond_1

    .line 1323
    :cond_0
    :goto_0
    return v1

    .line 1310
    :cond_1
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1311
    if-eqz v0, :cond_0

    .line 1313
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getUserHandle"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1314
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1315
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1316
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 1321
    goto :goto_0

    .line 1318
    :catch_0
    move-exception v0

    .line 1320
    const-string v2, "talk"

    const-string v3, "Can\'t get user"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 614
    const/4 v0, 0x3

    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TalkApp] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method private pruneOldChats(Lcom/google/android/gtalkservice/IImSession;)V
    .locals 14
    .param p1, "imSession"    # Lcom/google/android/gtalkservice/IImSession;

    .prologue
    .line 656
    if-nez p1, :cond_0

    .line 657
    const-string v0, "talk"

    const-string v12, "pruneOldChats: empty IM session, bail."

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :goto_0
    return-void

    .line 662
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 663
    .local v11, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 664
    .local v9, "now":J
    const-string v0, "gtalk_chat_expire"

    const-wide/32 v12, 0xdbba00

    invoke-static {v11, v0, v12, v13}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    sub-long v1, v9, v12

    .line 667
    .local v1, "expire":J
    const-string v0, "gtalk_chat_expire_for_other_client"

    const-wide/32 v12, 0x36ee80

    invoke-static {v11, v0, v12, v13}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    sub-long v5, v9, v12

    .line 670
    .local v5, "expireForChatsOnOtherClient":J
    const-string v0, "gtalk_chat_message_lifetime"

    const-wide/32 v12, 0x240c8400

    invoke-static {v11, v0, v12, v13}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    sub-long v3, v9, v12

    .line 674
    .local v3, "expireHard":J
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v7, 0x1

    .local v7, "closeChatIfTimeStampIsZero":Z
    :goto_1
    move-object v0, p1

    .line 675
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gtalkservice/IImSession;->pruneOldChatSessions(JJJZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 679
    .end local v1    # "expire":J
    .end local v3    # "expireHard":J
    .end local v5    # "expireForChatsOnOtherClient":J
    .end local v7    # "closeChatIfTimeStampIsZero":Z
    .end local v9    # "now":J
    .end local v11    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v8

    .line 680
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "talk"

    const-string v12, "asyncPruneChats caught "

    invoke-static {v0, v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 674
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v1    # "expire":J
    .restart local v3    # "expireHard":J
    .restart local v5    # "expireForChatsOnOtherClient":J
    .restart local v9    # "now":J
    .restart local v11    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static queryDebugLevel()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 198
    const-string v1, "talk"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    :goto_0
    return v0

    .line 200
    :cond_0
    const-string v0, "talk"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const/4 v0, 0x1

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static refreshTalkLogLevel()I
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getLogLevelForTalk()I

    move-result v0

    sput v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    .line 221
    sget v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    return v0
.end method

.method private setDefaultRingtoneUriForAccount(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 1225
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v0

    .line 1226
    if-eqz v0, :cond_0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1229
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setTextRingtoneURI(Ljava/lang/String;)V

    .line 1231
    :cond_0
    return-void
.end method

.method private setDefaultRingtoneUriForAllAccounts(Ljava/lang/String;)V
    .locals 4
    .param p1, "ringtoneUri"    # Ljava/lang/String;

    .prologue
    .line 1219
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/DatabaseUtils;->getAccountIds(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1220
    .local v1, "id":J
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/talk/TalkApp;->setDefaultRingtoneUriForAccount(Ljava/lang/String;J)V

    goto :goto_0

    .line 1222
    .end local v1    # "id":J
    :cond_0
    return-void
.end method

.method public static verboseLoggable()Z
    .locals 2

    .prologue
    .line 229
    const/4 v0, 0x2

    sget v1, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifyAccountInPrefs()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 912
    const-string v6, "gtalk_prefs"

    invoke-virtual {p0, v6, v3}, Lcom/google/android/talk/TalkApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 914
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "accountId"

    invoke-interface {v4, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 915
    .local v0, "accountId":J
    const-string v6, "username"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 917
    .local v5, "username":Ljava/lang/String;
    cmp-long v6, v0, v8

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 918
    .local v3, "clear":Z
    :cond_1
    if-eqz v3, :cond_2

    .line 920
    invoke-virtual {p0, v5}, Lcom/google/android/talk/TalkApp;->getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    .line 921
    .local v2, "accountInfo":Lcom/google/android/talk/TalkApp$AccountInfo;
    if-eqz v2, :cond_2

    iget-wide v6, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v6, v6, v0

    if-nez v6, :cond_2

    .line 922
    const/4 v3, 0x0

    .line 925
    .end local v2    # "accountInfo":Lcom/google/android/talk/TalkApp$AccountInfo;
    :cond_2
    if-eqz v3, :cond_3

    .line 927
    invoke-static {p0}, Lcom/google/android/talk/AccountLoginUtils;->clearActiveAccountPrefs(Landroid/content/Context;)V

    .line 929
    :cond_3
    return-void
.end method


# virtual methods
.method public addAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    .prologue
    .line 932
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 933
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    .line 934
    .local v0, "accountChangeListener":Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    if-ne p1, v0, :cond_0

    .line 935
    monitor-exit v3

    .line 943
    .end local v0    # "accountChangeListener":Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    :cond_1
    :goto_0
    return-void

    .line 938
    :cond_2
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    iget-boolean v2, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoaded:Z

    if-eqz v2, :cond_1

    .line 941
    invoke-interface {p1}, Lcom/google/android/talk/TalkApp$AccountListChangeListener;->onAccountListChanged()V

    goto :goto_0

    .line 939
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public addImSessionAvailableCallback(Landroid/os/Handler;JLcom/google/android/talk/SessionAvailableRunnable;)V
    .locals 1
    .param p1, "target"    # Landroid/os/Handler;
    .param p2, "accountId"    # J
    .param p4, "r"    # Lcom/google/android/talk/SessionAvailableRunnable;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/talk/TalkServiceState;->addSessionAvailableCallback(Landroid/os/Handler;JLcom/google/android/talk/SessionAvailableRunnable;)V

    .line 502
    return-void
.end method

.method public addServiceAvailableCallback(Landroid/os/Handler;Lcom/google/android/talk/ServiceAvailableRunnable;)V
    .locals 1
    .param p1, "target"    # Landroid/os/Handler;
    .param p2, "r"    # Lcom/google/android/talk/ServiceAvailableRunnable;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/talk/TalkServiceState;->addServiceAvailableCallback(Landroid/os/Handler;Lcom/google/android/talk/ServiceAvailableRunnable;)V

    .line 497
    return-void
.end method

.method public asyncPruneOldChatsAndMessages(Lcom/google/android/gtalkservice/IImSession;)V
    .locals 2
    .param p1, "imSession"    # Lcom/google/android/gtalkservice/IImSession;

    .prologue
    .line 644
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/talk/TalkApp$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/talk/TalkApp$4;-><init>(Lcom/google/android/talk/TalkApp;Lcom/google/android/gtalkservice/IImSession;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 653
    return-void
.end method

.method public clearSelfAvatarCache()V
    .locals 1

    .prologue
    .line 1197
    monitor-enter p0

    .line 1198
    :try_start_0
    sget-object v0, Lcom/google/android/talk/TalkApp;->mSelfAvatarMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1199
    monitor-exit p0

    .line 1200
    return-void

    .line 1199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)Z
    .locals 6

    .prologue
    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/ConnectionState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 1095
    const/4 v0, 0x0

    .line 1097
    invoke-virtual {p0, p5}, Lcom/google/android/talk/TalkApp;->getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    .line 1098
    if-nez v1, :cond_1

    .line 1099
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionStateChanged: can\'t find account for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_0
    :goto_0
    return v0

    .line 1101
    :cond_1
    iget-wide v2, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1103
    iput-wide p3, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 1104
    const/4 v0, 0x1

    .line 1109
    invoke-direct {p0, v1}, Lcom/google/android/talk/TalkApp;->broadcastAccountIdUpdate(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    goto :goto_0

    .line 1110
    :cond_2
    iget-wide v2, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v2, v2, p3

    if-eqz v2, :cond_0

    .line 1111
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionStateChanged: account for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but the state change says the accountId is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dumpAccountList()V
    .locals 6

    .prologue
    .line 1033
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpAccountList account count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 1036
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1038
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump - account id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " username: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->active:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " signedIn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->signedIn:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 1036
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1042
    :cond_0
    return-void
.end method

.method public ensureServiceBound()V
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 355
    :cond_0
    const-string v0, "ensureServiceBound calling bindService"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->bindService()V

    goto :goto_0
.end method

.method getAccountIdFromActivityIntent(Landroid/content/Intent;)J
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v0, 0x0

    .line 568
    if-nez p1, :cond_0

    .line 569
    const-string v2, "talk"

    const-string v3, "[TalkApp] getAccountIdFromActivityIntent: null intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_0
    return-wide v0

    :cond_0
    const-string v2, "accountId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getAccountInfo(J)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 5
    .param p1, "accountId"    # J

    .prologue
    .line 716
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 717
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 718
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 719
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 720
    .local v0, "account":Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 730
    .end local v0    # "account":Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :goto_1
    return-object v0

    .line 718
    .restart local v0    # "account":Lcom/google/android/talk/TalkApp$AccountInfo;
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    .end local v0    # "account":Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_2

    .line 727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountInfo: can\'t find account for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->dumpAccountList()V

    .line 730
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 5
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 734
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 735
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 736
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 737
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 738
    .local v0, "account":Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 748
    .end local v0    # "account":Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :goto_1
    return-object v0

    .line 736
    .restart local v0    # "account":Lcom/google/android/talk/TalkApp$AccountInfo;
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    .end local v0    # "account":Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_2

    .line 745
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountInfo: can\'t find account for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->dumpAccountList()V

    .line 748
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAccountList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccounts mAccountList count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 1018
    const-string v5, "gtalk_prefs"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/google/android/talk/TalkApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1020
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "accountId"

    invoke-interface {v3, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1021
    .local v0, "accountId":J
    const-string v5, "username"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1023
    .local v4, "username":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1024
    .local v2, "accountInfo":Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    cmp-long v5, v0, v7

    if-eqz v5, :cond_1

    .line 1025
    :cond_0
    new-instance v2, Lcom/google/android/talk/TalkApp$AccountInfo;

    .end local v2    # "accountInfo":Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-direct {v2}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    .line 1026
    .restart local v2    # "accountInfo":Lcom/google/android/talk/TalkApp$AccountInfo;
    iput-wide v0, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 1027
    iput-object v4, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 1029
    :cond_1
    return-object v2
.end method

.method public getAudioVideoButtonIcon(I)I
    .locals 1
    .param p1, "capabilities"    # I

    .prologue
    .line 461
    invoke-static {p1}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const v0, 0x7f02006f

    .line 466
    :goto_0
    return v0

    .line 463
    :cond_0
    invoke-static {p1}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    const v0, 0x7f02003e

    goto :goto_0

    .line 466
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectionTypeIndicator(IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "clientType"    # I
    .param p2, "lightBackground"    # Z

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 477
    .local v0, "retVal":Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_0

    .line 492
    :goto_0
    return-object v0

    .line 479
    :pswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAndroidConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

    .line 481
    :goto_1
    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAndroidConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 484
    :pswitch_1
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mMobileConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

    .line 486
    :goto_2
    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mMobileConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDesaturedColorFilter()Landroid/graphics/ColorFilter;
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1119
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mDesaturatedColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_0

    .line 1120
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1121
    invoke-virtual {v0, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1123
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1126
    const v2, 0x3e99999a    # 0.3f

    .line 1127
    sub-float v3, v7, v2

    .line 1128
    const/high16 v4, 0x437f0000    # 255.0f

    add-float/2addr v2, v6

    mul-float/2addr v2, v4

    .line 1130
    const/16 v4, 0x14

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v6, v4, v5

    const/4 v5, 0x2

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v6, v4, v5

    const/4 v5, 0x4

    aput v2, v4, v5

    const/4 v5, 0x5

    aput v6, v4, v5

    const/4 v5, 0x6

    aput v3, v4, v5

    const/4 v5, 0x7

    aput v6, v4, v5

    const/16 v5, 0x8

    aput v6, v4, v5

    const/16 v5, 0x9

    aput v2, v4, v5

    const/16 v5, 0xa

    aput v6, v4, v5

    const/16 v5, 0xb

    aput v6, v4, v5

    const/16 v5, 0xc

    aput v3, v4, v5

    const/16 v3, 0xd

    aput v6, v4, v3

    const/16 v3, 0xe

    aput v2, v4, v3

    const/16 v2, 0xf

    aput v6, v4, v2

    const/16 v2, 0x10

    aput v6, v4, v2

    const/16 v2, 0x11

    aput v6, v4, v2

    const/16 v2, 0x12

    aput v7, v4, v2

    const/16 v2, 0x13

    aput v6, v4, v2

    invoke-virtual {v1, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1137
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1138
    invoke-virtual {v2, v0, v1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 1140
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mDesaturatedColorFilter:Landroid/graphics/ColorFilter;

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mDesaturatedColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkServiceState;->getService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    return-object v0
.end method

.method public getGenericAvatar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGenericAvatar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getGmailProvider()Lcom/google/android/talk/GmailProviderWrapper;
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper;

    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/talk/GmailProviderWrapper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    return-object v0
.end method

.method getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    .locals 6
    .param p1, "accountId"    # J

    .prologue
    const/4 v1, 0x0

    .line 587
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 605
    :goto_0
    return-object v1

    .line 591
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v2

    .line 592
    .local v2, "service":Lcom/google/android/gtalkservice/IGTalkService;
    if-nez v2, :cond_1

    .line 593
    const-string v3, "talk"

    const-string v4, "[TalkApp] getImSessionForAccountId: null GTalk service!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 597
    :cond_1
    const/4 v1, 0x0

    .line 600
    .local v1, "retVal":Lcom/google/android/gtalkservice/IImSession;
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "talk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImSessionForAccountId: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getImSessionFromActivityIntent(Landroid/content/Intent;)Lcom/google/android/gtalkservice/IImSession;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 577
    if-nez p1, :cond_0

    .line 578
    const-string v1, "talk"

    const-string v2, "[TalkApp] getImSessionFromActivityIntent: null intent"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v1, 0x0

    .line 583
    :goto_0
    return-object v1

    .line 582
    :cond_0
    const-string v1, "accountId"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 583
    .local v0, "accountId":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/talk/TalkApp;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    goto :goto_0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "com.google.android.talk.SuggestionProvider"

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getSelfAvatarDataForAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;)V
    .locals 4
    .param p1, "account"    # Lcom/google/android/talk/TalkApp$AccountInfo;
    .param p2, "update"    # Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;

    .prologue
    .line 1182
    monitor-enter p0

    .line 1183
    :try_start_0
    sget-object v2, Lcom/google/android/talk/TalkApp;->mSelfAvatarMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/DatabaseUtils$AvatarData;

    .line 1184
    .local v0, "ad":Lcom/google/android/talk/DatabaseUtils$AvatarData;
    if-eqz v0, :cond_0

    .line 1185
    invoke-interface {p2, v0}, Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;->run(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V

    .line 1191
    :goto_0
    monitor-exit p0

    .line 1192
    return-void

    .line 1187
    :cond_0
    new-instance v1, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;

    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2}, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;-><init>(Lcom/google/android/talk/TalkApp;Landroid/content/ContentResolver;Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;)V

    .line 1189
    .local v1, "task":Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/talk/TalkApp$AccountInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1191
    .end local v0    # "ad":Lcom/google/android/talk/DatabaseUtils$AvatarData;
    .end local v1    # "task":Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getStatusColorId(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 440
    packed-switch p1, :pswitch_data_0

    .line 456
    :pswitch_0
    const v0, 0x7f020098

    :goto_0
    return v0

    .line 442
    :pswitch_1
    const v0, 0x7f0200ad

    goto :goto_0

    .line 446
    :pswitch_2
    const v0, 0x7f020005

    goto :goto_0

    .line 449
    :pswitch_3
    const v0, 0x7f020023

    goto :goto_0

    .line 452
    :pswitch_4
    const v0, 0x7f02009f

    goto :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public getStatusIcon(II)I
    .locals 2
    .param p1, "status"    # I
    .param p2, "capabilities"    # I

    .prologue
    .line 417
    invoke-direct {p0, p2}, Lcom/google/android/talk/TalkApp;->computeCapabilityIndex(I)I

    move-result v0

    .line 419
    .local v0, "capabilityIndex":I
    packed-switch p1, :pswitch_data_0

    .line 435
    iget v1, p0, Lcom/google/android/talk/TalkApp;->mOfflinePresenceIcon:I

    :goto_0
    return v1

    .line 421
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[I

    aget v1, v1, v0

    goto :goto_0

    .line 425
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[I

    aget v1, v1, v0

    goto :goto_0

    .line 428
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[I

    aget v1, v1, v0

    goto :goto_0

    .line 431
    :pswitch_3
    iget v1, p0, Lcom/google/android/talk/TalkApp;->mInvisiblePresenceIcon:I

    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isAccountIdValid(J)Z
    .locals 5
    .param p1, "accountId"    # J

    .prologue
    .line 1004
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountsRetriever:Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;

    invoke-virtual {v3}, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->waitForAccounts()V

    .line 1006
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    .line 1007
    .local v0, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    if-eqz v0, :cond_1

    .line 1008
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1009
    .local v2, "info":Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v3, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 1010
    const/4 v3, 0x1

    .line 1014
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/google/android/talk/TalkApp$AccountInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isBackgroundDataEnabled()Z
    .locals 2

    .prologue
    .line 609
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/google/android/talk/TalkApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 610
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method public loadAccounts()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 813
    const-string v1, "loadAccounts"

    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 814
    iput-boolean v4, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoaded:Z

    .line 815
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 817
    .local v0, "accounts":[Landroid/accounts/Account;
    new-instance v1, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;-><init>(Lcom/google/android/talk/TalkApp;[Landroid/accounts/Account;)V

    iput-object v1, p0, Lcom/google/android/talk/TalkApp;->mAccountsRetriever:Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;

    .line 818
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAccountsRetriever:Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 819
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 279
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/TalkApp;->mAppHandler:Landroid/os/Handler;

    .line 280
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->bindService()V

    .line 282
    invoke-static {p0}, Lcom/google/android/talk/AvatarCache;->initialize(Lcom/google/android/talk/TalkApp;)V

    .line 283
    invoke-static {p0}, Lcom/google/android/talk/PictureCache;->initialize(Landroid/content/Context;)V

    .line 284
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, v1}, Lcom/google/android/talk/SettingsCache;->initialize(Landroid/content/Context;Landroid/os/Handler;)V

    .line 285
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->constructCachedDrawables()V

    .line 286
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->loadAccounts()V

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mSettingsMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/talk/TalkApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/talk/FeatureManager;->setAvailableFeaturesAllAccounts(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 295
    new-instance v1, Lcom/google/android/talk/GlobalCallStateMonitor;

    invoke-direct {v1, p0}, Lcom/google/android/talk/GlobalCallStateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/talk/TalkApp;->mGlobalCallStateMonitor:Lcom/google/android/talk/GlobalCallStateMonitor;

    .line 296
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mGlobalCallStateMonitor:Lcom/google/android/talk/GlobalCallStateMonitor;

    invoke-virtual {v1}, Lcom/google/android/talk/GlobalCallStateMonitor;->startListening()V

    .line 298
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->initializeDefaultTextNotificationUri()V

    .line 299
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 303
    const-string v0, "##### onTerminate #####"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 305
    invoke-static {p0}, Lcom/google/android/talk/AvatarCache;->destroyAll(Landroid/content/Context;)V

    .line 306
    invoke-static {p0}, Lcom/google/android/talk/PictureCache;->destroyAll(Landroid/content/Context;)V

    .line 307
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->destroyAll()V

    .line 309
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/TalkApp;->unbindService(Landroid/content/ServiceConnection;)V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mSettingsMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/TalkApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 316
    return-void
.end method

.method rebindService()V
    .locals 3

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/google/android/talk/TalkApp;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 344
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkServiceState;->clearService()V

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->bindService()V

    .line 348
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "talk"

    const-string v2, "Can\'t unbind service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    .prologue
    .line 946
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 947
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    .line 948
    .local v0, "accountChangeListener":Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    if-ne p1, v0, :cond_0

    .line 949
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 950
    monitor-exit v3

    .line 954
    .end local v0    # "accountChangeListener":Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    :goto_0
    return-void

    .line 953
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeImSessionAvailableCallback(Landroid/os/Handler;)V
    .locals 1
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/TalkServiceState;->removeSessionAvailableCallback(Landroid/os/Handler;)V

    .line 506
    return-void
.end method

.method public removeServiceAvailableCallback(Landroid/os/Handler;)V
    .locals 1
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mServiceState:Lcom/google/android/talk/TalkServiceState;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/TalkServiceState;->removeServiceAvailableCallback(Landroid/os/Handler;)V

    .line 510
    return-void
.end method

.method public setCurrentAccount(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 5
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 759
    const/4 v1, 0x0

    .line 760
    .local v1, "activeAccount":Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 761
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 762
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 766
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 767
    .local v0, "account":Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 768
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->active:Z

    .line 769
    move-object v1, v0

    .line 762
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 771
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->active:Z

    goto :goto_1

    .line 775
    .end local v0    # "account":Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    return-object v1
.end method

.method public setDefaultRingtoneForAccount(J)V
    .locals 1
    .param p1, "accountId"    # J

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mDefaultTextNotificationUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1216
    :goto_0
    return-void

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mDefaultTextNotificationUri:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/talk/TalkApp;->setDefaultRingtoneUriForAccount(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method setImSessionAvailable(Ljava/lang/String;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/google/android/gtalkservice/IImSession;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAppHandler:Landroid/os/Handler;

    .line 520
    .local v0, "h":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 521
    const-string v1, "talk"

    const-string v2, "null mAppHandler in setImSessionAvailable"

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :goto_0
    return-void

    .line 523
    :cond_0
    new-instance v1, Lcom/google/android/talk/TalkApp$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/talk/TalkApp$3;-><init>(Lcom/google/android/talk/TalkApp;Ljava/lang/String;Lcom/google/android/gtalkservice/IImSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setInactiveAccount(J)V
    .locals 6
    .param p1, "accountId"    # J

    .prologue
    const/4 v5, 0x0

    .line 780
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 781
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 782
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 783
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 784
    .local v0, "account":Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 785
    iput-boolean v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->active:Z

    .line 786
    iput-boolean v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->signedIn:Z

    .line 782
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 790
    .end local v0    # "account":Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_1
    return-void
.end method

.method public shouldHideRemoteJid(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1278
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mJidDomainsToHide:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1280
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gtalk_ppjid_domains"

    const-string v3, "public.talk.google.com"

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1282
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/TalkApp;->mJidDomainsToHide:[Ljava/lang/String;

    .line 1285
    :cond_0
    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1286
    if-eqz v2, :cond_1

    .line 1287
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mJidDomainsToHide:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 1288
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1290
    const/4 v0, 0x1

    .line 1295
    :cond_1
    return v0

    .line 1287
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
