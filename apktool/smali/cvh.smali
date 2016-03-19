.class public final Lcvh;
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
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->fh:I

    return v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcvh;->a:Lbfd;

    const/16 v1, 0x642

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 38
    iget-object v0, p0, Lcvh;->a:Lbfd;

    .line 1234
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0, v1, v2, v3}, Laal;->a(Lbfd;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bC:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x7

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x2

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x7

    return v0
.end method
