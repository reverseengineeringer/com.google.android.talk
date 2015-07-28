.class Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleActiveChats"
.end annotation


# instance fields
.field mChatRoot:Landroid/view/ViewGroup;

.field mChatView1:Lcom/google/android/talk/ChatView;

.field mChatView2:Lcom/google/android/talk/ChatView;

.field mGalleryAdapter:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

.field mInitialized1:Z

.field mInitialized2:Z

.field mLayoutTransition:Landroid/animation/LayoutTransition;

.field mSelectedItemPosition:I

.field oneIsTop:Z

.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/view/ViewGroup;)V
    .locals 8
    .param p2, "chatRoot"    # Landroid/view/ViewGroup;

    .prologue
    const-wide/16 v6, 0x0

    const/high16 v5, 0x3fc00000    # 1.5f

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 438
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 433
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    .line 439
    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatRoot:Landroid/view/ViewGroup;

    .line 440
    const v0, 0x7f100035

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/ChatView;

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    .line 441
    const v0, 0x7f100036

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/ChatView;

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    .line 442
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    invoke-static {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/talk/ChatView;->setup(Landroid/view/ViewGroup$LayoutParams;Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;)V

    .line 443
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    invoke-static {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/talk/ChatView;->setup(Landroid/view/ViewGroup$LayoutParams;Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;)V

    .line 445
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 467
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 468
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 469
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v3, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 470
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v4, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 471
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v3, v6, v7}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 472
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v4, v6, v7}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 474
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3, v1}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 476
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v4, v1}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 479
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 480
    return-void
.end method

.method private checkMatch(Lcom/google/android/talk/ChatView;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "cv"    # Lcom/google/android/talk/ChatView;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 551
    invoke-virtual {p1, p2}, Lcom/google/android/talk/ChatView;->matchBuddy(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # setter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z
    invoke-static {v1, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$602(Lcom/google/android/talk/fragments/ChatScreenFragment;Z)Z

    .line 554
    invoke-virtual {p1}, Lcom/google/android/talk/ChatView;->startVoiceChat()V

    .line 556
    :cond_0
    const/4 v0, 0x1

    .line 558
    :cond_1
    return v0
.end method


# virtual methods
.method public foreachChatView(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V
    .locals 1
    .param p1, "vr"    # Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    invoke-interface {p1, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;->run(Landroid/view/View;)Z

    .line 507
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    invoke-interface {p1, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;->run(Landroid/view/View;)Z

    .line 510
    :cond_1
    return-void
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSelectedChatView()Lcom/google/android/talk/ChatView;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 524
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    if-eqz v1, :cond_1

    .line 525
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    .line 527
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    return v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 640
    if-eqz p1, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->stop()V

    .line 643
    :cond_0
    return-void
.end method

.method public selectNext(ZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "moveForward"    # Z
    .param p2, "onDone"    # Ljava/lang/Runnable;

    .prologue
    .line 538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAdapter(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;)V
    .locals 1
    .param p1, "galleryAdapter"    # Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    .prologue
    .line 546
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    .line 547
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mGalleryAdapter:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    .line 548
    return-void
.end method

.method public setSelection(I)V
    .locals 8
    .param p1, "newPos"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 567
    iget v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    if-ne p1, v5, :cond_0

    .line 631
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mGalleryAdapter:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    invoke-virtual {v5, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    .line 573
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    if-eqz v5, :cond_1

    .line 574
    iget-boolean v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    if-eqz v5, :cond_2

    .line 575
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    invoke-direct {p0, v5, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->checkMatch(Lcom/google/android/talk/ChatView;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 576
    iput p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    goto :goto_0

    .line 581
    :cond_1
    iget-boolean v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    if-eqz v5, :cond_2

    .line 582
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    invoke-direct {p0, v5, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->checkMatch(Lcom/google/android/talk/ChatView;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 583
    iput p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    goto :goto_0

    .line 589
    :cond_2
    iput p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    .line 590
    iget-boolean v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    if-eqz v5, :cond_3

    .line 591
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/talk/ChatView;->saveUnsentComposedMessage(Landroid/widget/TextView;)V

    .line 592
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    invoke-virtual {v5}, Lcom/google/android/talk/ChatView;->onStop()V

    .line 593
    iput-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    .line 595
    :cond_3
    iget-boolean v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    if-eqz v5, :cond_4

    .line 596
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/talk/ChatView;->saveUnsentComposedMessage(Landroid/widget/TextView;)V

    .line 597
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    invoke-virtual {v5}, Lcom/google/android/talk/ChatView;->onStop()V

    .line 598
    iput-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    .line 601
    :cond_4
    iget-boolean v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    if-eqz v5, :cond_7

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    .line 602
    .local v2, "previous":Lcom/google/android/talk/ChatView;
    :goto_1
    iget-boolean v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    if-eqz v5, :cond_8

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    .line 604
    .local v0, "current":Lcom/google/android/talk/ChatView;
    :goto_2
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v5}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatList;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v7}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/google/android/talk/ChatView;->initialize(Landroid/content/Intent;Lcom/google/android/talk/util/ChatList;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 605
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z
    invoke-static {v5}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 606
    invoke-virtual {v0, v4}, Lcom/google/android/talk/ChatView;->setStartVoiceChatOnFirstDisplay(Z)V

    .line 607
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # setter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z
    invoke-static {v5, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$602(Lcom/google/android/talk/fragments/ChatScreenFragment;Z)Z

    .line 615
    :cond_5
    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/talk/ChatView;->restoreUnsentComposedMessage(Landroid/widget/EditText;)V

    .line 616
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->focus()V

    .line 618
    invoke-virtual {v0, v3}, Lcom/google/android/talk/ChatView;->setVisibility(I)V

    .line 619
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/google/android/talk/ChatView;->setVisibility(I)V

    .line 621
    iget-boolean v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    if-nez v5, :cond_6

    move v3, v4

    :cond_6
    iput-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    .line 622
    iget-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    if-eqz v3, :cond_9

    .line 623
    iput-boolean v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    .line 627
    :goto_3
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSelection: pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oneIsTop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", v1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", v2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1200(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 630
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;
    invoke-static {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/videochat/CallStateClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/videochat/CallStateClient;->requestUpdate()V

    goto/16 :goto_0

    .line 601
    .end local v0    # "current":Lcom/google/android/talk/ChatView;
    .end local v2    # "previous":Lcom/google/android/talk/ChatView;
    :cond_7
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    goto/16 :goto_1

    .line 602
    .restart local v2    # "previous":Lcom/google/android/talk/ChatView;
    :cond_8
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    goto/16 :goto_2

    .line 625
    .restart local v0    # "current":Lcom/google/android/talk/ChatView;
    :cond_9
    iput-boolean v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    goto :goto_3
.end method

.method public stop()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 484
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    .line 486
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->saveUnsentComposedMessage(Landroid/widget/TextView;)V

    .line 488
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->onStop()V

    .line 489
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0, v3}, Lcom/google/android/talk/ChatView;->setVisibility(I)V

    .line 490
    iput-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    .line 492
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->saveUnsentComposedMessage(Landroid/widget/TextView;)V

    .line 494
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->onStop()V

    .line 495
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0, v3}, Lcom/google/android/talk/ChatView;->setVisibility(I)V

    .line 496
    iput-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop: mInitialized1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInitialized2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1200(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 500
    return-void
.end method
