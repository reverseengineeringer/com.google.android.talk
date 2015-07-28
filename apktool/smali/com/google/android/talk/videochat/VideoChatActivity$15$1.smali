.class Lcom/google/android/talk/videochat/VideoChatActivity$15$1;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/VideoChatActivity$15;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$15;)V
    .locals 0

    .prologue
    .line 2080
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$15;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$15;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$15;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->resetButtonPanelFadeOutCountdown()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3900(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 2084
    return-void
.end method
