.class public abstract Ligp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ligr;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ligr;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ligs;

.field public final g:Ligq;

.field public volatile h:Ljava/lang/Object;

.field public volatile i:I

.field public volatile j:I

.field public volatile k:I

.field public l:Z

.field public m:Z

.field public volatile n:Z


# direct methods
.method public constructor <init>(Ligs;Ligq;)V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Ligp;->f:Ligs;

    .line 118
    iput-object p2, p0, Ligp;->g:Ligq;

    .line 119
    const-string v0, "EsResource"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Ligp;->l:Z

    .line 120
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 315
    iget-boolean v0, p0, Ligp;->m:Z

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Registering/unregistering resource while delivering status change notification"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ligr;)V
    .locals 2

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 481
    const-string v0, " context: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 483
    :cond_0
    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    packed-switch p0, :pswitch_data_0

    .line 172
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    const-string v0, "canceled"

    goto :goto_0

    .line 164
    :pswitch_1
    const-string v0, "loading"

    goto :goto_0

    .line 165
    :pswitch_2
    const-string v0, "not found"

    goto :goto_0

    .line 166
    :pswitch_3
    const-string v0, "out of memory"

    goto :goto_0

    .line 167
    :pswitch_4
    const-string v0, "permanent error"

    goto :goto_0

    .line 168
    :pswitch_5
    const-string v0, "ready"

    goto :goto_0

    .line 169
    :pswitch_6
    const-string v0, "transient error"

    goto :goto_0

    .line 170
    :pswitch_7
    const-string v0, "undefined"

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .prologue
    .line 400
    iget v0, p0, Ligp;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 401
    invoke-virtual {p0}, Ligp;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Ligp;->g:Ligq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {p0}, Ligp;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {p1}, Ligp;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x60

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

    const-string v4, "Request no longer needed, not delivering status change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", current status: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ignored new status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {p0}, Ligp;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Ligp;->g:Ligq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-static {p1}, Ligp;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Delivering error code to consumers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_2
    iget-object v0, p0, Ligp;->f:Ligs;

    invoke-interface {v0, p0, p1}, Ligs;->a(Ligp;I)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 421
    const/16 v0, 0x194

    if-ne p1, v0, :cond_0

    .line 422
    iget-object v0, p0, Ligp;->f:Ligs;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1}, Ligs;->a(Ligp;I)V

    .line 428
    :goto_0
    return-void

    .line 423
    :cond_0
    const/16 v0, 0x191

    if-ne p1, v0, :cond_1

    .line 424
    iget-object v0, p0, Ligp;->f:Ligs;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, p1}, Ligs;->a(Ligp;II)V

    goto :goto_0

    .line 426
    :cond_1
    iget-object v0, p0, Ligp;->f:Ligs;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, p1}, Ligs;->a(Ligp;II)V

    goto :goto_0
.end method

