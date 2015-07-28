.class Lcom/google/android/talk/ChatView$13;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView;->toggleMute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;

.field final synthetic val$mutedFinal:Z


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;Z)V
    .locals 0

    .prologue
    .line 3131
    iput-object p1, p0, Lcom/google/android/talk/ChatView$13;->this$0:Lcom/google/android/talk/ChatView;

    iput-boolean p2, p0, Lcom/google/android/talk/ChatView$13;->val$mutedFinal:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask(Lcom/google/android/videochat/CallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/google/android/videochat/CallSession;

    .prologue
    .line 3134
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView$13;->val$mutedFinal:Z

    invoke-virtual {p1, v0}, Lcom/google/android/videochat/CallSession;->setMute(Z)V

    .line 3135
    return-void
.end method
