.class public final Lhlh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhgo;

.field public final b:Landroid/view/Surface;

.field public final c:Landroid/graphics/SurfaceTexture;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(Lhcd;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2023
    iput v0, p0, Lhlh;->e:I

    .line 2024
    iput v0, p0, Lhlh;->f:I

    .line 2025
    const/4 v0, 0x0

    iput v0, p0, Lhlh;->g:I

    .line 2035
    iput-object p2, p0, Lhlh;->c:Landroid/graphics/SurfaceTexture;

    .line 2036
    const/4 v0, 0x0

    iput-object v0, p0, Lhlh;->b:Landroid/view/Surface;

    .line 2037
    invoke-virtual {p1}, Lhcd;->i()Lhgo;

    move-result-object v0

    iput-object v0, p0, Lhlh;->a:Lhgo;

    .line 2038
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 2101
    iget-object v0, p0, Lhlh;->c:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 2102
    new-instance v0, Lhla;

    iget-object v1, p0, Lhlh;->b:Landroid/view/Surface;

    iget v2, p0, Lhlh;->e:I

    iget v3, p0, Lhlh;->f:I

    iget-boolean v4, p0, Lhlh;->h:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lhla;-><init>(Landroid/view/Surface;IIZ)V

    .line 2105
    :goto_0
    iget-object v1, p0, Lhlh;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2106
    iget-object v1, p0, Lhlh;->a:Lhgo;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lhgo;->a(Lhla;Ljava/lang/Runnable;)V

    .line 2113
    :goto_1
    return-void

    .line 2102
    :cond_0
    new-instance v0, Lhla;

    iget-object v1, p0, Lhlh;->c:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Lhla;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 2111
    :cond_1
    iget-object v1, p0, Lhlh;->a:Lhgo;

    iget-object v2, p0, Lhlh;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lhgo;->a(Ljava/lang/String;Lhla;)V

    .line 2112
    iget v0, p0, Lhlh;->g:I

    invoke-virtual {p0, v0}, Lhlh;->a(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1042
    const/4 v0, 0x0

    iput-object v0, p0, Lhlh;->d:Ljava/lang/String;

    .line 1043
    invoke-direct {p0}, Lhlh;->d()V

    .line 1044
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 1048
    iput p1, p0, Lhlh;->g:I

    .line 1049
    iget-object v0, p0, Lhlh;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1052
    :cond_1
    iget-object v0, p0, Lhlh;->a:Lhgo;

    iget-object v1, p0, Lhlh;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhgo;->a(Ljava/lang/String;)Lhgn;

    move-result-object v0

    .line 1053
    instance-of v1, v0, Lhfu;

    if-eqz v1, :cond_0

    .line 1054
    check-cast v0, Lhfu;

    iget v1, p0, Lhlh;->g:I

    invoke-virtual {v0, v1}, Lhfu;->c(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lhlh;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    iput-object p1, p0, Lhlh;->d:Ljava/lang/String;

    .line 1062
    invoke-direct {p0}, Lhlh;->d()V

    .line 1064
    :cond_0
    return-void
.end method

.method public b()Lhlc;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1081
    iget-object v1, p0, Lhlh;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return-object v0

    .line 1084
    :cond_1
    iget-object v1, p0, Lhlh;->a:Lhgo;

    iget-object v2, p0, Lhlh;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lhgo;->a(Ljava/lang/String;)Lhgn;

    move-result-object v1

    .line 1085
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lhgn;->n()Lhlc;

    move-result-object v0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1090
    iget-object v0, p0, Lhlh;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    iget-object v0, p0, Lhlh;->a:Lhgo;

    iget-object v1, p0, Lhlh;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhgo;->a(Ljava/lang/String;)Lhgn;

    move-result-object v0

    .line 1094
    instance-of v1, v0, Lhfu;

    if-eqz v1, :cond_0

    .line 1095
    check-cast v0, Lhfu;

    invoke-virtual {v0}, Lhfu;->g()V

    goto :goto_0
.end method
