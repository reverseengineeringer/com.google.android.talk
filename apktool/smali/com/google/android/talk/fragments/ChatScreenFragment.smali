.class public Lcom/google/android/talk/fragments/ChatScreenFragment;
.super Landroid/app/Fragment;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/ChatScreenFragment$18;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    }
.end annotation


# static fields
.field private static CHATS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountId:J

.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mAudioDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/CallSession$AudioDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCallStateClient:Lcom/google/android/videochat/CallStateClient;

.field private mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

.field private mChatInputField:Landroid/widget/EditText;

.field private mChatList:Lcom/google/android/talk/util/ChatList;

.field private mColorMaker:Lcom/google/android/talk/util/ChatColorMaker;

.field private mContactIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

.field private mCreated:Z

.field private mFromStatusBarNotify:Z

.field private mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

.field private mGroupChatEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInputContainer:Landroid/view/View;

.field private volatile mInvitePending:Z

.field private mInviteRunnable:Ljava/lang/Runnable;

.field private mMessageBar:Landroid/view/ViewGroup;

.field private mNeedToHandleNewIntent:Z

.field private mQueryCompleteRunnable:Ljava/lang/Runnable;

.field private mResources:Landroid/content/res/Resources;

.field private mRoot:Landroid/view/View;

.field private mSelfClientType:I

.field private mSendButton:Landroid/view/View;

.field private mService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mStartVoiceChatRequest:Z

.field private mStarted:Z

.field private mTabletMode:Z

.field private mTargetContact:Ljava/lang/String;

.field private final mWaitForServiceTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 646
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_active"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment;->CHATS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1140
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 659
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    .line 682
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    .line 699
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSelfClientType:I

    .line 716
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAudioDevices:Ljava/util/Set;

    .line 734
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    .line 1072
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$2;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mQueryCompleteRunnable:Ljava/lang/Runnable;

    .line 1141
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 1144
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 659
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    .line 682
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    .line 699
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSelfClientType:I

    .line 716
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAudioDevices:Ljava/util/Set;

    .line 734
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    .line 1072
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$2;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mQueryCompleteRunnable:Ljava/lang/Runnable;

    .line 1145
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    .line 1146
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/videochat/CallStateClient;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mMessageBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/ChatView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;
    .param p1, "x1"    # Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->pickChat(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->hideKeyboard()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/talk/fragments/ChatScreenFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->sendMessage()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSendButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->userActionDetected()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->ensureChatInDb(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAudioDevices:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInvitePending:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/google/android/talk/fragments/ChatScreenFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInvitePending:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/talk/fragments/ChatScreenFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatList;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/talk/util/ChatList;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;
    .param p1, "x1"    # Lcom/google/android/talk/util/ChatList;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->hintValue(Lcom/google/android/talk/util/ChatList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    return-object v0
.end method

