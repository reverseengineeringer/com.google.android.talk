.class abstract Lcom/google/android/talk/ChatView$MessageBar;
.super Ljava/lang/Object;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MessageBar"
.end annotation


# instance fields
.field protected mAllViews:[Landroid/view/View;

.field protected mAudioChatButton:Landroid/view/View;

.field protected mAudioChoicesButton:Landroid/view/View;

.field protected mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

.field protected mAudioDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/CallSession$AudioDevice;",
            ">;"
        }
    .end annotation
.end field

.field protected mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

.field protected mButtons:Landroid/view/ViewGroup;

.field protected mCancelAudioButton:Landroid/view/View;

.field protected mCancelVideoButton:Landroid/view/View;

.field protected mCloseChatButton:Landroid/view/View;

.field protected mContactView:Landroid/widget/TextView;

.field protected mCulledForGroupChatMenuItems:[Ljava/lang/Integer;

.field protected mEndAudioButton:Landroid/view/View;

.field protected mEndVideoButton:Landroid/view/View;

.field protected mMessageBarContainer:Landroid/view/View;

.field protected mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

.field protected mMuteUnmuteButton:Landroid/view/View;

.field protected mOkToShowWhileOfflineViews:[Landroid/view/View;

.field protected mPresenceView:Landroid/widget/ImageView;

.field protected mResumeVideoChatButton:Landroid/view/View;

.field protected mStatusMessage:Landroid/widget/TextView;

.field protected mVideoChatButton:Landroid/view/View;

.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 3

    .prologue
    .line 3650
    iput-object p1, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3614
    sget-object v0, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    iput-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 3616
    sget-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->SPEAKERPHONE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 3618
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDevices:Ljava/util/Set;

    .line 3644
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x7f1000c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f1000b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f1000b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCulledForGroupChatMenuItems:[Ljava/lang/Integer;

    .line 3651
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3670
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$3500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->getMessageBar()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarContainer:Landroid/view/View;

    .line 3671
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 3725
    :goto_0
    return-void

    .line 3675
    :cond_0
    const v1, 0x7f100065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mButtons:Landroid/view/ViewGroup;

    .line 3676
    const v1, 0x7f10005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVideoChatButton:Landroid/view/View;

    .line 3677
    const v1, 0x7f100060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChatButton:Landroid/view/View;

    .line 3678
    const v1, 0x7f100058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCloseChatButton:Landroid/view/View;

    .line 3679
    const v1, 0x7f10005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndAudioButton:Landroid/view/View;

    .line 3680
    const v1, 0x7f10005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndVideoButton:Landroid/view/View;

    .line 3681
    const v1, 0x7f10005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    .line 3682
    const v1, 0x7f10005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelAudioButton:Landroid/view/View;

    .line 3683
    const v1, 0x7f100059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelVideoButton:Landroid/view/View;

    .line 3684
    const v1, 0x7f10005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mResumeVideoChatButton:Landroid/view/View;

    .line 3685
    const v1, 0x7f100061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/BluetoothButton;

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    .line 3687
    const v1, 0x7f100064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mStatusMessage:Landroid/widget/TextView;

    .line 3689
    const v1, 0x7f10000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mPresenceView:Landroid/widget/ImageView;

    .line 3690
    const v1, 0x7f100063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mContactView:Landroid/widget/TextView;

    .line 3691
    const v1, 0x7f100066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChoicesButton:Landroid/view/View;

    .line 3693
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVideoChatButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v2, v2, Lcom/google/android/talk/ChatView;->mStartVideoChat:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3694
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChatButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v2, v2, Lcom/google/android/talk/ChatView;->mStartVoiceChat:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3695
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCloseChatButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v2, v2, Lcom/google/android/talk/ChatView;->mCloseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3696
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndVideoButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v2, v2, Lcom/google/android/talk/ChatView;->mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3697
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndAudioButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v2, v2, Lcom/google/android/talk/ChatView;->mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3698
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v2, v2, Lcom/google/android/talk/ChatView;->mToggleMute:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3699
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelAudioButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v2, v2, Lcom/google/android/talk/ChatView;->mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3700
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelVideoButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v2, v2, Lcom/google/android/talk/ChatView;->mEndAudioOrVideoChat:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3701
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mResumeVideoChatButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v2, v2, Lcom/google/android/talk/ChatView;->mResumeVideoChat:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3702
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v2, v2, Lcom/google/android/talk/ChatView;->mToggleBluetooth:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/BluetoothButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3704
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChoicesButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3705
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChoicesButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v2, v2, Lcom/google/android/talk/ChatView;->mAudioChoicesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3708
    :cond_1
    const/16 v1, 0xb

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVideoChatButton:Landroid/view/View;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChatButton:Landroid/view/View;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->mResumeVideoChatButton:Landroid/view/View;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndAudioButton:Landroid/view/View;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndVideoButton:Landroid/view/View;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCloseChatButton:Landroid/view/View;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelAudioButton:Landroid/view/View;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelVideoButton:Landroid/view/View;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChoicesButton:Landroid/view/View;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAllViews:[Landroid/view/View;

    .line 3722
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndAudioButton:Landroid/view/View;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndVideoButton:Landroid/view/View;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCloseChatButton:Landroid/view/View;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar;->mResumeVideoChatButton:Landroid/view/View;

    aput-object v2, v1, v8

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mOkToShowWhileOfflineViews:[Landroid/view/View;

    goto/16 :goto_0
.end method

.method public getAudioDeviceState()Lcom/google/android/videochat/CallState$AudioDeviceState;
    .locals 1

    .prologue
    .line 3774
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    return-object v0
.end method

.method public getState()Lcom/google/android/talk/ChatView$VideoChatState;
    .locals 1

    .prologue
    .line 3770
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    return-object v0
.end method

.method setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V
    .locals 3
    .param p1, "state"    # Lcom/google/android/talk/ChatView$VideoChatState;

    .prologue
    .line 3728
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDevices:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Lcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;Z)V

    .line 3729
    return-void
.end method

.method setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Lcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;)V
    .locals 1
    .param p1, "state"    # Lcom/google/android/talk/ChatView$VideoChatState;
    .param p2, "audioDeviceState"    # Lcom/google/android/videochat/CallState$AudioDeviceState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/talk/ChatView$VideoChatState;",
            "Lcom/google/android/videochat/CallState$AudioDeviceState;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/CallSession$AudioDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3734
    .local p3, "audioDevices":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/videochat/CallSession$AudioDevice;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Lcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;Z)V

    .line 3735
    return-void
.end method

.method setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Lcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;Z)V
    .locals 7
    .param p1, "state"    # Lcom/google/android/talk/ChatView$VideoChatState;
    .param p2, "audioDeviceState"    # Lcom/google/android/videochat/CallState$AudioDeviceState;
    .param p4, "forceUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/talk/ChatView$VideoChatState;",
            "Lcom/google/android/videochat/CallState$AudioDeviceState;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/CallSession$AudioDevice;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3745
    .local p3, "audioDevices":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/videochat/CallSession$AudioDevice;>;"
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lcom/google/android/talk/ChatView$MessageBar$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/ChatView$MessageBar$1;-><init>(Lcom/google/android/talk/ChatView$MessageBar;Lcom/google/android/talk/ChatView$VideoChatState;Lcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;Z)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3767
    return-void
.end method

.method setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Z)V
    .locals 2
    .param p1, "state"    # Lcom/google/android/talk/ChatView$VideoChatState;
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDevices:Ljava/util/Set;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;Lcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;Z)V

    .line 3739
    return-void
.end method

.method public setTitle(Ljava/lang/String;III)V
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "clientType"    # I
    .param p3, "presence"    # I
    .param p4, "capabilities"    # I

    .prologue
    .line 3654
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mPresenceView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 3655
    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    .line 3656
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mPresenceView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3664
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mContactView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 3665
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mContactView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3667
    :cond_1
    return-void

    .line 3658
    :cond_2
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mPresenceView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3659
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$5500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)I

    move-result v0

    .line 3660
    .local v0, "p":I
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public abstract update()V
.end method
