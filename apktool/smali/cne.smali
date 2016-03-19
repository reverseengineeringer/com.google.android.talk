.class final Lcne;
.super Lhbn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbn;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcnd;


# direct methods
.method constructor <init>(Lcnd;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcne;->a:Lcnd;

    invoke-direct {p0}, Lhbn;-><init>()V

    return-void
.end method

.method private a(Lkja;)V
    .locals 8

    .prologue
    .line 123
    iget-object v0, p1, Lkja;->f:Lkjb;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lkja;->f:Lkjb;

    iget-object v0, v0, Lkjb;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lkja;->b:Ljava/lang/String;

    iget-object v1, p1, Lkja;->f:Lkjb;

    iget-object v1, v1, Lkjb;->a:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->f()Lhks;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Lhks;->p()Ljava/util/Map;

    move-result-object v0

    .line 128
    iget-object v1, p1, Lkja;->f:Lkjb;

    iget-object v1, v1, Lkjb;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhkx;

    .line 129
    iget-object v1, p1, Lkja;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhkx;

    .line 130
    iget-object v0, p0, Lcne;->a:Lcnd;

    .line 1030
    iget-object v7, v0, Lcnd;->b:Lcmu;

    .line 130
    iget-object v0, p0, Lcne;->a:Lcnd;

    .line 2030
    iget-object v0, v0, Lcnd;->a:Landroid/content/Context;

    .line 2071
    const/4 v1, 0x2

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->ey:I

    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->ez:I

    sget v6, Lcom/google/android/apps/hangouts/hangout/StressMode;->ex:I

    invoke-static/range {v0 .. v6}, Laal;->a(Landroid/content/Context;ILhkx;Lhkx;III)Lcms;

    move-result-object v0

    .line 130
    invoke-interface {v7, v0}, Lcmu;->a(Lcms;)V

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;)V
    .locals 0

    .prologue
    .line 102
    check-cast p1, Lkja;

    .line 3105
    invoke-direct {p0, p1}, Lcne;->a(Lkja;)V

    .line 102
    return-void
.end method

.method public synthetic a(Llyi;Llyi;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 102
    check-cast p1, Lkja;

    check-cast p2, Lkja;

    .line 2111
    iget-object v1, p1, Lkja;->e:Lkjc;

    if-nez v1, :cond_1

    .line 2115
    :goto_0
    if-nez v0, :cond_0

    .line 2116
    invoke-direct {p0, p2}, Lcne;->a(Lkja;)V

    .line 102
    :cond_0
    return-void

    .line 2114
    :cond_1
    iget-object v1, p1, Lkja;->e:Lkjc;

    iget-object v1, v1, Lkjc;->a:Ljava/lang/Boolean;

    .line 3015
    invoke-static {v1, v0}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    goto :goto_0
.end method
