.class public final Lbbv;
.super Lcyb;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcyb;-><init>(Landroid/content/Context;ILexn;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lbbv;->p:Landroid/content/Context;

    iget v1, p0, Lbbv;->q:I

    invoke-static {v0, v1}, Lbff;->b(Landroid/content/Context;I)Lhqb;

    move-result-object v0

    .line 38
    const-string v1, "display_name"

    .line 40
    invoke-interface {v0, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbbv;->p:Landroid/content/Context;

    sget v2, Laal;->iQ:I

    .line 41
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0, v0, v1, v2, v3}, Lbbv;->b(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lbbv;->u:Lcy;

    iget-object v2, p0, Lbbv;->p:Landroid/content/Context;

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->q:I

    .line 45
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcy;->a(Ljava/lang/CharSequence;)Lcy;

    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Lcy;->b(Ljava/lang/CharSequence;)Lcy;

    .line 48
    invoke-super {p0, p1}, Lcyb;->a(Z)V

    .line 49
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method protected b()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bV:I

    return v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0xf

    return v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, -0x1

    return v0
.end method

.method protected g()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lbbv;->q:I

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    invoke-static {v0}, Laal;->d(Lbfd;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
