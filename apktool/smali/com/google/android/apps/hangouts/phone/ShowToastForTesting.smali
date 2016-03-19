.class public Lcom/google/android/apps/hangouts/phone/ShowToastForTesting;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ShowToastForTesting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "toast_text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ShowToastForTesting;->finish()V

    .line 18
    return-void
.end method
