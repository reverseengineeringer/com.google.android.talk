.class final Letw;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Letv;


# direct methods
.method constructor <init>(Letv;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Letw;->a:Letv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 39
    invoke-static {}, Lhbs;->a()V

    .line 40
    iget-object v0, p0, Letw;->a:Letv;

    .line 1023
    iget-object v0, v0, Letv;->a:Letx;

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.apps.hangouts.user_activity_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.android.apps.hangouts.user_activity_confidence"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 43
    const-string v2, "Babel_telephony"

    const-string v3, "TeleUserActivityMonitor.onReceive, activityType: %s confidenceLevel: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 44
    invoke-static {v0}, Letv;->b(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 43
    invoke-static {v2, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v2, p0, Letw;->a:Letv;

    .line 2023
    iget-object v2, v2, Letv;->a:Letx;

    .line 45
    invoke-interface {v2, v0, v1}, Letx;->b(II)V

    .line 47
    :cond_0
    return-void
.end method
