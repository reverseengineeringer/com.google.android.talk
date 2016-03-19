.class public Lahw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latn;


# static fields
.field private static final b:Lauk;

.field private static final c:Lauk;

.field private static final d:Lauk;


# instance fields
.field final a:Latm;

.field private final e:Lahm;

.field private final f:Lats;

.field private final g:Latn;

.field private final h:Latv;

.field private final i:Ljava/lang/Runnable;

.field private final j:Landroid/os/Handler;

.field private final k:Latn;

.field private l:Laug;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laug",
            "<*>;"
        }
    .end annotation
.end field

.field private m:Laug;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laug",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lauk;->a(Ljava/lang/Class;)Lauk;

    move-result-object v0

    .line 1828
    iput-boolean v1, v0, Laug;->t:Z

    .line 50
    check-cast v0, Lauk;

    sput-object v0, Lahw;->b:Lauk;

    .line 51
    const-class v0, Lasn;

    invoke-static {v0}, Lauk;->a(Ljava/lang/Class;)Lauk;

    move-result-object v0

    .line 2828
    iput-boolean v1, v0, Laug;->t:Z

    .line 51
    check-cast v0, Lauk;

    sput-object v0, Lahw;->c:Lauk;

    .line 52
    sget-object v0, Lakr;->c:Lakr;

    .line 53
    invoke-static {v0}, Lauk;->b(Lakr;)Lauk;

    move-result-object v0

    sget-object v1, Lahs;->d:Lahs;

    invoke-virtual {v0, v1}, Lauk;->a(Lahs;)Laug;

    move-result-object v0

    check-cast v0, Lauk;

    .line 54
    invoke-virtual {v0}, Lauk;->a()Laug;

    move-result-object v0

    check-cast v0, Lauk;

    sput-object v0, Lahw;->d:Lauk;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Latm;Latn;)V
    .locals 6

    .prologue
    .line 76
    new-instance v4, Lats;

    invoke-direct {v4}, Lats;-><init>()V

    .line 77
    invoke-static {p1}, Lahk;->a(Landroid/content/Context;)Lahk;

    move-result-object v0

    invoke-virtual {v0}, Lahk;->c()Lati;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 76
    invoke-direct/range {v0 .. v5}, Lahw;-><init>(Landroid/content/Context;Latm;Latn;Lats;Lati;)V

    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Latm;Latn;Lats;Lati;)V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Latv;

    invoke-direct {v0}, Latv;-><init>()V

    iput-object v0, p0, Lahw;->h:Latv;

    .line 61
    new-instance v0, Lahx;

    invoke-direct {v0, p0}, Lahx;-><init>(Lahw;)V

    iput-object v0, p0, Lahw;->i:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lahw;->j:Landroid/os/Handler;

    .line 82
    invoke-static {p1}, Lahk;->a(Landroid/content/Context;)Lahk;

    move-result-object v0

    invoke-virtual {v0}, Lahk;->d()Lahm;

    move-result-object v0

    iput-object v0, p0, Lahw;->e:Lahm;

    .line 83
    iput-object p2, p0, Lahw;->a:Latm;

    .line 84
    iput-object p3, p0, Lahw;->g:Latn;

    .line 85
    iput-object p4, p0, Lahw;->f:Lats;

    .line 87
    new-instance v1, Lath;

    invoke-direct {v1, p4}, Lath;-><init>(Lats;)V

    .line 1019
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 1020
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1021
    :goto_0
    if-eqz v0, :cond_1

    .line 1022
    new-instance v0, Latj;

    invoke-direct {v0, p1, v1}, Latj;-><init>(Landroid/content/Context;Lath;)V

    .line 88
    :goto_1
    iput-object v0, p0, Lahw;->k:Latn;

    .line 94
    invoke-static {}, Lavq;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lahw;->j:Landroid/os/Handler;

    iget-object v1, p0, Lahw;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    :goto_2
    iget-object v0, p0, Lahw;->k:Latn;

    invoke-interface {p2, v0}, Latm;->a(Latn;)V

    .line 101
    iget-object v0, p0, Lahw;->e:Lahm;

    invoke-virtual {v0}, Lahm;->a()Lauk;

    move-result-object v0

    iput-object v0, p0, Lahw;->l:Laug;

    .line 102
    iget-object v0, p0, Lahw;->l:Laug;

    iput-object v0, p0, Lahw;->m:Laug;

    .line 104
    invoke-static {p1}, Lahk;->a(Landroid/content/Context;)Lahk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lahk;->a(Lahw;)V

    .line 105
    return-void

    .line 1020
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1024
    :cond_1
    new-instance v0, Lato;

    invoke-direct {v0}, Lato;-><init>()V

    goto :goto_1

    .line 97
    :cond_2
    invoke-interface {p2, p0}, Latm;->a(Latn;)V

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lahu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TResourceType;>;)",
            "Lahu",
            "<TResourceType;>;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Lahu;

    iget-object v1, p0, Lahw;->e:Lahm;

    invoke-direct {v0, v1, p0, p1}, Lahu;-><init>(Lahm;Lahw;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lahu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lahu",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0}, Lahw;->h()Lahu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lahu;->a(Ljava/lang/Object;)Lahu;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lahw;->e:Lahm;

    invoke-virtual {v0}, Lahm;->onLowMemory()V

    .line 167
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lahw;->e:Lahm;

    invoke-virtual {v0, p1}, Lahm;->onTrimMemory(I)V

    .line 160
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 390
    new-instance v0, Lahz;

    invoke-direct {v0, p1}, Lahz;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lahw;->a(Lauw;)V

    .line 391
    return-void
.end method

.method public a(Lauw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauw",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 400
    if-nez p1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-static {}, Lavq;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1417
    invoke-virtual {p0, p1}, Lahw;->b(Lauw;)Z

    move-result v0

    .line 1418
    if-nez v0, :cond_0

    .line 1419
    iget-object v0, p0, Lahw;->e:Lahm;

    invoke-static {v0}, Lahk;->a(Landroid/content/Context;)Lahk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lahk;->a(Lauw;)V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v0, p0, Lahw;->j:Landroid/os/Handler;

    new-instance v1, Lahy;

    invoke-direct {v1, p0, p1}, Lahy;-><init>(Lahw;Lauw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method a(Lauw;Lauh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauw",
            "<*>;",
            "Lauh;",
            ")V"
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lahw;->h:Latv;

    invoke-virtual {v0, p1}, Latv;->a(Lauw;)V

    .line 441
    iget-object v0, p0, Lahw;->f:Lats;

    invoke-virtual {v0, p2}, Lats;->a(Lauh;)V

    .line 442
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lavq;->a()V

    .line 188
    iget-object v0, p0, Lahw;->f:Lats;

    invoke-virtual {v0}, Lats;->a()V

    .line 189
    return-void
.end method

.method b(Lauw;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauw",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 424
    invoke-virtual {p1}, Lauw;->b()Lauh;

    move-result-object v1

    .line 426
    if-nez v1, :cond_0

    .line 435
    :goto_0
    return v0

    .line 430
    :cond_0
    iget-object v2, p0, Lahw;->f:Lats;

    invoke-virtual {v2, v1}, Lats;->b(Lauh;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    iget-object v1, p0, Lahw;->h:Latv;

    invoke-virtual {v1, p1}, Latv;->b(Lauw;)V

    .line 432
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lauw;->a(Lauh;)V

    goto :goto_0

    .line 435
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lavq;->a()V

    .line 221
    iget-object v0, p0, Lahw;->f:Lats;

    invoke-virtual {v0}, Lats;->b()V

    .line 222
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lahw;->b()V

    .line 255
    iget-object v0, p0, Lahw;->h:Latv;

    invoke-virtual {v0}, Latv;->e()V

    .line 256
    return-void
.end method

.method public g()Lahu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lahu",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lahw;->a(Ljava/lang/Class;)Lahu;

    move-result-object v0

    new-instance v1, Laia;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Laia;-><init>(C)V

    invoke-virtual {v0, v1}, Lahu;->a(Laia;)Lahu;

    move-result-object v0

    sget-object v1, Lahw;->b:Lauk;

    invoke-virtual {v0, v1}, Lahu;->a(Laug;)Lahu;

    move-result-object v0

    return-object v0
.end method

.method public h()Lahu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lahu",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lahw;->a(Ljava/lang/Class;)Lahu;

    move-result-object v0

    new-instance v1, Laia;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Laia;-><init>(S)V

    invoke-virtual {v0, v1}, Lahu;->a(Laia;)Lahu;

    move-result-object v0

    return-object v0
.end method

.method public h_()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lahw;->h:Latv;

    invoke-virtual {v0}, Latv;->h_()V

    .line 265
    iget-object v0, p0, Lahw;->h:Latv;

    invoke-virtual {v0}, Latv;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauw;

    .line 266
    invoke-virtual {p0, v0}, Lahw;->a(Lauw;)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lahw;->h:Latv;

    invoke-virtual {v0}, Latv;->b()V

    .line 269
    iget-object v0, p0, Lahw;->f:Lats;

    invoke-virtual {v0}, Lats;->c()V

    .line 270
    iget-object v0, p0, Lahw;->a:Latm;

    invoke-interface {v0, p0}, Latm;->b(Latn;)V

    .line 271
    iget-object v0, p0, Lahw;->a:Latm;

    iget-object v1, p0, Lahw;->k:Latn;

    invoke-interface {v0, v1}, Latm;->b(Latn;)V

    .line 272
    iget-object v0, p0, Lahw;->j:Landroid/os/Handler;

    iget-object v1, p0, Lahw;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    iget-object v0, p0, Lahw;->e:Lahm;

    invoke-static {v0}, Lahk;->a(Landroid/content/Context;)Lahk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lahk;->b(Lahw;)V

    .line 274
    return-void
.end method

.method i()Laug;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laug",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lahw;->m:Laug;

    return-object v0
.end method

.method public s_()V
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lahw;->c()V

    .line 245
    iget-object v0, p0, Lahw;->h:Latv;

    invoke-virtual {v0}, Latv;->s_()V

    .line 246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 450
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lahw;->f:Lats;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lahw;->g:Latn;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "{tracker="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
