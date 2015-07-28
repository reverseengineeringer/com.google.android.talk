.class final Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;
.super Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
.source "AccountChangedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AccountChangedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TalkConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AccountChangedService;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/AccountChangedService;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/AccountChangedService;Lcom/google/android/talk/AccountChangedService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/talk/AccountChangedService;
    .param p2, "x1"    # Lcom/google/android/talk/AccountChangedService$1;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;-><init>(Lcom/google/android/talk/AccountChangedService;)V

    return-void
.end method


# virtual methods
.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 9
    .param p1, "state"    # Lcom/google/android/gtalkservice/ConnectionState;
    .param p2, "error"    # Lcom/google/android/gtalkservice/ConnectionError;
    .param p3, "accountId"    # J
    .param p5, "username"    # Ljava/lang/String;

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionStateChanged: state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/ConnectionState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/talk/AccountChangedService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/AccountChangedService;->access$100(Lcom/google/android/talk/AccountChangedService;Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    # getter for: Lcom/google/android/talk/AccountChangedService;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v0}, Lcom/google/android/talk/AccountChangedService;->access$200(Lcom/google/android/talk/AccountChangedService;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/TalkApp;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)Z

    move-result v7

    .line 125
    .local v7, "changed":Z
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    # getter for: Lcom/google/android/talk/AccountChangedService;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v0}, Lcom/google/android/talk/AccountChangedService;->access$200(Lcom/google/android/talk/AccountChangedService;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/talk/TalkApp;->getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v6

    .line 128
    .local v6, "accountInfo":Lcom/google/android/talk/TalkApp$AccountInfo;
    if-eqz v6, :cond_1

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/google/android/talk/TalkApp$AccountInfo;->autoLoggingIn:Z

    .line 132
    iget-object v0, p0, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;->this$0:Lcom/google/android/talk/AccountChangedService;

    new-instance v1, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/AccountChangedService$TalkConnectionListener$1;-><init>(Lcom/google/android/talk/AccountChangedService$TalkConnectionListener;)V

    invoke-static {v0, p3, p4, v1}, Lcom/google/android/talk/FeatureManager;->setAvailableFeatures(Landroid/content/Context;JLjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_1
    return-void

    .line 145
    .end local v6    # "accountInfo":Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v7    # "changed":Z
    :catch_0
    move-exception v8

    .line 146
    .local v8, "ex":Ljava/lang/RuntimeException;
    const-string v0, "talk"

    const-string v1, "AccountChangedService.connectionStateChanged error"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    throw v8
.end method
