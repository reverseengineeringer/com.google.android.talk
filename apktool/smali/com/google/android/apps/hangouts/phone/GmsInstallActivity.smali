.class public final Lcom/google/android/apps/hangouts/phone/GmsInstallActivity;
.super Lba;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lba;-><init>()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 2080
    sput-boolean v0, Lcbr;->k:Z

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/GmsInstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_main_launcher"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3022
    const/4 v1, 0x0

    invoke-static {v1}, Laal;->d(Lbfd;)Landroid/content/Intent;

    move-result-object v1

    .line 3023
    if-eqz v0, :cond_0

    .line 3025
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    :cond_0
    const v0, 0x8000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/phone/GmsInstallActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/GmsInstallActivity;->finish()V

    .line 64
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lba;->onActivityResult(IILandroid/content/Intent;)V

    .line 48
    packed-switch p1, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/GmsInstallActivity;->g()V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-super {p0, p1}, Lba;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-static {v0, v0, v0}, Laal;->a(ZZZ)I

    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/phone/GmsInstallActivity;->g()V

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/GmsInstallActivity;->C_()Lbg;

    move-result-object v1

    invoke-virtual {v1}, Lbg;->a()Lbz;

    move-result-object v1

    .line 2021
    const/16 v2, 0x3e9

    invoke-static {v0, v2}, Ldhz;->a(II)Ldhz;

    move-result-object v0

    .line 42
    const-string v2, "gmscore dialog"

    invoke-virtual {v0, v1, v2}, Lau;->a(Lbz;Ljava/lang/String;)I

    goto :goto_0
.end method
