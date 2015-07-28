.class Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Lcom/google/android/talk/videochat/EffectsController$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BgReplacementManager"
.end annotation


# instance fields
.field private mMessageView:Landroid/view/View;

.field final synthetic this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V
    .locals 0

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;Lcom/google/android/talk/videochat/VideoChatActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    .param p2, "x1"    # Lcom/google/android/talk/videochat/VideoChatActivity$1;

    .prologue
    .line 1116
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;

    .prologue
    .line 1116
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->cancelTraining()V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->mMessageView:Landroid/view/View;

    return-object v0
.end method

.method private cancelTraining()V
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->clearSpecialEffects()V

    .line 1152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->leaveTraining(Z)V

    .line 1153
    return-void
.end method

.method private leaveTraining(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$900(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$2;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1169
    return-void
.end method


# virtual methods
.method public onBackgroundReplacementTraningSuccess()V
    .locals 1

    .prologue
    .line 1137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->leaveTraining(Z)V

    .line 1138
    return-void
.end method

.method public startTraining(Landroid/net/Uri;)V
    .locals 4
    .param p1, "backgroundVideoUri"    # Landroid/net/Uri;

    .prologue
    .line 1120
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    iget-object v1, v1, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const v2, 0x7f1000a6

    invoke-virtual {v1, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->mMessageView:Landroid/view/View;

    .line 1121
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->mMessageView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    iget-object v1, v1, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->hideButtonPanel()V
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2900(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1123
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    iget-object v1, v1, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const v2, 0x7f1000a8

    invoke-virtual {v1, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1124
    .local v0, "cancelButton":Landroid/widget/Button;
    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager$1;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1131
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$BgReplacementManager;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    iget-object v1, v1, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v2, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;-><init>(ILjava/lang/Object;)V

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->setActiveEffect(Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V
    invoke-static {v1, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3300(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V

    .line 1133
    return-void
.end method