.method public a(Ligr;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 244
    invoke-static {}, Laal;->w()V

    .line 245
    invoke-direct {p0}, Ligp;->a()V

    .line 1301
    iget-object v2, p0, Ligp;->a:Ligr;

    if-ne v2, p1, :cond_0

    move v2, v1

    .line 247
    :goto_0
    if-eqz v2, :cond_3

    .line 270
    :goto_1
    return-void

    .line 1303
    :cond_0
    iget-object v2, p0, Ligp;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1304
    iget-object v2, p0, Ligp;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    .line 1305
    :goto_2
    if-ge v2, v3, :cond_2

    .line 1306
    iget-object v4, p0, Ligp;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1

    move v2, v1

    .line 1307
    goto :goto_0

    .line 1305
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v0

    .line 1311
    goto :goto_0

    .line 252
    :cond_3
    iget-object v2, p0, Ligp;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 253
    iget-object v0, p0, Ligp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 254
    iget-object v1, p0, Ligp;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :goto_3
    if-eqz v0, :cond_4

    .line 266
    iget-object v0, p0, Ligp;->f:Ligs;

    invoke-interface {v0, p0}, Ligs;->a(Ligp;)V

    .line 269
    :cond_4
    invoke-interface {p1, p0}, Ligr;->a(Ligp;)V

    goto :goto_1

    .line 255
    :cond_5
    iget-object v2, p0, Ligp;->a:Ligr;

    if-eqz v2, :cond_6

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ligp;->b:Ljava/util/ArrayList;

    .line 257
    iget-object v1, p0, Ligp;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Ligp;->a:Ligr;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Ligp;->a:Ligr;

    .line 259
    iget-object v1, p0, Ligp;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 261
    :cond_6
    iput-object p1, p0, Ligp;->a:Ligr;

    move v0, v1

    .line 262
    goto :goto_3
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 234
    const-string v0, "EsResource"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public b(Ligr;)V
    .locals 3

    .prologue
    .line 277
    invoke-static {}, Laal;->w()V

    .line 278
    invoke-direct {p0}, Ligp;->a()V

    .line 279
    iget-object v0, p0, Ligp;->a:Ligr;

    if-ne v0, p1, :cond_1

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Ligp;->a:Ligr;

    .line 281
    iget-object v0, p0, Ligp;->f:Ligs;

    invoke-interface {v0, p0}, Ligs;->b(Ligp;)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Ligp;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Ligp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 284
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 285
    iget-object v2, p0, Ligp;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 286
    iget-object v1, p0, Ligp;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 291
    :cond_2
    iget-object v0, p0, Ligp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Ligp;->f:Ligs;

    invoke-interface {v0, p0}, Ligs;->b(Ligp;)V

    goto :goto_0

    .line 284
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Ligp;->f:Ligs;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, p1}, Ligs;->a(Ligp;ILjava/lang/Object;)V

    .line 385
    return-void
.end method

.method public abstract c()V
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 154
    iput p1, p0, Ligp;->i:I

    .line 155
    return-void
.end method

.method public f()Ljava/io/File;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/io/File;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    iput v0, p0, Ligp;->i:I

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Ligp;->h:Ljava/lang/Object;

    .line 373
    return-void
.end method

.method public l()Ligq;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ligp;->g:Ligq;

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Ligp;->i:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Ligp;->i:I

    invoke-static {v0}, Ligp;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Ligp;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Ligp;->l:Z

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Ligp;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Ligp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 338
    :goto_0
    return v0

    .line 335
    :cond_0
    iget-object v0, p0, Ligp;->a:Ligr;

    if-eqz v0, :cond_1

    .line 336
    const/4 v0, 0x1

    goto :goto_0

    .line 338
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-static {}, Laal;->w()V

    .line 347
    invoke-virtual {p0}, Ligp;->q()I

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-virtual {p0}, Ligp;->i()V

    .line 363
    :goto_0
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ligp;->m:Z

    .line 354
    :try_start_0
    iget-object v0, p0, Ligp;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Ligp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligr;

    .line 356
    invoke-interface {v0, p0}, Ligr;->a(Ligp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 362
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Ligp;->m:Z

    throw v0

    .line 358
    :cond_1
    :try_start_1
    iget-object v0, p0, Ligp;->a:Ligr;

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Ligp;->a:Ligr;

    invoke-interface {v0, p0}, Ligr;->a(Ligp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :cond_2
    iput-boolean v2, p0, Ligp;->m:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x40

    .line 441
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 442
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n  ID: "

    .line 443
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ligp;->g:Ligq;

    .line 444
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n  Status: "

    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 446
    invoke-virtual {p0}, Ligp;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget-boolean v0, p0, Ligp;->n:Z

    if-eqz v0, :cond_0

    .line 448
    const-string v0, "; downloading"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_0
    iget-object v0, p0, Ligp;->h:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {p0, v1}, Ligp;->a(Ljava/lang/StringBuilder;)V

    .line 453
    :cond_1
    const-string v0, "\n  Consumers:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-object v0, p0, Ligp;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Ligp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligr;

    .line 456
    const-string v3, "\n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-static {v1, v0}, Ligp;->a(Ljava/lang/StringBuilder;Ligr;)V

    goto :goto_0

    .line 459
    :cond_2
    iget-object v0, p0, Ligp;->a:Ligr;

    if-eqz v0, :cond_4

    .line 460
    const-string v0, "\n   "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget-object v0, p0, Ligp;->a:Ligr;

    invoke-static {v1, v0}, Ligp;->a(Ljava/lang/StringBuilder;Ligr;)V

    .line 465
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 463
    :cond_4
    const-string v0, "\n   none"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
