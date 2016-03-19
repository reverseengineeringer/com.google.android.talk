.class public final Lhgt;
.super Lhgc;
.source "SourceFile"


# instance fields
.field private i:Lhgn;

.field private j:Lhla;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "Invalid"

    invoke-direct {p0, v0}, Lhgc;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lhla;Lhgn;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lhgt;->j:Lhla;

    .line 28
    iput-object p2, p0, Lhgt;->i:Lhgn;

    .line 29
    return-void
.end method

.method public d()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 34
    iget-object v0, p0, Lhgt;->i:Lhgn;

    invoke-virtual {v0}, Lhgn;->n()Lhlc;

    move-result-object v7

    .line 35
    iget-object v0, p0, Lhgt;->i:Lhgn;

    invoke-virtual {v0}, Lhgn;->d()I

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v7}, Lhlc;->b()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Lhlc;->c()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v6

    .line 51
    :goto_0
    return v0

    .line 40
    :cond_1
    iget-object v0, p0, Lhgt;->i:Lhgn;

    invoke-virtual {v0}, Lhgn;->d()I

    move-result v1

    invoke-virtual {v7}, Lhlc;->b()I

    move-result v2

    invoke-virtual {v7}, Lhlc;->c()I

    move-result v3

    iget-object v0, p0, Lhgt;->i:Lhgn;

    .line 41
    invoke-virtual {v0}, Lhgn;->e()Z

    move-result v4

    iget-object v0, p0, Lhgt;->i:Lhgn;

    invoke-virtual {v0}, Lhgn;->f()Z

    move-result v5

    move-object v0, p0

    .line 40
    invoke-virtual/range {v0 .. v5}, Lhgt;->a(IIIZZ)V

    .line 42
    invoke-virtual {v7}, Lhlc;->g()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhgt;->a(Landroid/graphics/RectF;)V

    .line 43
    invoke-virtual {v7}, Lhlc;->f()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhgt;->b(Landroid/graphics/RectF;)V

    .line 44
    iget-object v0, p0, Lhgt;->j:Lhla;

    invoke-virtual {v0}, Lhla;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 45
    invoke-virtual {v7}, Lhlc;->b()I

    move-result v0

    invoke-virtual {v7}, Lhlc;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1, v6}, Lhgt;->a(IIZ)V

    .line 51
    :goto_1
    invoke-super {p0}, Lhgc;->d()Z

    move-result v0

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lhgt;->j:Lhla;

    invoke-virtual {v0}, Lhla;->c()I

    move-result v0

    iget-object v1, p0, Lhgt;->j:Lhla;

    invoke-virtual {v1}, Lhla;->d()I

    move-result v1

    iget-object v2, p0, Lhgt;->j:Lhla;

    .line 48
    invoke-virtual {v2}, Lhla;->e()Z

    move-result v2

    .line 47
    invoke-virtual {p0, v0, v1, v2}, Lhgt;->a(IIZ)V

    goto :goto_1
.end method
