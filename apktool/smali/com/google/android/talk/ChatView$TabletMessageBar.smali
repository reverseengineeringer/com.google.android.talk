.class Lcom/google/android/talk/ChatView$TabletMessageBar;
.super Lcom/google/android/talk/ChatView$MessageBar;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabletMessageBar"
.end annotation


# instance fields
.field protected mVisible:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mVisibleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/talk/ChatView$VideoChatState;",
            "[",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 1

    .prologue
    .line 3308
    iput-object p1, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView$MessageBar;-><init>(Lcom/google/android/talk/ChatView;)V

    .line 3309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->mVisibleMap:Ljava/util/HashMap;

    .line 3313
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->mVisible:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/ChatView;Lcom/google/android/talk/ChatView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/talk/ChatView;
    .param p2, "x1"    # Lcom/google/android/talk/ChatView$1;

    .prologue
    .line 3308
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView$TabletMessageBar;-><init>(Lcom/google/android/talk/ChatView;)V

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

    .line 3317
    invoke-super {p0}, Lcom/google/android/talk/ChatView$MessageBar;->bind()V

    .line 3319
    iget-object v0, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->mVisibleMap:Ljava/util/HashMap;

    .line 3320
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/android/talk/ChatView$VideoChatState;[Landroid/view/View;>;"
    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndAudioButton:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3322
    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v2, v8, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mResumeVideoChatButton:Landroid/view/View;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndVideoButton:Landroid/view/View;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3324
    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v2, v8, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mResumeVideoChatButton:Landroid/view/View;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndVideoButton:Landroid/view/View;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3326
    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndAudioButton:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3328
    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v2, v5, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelAudioButton:Landroid/view/View;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3329
    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v2, v5, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelVideoButton:Landroid/view/View;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3332
    return-void
.end method

.method public update()V
    .locals 12

    .prologue
    .line 3336
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarContainer:Landroid/view/View;

    if-nez v9, :cond_1

    .line 3337
    iget-object v9, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    const-string v10, "MessageBar.update: mMessageBarContainer is null, bail"

    # invokes: Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 3416
    :cond_0
    :goto_0
    return-void

    .line 3341
    :cond_1
    iget-object v9, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mFocused:Z
    invoke-static {v9}, Lcom/google/android/talk/ChatView;->access$6900(Lcom/google/android/talk/ChatView;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3342
    iget-object v9, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MessageBar.update: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;
    invoke-static {v11}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " fail focus"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    goto :goto_0

    .line 3346
    :cond_2
    iget-object v9, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mContactInfoLoaded:Z
    invoke-static {v9}, Lcom/google/android/talk/ChatView;->access$700(Lcom/google/android/talk/ChatView;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3347
    iget-object v9, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    const-string v10, "MessageBar.update: !mContactInfoLoaded, bail"

    # invokes: Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    goto :goto_0

    .line 3351
    :cond_3
    iget-object v9, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->mVisible:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 3352
    iget-object v9, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->mVisibleMap:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .local v0, "arr$":[Landroid/view/View;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v6, v0, v2

    .line 3353
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_4

    .line 3354
    iget-object v9, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->mVisible:Ljava/util/HashSet;

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3352
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3358
    .end local v6    # "v":Landroid/view/View;
    :cond_5
    const/4 v5, 0x0

    .line 3360
    .local v5, "muteButtonResource":I
    sget-object v9, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v10}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 3374
    :goto_2
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    check-cast v4, Landroid/widget/ImageButton;

    .line 3375
    .local v4, "muteButton":Landroid/widget/ImageButton;
    if-eqz v5, :cond_9

    .line 3376
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3381
    :goto_3
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    sget-object v10, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    if-ne v9, v10, :cond_7

    .line 3382
    iget-object v9, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mCapabilities:I
    invoke-static {v9}, Lcom/google/android/talk/ChatView;->access$1200(Lcom/google/android/talk/ChatView;)I

    move-result v9

    invoke-static {v9}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v1

    .line 3383
    .local v1, "audioCapable":Z
    iget-object v9, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mCapabilities:I
    invoke-static {v9}, Lcom/google/android/talk/ChatView;->access$1200(Lcom/google/android/talk/ChatView;)I

    move-result v9

    invoke-static {v9}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v7

    .line 3385
    .local v7, "videoCapable":Z
    if-nez v7, :cond_6

    .line 3386
    iget-object v9, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->mVisible:Ljava/util/HashSet;

    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVideoChatButton:Landroid/view/View;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3388
    :cond_6
    if-nez v1, :cond_7

    .line 3389
    iget-object v9, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->mVisible:Ljava/util/HashSet;

    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChatButton:Landroid/view/View;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3393
    .end local v1    # "audioCapable":Z
    .end local v7    # "videoCapable":Z
    :cond_7
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    if-eqz v9, :cond_8

    .line 3394
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v9, v10}, Lcom/google/android/talk/BluetoothButton;->handleBluetoothStateChange(Lcom/google/android/videochat/CallState$AudioDeviceState;)V

    .line 3395
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDevices:Ljava/util/Set;

    sget-object v10, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 3396
    iget-object v9, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->mVisible:Ljava/util/HashSet;

    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3400
    :cond_8
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAllViews:[Landroid/view/View;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_c

    aget-object v6, v0, v2

    .line 3401
    .restart local v6    # "v":Landroid/view/View;
    if-nez v6, :cond_a

    .line 3400
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3363
    .end local v4    # "muteButton":Landroid/widget/ImageButton;
    .end local v6    # "v":Landroid/view/View;
    :pswitch_0
    const v5, 0x7f020064

    .line 3364
    goto :goto_2

    .line 3368
    :pswitch_1
    const v5, 0x7f020062

    .line 3369
    goto :goto_2

    .line 3378
    .restart local v4    # "muteButton":Landroid/widget/ImageButton;
    :cond_9
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 3404
    .restart local v6    # "v":Landroid/view/View;
    :cond_a
    iget-object v9, p0, Lcom/google/android/talk/ChatView$TabletMessageBar;->mVisible:Ljava/util/HashSet;

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v8, 0x0

    .line 3405
    .local v8, "visibility":I
    :goto_6
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 3404
    .end local v8    # "visibility":I
    :cond_b
    const/16 v8, 0x8

    goto :goto_6

    .line 3410
    .end local v6    # "v":Landroid/view/View;
    :cond_c
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mOkToShowWhileOfflineViews:[Landroid/view/View;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 3411
    .restart local v6    # "v":Landroid/view/View;
    if-nez v6, :cond_d

    .line 3410
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3414
    :cond_d
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_8

    .line 3360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
