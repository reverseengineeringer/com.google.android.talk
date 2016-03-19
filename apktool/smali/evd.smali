.class public final Levd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Letk;

.field public final b:Landroid/content/Intent;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Letk;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 3356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3357
    iput-object p1, p0, Levd;->c:Landroid/content/Context;

    .line 3358
    iput-object p2, p0, Levd;->a:Letk;

    .line 3359
    iput-object p3, p0, Levd;->b:Landroid/content/Intent;

    .line 3360
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 2368
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.ShowDialogCallback.onError"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2369
    iget-object v0, p0, Levd;->a:Letk;

    if-eqz v0, :cond_0

    .line 2370
    iget-object v0, p0, Levd;->c:Landroid/content/Context;

    const-string v1, "babel_outgoing_wifi_call_show_dialog_error_action"

    const-string v2, "cellular"

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2373
    iget-object v1, p0, Levd;->a:Letk;

    iget-object v2, p0, Levd;->b:Landroid/content/Intent;

    invoke-virtual {v1, v0, v2}, Letk;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 2375
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 2379
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.ShowDialogCallback.onTimeout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2380
    iget-object v0, p0, Levd;->a:Letk;

    if-eqz v0, :cond_0

    .line 2381
    iget-object v0, p0, Levd;->c:Landroid/content/Context;

    const-string v1, "babel_outgoing_wifi_call_show_dialog_timeout_action"

    const-string v2, "cellular"

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2384
    iget-object v1, p0, Levd;->a:Letk;

    iget-object v2, p0, Levd;->b:Landroid/content/Intent;

    invoke-virtual {v1, v0, v2}, Letk;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 2386
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 3363
    const/4 v0, 0x0

    iput-object v0, p0, Levd;->a:Letk;

    .line 3364
    return-void
.end method
