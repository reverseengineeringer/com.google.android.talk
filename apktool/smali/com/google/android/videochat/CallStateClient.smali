.class public Lcom/google/android/videochat/CallStateClient;
.super Ljava/lang/Object;
.source "CallStateClient.java"


# instance fields
.field private mCallStateListener:Lcom/google/android/videochat/CallStateListener;

.field protected mContext:Landroid/content/Context;

.field private mIsListening:Z

.field private mSoftConnection:Landroid/content/ServiceConnection;

.field private mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/google/android/videochat/CallStateClient$1;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/CallStateClient$1;-><init>(Lcom/google/android/videochat/CallStateClient;)V

    iput-object v0, p0, Lcom/google/android/videochat/CallStateClient;->mCallStateListener:Lcom/google/android/videochat/CallStateListener;

    .line 166
    new-instance v0, Lcom/google/android/videochat/CallStateClient$2;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/CallStateClient$2;-><init>(Lcom/google/android/videochat/CallStateClient;)V

    iput-object v0, p0, Lcom/google/android/videochat/CallStateClient;->mSoftConnection:Landroid/content/ServiceConnection;

    .line 163
    iput-object p1, p0, Lcom/google/android/videochat/CallStateClient;->mContext:Landroid/content/Context;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/videochat/CallStateClient;Lcom/google/android/videochat/VideoChatService$SoftBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/videochat/CallStateClient;
    .param p1, "x1"    # Lcom/google/android/videochat/VideoChatService$SoftBinder;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallStateClient;->onSoftVideoChatServiceBound(Lcom/google/android/videochat/VideoChatService$SoftBinder;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/videochat/CallStateClient;Lcom/google/android/videochat/VideoChatService$SoftBinder;)Lcom/google/android/videochat/VideoChatService$SoftBinder;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/videochat/CallStateClient;
    .param p1, "x1"    # Lcom/google/android/videochat/VideoChatService$SoftBinder;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    return-object p1
.end method

.method private bindVideoChatService()V
    .locals 4

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.talk.SOFT_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/google/android/videochat/CallStateClient;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/google/android/videochat/CallStateClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/videochat/CallStateClient;->mSoftConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 204
    return-void
.end method

.method private onSoftVideoChatServiceBound(Lcom/google/android/videochat/VideoChatService$SoftBinder;)V
    .locals 2
    .param p1, "service"    # Lcom/google/android/videochat/VideoChatService$SoftBinder;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    .line 190
    iget-boolean v0, p0, Lcom/google/android/videochat/CallStateClient;->mIsListening:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    iget-object v1, p0, Lcom/google/android/videochat/CallStateClient;->mCallStateListener:Lcom/google/android/videochat/CallStateListener;

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/VideoChatService$SoftBinder;->addRemoteCallStateListener(Lcom/google/android/videochat/CallStateListener;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/VideoChatService$SoftBinder;->requestCallStateUpdate(Ljava/lang/Object;)V

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
    .locals 0
    .param p1, "remoteBareJid"    # Ljava/lang/String;
    .param p2, "callState"    # Lcom/google/android/videochat/CallState;
    .param p3, "isRequestReply"    # Z
    .param p4, "callbackParam"    # Ljava/lang/Object;

    .prologue
    .line 65
    return-void
.end method

.method public onChatRoomUpdate(Ljava/util/Set;Ljava/util/Set;ZLjava/lang/Object;)V
    .locals 0
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
    .line 83
    .local p1, "allAudioSources":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/videochat/NamedSource;>;"
    .local p2, "allVideoSources":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/videochat/NamedSource;>;"
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onLoudestSpeakerUpdate(IZLjava/lang/Object;)V
    .locals 0
    .param p1, "loudestAudioSsrc"    # I
    .param p2, "isRequestReply"    # Z
    .param p3, "callbackParam"    # Ljava/lang/Object;

    .prologue
    .line 99
    return-void
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/videochat/CallStateClient;->requestUpdate(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public requestUpdate(Ljava/lang/Object;)V
    .locals 1
    .param p1, "callbackParam"    # Ljava/lang/Object;

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/VideoChatService$SoftBinder;->requestCallStateUpdate(Ljava/lang/Object;)V

    .line 137
    :cond_0
    monitor-exit p0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "vclib:CallStateClient"

    const-string v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/videochat/CallStateClient;->mIsListening:Z

    .line 115
    invoke-direct {p0}, Lcom/google/android/videochat/CallStateClient;->bindVideoChatService()V

    .line 116
    return-void
.end method

.method public stopListening()V
    .locals 3

    .prologue
    .line 147
    const-string v1, "vclib:CallStateClient"

    const-string v2, "stopListening"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/videochat/CallStateClient;->mIsListening:Z

    .line 149
    iget-object v1, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/google/android/videochat/CallStateClient;->mSoftServiceBinder:Lcom/google/android/videochat/VideoChatService$SoftBinder;

    iget-object v2, p0, Lcom/google/android/videochat/CallStateClient;->mCallStateListener:Lcom/google/android/videochat/CallStateListener;

    invoke-virtual {v1, v2}, Lcom/google/android/videochat/VideoChatService$SoftBinder;->removeRemoteCallStateListener(Lcom/google/android/videochat/CallStateListener;)V

    .line 154
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/videochat/CallStateClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/videochat/CallStateClient;->mSoftConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "vclib:CallStateClient"

    const-string v2, "Problem unbinding service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
