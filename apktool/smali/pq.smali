.class public final Lpq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Object;

.field b:Lpr;


# direct methods
.method private constructor <init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    .line 279
    new-instance v0, Lpu;

    invoke-direct {v0}, Lpu;-><init>()V

    iput-object v0, p0, Lpq;->b:Lpr;

    .line 285
    :goto_0
    iget-object v0, p0, Lpq;->b:Lpr;

    invoke-interface {v0, p2, p3}, Lpr;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lpq;->a:Ljava/lang/Object;

    .line 286
    return-void

    .line 280
    :cond_0
    const/16 v0, 0x9

    if-lt p1, v0, :cond_1

    .line 281
    new-instance v0, Lpt;

    invoke-direct {v0}, Lpt;-><init>()V

    iput-object v0, p0, Lpq;->b:Lpr;

    goto :goto_0

    .line 283
    :cond_1
    new-instance v0, Lps;

    invoke-direct {v0}, Lps;-><init>()V

    iput-object v0, p0, Lpq;->b:Lpr;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0, p1, p2}, Lpq;-><init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 271
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lpq;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lpq;

    invoke-direct {v0, p0, p1}, Lpq;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public a(III)V
    .locals 6

    .prologue
    .line 367
    iget-object v0, p0, Lpq;->b:Lpr;

    iget-object v1, p0, Lpq;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lpr;->a(Ljava/lang/Object;IIII)V

    .line 368
    return-void
.end method

.method public a(IIII)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lpq;->b:Lpr;

    iget-object v1, p0, Lpq;->a:Ljava/lang/Object;

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v0 .. v9}, Lpr;->a(Ljava/lang/Object;IIIIIIII)V

    .line 409
    return-void
.end method

.method public a(IIIII)V
    .locals 7

    .prologue
    .line 384
    iget-object v0, p0, Lpq;->b:Lpr;

    iget-object v1, p0, Lpq;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lpr;->a(Ljava/lang/Object;IIIII)V

    .line 385
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lpq;->b:Lpr;

    iget-object v1, p0, Lpq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lpr;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lpq;->b:Lpr;

    iget-object v1, p0, Lpq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lpr;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public b(IIIII)V
    .locals 12

    .prologue
    .line 436
    iget-object v0, p0, Lpq;->b:Lpr;

    iget-object v1, p0, Lpq;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    move/from16 v9, p4

    move/from16 v11, p5

    invoke-interface/range {v0 .. v11}, Lpr;->a(Ljava/lang/Object;IIIIIIIIII)V

    .line 438
    return-void
.end method

.method public b(III)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 453
    iget-object v0, p0, Lpq;->b:Lpr;

    iget-object v1, p0, Lpq;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v5, v4

    move v6, v4

    move v7, p3

    invoke-interface/range {v0 .. v7}, Lpr;->a(Ljava/lang/Object;IIIIII)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lpq;->b:Lpr;

    iget-object v1, p0, Lpq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lpr;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lpq;->b:Lpr;

    iget-object v1, p0, Lpq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lpr;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lpq;->b:Lpr;

    iget-object v1, p0, Lpq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lpr;->h(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public f()F
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lpq;->b:Lpr;

    iget-object v1, p0, Lpq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lpr;->d(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lpq;->b:Lpr;

    iget-object v1, p0, Lpq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lpr;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lpq;->b:Lpr;

    iget-object v1, p0, Lpq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lpr;->f(Ljava/lang/Object;)V

    .line 462
    return-void
.end method
