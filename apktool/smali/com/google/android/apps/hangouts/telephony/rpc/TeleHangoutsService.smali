.class public Lcom/google/android/apps/hangouts/telephony/rpc/TeleHangoutsService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 53
    const-string v1, "com.google.android.apps.hangouts.telephony.ITeleHangoutsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const-string v1, "Babel_telephony"

    const-string v2, "TeleHangoutService.onBind, unknown action; not binding"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-object v0

    .line 58
    :cond_0
    invoke-static {p0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v1

    invoke-virtual {v1}, Leut;->b()I

    move-result v1

    .line 59
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 60
    const-string v1, "Babel_telephony"

    const-string v2, "No account; not establishing binding."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Leqo;

    invoke-direct {v0, p0, v1}, Leqo;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method
