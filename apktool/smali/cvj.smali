.class public final Lcvj;
.super Lcve;
.source "SourceFile"


# instance fields
.field private f:Lilh;


# direct methods
.method public constructor <init>(Lilh;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcve;-><init>()V

    .line 20
    iput-object p1, p0, Lcvj;->f:Lilh;

    .line 21
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->fo:I

    return v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcvj;->a:Lbfd;

    const/16 v1, 0x641

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 42
    iget-object v0, p0, Lcvj;->a:Lbfd;

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    invoke-static {p1, v0}, Laal;->d(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bO:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x6

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x6

    return v0
.end method
