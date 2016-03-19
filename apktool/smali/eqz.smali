.class final Leqz;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lequ;


# direct methods
.method constructor <init>(Lequ;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Leqz;->a:Lequ;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1031
    sget-boolean v2, Lequ;->a:Z

    .line 129
    if-eqz v2, :cond_0

    .line 130
    const-string v2, "TeleCellMonitor.Receiver.onReceive, action: "

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    :cond_0
    :goto_0
    iget-object v2, p0, Leqz;->a:Lequ;

    .line 2098
    invoke-static {}, Lhbs;->a()V

    .line 2101
    iget-object v3, v2, Lequ;->b:Landroid/content/Context;

    invoke-static {v3}, Laal;->k(Landroid/content/Context;)Z

    move-result v3

    .line 2102
    iget-boolean v4, v2, Lequ;->e:Z

    if-eq v3, v4, :cond_3

    .line 2103
    const-string v4, "Babel_telephony"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "TeleCellMonitor.updateState, (%b) -> (%b)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-boolean v8, v2, Lequ;->e:Z

    .line 2104
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v0

    .line 2103
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2105
    iput-boolean v3, v2, Lequ;->e:Z

    .line 2116
    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, v2, Lequ;->c:Leqv;

    if-eqz v0, :cond_1

    .line 2117
    iget-object v0, v2, Lequ;->c:Leqv;

    iget-object v1, v2, Lequ;->d:Lerc;

    iget-boolean v2, v2, Lequ;->e:Z

    invoke-interface {v0, v1, v2}, Leqv;->a(Lerc;Z)V

    .line 133
    :cond_1
    return-void

    .line 130
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
