.class public final Lcvk;
.super Lcve;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcve;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->iG:I

    return v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcvk;->a:Lbfd;

    const/16 v1, 0x646

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 38
    iget-object v0, p0, Lcvk;->a:Lbfd;

    .line 1382
    new-instance v1, Landroid/content/Intent;

    .line 2036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 1382
    const-class v3, Lcom/google/android/apps/hangouts/settings/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1383
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1384
    const-string v2, "account_id"

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->cf:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x9

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x3

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x9

    return v0
.end method
