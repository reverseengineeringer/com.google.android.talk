.class public final Laum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lauh;
.implements Laul;
.implements Lauv;
.implements Lavy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lauh;",
        "Laul;",
        "Lauv;",
        "Lavy;"
    }
.end annotation


# static fields
.field public static final a:Lic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic",
            "<",
            "Laum",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public b:Laui;

.field public c:Lahm;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field public f:Laug;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laug",
            "<*>;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:Lahs;

.field public j:Lauw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lauw",
            "<TR;>;"
        }
    .end annotation
.end field

.field public k:Lauj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lauj",
            "<TR;>;"
        }
    .end annotation
.end field

.field public l:Lalh;

.field public m:Lavc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lavc",
            "<-TR;>;"
        }
    .end annotation
.end field

.field public n:I

.field private final o:Ljava/lang/String;

.field private final p:Lawa;

.field private q:Lalr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lalr",
            "<TR;>;"
        }
    .end annotation
.end field

.field private r:Lalb;

.field private s:J

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Laun;

    invoke-direct {v0}, Laun;-><init>()V

    invoke-static {v0}, Lavs;->a(Lavw;)Lic;

    move-result-object v0

    sput-object v0, Laum;->a:Lic;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laum;->o:Ljava/lang/String;

    .line 1016
    new-instance v0, Lawb;

    .line 1033
    invoke-direct {v0}, Lawb;-><init>()V

    .line 82
    iput-object v0, p0, Laum;->p:Lawa;

    .line 142
    return-void
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Laum;->c:Lahm;

    invoke-virtual {v0}, Lahm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 346
    iget-object v1, p0, Laum;->f:Laug;

    .line 5903
    iget-object v1, v1, Laug;->u:Landroid/content/res/Resources$Theme;

    .line 6059
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 7027
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6060
    :goto_0
    return-object v0

    .line 6062
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lalm;I)V
    .locals 6

    .prologue
    .line 496
    iget-object v0, p0, Laum;->p:Lawa;

    invoke-virtual {v0}, Lawa;->a()V

    .line 497
    iget-object v0, p0, Laum;->c:Lahm;

    invoke-virtual {v0}, Lahm;->d()I

    move-result v0

    .line 498
    if-gt v0, p2, :cond_0

    .line 499
    iget-object v1, p0, Laum;->d:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Laum;->w:I

    iget v3, p0, Laum;->x:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x34

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Load failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " with size ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 501
    const-string v0, "Glide"

    invoke-virtual {p1, v0}, Lalm;->a(Ljava/lang/String;)V

    .line 505
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Laum;->r:Lalb;

    .line 506
    sget v0, Lauo;->e:I

    iput v0, p0, Laum;->n:I

    .line 508
    iget-object v0, p0, Laum;->k:Lauj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laum;->k:Lauj;

    .line 509
    invoke-direct {p0}, Laum;->m()Z

    .line 508
    invoke-interface {v0, p1}, Lauj;->a(Lalm;)Z

    .line 14350
    :cond_1
    invoke-direct {p0}, Laum;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14354
    iget-object v0, p0, Laum;->d:Ljava/lang/Object;

    if-nez v0, :cond_4

    invoke-direct {p0}, Laum;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 14355
    :goto_0
    if-nez v0, :cond_2

    .line 14356
    invoke-direct {p0}, Laum;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 14358
    :cond_2
    iget-object v1, p0, Laum;->j:Lauw;

    invoke-virtual {v1, v0}, Lauw;->c(Landroid/graphics/drawable/Drawable;)V

    .line 512
    :cond_3
    return-void

    .line 15315
    :cond_4
    iget-object v0, p0, Laum;->t:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 15316
    iget-object v0, p0, Laum;->f:Laug;

    .line 15879
    iget-object v0, v0, Laug;->e:Landroid/graphics/drawable/Drawable;

    .line 15316
    iput-object v0, p0, Laum;->t:Landroid/graphics/drawable/Drawable;

    .line 15317
    iget-object v0, p0, Laum;->t:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    iget-object v0, p0, Laum;->f:Laug;

    .line 15883
    iget v0, v0, Laug;->f:I

    .line 15317
    if-lez v0, :cond_5

    .line 15318
    iget-object v0, p0, Laum;->f:Laug;

    .line 16883
    iget v0, v0, Laug;->f:I

    .line 15318
    invoke-direct {p0, v0}, Laum;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Laum;->t:Landroid/graphics/drawable/Drawable;

    .line 15321
    :cond_5
    iget-object v0, p0, Laum;->t:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private a(Lalr;)V
    .locals 2

    .prologue
    .line 1259
    invoke-static {}, Lavq;->a()V

    .line 1260
    instance-of v0, p1, Lalk;

    if-eqz v0, :cond_0

    .line 1261
    check-cast p1, Lalk;

    invoke-virtual {p1}, Lalk;->g()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Laum;->q:Lalr;

    .line 287
    return-void

    .line 1263
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 515
    iget-object v0, p0, Laum;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    return-void
