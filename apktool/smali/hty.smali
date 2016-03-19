.class public Lhty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linu;
.implements Lioo;
.implements Lioq;
.implements Lios;
.implements Liov;
.implements Liow;
.implements Lioz;


# static fields
.field private static final a:Lhuo;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhtx;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lif",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lhur;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private e:Landroid/app/Activity;

.field private f:Lhum;

.field private g:Lhub;

.field private h:Lhuo;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lhua;

    invoke-direct {v0}, Lhua;-><init>()V

    sput-object v0, Lhty;->a:Lhuo;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Liog;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhty;->b:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lif;

    invoke-direct {v0}, Lif;-><init>()V

    iput-object v0, p0, Lhty;->c:Lif;

    .line 87
    sget-object v0, Lhty;->a:Lhuo;

    iput-object v0, p0, Lhty;->h:Lhuo;

    .line 99
    iput-object p1, p0, Lhty;->e:Landroid/app/Activity;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhty;->d:Ljava/lang/String;

    .line 101
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 102
    return-void
.end method

.method public constructor <init>(Lav;Liog;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhty;->b:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lif;

    invoke-direct {v0}, Lif;-><init>()V

    iput-object v0, p0, Lhty;->c:Lif;

    .line 87
    sget-object v0, Lhty;->a:Lhuo;

    iput-object v0, p0, Lhty;->h:Lhuo;

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhty;->d:Ljava/lang/String;

    .line 114
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 116
    return-void
.end method


# virtual methods
.method public X_()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lhty;->f:Lhum;

    invoke-virtual {v0, p0}, Lhum;->a(Lhty;)V

    .line 302
    return-void
.end method

.method public a(Lhtx;)Lhty;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lhty;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-object p0
.end method

.method public a(Ljava/lang/String;Lhur;)Lhty;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lhty;->c:Lif;

    invoke-virtual {v0, p1}, Lif;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 145
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    iget-object v1, p0, Lhty;->c:Lif;

    invoke-virtual {v1, p1, v0}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return-object p0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lhty;->f:Lhum;

    invoke-virtual {v0, p0}, Lhum;->b(Lhty;)V

    .line 307
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lhty;->e:Landroid/app/Activity;

    .line 276
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lhty;->e:Landroid/app/Activity;

    const-class v1, Lhum;

    .line 281
    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhum;

    iput-object v0, p0, Lhty;->f:Lhum;

    .line 283
    if-eqz p1, :cond_1

    .line 284
    const-string v0, "boc_background_tasks"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lhub;

    iput-object v0, p0, Lhty;->g:Lhub;

    .line 289
    :goto_0
    iget-boolean v0, p0, Lhty;->i:Z

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lhty;->e:Landroid/app/Activity;

    const-class v1, Lhup;

    .line 291
    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhup;

    .line 292
    if-eqz v0, :cond_0

    iget-object v1, p0, Lhty;->e:Landroid/app/Activity;

    instance-of v1, v1, Lba;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lhty;->e:Landroid/app/Activity;

    check-cast v1, Lba;

    invoke-virtual {v1}, Lba;->C_()Lbg;

    move-result-object v1

    .line 294
    iget-object v2, p0, Lhty;->e:Landroid/app/Activity;

    invoke-interface {v0, v2, v1}, Lhup;->a(Landroid/content/Context;Lbg;)Lhuo;

    move-result-object v0

    iput-object v0, p0, Lhty;->h:Lhuo;

    .line 297
    :cond_0
    return-void

    .line 286
    :cond_1
    new-instance v0, Lhub;

    iget-object v1, p0, Lhty;->f:Lhum;

    invoke-direct {v0, v1}, Lhub;-><init>(Lhum;)V

    iput-object v0, p0, Lhty;->g:Lhub;

    goto :goto_0
.end method

.method public a(Lhtu;)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lhty;->g:Lhub;

    invoke-virtual {v0, p1}, Lhub;->a(Lhtu;)V

    .line 360
    iget-object v0, p0, Lhty;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhtu;->c(Landroid/content/Context;)V

    .line 361
    iget-object v0, p0, Lhty;->f:Lhum;

    invoke-virtual {v0, p1, p0}, Lhum;->a(Lhtu;Lhty;)V

    .line 362
    return-void
.end method

.method a(Ljava/lang/String;Lhus;)V
    .locals 4

    .prologue
    .line 398
    iget-object v0, p0, Lhty;->g:Lhub;

    invoke-virtual {v0, p1}, Lhub;->b(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lhty;->h:Lhuo;

    invoke-virtual {v0, p1}, Lhuo;->a(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lhty;->h:Lhuo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhuo;->a(Z)V

    .line 406
    iget-object v0, p0, Lhty;->c:Lif;

    invoke-virtual {v0, p1}, Lif;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 407
    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 409
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v2, p0, Lhty;->h:Lhuo;

    .line 1089
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lhuo;->a(Z)V

    .line 408
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lhty;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 414
    iget-object v0, p0, Lhty;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhtx;

    iget-object v2, p0, Lhty;->h:Lhuo;

    invoke-interface {v0, p1, p2, v2}, Lhtx;->a(Ljava/lang/String;Lhus;Lhuo;)V

    .line 413
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 417
    :cond_1
    iget-object v0, p0, Lhty;->h:Lhuo;

    invoke-virtual {v0}, Lhuo;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Lhty;->h:Lhuo;

    invoke-virtual {v0, p2}, Lhuo;->a(Lhus;)Z

    .line 420
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lhty;->g:Lhub;

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lhty;->f:Lhum;

    invoke-virtual {v0, p0, p1}, Lhum;->a(Lhty;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Lhtx;)Lhty;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lhty;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    return-object p0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 320
    const-string v0, "boc_background_tasks"

    iget-object v1, p0, Lhty;->g:Lhub;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 321
    return-void
.end method

.method public b(Lhtu;)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lhty;->h:Lhuo;

    invoke-virtual {v0, p1}, Lhuo;->a(Lhtu;)V

    .line 372
    invoke-virtual {p0, p1}, Lhty;->a(Lhtu;)V

    .line 373
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lhty;->f:Lhum;

    invoke-virtual {v0, p0, p1}, Lhum;->c(Lhty;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method c()I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lhty;->g:Lhub;

    invoke-virtual {v0}, Lhub;->a()I

    move-result v0

    return v0
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lhty;->g:Lhub;

    invoke-virtual {v0, p1}, Lhub;->b(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method d(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lhty;->g:Lhub;

    invoke-virtual {v0, p1}, Lhub;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method d()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lhty;->g:Lhub;

    invoke-virtual {v0}, Lhub;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h_()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lhty;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lhty;->f:Lhum;

    invoke-virtual {v0, p0}, Lhum;->c(Lhty;)V

    .line 316
    :cond_0
    return-void
.end method
