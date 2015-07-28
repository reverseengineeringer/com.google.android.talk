.class Lcom/google/android/talk/videochat/VideoChatActivity$11;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0

    .prologue
    .line 1858
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$11;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$11;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->connectToExistingCall()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5200(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1862
    return-void
.end method