.end method

.method private j()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Laum;->u:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Laum;->f:Laug;

    .line 1891
    iget-object v0, v0, Laug;->g:Landroid/graphics/drawable/Drawable;

    .line 326
    iput-object v0, p0, Laum;->u:Landroid/graphics/drawable/Drawable;

    .line 327
    iget-object v0, p0, Laum;->u:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Laum;->f:Laug;

    .line 2887
    iget v0, v0, Laug;->h:I

    .line 327
    if-lez v0, :cond_0

    .line 328
    iget-object v0, p0, Laum;->f:Laug;

    .line 3887
    iget v0, v0, Laug;->h:I

    .line 328
    invoke-direct {p0, v0}, Laum;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Laum;->u:Landroid/graphics/drawable/Drawable;

    .line 331
    :cond_0
    iget-object v0, p0, Laum;->u:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private k()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Laum;->v:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Laum;->f:Laug;

    .line 3899
    iget-object v0, v0, Laug;->o:Landroid/graphics/drawable/Drawable;

    .line 336
    iput-object v0, p0, Laum;->v:Landroid/graphics/drawable/Drawable;

    .line 337
    iget-object v0, p0, Laum;->v:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Laum;->f:Laug;

    .line 4895
    iget v0, v0, Laug;->p:I

    .line 337
    if-lez v0, :cond_0

    .line 338
    iget-object v0, p0, Laum;->f:Laug;

    .line 5895
    iget v0, v0, Laug;->p:I

    .line 338
    invoke-direct {p0, v0}, Laum;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Laum;->v:Landroid/graphics/drawable/Drawable;

    .line 341
    :cond_0
    iget-object v0, p0, Laum;->v:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Laum;->b:Laui;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laum;->b:Laui;

    invoke-interface {v0, p0}, Laui;->b(Lauh;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Laum;->b:Laui;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laum;->b:Laui;

    invoke-interface {v0}, Laui;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Laum;->p:Lawa;

    invoke-virtual {v0}, Lawa;->a()V

    .line 201
    invoke-static {}, Lavm;->a()J

    move-result-wide v0

    iput-wide v0, p0, Laum;->s:J

    .line 202
    iget-object v0, p0, Laum;->d:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 203
    iget v0, p0, Laum;->g:I

    iget v1, p0, Laum;->h:I

    invoke-static {v0, v1}, Lavq;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget v0, p0, Laum;->g:I

    iput v0, p0, Laum;->w:I

    .line 205
    iget v0, p0, Laum;->h:I

    iput v0, p0, Laum;->x:I

    .line 209
    :cond_0
    invoke-direct {p0}, Laum;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    .line 210
    :goto_0
    new-instance v1, Lalm;

    const-string v2, "Received null model"

    invoke-direct {v1, v2}, Lalm;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Laum;->a(Lalm;I)V

    .line 228
    :cond_1
    :goto_1
    return-void

    .line 209
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 214
    :cond_3
    sget v0, Lauo;->c:I

    iput v0, p0, Laum;->n:I

    .line 215
    iget v0, p0, Laum;->g:I

    iget v1, p0, Laum;->h:I

    invoke-static {v0, v1}, Lavq;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 216
    iget v0, p0, Laum;->g:I

    iget v1, p0, Laum;->h:I

    invoke-virtual {p0, v0, v1}, Laum;->a(II)V

    .line 221
    :goto_2
    iget v0, p0, Laum;->n:I

    sget v1, Lauo;->b:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Laum;->n:I

    sget v1, Lauo;->c:I

    if-ne v0, v1, :cond_5

    .line 222
    :cond_4
    invoke-direct {p0}, Laum;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    iget-object v0, p0, Laum;->j:Lauw;

    invoke-direct {p0}, Laum;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lauw;->b(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :cond_5
    const-string v0, "Request"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-wide v0, p0, Laum;->s:J

    invoke-static {v0, v1}, Lavm;->a(J)D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "finished run method in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laum;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_6
    iget-object v0, p0, Laum;->j:Lauw;

    invoke-virtual {v0, p0}, Lauw;->a(Lauv;)V

    goto :goto_2
.end method

.method public a(II)V
    .locals 17

    .prologue
    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Laum;->p:Lawa;

    invoke-virtual {v2}, Lawa;->a()V

    .line 367
    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-wide v2, v0, Laum;->s:J

    invoke-static {v2, v3}, Lavm;->a(J)D

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Got onSizeReady in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Laum;->a(Ljava/lang/String;)V

    .line 370
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Laum;->n:I

    sget v3, Lauo;->c:I

    if-eq v2, v3, :cond_2

    .line 400
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    sget v2, Lauo;->b:I

    move-object/from16 v0, p0

    iput v2, v0, Laum;->n:I

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Laum;->f:Laug;

    .line 7935
    iget v2, v2, Laug;->b:F

    .line 376
    move/from16 v0, p1

    int-to-float v3, v0

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Laum;->w:I

    .line 377
    move/from16 v0, p2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Laum;->x:I

    .line 379
    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 380
    move-object/from16 v0, p0

    iget-wide v2, v0, Laum;->s:J

    invoke-static {v2, v3}, Lavm;->a(J)D

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x3b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "finished setup for calling load in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Laum;->a(Ljava/lang/String;)V

    .line 382
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Laum;->l:Lalh;

    move-object/from16 v0, p0

    iget-object v3, v0, Laum;->c:Lahm;

    move-object/from16 v0, p0

    iget-object v4, v0, Laum;->d:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Laum;->f:Laug;

    .line 8911
    iget-object v5, v5, Laug;->l:Laiw;

    .line 385
    move-object/from16 v0, p0

    iget v6, v0, Laum;->w:I

    move-object/from16 v0, p0

    iget v7, v0, Laum;->x:I

    move-object/from16 v0, p0

    iget-object v8, v0, Laum;->f:Laug;

    .line 9871
    iget-object v8, v8, Laug;->s:Ljava/lang/Class;

    .line 388
    move-object/from16 v0, p0

    iget-object v9, v0, Laum;->e:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v10, v0, Laum;->i:Lahs;

    move-object/from16 v0, p0

    iget-object v11, v0, Laum;->f:Laug;

    .line 9875
    iget-object v11, v11, Laug;->c:Lakr;

    .line 391
    move-object/from16 v0, p0

    iget-object v12, v0, Laum;->f:Laug;

    .line 10859
    iget-object v12, v12, Laug;->r:Ljava/util/Map;

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Laum;->f:Laug;

    .line 10863
    iget-boolean v13, v13, Laug;->m:Z

    .line 393
    move-object/from16 v0, p0

    iget-object v14, v0, Laum;->f:Laug;

    .line 10867
    iget-object v14, v14, Laug;->q:Laja;

    .line 394
    move-object/from16 v0, p0

    iget-object v15, v0, Laum;->f:Laug;

    .line 10907
    iget-boolean v15, v15, Laug;->i:Z

    move-object/from16 v16, p0

    .line 382
    invoke-virtual/range {v2 .. v16}, Lalh;->a(Lahm;Ljava/lang/Object;Laiw;IILjava/lang/Class;Ljava/lang/Class;Lahs;Lakr;Ljava/util/Map;ZLaja;ZLaul;)Lalb;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Laum;->r:Lalb;

    .line 397
    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    move-object/from16 v0, p0

    iget-wide v2, v0, Laum;->s:J

    invoke-static {v2, v3}, Lavm;->a(J)D

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "finished onSizeReady in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Laum;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Lalm;)V
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Laum;->a(Lalm;I)V

    .line 493
    return-void
.end method

.method public a(Lalr;Lair;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalr",
            "<*>;",
            "Lair;",
            ")V"
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Laum;->p:Lawa;

    invoke-virtual {v0}, Lawa;->a()V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Laum;->r:Lalb;

    .line 428
    if-nez p1, :cond_1

    .line 429
    new-instance v0, Lalm;

    const-string v1, "Expected to receive a Resource<R> with an object of "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laum;->e:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inside, but instead got null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lalm;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0, v0}, Laum;->a(Lalm;)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-interface {p1}, Lalr;->c()Ljava/lang/Object;

    move-result-object v1

    .line 436
    if-eqz v1, :cond_2

    iget-object v0, p0, Laum;->e:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 437
    :cond_2
    invoke-direct {p0, p1}, Laum;->a(Lalr;)V

    .line 438
    new-instance v2, Lalm;

    iget-object v0, p0, Laum;->e:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_3

    .line 440
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_4

    .line 442
    const-string v0, ""

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x47

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Expected to receive an object of "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but instead got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "} inside Resource{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lalm;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0, v2}, Laum;->a(Lalm;)V

    goto/16 :goto_0

    .line 440
    :cond_3
    const-string v0, ""

    goto/16 :goto_1

    .line 442
    :cond_4
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_2

    .line 11403
    :cond_5
    iget-object v0, p0, Laum;->b:Laui;

    if-eqz v0, :cond_6

    iget-object v0, p0, Laum;->b:Laui;

    invoke-interface {v0, p0}, Laui;->a(Lauh;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    .line 448
    :goto_3
    if-nez v0, :cond_8

    .line 449
    invoke-direct {p0, p1}, Laum;->a(Lalr;)V

    .line 451
    sget v0, Lauo;->d:I

    iput v0, p0, Laum;->n:I

    goto/16 :goto_0

    .line 11403
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 11467
    :cond_8
    invoke-direct {p0}, Laum;->m()Z

    .line 11468
    sget v0, Lauo;->d:I

    iput v0, p0, Laum;->n:I

    .line 11469
    iput-object p1, p0, Laum;->q:Lalr;

    .line 11471
    iget-object v0, p0, Laum;->c:Lahm;

    invoke-virtual {v0}, Lahm;->d()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_9

    .line 11472
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Laum;->d:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Laum;->w:I

    iget v5, p0, Laum;->x:I

    iget-wide v6, p0, Laum;->s:J

    .line 11474
    invoke-static {v6, v7}, Lavm;->a(J)D

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x5f

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Finished loading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " from "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with size ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11477
    :cond_9
    iget-object v0, p0, Laum;->k:Lauj;

    if-eqz v0, :cond_a

    iget-object v0, p0, Laum;->k:Lauj;

    .line 11478
    invoke-interface {v0}, Lauj;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 13011
    :cond_a
    sget-object v0, Lava;->a:Lava;

    .line 11481
    iget-object v0, p0, Laum;->j:Lauw;

    invoke-virtual {v0, v1}, Lauw;->a(Ljava/lang/Object;)V

    .line 13415
    :cond_b
    iget-object v0, p0, Laum;->b:Laui;

    if-eqz v0, :cond_0

    .line 13416
    iget-object v0, p0, Laum;->b:Laui;

    invoke-interface {v0, p0}, Laui;->c(Lauh;)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Laum;->c()V

    .line 281
    sget v0, Lauo;->h:I

    iput v0, p0, Laum;->n:I

    .line 282
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 257
    invoke-static {}, Lavq;->a()V

    .line 258
    iget v0, p0, Laum;->n:I

    sget v1, Lauo;->g:I

    if-ne v0, v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 1239
    :cond_0
    iget-object v0, p0, Laum;->p:Lawa;

    invoke-virtual {v0}, Lawa;->a()V

    .line 1240
    sget v0, Lauo;->f:I

    iput v0, p0, Laum;->n:I

    .line 1241
    iget-object v0, p0, Laum;->r:Lalb;

    if-eqz v0, :cond_1

    .line 1242
    iget-object v0, p0, Laum;->r:Lalb;

    invoke-virtual {v0}, Lalb;->a()V

    .line 1243
    const/4 v0, 0x0

    iput-object v0, p0, Laum;->r:Lalb;

    .line 263
    :cond_1
    iget-object v0, p0, Laum;->q:Lalr;

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Laum;->q:Lalr;

    invoke-direct {p0, v0}, Laum;->a(Lalr;)V

    .line 266
    :cond_2
    invoke-direct {p0}, Laum;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Laum;->j:Lauw;

    invoke-direct {p0}, Laum;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lauw;->d(Landroid/graphics/drawable/Drawable;)V

    .line 270
    :cond_3
    sget v0, Lauo;->g:I

    iput v0, p0, Laum;->n:I

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Laum;->n:I

    sget v1, Lauo;->b:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Laum;->n:I

    sget v1, Lauo;->c:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Laum;->n:I

    sget v1, Lauo;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Laum;->f()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 306
    iget v0, p0, Laum;->n:I

    sget v1, Lauo;->f:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Laum;->n:I

    sget v1, Lauo;->g:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Laum;->c:Lahm;

    .line 180
    iput-object v0, p0, Laum;->d:Ljava/lang/Object;

    .line 181
    iput-object v0, p0, Laum;->e:Ljava/lang/Class;

    .line 182
    iput-object v0, p0, Laum;->f:Laug;

    .line 183
    iput v1, p0, Laum;->g:I

    .line 184
    iput v1, p0, Laum;->h:I

    .line 185
    iput-object v0, p0, Laum;->j:Lauw;

    .line 186
    iput-object v0, p0, Laum;->k:Lauj;

    .line 187
    iput-object v0, p0, Laum;->b:Laui;

    .line 188
    iput-object v0, p0, Laum;->m:Lavc;

    .line 189
    iput-object v0, p0, Laum;->r:Lalb;

    .line 190
    iput-object v0, p0, Laum;->t:Landroid/graphics/drawable/Drawable;

    .line 191
    iput-object v0, p0, Laum;->u:Landroid/graphics/drawable/Drawable;

    .line 192
    iput-object v0, p0, Laum;->v:Landroid/graphics/drawable/Drawable;

    .line 193
    iput v1, p0, Laum;->w:I

    .line 194
    iput v1, p0, Laum;->x:I

    .line 195
    sget-object v0, Laum;->a:Lic;

    invoke-interface {v0, p0}, Lic;->a(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public i_()Lawa;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Laum;->p:Lawa;

    return-object v0
.end method
