.class public Lcom/google/android/apps/hangouts/callpromos/impl/DialerPromoActivity;
.super Ldly;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ldly;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 12
    invoke-super {p0, p1}, Ldly;->onCreate(Landroid/os/Bundle;)V

    .line 13
    sget v0, Laal;->iS:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/callpromos/impl/DialerPromoActivity;->setContentView(I)V

    .line 15
    new-instance v0, Lbcc;

    invoke-direct {v0}, Lbcc;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/callpromos/impl/DialerPromoActivity;->C_()Lbg;

    move-result-object v1

    invoke-virtual {v1}, Lbg;->a()Lbz;

    move-result-object v1

    .line 18
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->tn:I

    invoke-virtual {v0}, Lbcc;->a()Ldlv;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbz;->a(ILav;)Lbz;

    .line 19
    invoke-virtual {v1}, Lbz;->b()I

    .line 20
    return-void
.end method
