.class public Laug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Laug",
        "<TCHI",
        "LD;",
        ">;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field a:I

.field b:F

.field c:Lakr;

.field public d:Lahs;

.field e:Landroid/graphics/drawable/Drawable;

.field f:I

.field g:Landroid/graphics/drawable/Drawable;

.field h:I

.field i:Z

.field public j:I

.field public k:I

.field l:Laiw;

.field m:Z

.field public n:Z

.field o:Landroid/graphics/drawable/Drawable;

.field p:I

.field public q:Laja;

.field r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lajd",
            "<*>;>;"
        }
    .end annotation
.end field

.field s:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public t:Z

.field u:Landroid/content/res/Resources$Theme;

.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laug;->b:F

    .line 71
    sget-object v0, Lakr;->e:Lakr;

    iput-object v0, p0, Laug;->c:Lakr;

    .line 72
    sget-object v0, Lahs;->c:Lahs;

    iput-object v0, p0, Laug;->d:Lahs;

    .line 77
    iput-boolean v2, p0, Laug;->i:Z

    .line 78
    iput v1, p0, Laug;->j:I

    .line 79
    iput v1, p0, Laug;->k:I

    .line 1014
    sget-object v0, Lavd;->b:Lavd;

    .line 80
    iput-object v0, p0, Laug;->l:Laiw;

    .line 82
    iput-boolean v2, p0, Laug;->n:Z

    .line 86
    new-instance v0, Laja;

    invoke-direct {v0}, Laja;-><init>()V

    iput-object v0, p0, Laug;->q:Laja;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laug;->r:Ljava/util/Map;

    .line 88
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Laug;->s:Ljava/lang/Class;

    return-void
.end method

.method private a(Landroid/content/Context;Lare;Lajd;)Laug;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lare;",
            "Lajd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 589
    :goto_0
    iget-boolean v0, p0, Laug;->v:Z

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p0}, Laug;->b()Laug;

    move-result-object p0

    goto :goto_0

    .line 593
    :cond_0
    invoke-virtual {p0, p2}, Laug;->a(Lare;)Laug;

    .line 594
    invoke-virtual {p0, p1, p3}, Laug;->b(Landroid/content/Context;Lajd;)Laug;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Class;Lajd;)Laug;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lajd",
            "<TT;>;)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 679
    :goto_0
    iget-boolean v0, p0, Laug;->v:Z

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p0}, Laug;->b()Laug;

    move-result-object p0

    goto :goto_0

    .line 8023
    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9023
    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 685
    iget-object v0, p0, Laug;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget v0, p0, Laug;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Laug;->a:I

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Laug;->n:Z

    .line 688
    iget v0, p0, Laug;->a:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Laug;->a:I

    .line 689
    invoke-virtual {p0}, Laug;->d()Laug;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Lare;Lajd;)Laug;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lare;",
            "Lajd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 599
    :goto_0
    iget-boolean v0, p0, Laug;->v:Z

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {p0}, Laug;->b()Laug;

    move-result-object p0

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {p0, p2}, Laug;->a(Lare;)Laug;

    .line 604
    invoke-virtual {p0, p1, p3}, Laug;->a(Landroid/content/Context;Lajd;)Laug;

    move-result-object v0

    return-object v0
.end method

.method private static b(II)Z
    .locals 1

    .prologue
    .line 943
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Laug;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 303
    :goto_0
    iget-boolean v0, p0, Laug;->v:Z

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Laug;->b()Laug;

    move-result-object p0

    goto :goto_0

    .line 307
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Laug;->i:Z

    .line 308
    iget v0, p0, Laug;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Laug;->a:I

    .line 310
    invoke-virtual {p0}, Laug;->d()Laug;

    move-result-object v0

    return-object v0
.end method

