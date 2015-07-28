.class Lcom/google/android/talk/BuddyListCombo$5;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/BuddyListCombo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastChatClosed()V
    .locals 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    const/4 v2, 0x0

    # invokes: Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/talk/BuddyListCombo;->access$200(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;Z)V

    .line 642
    return-void
.end method

.method public onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 1
    .param p1, "buddyInfo"    # Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    # invokes: Lcom/google/android/talk/BuddyListCombo;->onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    invoke-static {v0, p1}, Lcom/google/android/talk/BuddyListCombo;->access$100(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    .line 636
    return-void
.end method

.method public onVideoChatStarted()Z
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v0}, Lcom/google/android/talk/BuddyListCombo;->startVideoChatAnimation()Z

    move-result v0

    return v0
.end method

.method public setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "contact"    # Ljava/lang/CharSequence;
    .param p2, "nickname"    # Ljava/lang/CharSequence;
    .param p3, "status"    # Ljava/lang/CharSequence;
    .param p4, "presence"    # I
    .param p5, "capabilities"    # I
    .param p6, "clientType"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 657
    if-nez p1, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 662
    .local v0, "subtitle":Ljava/lang/CharSequence;
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    # invokes: Lcom/google/android/talk/BuddyListCombo;->setActionBarCustomViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V
    invoke-static {v1, p2, v0, p4, p6}, Lcom/google/android/talk/BuddyListCombo;->access$300(Lcom/google/android/talk/BuddyListCombo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 665
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    # getter for: Lcom/google/android/talk/BuddyListCombo;->mVideoChatButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->access$400(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 666
    if-nez p5, :cond_3

    .line 667
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    # getter for: Lcom/google/android/talk/BuddyListCombo;->mVideoChatButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->access$400(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ImageButton;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "subtitle":Ljava/lang/CharSequence;
    :cond_2
    move-object v0, p3

    .line 661
    goto :goto_1

    .line 669
    .restart local v0    # "subtitle":Ljava/lang/CharSequence;
    :cond_3
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    # getter for: Lcom/google/android/talk/BuddyListCombo;->mVideoChatButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->access$400(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 670
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    # getter for: Lcom/google/android/talk/BuddyListCombo;->mVideoChatButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->access$400(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo$5;->this$0:Lcom/google/android/talk/BuddyListCombo;

    # getter for: Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v2}, Lcom/google/android/talk/BuddyListCombo;->access$500(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p5}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateOtrStatus(Z)V
    .locals 0
    .param p1, "isOtr"    # Z

    .prologue
    .line 631
    return-void
.end method
