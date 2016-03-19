.class public final Lbyf;
.super Lbml;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbml",
        "<",
        "Lbyh;",
        ">;"
    }
.end annotation


# instance fields
.field e:Leph;


# direct methods
.method public constructor <init>(Landroid/view/View;Lbyh;Lepc;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lbml;-><init>(Landroid/view/View;Ljava/lang/Object;Lepc;)V

    .line 45
    new-instance v0, Lbyg;

    invoke-direct {v0, p0}, Lbyg;-><init>(Lbyf;)V

    iput-object v0, p0, Lbyf;->e:Leph;

    .line 43
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbyf;->c:Ljava/lang/Object;

    check-cast v0, Lbyh;

    invoke-interface {v0}, Lbyh;->q()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Lepa;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 85
    iget-object v0, p0, Lbyf;->b:Landroid/content/Context;

    const-class v1, Lhpu;

    .line 87
    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 86
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    const/16 v1, 0x716

    .line 85
    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 90
    invoke-virtual {p0}, Lbyf;->e()Lepb;

    move-result-object v1

    .line 91
    iget-object v0, p0, Lbyf;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 92
    iget-object v0, p0, Lbyf;->c:Ljava/lang/Object;

    check-cast v0, Lbyh;

    invoke-interface {v0}, Lbyh;->q()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 93
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->J:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, p0, Lbyf;->c:Ljava/lang/Object;

    check-cast v0, Lbyh;

    .line 95
    invoke-interface {v0}, Lbyh;->r()Lcyx;

    move-result-object v0

    iget-object v0, v0, Lcyx;->e:Ljava/lang/String;

    aput-object v0, v4, v5

    .line 94
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Lepb;->a(Ljava/lang/String;)Lepb;

    .line 96
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->iJ:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lepb;->c(Ljava/lang/String;)Lepb;

    .line 97
    iget-object v0, p0, Lbyf;->e:Leph;

    invoke-virtual {v1, v0}, Lepb;->a(Leph;)Lepb;

    .line 103
    :goto_0
    invoke-virtual {v1}, Lepb;->a()Lepb;

    .line 104
    invoke-virtual {v1}, Lepb;->b()Lepa;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->I:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, p0, Lbyf;->c:Ljava/lang/Object;

    check-cast v0, Lbyh;

    .line 100
    invoke-interface {v0}, Lbyh;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Lepb;->a(Ljava/lang/String;)Lepb;

    goto :goto_0
.end method
