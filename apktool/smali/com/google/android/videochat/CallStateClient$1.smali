.class Lcom/google/android/videochat/CallStateClient$1;
.super Ljava/lang/Object;
.source "CallStateClient.java"

# interfaces
.implements Lcom/google/android/videochat/CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CallStateClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/CallStateClient;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/CallStateClient;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/videochat/CallStateClient$1;->this$0:Lcom/google/android/videochat/CallStateClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
    .locals 1
    .param p1, "remoteBareJid"    # Ljava/lang/String;
    .param p2, "callState"    # Lcom/google/android/videochat/CallState;
    .param p3, "isRequestReply"    # Z
    .param p4, "callbackParam"    # Ljava/lang/Object;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient$1;->this$0:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/videochat/CallStateClient;->onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V

    .line 33
    return-void
.end method

.method public onChatRoomStateUpdate(Ljava/util/Set;Ljava/util/Set;ZLjava/lang/Object;)V
    .locals 1
    .param p3, "isRequestReply"    # Z
    .param p4, "callbackParam"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/NamedSource;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/NamedSource;",
            ">;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "allAudioSources":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/videochat/NamedSource;>;"
    .local p2, "allVideoSources":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/videochat/NamedSource;>;"
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient$1;->this$0:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/videochat/CallStateClient;->onChatRoomUpdate(Ljava/util/Set;Ljava/util/Set;ZLjava/lang/Object;)V

    .line 42
    return-void
.end method

.method public onLoudestSpeakerUpdate(IZLjava/lang/Object;)V
    .locals 1
    .param p1, "loudestAudioSsrc"    # I
    .param p2, "isRequestReply"    # Z
    .param p3, "callbackParam"    # Ljava/lang/Object;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient$1;->this$0:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/videochat/CallStateClient;->onLoudestSpeakerUpdate(IZLjava/lang/Object;)V

    .line 49
    return-void
.end method
