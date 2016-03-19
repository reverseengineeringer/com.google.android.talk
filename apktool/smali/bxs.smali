.class public final Lbxs;
.super Lbml;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbml",
        "<",
        "Lbxt;",
        ">;"
    }
.end annotation


# instance fields
.field private e:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lbxt;Lepc;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lbml;-><init>(Landroid/view/View;Ljava/lang/Object;Lepc;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lbxs;->c:Ljava/lang/Object;

    check-cast v0, Lbxt;

    invoke-interface {v0}, Lbxt;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldjd;->b:Ldjd;

    .line 35
    invoke-static {v0}, Laal;->a(Ldjd;)Z

    move-result v0

    if-nez v0, :cond_0

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
    .line 40
    iget-object v0, p0, Lbxs;->c:Ljava/lang/Object;

    check-cast v0, Lbxt;

    invoke-interface {v0}, Lbxt;->d()I

    move-result v0

    invoke-static {v0}, Laal;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->D:I

    iput v0, p0, Lbxs;->e:I

    .line 45
    :goto_0
    sget-object v0, Ldjd;->b:Ldjd;

    invoke-static {v0}, Laal;->b(Ldjd;)V

    .line 46
    invoke-virtual {p0}, Lbxs;->e()Lepb;

    move-result-object v0

    iget-object v1, p0, Lbxs;->b:Landroid/content/Context;

    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lbxs;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lepb;->a(Ljava/lang/String;)Lepb;

    move-result-object v0

    invoke-virtual {v0}, Lepb;->b()Lepa;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->C:I

    iput v0, p0, Lbxs;->e:I

    goto :goto_0
.end method