.method private checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;
    .locals 11
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "ensureChatsInDb"    # Z

    .prologue
    .line 1318
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkChatSession "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ensureChatsInDb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->logv(Ljava/lang/String;)V

    .line 1322
    :cond_0
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    monitor-enter v9

    .line 1323
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-nez v0, :cond_2

    .line 1324
    iget-object v10, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$7;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/fragments/ChatScreenFragment$7;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JZ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
    const/4 v6, 0x0

    monitor-exit v9

    .line 1367
    :cond_1
    :goto_0
    return-object v6

    .line 1333
    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1337
    :try_start_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-interface {v0, p2, p3}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v8

    .line 1339
    .local v8, "imSession":Lcom/google/android/gtalkservice/IImSession;
    if-nez v8, :cond_3

    .line 1340
    const-string v0, "talk"

    const-string v1, "checkChatSession: null imSession, bail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1342
    const/4 v6, 0x0

    goto :goto_0

    .line 1333
    .end local v8    # "imSession":Lcom/google/android/gtalkservice/IImSession;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1345
    .restart local v8    # "imSession":Lcom/google/android/gtalkservice/IImSession;
    :cond_3
    :try_start_3
    invoke-interface {v8, p1}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v6

    .line 1346
    .local v6, "chatSession":Lcom/google/android/gtalkservice/IChatSession;
    if-nez v6, :cond_4

    .line 1347
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->suspendRequery()V

    .line 1348
    invoke-interface {v8, p1}, Lcom/google/android/gtalkservice/IImSession;->createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v6

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkChatSession created for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chatSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->resumeRequery()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1363
    .end local v6    # "chatSession":Lcom/google/android/gtalkservice/IChatSession;
    .end local v8    # "imSession":Lcom/google/android/gtalkservice/IImSession;
    :catch_0
    move-exception v7

    .line 1364
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "talk"

    const-string v1, "checkChatSession caught "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1365
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 1367
    const/4 v6, 0x0

    goto :goto_0

    .line 1351
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v6    # "chatSession":Lcom/google/android/gtalkservice/IChatSession;
    .restart local v8    # "imSession":Lcom/google/android/gtalkservice/IImSession;
    :cond_4
    if-eqz p4, :cond_1

    .line 1355
    :try_start_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment$8;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method private configureMuteUnmuteButton(Landroid/view/MenuItem;Z)V
    .locals 1

    .prologue
    .line 2210
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2211
    if-eqz p2, :cond_0

    const v0, 0x7f0c010a

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2214
    if-eqz p2, :cond_1

    const v0, 0x7f020063

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2217
    return-void

    .line 2211
    :cond_0
    const v0, 0x7f0c0109

    goto :goto_0

    .line 2214
    :cond_1
    const v0, 0x7f020065

    goto :goto_1
.end method