.method public final a(F)Laug;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 104
    :goto_0
    iget-boolean v0, p0, Laug;->v:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Laug;->b()Laug;

    move-result-object p0

    goto :goto_0

    .line 108
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_2
    iput p1, p0, Laug;->b:F

    .line 112
    iget v0, p0, Laug;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Laug;->a:I

    .line 114
    invoke-virtual {p0}, Laug;->d()Laug;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)Laug;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 323
    :goto_0
    iget-boolean v0, p0, Laug;->v:Z

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Laug;->b()Laug;

    move-result-object p0

    goto :goto_0

    .line 327
    :cond_0
    iput p1, p0, Laug;->k:I

    .line 328
    iput p2, p0, Laug;->j:I

    .line 329
    iget v0, p0, Laug;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Laug;->a:I

    .line 331
    invoke-virtual {p0}, Laug;->d()Laug;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lahs;)Laug;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahs;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 148
    :goto_0
    iget-boolean v0, p0, Laug;->v:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Laug;->b()Laug;

    move-result-object p0

    goto :goto_0

    .line 2023
    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    check-cast v0, Lahs;

    iput-object v0, p0, Laug;->d:Lahs;

    .line 153
    iget v0, p0, Laug;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Laug;->a:I

    .line 155
    invoke-virtual {p0}, Laug;->d()Laug;

    move-result-object v0

    return-object v0
.end method

.method public a(Lais;)Laug;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lais;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 455
    sget-object v0, Larm;->a:Laix;

    .line 6023
    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 455
    invoke-virtual {p0, v0, v1}, Laug;->a(Laix;Ljava/lang/Object;)Laug;

    move-result-object v0

    return-object v0
.end method

.method public final a(Laiw;)Laug;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laiw;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 358
    :goto_0
    iget-boolean v0, p0, Laug;->v:Z

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Laug;->b()Laug;

    move-result-object p0

    goto :goto_0

    .line 3023
    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 362
    check-cast v0, Laiw;

    iput-object v0, p0, Laug;->l:Laiw;

    .line 363
    iget v0, p0, Laug;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Laug;->a:I

    .line 364
    invoke-virtual {p0}, Laug;->d()Laug;

    move-result-object v0

    return-object v0
.end method

.method public final a(Laix;Ljava/lang/Object;)Laug;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Laix",
            "<TT;>;TT;)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 396
    :goto_0
    iget-boolean v0, p0, Laug;->v:Z

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Laug;->b()Laug;

    move-result-object p0

    goto :goto_0

    .line 4023
    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5023
    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Laug;->q:Laja;

    invoke-virtual {v0, p1, p2}, Laja;->a(Laix;Ljava/lang/Object;)Laja;

    .line 403
    invoke-virtual {p0}, Laug;->d()Laug;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lakr;)Laug;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakr;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 132
    :goto_0
    iget-boolean v0, p0, Laug;->v:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Laug;->b()Laug;

    move-result-object p0

    goto :goto_0

    .line 1023
    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    check-cast v0, Lakr;

    iput-object v0, p0, Laug;->c:Lakr;

    .line 136
    iget v0, p0, Laug;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Laug;->a:I

    .line 138
    invoke-virtual {p0}, Laug;->d()Laug;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Laug;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 487
    sget-object v0, Lare;->b:Lare;

    new-instance v1, Larb;

    invoke-direct {v1, p1}, Larb;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Laug;->a(Landroid/content/Context;Lare;Lajd;)Laug;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lajd;)Laug;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lajd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 623
    iget-boolean v0, p0, Laug;->v:Z

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p0}, Laug;->b()Laug;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laug;->a(Landroid/content/Context;Lajd;)Laug;

    move-result-object v0

    .line 630
    :goto_0
    return-object v0

    .line 627
    :cond_0
    invoke-virtual {p0, p1, p2}, Laug;->b(Landroid/content/Context;Lajd;)Laug;

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Laug;->m:Z

    .line 629
    iget v0, p0, Laug;->a:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Laug;->a:I

    .line 630
    invoke-virtual {p0}, Laug;->d()Laug;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lare;)Laug;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lare;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 473
    sget-object v0, Larm;->b:Laix;

    .line 7023
    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 473
    invoke-virtual {p0, v0, v1}, Laug;->a(Laix;Ljava/lang/Object;)Laug;

    move-result-object v0

    return-object v0
.end method

