.class public Lcom/google/android/apps/hangouts/callmemaybe/NewPlusAccountService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "NewPlusAccountService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 37
    const-string v0, "account_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/callmemaybe/NewPlusAccountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lbbu;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbu;

    .line 39
    invoke-virtual {v0, v1}, Lbbu;->a(I)V

    .line 40
    return-void
.end method
