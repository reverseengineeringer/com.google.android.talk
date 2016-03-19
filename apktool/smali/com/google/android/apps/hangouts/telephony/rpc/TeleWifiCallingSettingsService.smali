.class public Lcom/google/android/apps/hangouts/telephony/rpc/TeleWifiCallingSettingsService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Levl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 38
    const-string v0, "com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const-string v0, "Babel_telephony"

    const-string v1, "Unknown binding action; ignoring"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/telephony/rpc/TeleWifiCallingSettingsService;->a:Levl;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 33
    new-instance v0, Levl;

    invoke-direct {v0, p0}, Levl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/telephony/rpc/TeleWifiCallingSettingsService;->a:Levl;

    .line 34
    return-void
.end method
