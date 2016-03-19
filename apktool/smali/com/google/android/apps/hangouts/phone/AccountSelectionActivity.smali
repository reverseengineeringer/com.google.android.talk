.class public Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;
.super Lilv;
.source "SourceFile"

# interfaces
.implements Lhpw;


# instance fields
.field private j:Lhzy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lilv;-><init>()V

    .line 28
    new-instance v0, Lhzy;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lhzy;-><init>(Lba;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;->A:Lilh;

    .line 29
    invoke-virtual {v0, v1}, Lhzy;->a(Lilh;)Lhzy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhzy;->b(Lhpw;)Lhzy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;->j:Lhzy;

    .line 28
    return-void
.end method


# virtual methods
.method public a(ZLhpv;Lhpv;II)V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lhpv;->c:Lhpv;

    if-ne p3, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 115
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;->finish()V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 79
    invoke-super {p0, p1}, Lilv;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sms_accts_only"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 81
    new-instance v1, Liaj;

    invoke-direct {v1}, Liaj;-><init>()V

    .line 83
    if-eqz v0, :cond_0

    .line 85
    const-class v0, Liap;

    new-instance v2, Liaq;

    invoke-direct {v2}, Liaq;-><init>()V

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->cf:I

    .line 88
    invoke-virtual {p0, v3}, Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Liaq;->a(Ljava/lang/String;)Liaq;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Liaq;->a()Liaq;

    move-result-object v2

    new-instance v3, Lddb;

    .line 1034
    invoke-direct {v3}, Lddb;-><init>()V

    .line 90
    invoke-virtual {v2, v3}, Liaq;->a(Lhzq;)Liaq;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Liaq;->c()Landroid/os/Bundle;

    move-result-object v2

    .line 85
    invoke-virtual {v1, v0, v2}, Liaj;->a(Ljava/lang/Class;Landroid/os/Bundle;)Liaj;

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;->j:Lhzy;

    invoke-virtual {v0, v1}, Lhzy;->a(Liaj;)V

    .line 104
    return-void

    .line 94
    :cond_0
    const-class v0, Liap;

    new-instance v2, Liaq;

    invoke-direct {v2}, Liaq;-><init>()V

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->cf:I

    .line 97
    invoke-virtual {p0, v3}, Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Liaq;->a(Ljava/lang/String;)Liaq;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Liaq;->a()Liaq;

    move-result-object v2

    new-instance v3, Lhzs;

    invoke-direct {v3}, Lhzs;-><init>()V

    const-string v4, "sms_only"

    .line 100
    invoke-virtual {v3, v4}, Lhzs;->b(Ljava/lang/String;)Lhzs;

    move-result-object v3

    .line 99
    invoke-virtual {v2, v3}, Liaq;->a(Lhzq;)Liaq;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Liaq;->c()Landroid/os/Bundle;

    move-result-object v2

    .line 94
    invoke-virtual {v1, v0, v2}, Liaj;->a(Ljava/lang/Class;Landroid/os/Bundle;)Liaj;

    goto :goto_0
.end method