.method private createChatList(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 1117
    new-instance v0, Lcom/google/android/talk/util/ChatList;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mQueryCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/talk/util/ChatList;-><init>(Landroid/app/Activity;JLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    .line 1122
    return-void
.end method

.method private dismissAllChatNotifications(J)V
    .locals 3

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 2026
    if-nez v0, :cond_1

    .line 2027
    const-string v0, "talk"

    const-string v1, "dismissChatNotification: no GTalkService object found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_0
    :goto_0
    return-void

    .line 2032
    :cond_1
    :try_start_0
    const-string v1, "dismissChatNotification for all"

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 2033
    invoke-interface {v0, p1, p2}, Lcom/google/android/gtalkservice/IGTalkService;->dismissNotificationsForAccount(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2037
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2038
    if-eqz v0, :cond_0

    .line 2039
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/ActivityUtils;->dismissPopupNotification(Landroid/app/Activity;)V

    goto :goto_0

    .line 2034
    :catch_0
    move-exception v0

    .line 2035
    const-string v1, "talk"

    const-string v2, "dismissChatNotification: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private enableOrDisable(Landroid/view/MenuItem;Lcom/google/android/videochat/CallSession$AudioDevice;)V
    .locals 2
    .param p1, "m"    # Landroid/view/MenuItem;
    .param p2, "a"    # Lcom/google/android/videochat/CallSession$AudioDevice;

    .prologue
    const/4 v1, 0x0

    .line 2202
    if-eqz p1, :cond_0

    .line 2203
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAudioDevices:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2204
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 2205
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 2207
    :cond_0
    return-void
.end method

.method private ensureChatInDb(Ljava/lang/String;J)V
    .locals 18
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "accountId"    # J

    .prologue
    .line 1375
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1376
    .local v9, "buf":Ljava/lang/StringBuilder;
    const-string v4, "contact_id"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    const-string v4, " in (select _id from contacts where "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    const-string v4, "username"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    const-string v4, "account"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1382
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/google/android/talk/fragments/ChatScreenFragment;->CHATS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1388
    .local v10, "c":Landroid/database/Cursor;
    const-wide/16 v11, 0x0

    .line 1389
    .local v11, "contactId":J
    const/4 v15, 0x0

    .line 1390
    .local v15, "isactive":Z
    const-wide/16 v13, 0x0

    .line 1391
    .local v13, "id":J
    if-eqz v10, :cond_1

    .line 1393
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1394
    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v11, v4

    .line 1395
    const/4 v4, 0x2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v15, 0x1

    .line 1396
    :goto_0
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v13

    .line 1399
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1404
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v11, v4

    if-nez v4, :cond_4

    .line 1405
    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/talk/DatabaseUtils;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v11

    .line 1407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ensureChatInDb: create a chat for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", contactId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1409
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1410
    .local v16, "values":Landroid/content/ContentValues;
    const-string v4, "contact_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1411
    const-string v4, "last_message_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1412
    const-string v5, "last_unread_message"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    sget-object v4, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1422
    .end local v16    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return-void

    .line 1395
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 1399
    :catchall_0
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1415
    :cond_4
    if-nez v15, :cond_2

    .line 1416
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1417
    .restart local v16    # "values":Landroid/content/ContentValues;
    const-string v4, "is_active"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1418
    sget-object v4, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "contact_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V
    .locals 1
    .param p1, "vr"    # Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->foreachChatView(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    .line 732
    :cond_0
    return-void
.end method

.method private getActiveChat()Lcom/google/android/talk/ChatView;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    if-nez v0, :cond_0

    .line 722
    const/4 v0, 0x0

    .line 724
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getSelectedChatView()Lcom/google/android/talk/ChatView;

    move-result-object v0

    goto :goto_0
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    .line 1660
    if-nez v0, :cond_0

    .line 1666
    :goto_0
    return-void

    .line 1663
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1665
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private hintValue(Lcom/google/android/talk/util/ChatList;)Ljava/lang/String;
    .locals 4
    .param p1, "switcher"    # Lcom/google/android/talk/util/ChatList;

    .prologue
    .line 1005
    invoke-virtual {p1}, Lcom/google/android/talk/util/ChatList;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1007
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1016
    :goto_0
    return-object v2

    .line 1009
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/talk/util/ChatList;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, "fullName":Ljava/lang/String;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1013
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 1014
    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseAbbreviatedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1016
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static isChatScreenIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1579
    if-nez p0, :cond_1

    .line 1583
    :cond_0
    :goto_0
    return v1

    .line 1582
    :cond_1
    const-string v2, "from"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1583
    .local v0, "fromAddress":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2403
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2406
    :goto_0
    return-void

    .line 2404
    :cond_0
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatScreenFragment] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2409
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2412
    :goto_0
    return-void

    .line 2410
    :cond_0
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatScreenFragment] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onGroupChatApproval(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1809
    if-nez p1, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 1823
    :goto_0
    return-void

    .line 1814
    :cond_0
    const-string v0, "room"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1815
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    const-string v1, "approval"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1817
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1818
    const-string v2, "from"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1819
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1821
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    goto :goto_0
.end method

.method private pickChat(Ljava/lang/String;J)V
    .locals 7
    .param p1, "targetContact"    # Ljava/lang/String;
    .param p2, "targetAccountId"    # J

    .prologue
    const/4 v6, -0x1

    .line 1025
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1033
    .local v1, "currentIntent":Landroid/content/Intent;
    const-string v4, "from"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    const-string v4, "accountId"

    invoke-virtual {v1, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1036
    const/4 v3, -0x1

    .line 1037
    .local v3, "position":I
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v4}, Lcom/google/android/talk/util/ChatList;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1038
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v4}, Lcom/google/android/talk/util/ChatList;->getCount()I

    move-result v0

    .line 1039
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1040
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v4, v2}, Lcom/google/android/talk/util/ChatList;->moveToPosition(I)V

    .line 1041
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v4}, Lcom/google/android/talk/util/ChatList;->getAccountId()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-eqz v4, :cond_3

    .line 1039
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1044
    :cond_3
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v4}, Lcom/google/android/talk/util/ChatList;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1047
    move v3, v2

    .line 1054
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_4
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 1056
    if-eqz p1, :cond_5

    .line 1058
    if-ne v3, v6, :cond_6

    const/4 v4, 0x1

    :goto_2
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;

    .line 1060
    if-eq v3, v6, :cond_5

    .line 1061
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    new-instance v5, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-direct {v5, p0, v6}, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/talk/util/ChatList;)V

    invoke-interface {v4, v5}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->setAdapter(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;)V

    .line 1062
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v4, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->setSelection(I)V

    .line 1066
    :cond_5
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 1067
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1068
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 1058
    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1692
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1694
    const-string v1, "from_notify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mFromStatusBarNotify:Z

    .line 1696
    const-string v1, "vc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z

    .line 1698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveIntent: fromNotify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mFromStatusBarNotify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startVoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1700
    return-void
