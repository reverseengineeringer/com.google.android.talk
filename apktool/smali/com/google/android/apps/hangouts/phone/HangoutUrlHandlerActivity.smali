.class public Lcom/google/android/apps/hangouts/phone/HangoutUrlHandlerActivity;
.super Limi;
.source "SourceFile"

# interfaces
.implements Lhpw;


# instance fields
.field private j:Lhzy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Limi;-><init>()V

    .line 30
    new-instance v0, Lhzy;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/HangoutUrlHandlerActivity;->m:Lipg;

    invoke-direct {v0, p0, v1}, Lhzy;-><init>(Lba;Liog;)V

    const-string v1, "active-hangouts-account"

    .line 32
    invoke-virtual {v0, v1}, Lhzy;->a(Ljava/lang/String;)Lhzy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/HangoutUrlHandlerActivity;->l:Lilh;

    .line 33
    invoke-virtual {v0, v1}, Lhzy;->a(Lilh;)Lhzy;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p0}, Lhzy;->b(Lhpw;)Lhzy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/HangoutUrlHandlerActivity;->j:Lhzy;

    .line 30
    return-void
.end method


# virtual methods
.method public a(ZLhpv;Lhpv;II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 61
    sget-object v0, Lhpv;->c:Lhpv;

    if-ne p3, v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/HangoutUrlHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/HangoutUrlHandlerActivity;->j:Lhzy;

    .line 65
    invoke-virtual {v2}, Lhzy;->c()Lhqb;

    move-result-object v2

    const-string v3, "account_name"

    invoke-interface {v2, v3}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v0, v2, v1}, Lcgs;->a(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;)Lcgs;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 1086
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1087
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->dF:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1088
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->gZ:I

    new-instance v2, Ldif;

    invoke-direct {v2, p0}, Ldif;-><init>(Lcom/google/android/apps/hangouts/phone/HangoutUrlHandlerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1096
    new-instance v1, Ldig;

    invoke-direct {v1, p0}, Ldig;-><init>(Lcom/google/android/apps/hangouts/phone/HangoutUrlHandlerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 83
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x33

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 71
    invoke-static/range {v0 .. v5}, Laal;->a(Lcgs;Ljava/util/ArrayList;ZIJ)Landroid/content/Intent;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/HangoutUrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/HangoutUrlHandlerActivity;->finish()V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/HangoutUrlHandlerActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 38
    invoke-super {p0, p1}, Limi;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Liaj;

    invoke-direct {v0}, Liaj;-><init>()V

    .line 41
    invoke-virtual {v0}, Liaj;->b()Liaj;

    move-result-object v0

    const-class v1, Liap;

    new-instance v2, Liaq;

    invoke-direct {v2}, Liaq;-><init>()V

    .line 45
    invoke-virtual {v2}, Liaq;->a()Liaq;

    move-result-object v2

    new-instance v3, Lhzs;

    invoke-direct {v3}, Lhzs;-><init>()V

    const-string v4, "logged_in"

    .line 48
    invoke-virtual {v3, v4}, Lhzs;->a(Ljava/lang/String;)Lhzs;

    move-result-object v3

    const-string v4, "sms_only"

    .line 49
    invoke-virtual {v3, v4}, Lhzs;->b(Ljava/lang/String;)Lhzs;

    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Liaq;->a(Lhzq;)Liaq;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Liaq;->c()Landroid/os/Bundle;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Liaj;->a(Ljava/lang/Class;Landroid/os/Bundle;)Liaj;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/HangoutUrlHandlerActivity;->j:Lhzy;

    invoke-virtual {v1, v0}, Lhzy;->a(Liaj;)V

    .line 52
    return-void
.end method
