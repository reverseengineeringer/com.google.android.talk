.class Lcom/google/android/talk/ChatView$PhoneMessageBar;
.super Lcom/google/android/talk/ChatView$MessageBar;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneMessageBar"
.end annotation


# instance fields
.field mVisibleMap:Ljava/util/HashMap;
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
    .line 3419
    iput-object p1, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView$MessageBar;-><init>(Lcom/google/android/talk/ChatView;)V

    .line 3420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->mVisibleMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/ChatView;Lcom/google/android/talk/ChatView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/talk/ChatView;
    .param p2, "x1"    # Lcom/google/android/talk/ChatView$1;

    .prologue
    .line 3419
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView$PhoneMessageBar;-><init>(Lcom/google/android/talk/ChatView;)V

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

    .line 3424
    invoke-super {p0}, Lcom/google/android/talk/ChatView$MessageBar;->bind()V

    .line 3426
    iget-object v0, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->mVisibleMap:Ljava/util/HashMap;

    .line 3427
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/android/talk/ChatView$VideoChatState;[Landroid/view/View;>;"
    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChoicesButton:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCloseChatButton:Landroid/view/View;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3430
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

    .line 3432
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

    .line 3436
    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChoicesButton:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCloseChatButton:Landroid/view/View;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3438
    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v2, v5, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelAudioButton:Landroid/view/View;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3439
    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_WAITING:Lcom/google/android/talk/ChatView$VideoChatState;

    new-array v2, v5, [Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelVideoButton:Landroid/view/View;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3442
    return-void
.end method

.method getStatusMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3580
    iget-object v3, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v1

    .line 3581
    .local v1, "r":Landroid/content/res/Resources;
    sget-object v3, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v4}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3608
    const-string v3, ""

    :goto_0
    return-object v3

    .line 3583
    :pswitch_0
    iget-object v3, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mCapabilities:I
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$1200(Lcom/google/android/talk/ChatView;)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v0

    .line 3584
    .local v0, "audioCapable":Z
    iget-object v3, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mCapabilities:I
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$1200(Lcom/google/android/talk/ChatView;)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v2

    .line 3585
    .local v2, "videoCapable":Z
    if-eqz v2, :cond_0

    .line 3586
    const v3, 0x7f0c00c7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3587
    :cond_0
    if-eqz v0, :cond_1

    .line 3588
    const v3, 0x7f0c00c9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3590
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 3595
    .end local v0    # "audioCapable":Z
    .end local v2    # "videoCapable":Z
    :pswitch_1
    const v3, 0x7f0c00c8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3599
    :pswitch_2
    const v3, 0x7f0c00ca

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3603
    :pswitch_3
    const v3, 0x7f0c00f2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3581
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public update()V
    .locals 14

    .prologue
    .line 3446
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarContainer:Landroid/view/View;

    if-nez v11, :cond_0

    .line 3447
    iget-object v11, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    const-string v12, "MessageBar.update: mMessageBarContainer is null, bail"

    # invokes: Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 3577
    :goto_0
    return-void

    .line 3451
    :cond_0
    iget-object v11, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mFocused:Z
    invoke-static {v11}, Lcom/google/android/talk/ChatView;->access$6900(Lcom/google/android/talk/ChatView;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 3452
    iget-object v11, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PhoneMessageBar.update "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " fail focus"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    goto :goto_0

    .line 3456
    :cond_1
    iget-object v11, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mContactInfoLoaded:Z
    invoke-static {v11}, Lcom/google/android/talk/ChatView;->access$700(Lcom/google/android/talk/ChatView;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 3457
    iget-object v11, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    const-string v12, "MessageBar.update: !mContactInfoLoaded, bail"

    # invokes: Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    goto :goto_0

    .line 3473
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAllViews:[Landroid/view/View;

    .local v0, "arr$":[Landroid/view/View;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v8, v0, v5

    .line 3474
    .local v8, "v":Landroid/view/View;
    if-eqz v8, :cond_3

    .line 3475
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 3473
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3479
    .end local v8    # "v":Landroid/view/View;
    :cond_4
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    check-cast v7, Landroid/widget/ImageButton;

    .line 3480
    .local v7, "muteButton":Landroid/widget/ImageButton;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3482
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mStatusMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/talk/ChatView$PhoneMessageBar;->getStatusMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3483
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mStatusMessage:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3484
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v12}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0032

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3487
    sget-object v11, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    iget-object v12, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarState:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v12}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 3551
    :goto_2
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    iget-object v12, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v11, v12}, Lcom/google/android/talk/BluetoothButton;->handleBluetoothStateChange(Lcom/google/android/videochat/CallState$AudioDeviceState;)V

    .line 3554
    const/4 v10, 0x0

    .line 3555
    .local v10, "visibleCount":I
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mButtons:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 3556
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v3, :cond_e

    .line 3557
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mButtons:Landroid/view/ViewGroup;

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3558
    .local v1, "child":Landroid/view/View;
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mButtons:Landroid/view/ViewGroup;

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3559
    .local v2, "childNext":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_c

    const/4 v9, 0x1

    .line 3560
    .local v9, "visible":Z
    :goto_4
    if-eqz v9, :cond_5

    add-int/lit8 v10, v10, 0x1

    .line 3561
    :cond_5
    if-eqz v9, :cond_d

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 3556
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 3489
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childNext":Landroid/view/View;
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v9    # "visible":Z
    .end local v10    # "visibleCount":I
    :pswitch_0
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCloseChatButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3490
    iget-object v11, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mCapabilities:I
    invoke-static {v11}, Lcom/google/android/talk/ChatView;->access$1200(Lcom/google/android/talk/ChatView;)I

    move-result v11

    invoke-static {v11}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 3491
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mVideoChatButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 3492
    :cond_6
    iget-object v11, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mCapabilities:I
    invoke-static {v11}, Lcom/google/android/talk/ChatView;->access$1200(Lcom/google/android/talk/ChatView;)I

    move-result v11

    invoke-static {v11}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3493
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChatButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 3495
    :cond_7
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mStatusMessage:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3496
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMessageBarContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v12}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0033

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 3502
    :pswitch_1
    const v11, 0x7f020065

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3503
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChoicesButton:Landroid/view/View;

    if-eqz v11, :cond_8

    .line 3504
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChoicesButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3506
    :cond_8
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3507
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndAudioButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 3511
    :pswitch_2
    const v11, 0x7f020063

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3512
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChoicesButton:Landroid/view/View;

    if-eqz v11, :cond_9

    .line 3513
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChoicesButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3515
    :cond_9
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3516
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndAudioButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 3520
    :pswitch_3
    const v11, 0x7f020065

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3521
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChoicesButton:Landroid/view/View;

    if-eqz v11, :cond_a

    .line 3522
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChoicesButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3524
    :cond_a
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3525
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndVideoButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 3529
    :pswitch_4
    const v11, 0x7f020063

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3530
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChoicesButton:Landroid/view/View;

    if-eqz v11, :cond_b

    .line 3531
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mAudioChoicesButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3533
    :cond_b
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mMuteUnmuteButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3534
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mEndVideoButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 3538
    :pswitch_5
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelAudioButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 3542
    :pswitch_6
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCancelVideoButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 3547
    :pswitch_7
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mCloseChatButton:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 3559
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childNext":Landroid/view/View;
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v10    # "visibleCount":I
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 3561
    .restart local v9    # "visible":Z
    :cond_d
    const/16 v11, 0x8

    goto/16 :goto_5

    .line 3565
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childNext":Landroid/view/View;
    .end local v9    # "visible":Z
    :cond_e
    if-lez v10, :cond_f

    .line 3566
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mPresenceView:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3571
    :goto_6
    iget-object v11, p0, Lcom/google/android/talk/ChatView$PhoneMessageBar;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/google/android/talk/ChatView;->access$6000(Lcom/google/android/talk/ChatView;)Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Lcom/google/android/talk/ChatView$PhoneMessageBar$1;

    invoke-direct {v12, p0}, Lcom/google/android/talk/ChatView$PhoneMessageBar$1;-><init>(Lcom/google/android/talk/ChatView$PhoneMessageBar;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3568
    :cond_f
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar;->mPresenceView:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 3487
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
