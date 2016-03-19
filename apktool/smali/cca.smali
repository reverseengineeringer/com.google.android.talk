.class public final Lcca;
.super Lbml;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbml",
        "<",
        "Lccb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lccb;Lepc;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lbml;-><init>(Landroid/view/View;Ljava/lang/Object;Lepc;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcca;->c:Ljava/lang/Object;

    check-cast v0, Lccb;

    invoke-interface {v0}, Lccb;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcca;->c:Ljava/lang/Object;

    check-cast v0, Lccb;

    .line 32
    invoke-interface {v0}, Lccb;->b()Z

    move-result v1

    iget-object v0, p0, Lcca;->c:Ljava/lang/Object;

    check-cast v0, Lccb;

    invoke-interface {v0}, Lccb;->a()Z

    move-result v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Lepa;
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcca;->e()Lepb;

    move-result-object v1

    .line 38
    iget-object v0, p0, Lcca;->c:Ljava/lang/Object;

    check-cast v0, Lccb;

    invoke-interface {v0}, Lccb;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jZ:I

    .line 40
    :goto_0
    iget-object v2, p0, Lcca;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lepb;->a(Ljava/lang/String;)Lepb;

    .line 41
    invoke-virtual {v1}, Lepb;->b()Lepa;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->ka:I

    goto :goto_0
.end method
