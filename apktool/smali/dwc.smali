.class public final Ldwc;
.super Ldyx;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Z

.field private g:I

.field private final h:Lihb;

.field private i:I

.field private j:I

.field private final k:Lbfw;

.field private final l:Z

.field private final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;Lihb;Lbfw;ZZILjava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 55
    iput-object p2, p0, Ldwc;->e:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Ldwc;->h:Lihb;

    .line 57
    iput-object p4, p0, Ldwc;->k:Lbfw;

    .line 58
    iput-boolean p5, p0, Ldwc;->f:Z

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Ldwc;->j:I

    .line 60
    iput-boolean p6, p0, Ldwc;->l:Z

    .line 61
    iput p7, p0, Ldwc;->i:I

    .line 62
    iput-object p8, p0, Ldwc;->m:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public G_()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Ldwc;->j:I

    return v0
.end method

.method public o_()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 133
    new-instance v0, Ldwd;

    iget-object v1, p0, Ldwc;->a:Ljava/lang/String;

    .line 4127
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget-object v2, v2, Ldvb;->b:Lbfd;

    .line 133
    iget v3, p0, Ldwc;->g:I

    iget-boolean v4, p0, Ldwc;->f:Z

    invoke-direct {v0, v1, v2, v3, v4}, Ldwd;-><init>(Ljava/lang/String;Lbfd;IZ)V

    return-object v0
.end method

.method public p_()V
    .locals 12

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1127
    iget-object v0, p0, Ldyx;->b:Ldvb;

    iget-object v0, v0, Ldvb;->b:Lbfd;

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 68
    iget-object v2, p0, Ldwc;->h:Lihb;

    invoke-static {v0, v2}, Laal;->a(Landroid/content/Context;Lihb;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2127
    iget-object v0, p0, Ldyx;->b:Ldvb;

    iget-object v0, v0, Ldvb;->b:Lbfd;

    .line 71
    iget-object v0, p0, Ldwc;->h:Lihb;

    .line 2144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2145
    new-instance v2, Ldyp;

    invoke-direct {v2, v4}, Ldyp;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Laal;->a(Lihb;Ldyr;)V

    .line 73
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 74
    const/4 v0, 0x4

    iput v0, p0, Ldwc;->j:I

    .line 120
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v2, v1

    move v5, v1

    move v6, v1

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 82
    iget-object v7, v0, Lcyx;->a:Lczd;

    sget-object v11, Lczd;->d:Lczd;

    if-ne v7, v11, :cond_2

    move v7, v9

    :goto_2
    or-int/2addr v6, v7

    .line 83
    iget-object v7, v0, Lcyx;->a:Lczd;

    sget-object v11, Lczd;->c:Lczd;

    if-eq v7, v11, :cond_1

    iget-object v7, v0, Lcyx;->a:Lczd;

    sget-object v11, Lczd;->b:Lczd;

    if-ne v7, v11, :cond_3

    :cond_1
    move v7, v9

    :goto_3
    or-int/2addr v5, v7

    .line 85
    invoke-virtual {v0}, Lcyx;->i()Z

    move-result v0

    or-int/2addr v0, v2

    move v2, v0

    .line 86
    goto :goto_1

    :cond_2
    move v7, v1

    .line 82
    goto :goto_2

    :cond_3
    move v7, v1

    .line 83
    goto :goto_3

    .line 87
    :cond_4
    if-eqz v5, :cond_6

    if-nez v6, :cond_5

    if-eqz v2, :cond_6

    .line 88
    :cond_5
    iput v8, p0, Ldwc;->j:I

    goto :goto_0

    .line 95
    :cond_6
    iget-boolean v0, p0, Ldwc;->l:Z

    if-nez v0, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v9, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    :cond_7
    move v0, v8

    .line 96
    :goto_4
    iput v0, p0, Ldwc;->g:I

    .line 98
    const/4 v5, 0x0

    .line 99
    iget v0, p0, Ldwc;->g:I

    if-ne v0, v9, :cond_8

    .line 100
    iget-object v0, p0, Ldwc;->h:Lihb;

    invoke-virtual {v0, v1}, Lihb;->a(I)Laxt;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_8

    .line 102
    invoke-virtual {v0}, Laxt;->b()Ldtw;

    move-result-object v0

    invoke-virtual {v0}, Ldtw;->c()Ljava/util/List;

    move-result-object v5

    .line 106
    :cond_8
    new-instance v0, Lbfz;

    .line 3036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 3123
    iget-object v6, p0, Ldyx;->b:Ldvb;

    iget v6, v6, Ldvb;->a:I

    .line 108
    invoke-direct {v0, v2, v6}, Lbfz;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Ldwc;->e:Ljava/lang/String;

    iget-object v6, p0, Ldwc;->k:Lbfw;

    iget v7, p0, Ldwc;->g:I

    iget v8, p0, Ldwc;->i:I

    .line 3134
    iget-object v10, p0, Ldyx;->c:Ldyy;

    .line 118
    iget-object v11, p0, Ldwc;->m:Ljava/lang/String;

    .line 107
    invoke-static/range {v0 .. v11}, Lbft;->a(Lbfz;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lbfw;IIZLdyy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldwc;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    move v0, v9

    .line 96
    goto :goto_4
.end method