.end method

.method private restartKeyboard()V
    .locals 2

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    .line 1650
    if-nez v0, :cond_0

    .line 1656
    :goto_0
    return-void

    .line 1653
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1655
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto :goto_0
.end method

.method private sendMessage()V
    .locals 4

    .prologue
    .line 1425
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1426
    .local v0, "active":Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1429
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/talk/ChatView;->sendMessage(Ljava/lang/String;)V

    .line 1430
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 1431
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->restartKeyboard()V

    .line 1432
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1434
    iget-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    if-nez v2, :cond_0

    .line 1437
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1438
    .local v1, "config":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1439
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->hideKeyboard()V

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "contact"    # Ljava/lang/CharSequence;
    .param p2, "nickname"    # Ljava/lang/CharSequence;
    .param p3, "status"    # Ljava/lang/CharSequence;
    .param p4, "clientType"    # I
    .param p5, "presence"    # I
    .param p6, "capabilities"    # I

    .prologue
    .line 940
    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lcom/google/android/talk/TalkApp;->getConnectionTypeIndicator(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 943
    .local v6, "c":Landroid/graphics/drawable/Drawable;
    :goto_0
    iput p4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSelfClientType:I

    .line 945
    packed-switch p4, :pswitch_data_0

    .line 952
    :goto_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/drawable/Drawable;)V

    .line 953
    return-void

    .line 940
    .end local v6    # "c":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 948
    .restart local v6    # "c":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 949
    goto :goto_1

    .line 945
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setupMessageBar()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3fc00000    # 1.5f

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 1252
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v3, 0x7f100034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1253
    .local v1, "vg":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 1273
    :goto_0
    return-void

    .line 1257
    :cond_0
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 1259
    .local v0, "messageBarTransition":Landroid/animation/LayoutTransition;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v7}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 1260
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v7}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 1261
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v4, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1262
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v5, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1263
    invoke-virtual {v0, v4, v8, v9}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 1264
    invoke-virtual {v0, v5, v8, v9}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 1266
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v4, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 1268
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 1271
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1272
    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mMessageBar:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private start()V
    .locals 3

    .prologue
    .line 1477
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    if-eqz v0, :cond_1

    .line 1552
    :cond_0
    :goto_0
    return-void

    .line 1481
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    if-eqz v0, :cond_0

    .line 1489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    .line 1490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 1491
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->ensureServiceBound()V

    .line 1492
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->registerForServiceStateChanged()V

    .line 1494
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$10;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$10;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    .line 1503
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->requery()V

    .line 1506
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$11;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$11;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    .line 1546
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallStateClient;->startListening()V

    .line 1548
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mNeedToHandleNewIntent:Z

    if-eqz v0, :cond_0

    .line 1549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mNeedToHandleNewIntent:Z

    .line 1550
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->pickChat(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private userActionDetected()V
    .locals 2

    .prologue
    .line 2325
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2326
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 2327
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->handleUnreadMessages(Z)V

    .line 2329
    :cond_0
    return-void
.end method


# virtual methods
.method public addToChat()V
    .locals 5

    .prologue
    .line 2339
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGroupChatEnabled:Z

    if-nez v0, :cond_1

    .line 2353
    :cond_0
    :goto_0
    return-void

    .line 2342
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2343
    if-eqz v0, :cond_0

    .line 2344
    const-string v1, "show groupchat invite"

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 2345
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/google/android/talk/GroupChatInviteeList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2347
    const-string v2, "accountId"

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2348
    const-string v2, "from"

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getMucParticipants()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2351
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method clearChat()V
    .locals 1

    .prologue
    .line 2299
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2300
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_0

    .line 2304
    :goto_0
    return-void

    .line 2303
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->clearChat()V

    goto :goto_0
.end method

.method public currentChatAccount()J
    .locals 3

    .prologue
    .line 1774
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1775
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 1776
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v1

    .line 1778
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public currentChatUser()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1765
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1766
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 1767
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v1

    .line 1769
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public leaveChat()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2245
    const-string v1, "leaveChat"

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 2247
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v1

    .line 2248
    if-nez v1, :cond_0

    .line 2296
    :goto_0
    return-void

    .line 2252
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v2}, Lcom/google/android/talk/util/ChatList;->getCount()I

    move-result v2

    .line 2254
    if-le v2, v0, :cond_4

    .line 2255
    new-instance v3, Lcom/google/android/talk/fragments/ChatScreenFragment$17;

    invoke-direct {v3, p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$17;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/talk/ChatView;)V

    .line 2264
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getSelectedItemPosition()I

    move-result v4

    .line 2265
    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_1

    .line 2267
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    if-eqz v2, :cond_3

    .line 2272
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    if-eqz v0, :cond_2

    add-int/lit8 v0, v4, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/google/android/talk/util/ChatList;->moveToPosition(I)V

    .line 2273
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2274
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2275
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->leaveChat()V

    .line 2276
    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 2277
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2265
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2272
    :cond_2
    add-int/lit8 v0, v4, -0x1

    goto :goto_2

    .line 2279
    :cond_3
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v1, v0, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->selectNext(ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 2282
    :cond_4
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->onLastChatClosed()V

    .line 2284
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->leaveChat()V

    .line 2285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 2290
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2291
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2292
    const-string v1, "accountId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2293
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2294
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->requery()V

    goto :goto_0
.end method

.method public leaveChat(Ljava/lang/String;)V
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 2229
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v1

    .line 2230
    .local v1, "cv":Lcom/google/android/talk/ChatView;
    if-nez v1, :cond_0

    .line 2242
    :goto_0
    return-void

    .line 2234
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    .line 2235
    .local v0, "currentChatContact":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2238
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    goto :goto_0

    .line 2240
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v2}, Lcom/google/android/talk/util/ChatList;->requery()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1588
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1590
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 1591
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1943
    packed-switch p1, :pswitch_data_0

    .line 2009
    :cond_0
    :goto_0
    return-void

    .line 1946
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1947
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "invitee"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1948
    if-eqz v5, :cond_1

    .line 1949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1950
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 1951
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1952
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1953
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1955
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1957
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1960
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/fragments/ChatScreenFragment$15;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    .line 1999
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2001
    iput-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 2006
    :pswitch_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onGroupChatApproval(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    move-object v0, v6

    goto :goto_1

    .line 1943
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1126
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 1128
    check-cast v0, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;

    .line 1129
    .local v0, "host":Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    .line 1130
    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;->getChatScreenController()Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    .line 1131
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    .line 1135
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gtalk_allow_group_chat"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGroupChatEnabled:Z

    .line 1137
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 2095
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2097
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2099
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2100
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 2101
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 2102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 1279
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1280
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->resolveIntent()V

    .line 1282
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    .line 1284
    invoke-virtual {p0, v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setHasOptionsMenu(Z)V

    .line 1286
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    .line 1287
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1288
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "accountId"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    .line 1289
    iget-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1290
    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    .end local v0    # "a":Landroid/app/Activity;
    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iput-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    .line 1293
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    .line 1295
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 1298
    iput-boolean v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCreated:Z

    .line 1299
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 2106
    const v0, 0x7f0f0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1226
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    if-eqz v1, :cond_1

    .line 1227
    const v1, 0x7f040013

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    .line 1232
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setupInputFieldAndSendButton(Landroid/view/View;)V

    .line 1233
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setupMessageBar()V

    .line 1235
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f100033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1236
    .local v0, "chatRoot":Landroid/view/ViewGroup;
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    if-eqz v1, :cond_2

    .line 1237
    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    .line 1242
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->createChatList(Landroid/view/View;)V

    .line 1244
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1245
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->start()V

    .line 1248
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    return-object v1

    .line 1229
    .end local v0    # "chatRoot":Landroid/view/ViewGroup;
    :cond_1
    const v1, 0x7f040014

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    goto :goto_0

    .line 1239
    .restart local v0    # "chatRoot":Landroid/view/ViewGroup;
    :cond_2
    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1676
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1678
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$14;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$14;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    .line 1689
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 2386
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 2388
    if-eqz p1, :cond_2

    .line 2389
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->stop()V

    .line 2390
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2391
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2392
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->hideKeyboard()V

    .line 2397
    .end local v0    # "a":Landroid/app/Activity;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    if-eqz v1, :cond_1

    .line 2398
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v1, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->onHiddenChanged(Z)V

    .line 2400
    :cond_1
    return-void

    .line 2395
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->start()V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1728
    invoke-static {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isChatScreenIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1762
    :goto_0
    return-void

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1733
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->resolveIntent()V

    .line 1735
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 1738
    const-string v0, "accountId"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1739
    iget-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    .line 1740
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 1741
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got intent with account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; contact is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1744
    :cond_1
    iput-wide v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    .line 1747
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    if-nez v0, :cond_3

    .line 1748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mNeedToHandleNewIntent:Z

    goto :goto_0

    .line 1751
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mNeedToHandleNewIntent:Z

    .line 1753
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->pickChat(Ljava/lang/String;J)V

    .line 1755
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1756
    if-eqz v0, :cond_4

    .line 1757
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->dismissChatNotification()V

    .line 1761
    :cond_4
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallStateClient;->requestUpdate()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->handleMenuItem(Lcom/google/android/talk/ChatView;Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1595
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1600
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1606
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$13;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$13;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    .line 1615
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 13

    .prologue
    .line 2111
    const v0, 0x7f1000bd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2112
    const v1, 0x7f1000be

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2113
    const v2, 0x7f100059

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2114
    const v3, 0x7f10005a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2115
    const v4, 0x7f10005d

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2116
    const v5, 0x7f10005e

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 2117
    const v6, 0x7f1000bf

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2118
    const v7, 0x7f1000c3

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 2120
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2121
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2122
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2123
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2124
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2125
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2126
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2127
    iget-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGroupChatEnabled:Z

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2129
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v2

    .line 2130
    if-nez v2, :cond_1

    .line 2199
    :cond_0
    :goto_0
    return-void

    .line 2134
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->getVideoChatState()Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v8

    .line 2135
    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->getCapabilities()I

    move-result v9

    .line 2136
    invoke-static {v9}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v10

    .line 2137
    invoke-static {v9}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v9

    .line 2139
    sget-object v11, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    invoke-virtual {v8}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 2167
    :cond_2
    :goto_1
    const v0, 0x7f1000c1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2168
    if-eqz v1, :cond_3

    .line 2169
    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->isOffTheRecord()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0c004d

    :goto_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2172
    :cond_3
    const v0, 0x7f1000b4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->enableOrDisable(Landroid/view/MenuItem;Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 2173
    const v0, 0x7f1000b1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->SPEAKERPHONE:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->enableOrDisable(Landroid/view/MenuItem;Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 2174
    const v0, 0x7f1000b3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->EARPIECE:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->enableOrDisable(Landroid/view/MenuItem;Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 2175
    const v0, 0x7f1000b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->WIRED_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->enableOrDisable(Landroid/view/MenuItem;Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 2177
    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->getSelectedAudioDevice()Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v1

    .line 2178
    const/4 v0, 0x0

    .line 2180
    sget-object v2, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    invoke-virtual {v1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 2195
    :goto_3
    if-eqz v0, :cond_0

    .line 2196
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 2197
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2141
    :pswitch_0
    if-eqz v10, :cond_4

    .line 2142
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2144
    :cond_4
    if-eqz v9, :cond_2

    .line 2145
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2153
    :pswitch_1
    const/4 v0, 0x1

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2160
    :pswitch_2
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2161
    sget-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    if-ne v8, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, v4, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->configureMuteUnmuteButton(Landroid/view/MenuItem;Z)V

    .line 2162
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2163
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 2161
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 2169
    :cond_6
    const v0, 0x7f0c004e

    goto :goto_2

    .line 2183
    :pswitch_3
    const v0, 0x7f1000b4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_3

    .line 2186
    :pswitch_4
    const v0, 0x7f1000b1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_3

    .line 2189
    :pswitch_5
    const v0, 0x7f1000b3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_3

    .line 2192
    :pswitch_6
    const v0, 0x7f1000b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_3

    .line 2139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2180
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1562
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1563
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$12;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$12;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    .line 1574
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1575
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1576
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1784
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1786
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mColorMaker:Lcom/google/android/talk/util/ChatColorMaker;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/util/ChatColorMaker;->freeze(Landroid/os/Bundle;)V

    .line 1789
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1790
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 1791
    invoke-virtual {v0, p1}, Lcom/google/android/talk/ChatView;->saveState(Landroid/os/Bundle;)V

    .line 1793
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1556
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1557
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->start()V

    .line 1558
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1670
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1671
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->stop()V

    .line 1672
    return-void
.end method

.method public registerForServiceStateChanged()V
    .locals 3

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/fragments/ChatScreenFragment$9;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$9;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->addServiceAvailableCallback(Landroid/os/Handler;Lcom/google/android/talk/ServiceAvailableRunnable;)V

    .line 1469
    return-void
.end method

.method public serviceStateChanged(Lcom/google/android/gtalkservice/IGTalkService;)V
    .locals 3

    .prologue
    .line 2044
    if-eqz p1, :cond_4

    .line 2049
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    monitor-enter v1

    .line 2050
    :try_start_0
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 2052
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 2053
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2056
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2055
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2056
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2059
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$16;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$16;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V

    .line 2076
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2077
    if-eqz v0, :cond_1

    .line 2078
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->addInvitationListener()V

    .line 2079
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->handleUnreadMessages(Z)V

    .line 2082
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mFromStatusBarNotify:Z

    if-eqz v1, :cond_2

    .line 2083
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mFromStatusBarNotify:Z

    .line 2084
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->dismissAllChatNotifications(J)V

    .line 2091
    :cond_2
    :goto_2
    return-void

    .line 2084
    :cond_3
    iget-wide v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    goto :goto_1

    .line 2088
    :cond_4
    const-string v0, "talk"

    const-string v1, "serviceStateChanged: service disconnected, finish!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method public setupInputFieldAndSendButton(Landroid/view/View;)V
    .locals 5
    .param p1, "inputContainer"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1149
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    .line 1150
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    const v4, 0x7f10004e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSendButton:Landroid/view/View;

    .line 1151
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    const v4, 0x7f10004d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    .line 1153
    new-instance v2, Lcom/google/android/talk/util/ChatColorMaker;

    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/talk/util/ChatColorMaker;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mColorMaker:Lcom/google/android/talk/util/ChatColorMaker;

    .line 1154
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSendButton:Landroid/view/View;

    new-instance v4, Lcom/google/android/talk/fragments/ChatScreenFragment$3;

    invoke-direct {v4, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$3;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1165
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    new-instance v4, Lcom/google/android/talk/fragments/ChatScreenFragment$4;

    invoke-direct {v4, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$4;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1179
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    new-instance v4, Lcom/google/android/talk/fragments/ChatScreenFragment$5;

    invoke-direct {v4, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$5;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1194
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1198
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    new-instance v4, Lcom/google/android/talk/fragments/ChatScreenFragment$6;

    invoke-direct {v4, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$6;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1212
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1213
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1216
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v0, v1

    .line 1217
    check-cast v0, Landroid/text/Spannable;

    .line 1218
    .local v0, "span":Landroid/text/Spannable;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v4, 0x12

    invoke-interface {v0, p0, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1219
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSendButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1220
    return-void

    :cond_1
    move v2, v3

    .line 1219
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1622
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    if-nez v0, :cond_0

    .line 1646
    :goto_0
    return-void

    .line 1625
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    .line 1628
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->stop()V

    .line 1631
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatList;->closeCursor()V

    .line 1637
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->setAdapter(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;)V

    .line 1639
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->unregisterForServiceStateChanged()V

    .line 1640
    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 1643
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallStateClient;->stopListening()V

    .line 1645
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->hideKeyboard()V

    goto :goto_0
.end method

.method public switchAccounts()V
    .locals 3

    .prologue
    .line 1703
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCreated:Z

    if-nez v0, :cond_0

    .line 1704
    const-string v0, "switchAccounts: fragment\'s onCreate not called yet"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1725
    :goto_0
    return-void

    .line 1707
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->stop()V

    .line 1709
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 1712
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1713
    const-string v0, "switchAccounts: mActivity is NULL"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1716
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1717
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iput-wide v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    .line 1720
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    if-eqz v0, :cond_2

    .line 1721
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;

    iget-wide v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/util/ChatList;->changeAccount(J)Z

    .line 1724
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->start()V

    goto :goto_0
.end method

.method public toggleOtr()V
    .locals 2

    .prologue
    .line 2332
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2333
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 2334
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->isOffTheRecord()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->goOffTheRecord(Z)V

    .line 2336
    :cond_0
    return-void

    .line 2334
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterForServiceStateChanged()V
    .locals 2

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->removeServiceAvailableCallback(Landroid/os/Handler;)V

    .line 1473
    return-void
.end method

.method public updateTitle(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 956
    instance-of v0, p1, Lcom/google/android/talk/ChatView;

    if-nez v0, :cond_0

    .line 981
    :goto_0
    return-void

    :cond_0
    move-object v10, p1

    .line 960
    check-cast v10, Lcom/google/android/talk/ChatView;

    .line 961
    .local v10, "cv":Lcom/google/android/talk/ChatView;
    if-nez v10, :cond_1

    .line 962
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 964
    :cond_1
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 965
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 966
    .local v2, "groupChatContact":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getNickname()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 968
    .end local v2    # "groupChatContact":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getNickname()Ljava/lang/String;

    move-result-object v11

    .line 969
    .local v11, "title":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getStatus()I

    move-result v8

    .line 970
    .local v8, "status":I
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getCapabilities()I

    move-result v9

    .line 972
    .local v9, "capabilities":I
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getClientType()I

    move-result v7

    .line 973
    .local v7, "clientType":I
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v4

    .line 974
    .local v4, "contact":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, v4}, Lcom/google/android/talk/TalkApp;->shouldHideRemoteJid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 975
    const-string v4, ""

    .line 977
    :cond_3
    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/google/android/talk/ChatView;->getCustomStatus()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method
