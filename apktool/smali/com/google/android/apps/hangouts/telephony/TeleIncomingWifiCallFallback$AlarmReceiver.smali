.class public Lcom/google/android/apps/hangouts/telephony/TeleIncomingWifiCallFallback$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lesf;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lesd;)V
    .locals 3

    .prologue
    .line 95
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallFallback.AlarmReceiver.onInviteCompleted"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/telephony/TeleIncomingWifiCallFallback$AlarmReceiver;->a:Z

    .line 97
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 66
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallFallback.AlarmReceiver.onReceive"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const-string v0, "invite_info"

    .line 68
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lesg;->a(Landroid/os/Bundle;)Lesg;

    move-result-object v4

    .line 70
    iget v0, v4, Lesg;->f:I

    iget-object v1, v4, Lesg;->a:Lcgs;

    invoke-static {p1, v0, v1}, Laal;->a(Landroid/content/Context;ILcgs;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallFallback.AlarmReceiver.onReceive, invite was cancelled"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget v0, v4, Lesg;->f:I

    iget-object v1, v4, Lesg;->b:Ljava/lang/String;

    const/16 v2, 0x921

    invoke-static {p1, v0, v1, v2}, Laal;->a(Landroid/content/Context;ILjava/lang/String;I)V

    .line 91
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v0, "telecom"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 82
    new-instance v0, Lesd;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lesd;-><init>(Landroid/content/Context;Lesf;Landroid/telecom/TelecomManager;Lesg;Z)V

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lesd;->a(Leaw;)V

    .line 90
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/telephony/TeleIncomingWifiCallFallback$AlarmReceiver;->a:Z

    .line 1134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