.method public final a(Laug;)Laug;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laug",
            "<*>;)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 750
    :goto_0
    iget-boolean v0, p0, Laug;->v:Z

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {p0}, Laug;->b()Laug;

    move-result-object p0

    goto :goto_0

    .line 754
    :cond_0
    iget v0, p1, Laug;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    iget v0, p1, Laug;->b:F

    iput v0, p0, Laug;->b:F

    .line 757
    :cond_1
    iget v0, p1, Laug;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    iget-object v0, p1, Laug;->c:Lakr;

    iput-object v0, p0, Laug;->c:Lakr;

    .line 760
    :cond_2
    iget v0, p1, Laug;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 761
    iget-object v0, p1, Laug;->d:Lahs;

    iput-object v0, p0, Laug;->d:Lahs;

    .line 763
    :cond_3
    iget v0, p1, Laug;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 764
    iget-object v0, p1, Laug;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Laug;->e:Landroid/graphics/drawable/Drawable;

    .line 766
    :cond_4
    iget v0, p1, Laug;->a:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 767
    iget v0, p1, Laug;->f:I

    iput v0, p0, Laug;->f:I

    .line 769
    :cond_5
    iget v0, p1, Laug;->a:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 770
    iget-object v0, p1, Laug;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Laug;->g:Landroid/graphics/drawable/Drawable;

    .line 772
    :cond_6
    iget v0, p1, Laug;->a:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 773
    iget v0, p1, Laug;->h:I

    iput v0, p0, Laug;->h:I

    .line 775
    :cond_7
    iget v0, p1, Laug;->a:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 776
    iget-boolean v0, p1, Laug;->i:Z

    iput-boolean v0, p0, Laug;->i:Z

    .line 778
    :cond_8
    iget v0, p1, Laug;->a:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 779
    iget v0, p1, Laug;->k:I

    iput v0, p0, Laug;->k:I

    .line 780
    iget v0, p1, Laug;->j:I

    iput v0, p0, Laug;->j:I

    .line 782
    :cond_9
    iget v0, p1, Laug;->a:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 783
    iget-object v0, p1, Laug;->l:Laiw;

    iput-object v0, p0, Laug;->l:Laiw;

    .line 785
    :cond_a
    iget v0, p1, Laug;->a:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 786
    iget-object v0, p1, Laug;->s:Ljava/lang/Class;

    iput-object v0, p0, Laug;->s:Ljava/lang/Class;

    .line 788
    :cond_b
    iget v0, p1, Laug;->a:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 789
    iget-object v0, p1, Laug;->o:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Laug;->o:Landroid/graphics/drawable/Drawable;

    .line 791
    :cond_c
    iget v0, p1, Laug;->a:I

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 792
    iget v0, p1, Laug;->p:I

    iput v0, p0, Laug;->p:I

    .line 794
    :cond_d
    iget v0, p1, Laug;->a:I

    const v1, 0x8000

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 795
    iget-object v0, p1, Laug;->u:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Laug;->u:Landroid/content/res/Resources$Theme;

    .line 797
    :cond_e
    iget v0, p1, Laug;->a:I

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 798
    iget-boolean v0, p1, Laug;->n:Z

    iput-boolean v0, p0, Laug;->n:Z

    .line 800
    :cond_f
    iget v0, p1, Laug;->a:I

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 801
    iget-boolean v0, p1, Laug;->m:Z

    iput-boolean v0, p0, Laug;->m:Z

    .line 803
    :cond_10
    iget v0, p1, Laug;->a:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Laug;->b(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 804
    iget-object v0, p0, Laug;->r:Ljava/util/Map;

    iget-object v1, p1, Laug;->r:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 808
    :cond_11
    iget-boolean v0, p0, Laug;->n:Z

    if-nez v0, :cond_12

    .line 809
    iget-object v0, p0, Laug;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 810
    iget v0, p0, Laug;->a:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Laug;->a:I

    .line 811
    const/4 v0, 0x0

    iput-boolean v0, p0, Laug;->m:Z

    .line 812
    iget v0, p0, Laug;->a:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Laug;->a:I

    .line 815
    :cond_12
    iget v0, p0, Laug;->a:I

    iget v1, p1, Laug;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Laug;->a:I

    .line 816
    iget-object v0, p0, Laug;->q:Laja;

    iget-object v1, p1, Laug;->q:Laja;

    invoke-virtual {v0, v1}, Laja;->a(Laja;)V

    .line 818
    invoke-virtual {p0}, Laug;->d()Laug;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Laug;->a:I

    invoke-static {v0, p1}, Laug;->b(II)Z

    move-result v0

    return v0
.end method

.method public final b()Laug;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laug;

    .line 383
    new-instance v1, Laja;

    invoke-direct {v1}, Laja;-><init>()V

    iput-object v1, v0, Laug;->q:Laja;

    .line 384
    iget-object v1, v0, Laug;->q:Laja;

    iget-object v2, p0, Laug;->q:Laja;

    invoke-virtual {v1, v2}, Laja;->a(Laja;)V

    .line 385
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Laug;->r:Ljava/util/Map;

    .line 386
    iget-object v1, v0, Laug;->r:Ljava/util/Map;

    iget-object v2, p0, Laug;->r:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 387
    const/4 v1, 0x0

    iput-boolean v1, v0, Laug;->t:Z

    .line 388
    const/4 v1, 0x0

    iput-boolean v1, v0, Laug;->v:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    return-object v0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Landroid/content/Context;)Laug;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 515
    sget-object v0, Lare;->a:Lare;

    new-instance v1, Larp;

    invoke-direct {v1, p1}, Larp;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Laug;->a(Landroid/content/Context;Lare;Lajd;)Laug;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Lajd;)Laug;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lajd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 648
    iget-boolean v0, p0, Laug;->v:Z

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {p0}, Laug;->b()Laug;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laug;->b(Landroid/content/Context;Lajd;)Laug;

    move-result-object v0

    .line 657
    :goto_0
    return-object v0

    .line 652
    :cond_0
    const-class v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p2}, Laug;->a(Ljava/lang/Class;Lajd;)Laug;

    .line 654
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v1, Laqw;

    invoke-direct {v1, p1, p2}, Laqw;-><init>(Landroid/content/Context;Lajd;)V

    invoke-direct {p0, v0, v1}, Laug;->a(Ljava/lang/Class;Lajd;)Laug;

    .line 656
    const-class v0, Lasn;

    new-instance v1, Lasq;

    invoke-direct {v1, p1, p2}, Lasq;-><init>(Landroid/content/Context;Lajd;)V

    invoke-direct {p0, v0, v1}, Laug;->a(Ljava/lang/Class;Lajd;)Laug;

    .line 657
    invoke-virtual {p0}, Laug;->d()Laug;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Laug;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 842
    iget-boolean v0, p0, Laug;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laug;->v:Z

    if-nez v0, :cond_0

    .line 843
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_0
    iput-boolean v1, p0, Laug;->v:Z

    .line 9828
    iput-boolean v1, p0, Laug;->t:Z

    .line 847
    return-object p0
.end method

.method public c(Landroid/content/Context;)Laug;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 529
    sget-object v0, Lare;->a:Lare;

    new-instance v1, Larp;

    invoke-direct {v1, p1}, Larp;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Laug;->b(Landroid/content/Context;Lare;Lajd;)Laug;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Laug;->b()Laug;

    move-result-object v0

    return-object v0
.end method

.method public d()Laug;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 852
    iget-boolean v0, p0, Laug;->t:Z

    if-eqz v0, :cond_0

    .line 853
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked RequestOptions, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_0
    return-object p0
.end method

.method public d(Landroid/content/Context;)Laug;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 543
    sget-object v0, Lare;->e:Lare;

    new-instance v1, Larc;

    invoke-direct {v1, p1}, Larc;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Laug;->a(Landroid/content/Context;Lare;Lajd;)Laug;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/content/Context;)Laug;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 557
    sget-object v0, Lare;->e:Lare;

    new-instance v1, Larc;

    invoke-direct {v1, p1}, Larc;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Laug;->b(Landroid/content/Context;Lare;Lajd;)Laug;

    move-result-object v0

    return-object v0
.end method
