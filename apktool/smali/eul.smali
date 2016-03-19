.class final Leul;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Leuh;


# direct methods
.method constructor <init>(Leuh;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Leul;->a:Leuh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1023
    sget-boolean v0, Leuh;->a:Z

    .line 141
    if-eqz v0, :cond_0

    .line 142
    const-string v0, "TeleWifiMonitor.Receiver.onReceive, action: "

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    :cond_0
    :goto_0
    iget-object v0, p0, Leul;->a:Leuh;

    .line 2126
    invoke-static {}, Lhbs;->a()V

    .line 2127
    iget-object v1, v0, Leuh;->b:Landroid/content/Context;

    invoke-static {v1}, Leuh;->a(Landroid/content/Context;)Leum;

    move-result-object v1

    .line 2128
    iget-object v2, v0, Leuh;->d:Leum;

    invoke-virtual {v1, v2}, Leum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2129
    const-string v2, "Babel_telephony"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "TeleWifiMonitor.updateSignalState, (%s) -> (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Leuh;->d:Leum;

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2131
    iput-object v1, v0, Leuh;->d:Leum;

    .line 2132
    iget-object v1, v0, Leuh;->c:Leui;

    if-eqz v1, :cond_1

    .line 2133
    iget-object v1, v0, Leuh;->c:Leui;

    iget-object v0, v0, Leuh;->d:Leum;

    invoke-interface {v1, v0}, Leui;->a(Leum;)V

    .line 145
    :cond_1
    return-void

    .line 142
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
