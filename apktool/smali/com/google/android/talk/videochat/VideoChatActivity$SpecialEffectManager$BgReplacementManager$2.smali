.class Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$2;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->leaveTraining(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;Z)V
    .locals 0

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$2;->this$2:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;

    iput-boolean p2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$2;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$2;->this$2:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->mMessageView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->access$4200(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$2;->this$2:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->mMessageView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->access$4200(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$2;->val$success:Z

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$2;->this$2:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    move-result-object v0

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->leaveSpecialEffectsMode()Z
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$3500(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z

    .line 1167
    :goto_0
    return-void

    .line 1165
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$2;->this$2:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->showButtonPanel()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$000(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    goto :goto_0
.end method
