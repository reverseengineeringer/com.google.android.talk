.class public Lcom/google/android/apps/hangouts/phone/SmsAccountPickerActivity;
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
    .line 22
    invoke-direct {p0}, Limi;-><init>()V

    .line 25
    new-instance v0, Lhzy;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/SmsAccountPickerActivity;->m:Lipg;

    invoke-direct {v0, p0, v1}, Lhzy;-><init>(Lba;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/SmsAccountPickerActivity;->l:Lilh;

    .line 26
    invoke-virtual {v0, v1}, Lhzy;->a(Lilh;)Lhzy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhzy;->b(Lhpw;)Lhzy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/SmsAccountPickerActivity;->j:Lhzy;

    .line 25
    return-void
.end method


# virtual methods
.method public a(ZLhpv;Lhpv;II)V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lhpv;->c:Lhpv;

    if-ne p3, v0, :cond_0

    .line 90
    invoke-static {p5}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 91
    invoke-static {v0}, Ldvd;->b(Lbfd;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/SmsAccountPickerActivity;->finish()V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 64
    invoke-super {p0, p1}, Limi;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v0, Liaj;

    invoke-direct {v0}, Liaj;-><init>()V

    .line 72
    invoke-virtual {v0}, Liaj;->d()Liaj;

    move-result-object v0

    const-class v1, Liap;

    new-instance v2, Liaq;

    invoke-direct {v2}, Liaq;-><init>()V

    new-instance v3, Ldjk;

    .line 1029
    invoke-direct {v3}, Ldjk;-><init>()V

    .line 76
    invoke-virtual {v2, v3}, Liaq;->a(Lhzq;)Liaq;

    move-result-object v2

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->jp:I

    .line 77
    invoke-virtual {p0, v3}, Lcom/google/android/apps/hangouts/phone/SmsAccountPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Liaq;->a(Ljava/lang/String;)Liaq;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Liaq;->c()Landroid/os/Bundle;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Liaj;->a(Ljava/lang/Class;Landroid/os/Bundle;)Liaj;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/SmsAccountPickerActivity;->j:Lhzy;

    invoke-virtual {v1, v0}, Lhzy;->a(Liaj;)V

    .line 80
    return-void
.end method
