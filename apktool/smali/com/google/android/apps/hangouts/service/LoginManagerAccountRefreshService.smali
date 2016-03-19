.class public Lcom/google/android/apps/hangouts/service/LoginManagerAccountRefreshService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "LoginManagerAccountRefreshService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 29
    :try_start_0
    const-class v0, Liaf;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liaf;

    new-instance v1, Liai;

    invoke-direct {v1}, Liai;-><init>()V

    const-string v2, "new_accounts_only"

    const/4 v3, 0x0

    .line 32
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Liai;->a(Z)Liai;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Liai;->c()Liah;

    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Liaf;->a(Liah;)V
    :try_end_0
    .catch Lhqn; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_0
    invoke-static {p1}, Lfu;->a(Landroid/content/Intent;)Z

    .line 40
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 36
    :try_start_1
    const-string v1, "Babel_AccountRefresh"

    const-string v2, "Loading device accounts failed"

    invoke-static {v1, v2, v0}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lfu;->a(Landroid/content/Intent;)Z

    throw v0
.end method
