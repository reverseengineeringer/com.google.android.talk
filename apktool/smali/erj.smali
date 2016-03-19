.class final Lerj;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:Lerg;


# direct methods
.method constructor <init>(Lerg;)V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 584
    iput-object p1, p0, Lerj;->a:Lerg;

    .line 585
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 589
    const-string v0, "Babel_telephony"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HandoffBroadcastReceiver.onReceive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    iget-object v0, p0, Lerj;->a:Lerg;

    .line 1028
    iget-object v0, v0, Lerg;->b:Leqs;

    .line 592
    if-eqz v0, :cond_0

    iget-object v0, p0, Lerj;->a:Lerg;

    .line 2028
    iget-object v0, v0, Lerg;->b:Leqs;

    .line 592
    invoke-interface {v0}, Leqs;->a()Lerg;

    move-result-object v0

    iget-object v1, p0, Lerj;->a:Lerg;

    if-ne v0, v1, :cond_0

    .line 593
    iget-object v0, p0, Lerj;->a:Lerg;

    .line 3322
    const-string v1, "Babel_telephony"

    iget-object v2, v0, Lerg;->b:Leqs;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TeleConnection.performManualHandoff, call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3324
    invoke-virtual {v0}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v1

    invoke-static {v1}, Leru;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3325
    const-string v0, "Babel_telephony"

    const-string v1, "TeleConnection.performManualHandoff, manual handoff not allowed"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    .line 3326
    :cond_1
    iget-object v1, v0, Lerg;->b:Leqs;

    if-eqz v1, :cond_0

    .line 3327
    iget-object v0, v0, Lerg;->b:Leqs;

    invoke-interface {v0}, Leqs;->c()V

    goto :goto_0
.end method
