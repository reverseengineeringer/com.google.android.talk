.class public Lcom/google/android/apps/hangouts/phone/SmsStorageLowWarningActivity;
.super Lba;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lba;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 15
    invoke-super {p0, p1}, Lba;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/SmsStorageLowWarningActivity;->C_()Lbg;

    move-result-object v0

    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v0

    .line 1037
    new-instance v1, Lcdn;

    invoke-direct {v1}, Lcdn;-><init>()V

    .line 19
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbz;->a(Lav;Ljava/lang/String;)Lbz;

    .line 20
    invoke-virtual {v0}, Lbz;->b()I

    .line 21
    return-void
.end method
