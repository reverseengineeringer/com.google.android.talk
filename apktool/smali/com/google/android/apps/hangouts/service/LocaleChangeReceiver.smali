.class public Lcom/google/android/apps/hangouts/service/LocaleChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 16
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c()V

    .line 17
    return-void
.end method
