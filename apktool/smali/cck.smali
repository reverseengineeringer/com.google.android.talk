.class public final Lcck;
.super Lbml;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbml",
        "<",
        "Lccl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lccl;Lepc;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lbml;-><init>(Landroid/view/View;Ljava/lang/Object;Lepc;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcck;->c:Ljava/lang/Object;

    check-cast v0, Lccl;

    invoke-virtual {v0}, Lccl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcck;->c:Ljava/lang/Object;

    check-cast v0, Lccl;

    invoke-virtual {v0}, Lccl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcck;->c:Ljava/lang/Object;

    check-cast v0, Lccl;

    .line 32
    invoke-virtual {v0}, Lccl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Lepa;
    .locals 5

    .prologue
    .line 37
    iget-object v0, p0, Lcck;->c:Ljava/lang/Object;

    check-cast v0, Lccl;

    invoke-virtual {v0}, Lccl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->eV:I

    move v1, v0

    .line 40
    :goto_0
    iget-object v0, p0, Lcck;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcck;->c:Ljava/lang/Object;

    check-cast v0, Lccl;

    .line 41
    invoke-virtual {v0}, Lccl;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 40
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcck;->e()Lepb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lepb;->a(Ljava/lang/String;)Lepb;

    move-result-object v0

    invoke-virtual {v0}, Lepb;->a()Lepb;

    move-result-object v0

    invoke-virtual {v0}, Lepb;->b()Lepa;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->eW:I

    move v1, v0

    goto :goto_0
.end method
