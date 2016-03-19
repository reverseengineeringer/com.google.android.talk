.class public final Lbls;
.super Lbml;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbml",
        "<",
        "Lblt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lblt;Lepc;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lbml;-><init>(Landroid/view/View;Ljava/lang/Object;Lepc;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 37
    invoke-static {}, Ldvd;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbls;->c:Ljava/lang/Object;

    check-cast v0, Lblt;

    .line 38
    invoke-interface {v0}, Lblt;->d()I

    move-result v0

    invoke-static {v0}, Laal;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 39
    :goto_0
    iget-object v0, p0, Lbls;->c:Ljava/lang/Object;

    check-cast v0, Lblt;

    invoke-interface {v0}, Lblt;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbls;->c:Ljava/lang/Object;

    check-cast v0, Lblt;

    .line 40
    invoke-interface {v0}, Lblt;->c()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 38
    goto :goto_0

    :cond_1
    move v2, v3

    .line 40
    goto :goto_1
.end method

.method protected b()Lepa;
    .locals 7

    .prologue
    .line 46
    iget-object v0, p0, Lbls;->c:Ljava/lang/Object;

    check-cast v0, Lblt;

    invoke-interface {v0}, Lblt;->a()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v1

    .line 47
    iget-object v0, p0, Lbls;->b:Landroid/content/Context;

    const-class v2, Lawo;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    .line 49
    invoke-virtual {p0}, Lbls;->e()Lepb;

    move-result-object v2

    iget-object v3, p0, Lbls;->b:Landroid/content/Context;

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->ji:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 52
    invoke-interface {v0, v1}, Lawo;->c(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 51
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v2, v0}, Lepb;->a(Ljava/lang/String;)Lepb;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lepb;->b()Lepa;

    move-result-object v0

    return-object v0
.end method
