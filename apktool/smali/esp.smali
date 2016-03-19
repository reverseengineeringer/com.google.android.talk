.class final Lesp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lawp;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Lesp;->a:Landroid/content/Context;

    .line 364
    return-void
.end method

.method private static a(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 404
    invoke-static {p0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lbfd;->v()Ljava/lang/String;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_0

    invoke-static {v0}, Lezm;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 406
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lesp;->a:Landroid/content/Context;

    const-class v2, Lawo;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    .line 392
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v3

    .line 393
    invoke-static {}, Ldvd;->e()[I

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget v6, v4, v2

    .line 394
    invoke-interface {v0, v6}, Lawo;->f(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 395
    invoke-static {v6, v3}, Lesp;->a(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 396
    const/4 v0, 0x1

    .line 399
    :goto_1
    return v0

    .line 393
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 399
    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 384
    :goto_0
    return v0

    .line 373
    :cond_0
    iget-object v0, p0, Lesp;->a:Landroid/content/Context;

    const-class v2, Lhpz;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1}, Lhpz;->b(Ljava/lang/String;)I

    move-result v2

    .line 374
    const/4 v0, -0x1

    if-ne v2, v0, :cond_1

    move v0, v1

    .line 375
    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lesp;->a:Landroid/content/Context;

    const-class v3, Lawo;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    .line 379
    invoke-interface {v0, v2}, Lawo;->f(I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 380
    goto :goto_0

    .line 384
    :cond_2
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lesp;->a(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
