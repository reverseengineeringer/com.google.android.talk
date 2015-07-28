.class Lcom/google/android/talk/ChatView$1;
.super Landroid/os/Handler;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/talk/ChatView$1;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 288
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 297
    :goto_0
    return-void

    .line 290
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$1;->this$0:Lcom/google/android/talk/ChatView;

    const-string v1, "mHandler PICTURE_LOADED"

    # invokes: Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/talk/ChatView$1;->this$0:Lcom/google/android/talk/ChatView;

    # invokes: Lcom/google/android/talk/ChatView;->pictureLoaded(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/google/android/talk/ChatView;->access$100(Lcom/google/android/talk/ChatView;Landroid/os/Message;)V

    goto :goto_0

    .line 294
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView$1;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$200(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$ChatAdapter;

    move-result-object v0

    # invokes: Lcom/google/android/talk/ChatView$ChatAdapter;->useDelayedCursor()V
    invoke-static {v0}, Lcom/google/android/talk/ChatView$ChatAdapter;->access$300(Lcom/google/android/talk/ChatView$ChatAdapter;)V

    goto :goto_0

    .line 288
    nop

    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_0
        0x270f -> :sswitch_1
    .end sparse-switch
.end method
