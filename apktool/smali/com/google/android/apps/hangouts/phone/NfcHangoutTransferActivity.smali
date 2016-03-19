.class public Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;
.super Limi;
.source "SourceFile"

# interfaces
.implements Lhpw;


# instance fields
.field private j:Lcgs;

.field private k:Lhzy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Limi;-><init>()V

    .line 27
    new-instance v0, Lhzy;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->m:Lipg;

    invoke-direct {v0, p0, v1}, Lhzy;-><init>(Lba;Liog;)V

    const-string v1, "active-hangouts-account"

    .line 29
    invoke-virtual {v0, v1}, Lhzy;->a(Ljava/lang/String;)Lhzy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->l:Lilh;

    .line 30
    invoke-virtual {v0, v1}, Lhzy;->a(Lilh;)Lhzy;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p0}, Lhzy;->b(Lhpw;)Lhzy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->k:Lhzy;

    .line 27
    return-void
.end method


# virtual methods
.method public a(ZLhpv;Lhpv;II)V
    .locals 6

    .prologue
    .line 60
    sget-object v0, Lhpv;->c:Lhpv;

    if-ne p3, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->j:Lcgs;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->k:Lhzy;

    .line 63
    invoke-virtual {v1}, Lhzy;->c()Lhqb;

    move-result-object v1

    const-string v2, "account_name"

    invoke-interface {v1, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcgs;->c(Ljava/lang/String;)Lcgs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->j:Lcgs;

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->j:Lcgs;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x33

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 65
    invoke-static/range {v0 .. v5}, Laal;->a(Lcgs;Ljava/util/ArrayList;ZIJ)Landroid/content/Intent;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->finish()V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0, p1}, Limi;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {}, Lewz;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1059
    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1060
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1061
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.nfc://ext/com.google.android.apps.hangouts:hangoutrequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 37
    :goto_0
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Laal;->e(Landroid/content/Intent;)Lcgs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->j:Lcgs;

    .line 45
    new-instance v0, Liaj;

    invoke-direct {v0}, Liaj;-><init>()V

    .line 47
    invoke-virtual {v0}, Liaj;->b()Liaj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->j:Lcgs;

    .line 48
    invoke-virtual {v1}, Lcgs;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liaj;->a(Ljava/lang/String;)Liaj;

    move-result-object v0

    const-class v1, Liap;

    .line 49
    invoke-virtual {v0, v1}, Liaj;->a(Ljava/lang/Class;)Liaj;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->k:Lhzy;

    invoke-virtual {v1, v0}, Lhzy;->a(Liaj;)V

    .line 51
    :goto_1
    return-void

    .line 1061
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/NfcHangoutTransferActivity;->finish()V

    goto :goto_1
.end method
