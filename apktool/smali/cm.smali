.class final Lcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfg;
.implements Lfh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfg",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lfh",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Lck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lck",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Lfe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfe",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Lcm;

.field final synthetic o:Lcl;


# direct methods
.method public constructor <init>(Lcl;ILandroid/os/Bundle;Lck;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lck",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    iput-object p1, p0, Lcm;->o:Lcl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput p2, p0, Lcm;->a:I

    .line 237
    iput-object p3, p0, Lcm;->b:Landroid/os/Bundle;

    .line 238
    iput-object p4, p0, Lcm;->c:Lck;

    .line 239
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 242
    iget-boolean v0, p0, Lcm;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcm;->j:Z

    if-eqz v0, :cond_1

    .line 246
    iput-boolean v3, p0, Lcm;->h:Z

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-boolean v0, p0, Lcm;->h:Z

    if-nez v0, :cond_0

    .line 255
    iput-boolean v3, p0, Lcm;->h:Z

    .line 257
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Starting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    :cond_2
    iget-object v0, p0, Lcm;->d:Lfe;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcm;->c:Lck;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcm;->c:Lck;

    iget v1, p0, Lcm;->a:I

    iget-object v2, p0, Lcm;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lck;->onCreateLoader(ILandroid/os/Bundle;)Lfe;

    move-result-object v0

    iput-object v0, p0, Lcm;->d:Lfe;

    .line 261
    :cond_3
    iget-object v0, p0, Lcm;->d:Lfe;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcm;->d:Lfe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcm;->d:Lfe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcm;->d:Lfe;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_4
    iget-boolean v0, p0, Lcm;->m:Z

    if-nez v0, :cond_5

    .line 269
    iget-object v0, p0, Lcm;->d:Lfe;

    iget v1, p0, Lcm;->a:I

    invoke-virtual {v0, v1, p0}, Lfe;->a(ILfh;)V

    .line 270
    iget-object v0, p0, Lcm;->d:Lfe;

    invoke-virtual {v0, p0}, Lfe;->a(Lfg;)V

    .line 271
    iput-boolean v3, p0, Lcm;->m:Z

    .line 273
    :cond_5
    iget-object v0, p0, Lcm;->d:Lfe;

    invoke-virtual {v0}, Lfe;->s()V

    goto :goto_0
.end method

.method public a(Lfe;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 411
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLoadComplete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 413
    :cond_0
    iget-boolean v0, p0, Lcm;->l:Z

    if-eqz v0, :cond_2

    .line 464
    :cond_1
    :goto_0
    return-void

    .line 418
    :cond_2
    iget-object v0, p0, Lcm;->o:Lcl;

    iget-object v0, v0, Lcl;->b:Lig;

    iget v1, p0, Lcm;->a:I

    invoke-virtual {v0, v1}, Lig;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 425
    iget-object v0, p0, Lcm;->n:Lcm;

    .line 426
    if-eqz v0, :cond_4

    .line 430
    sget-boolean v1, Lcl;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Switching to pending loader: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    :cond_3
    iput-object v3, p0, Lcm;->n:Lcm;

    .line 432
    iget-object v1, p0, Lcm;->o:Lcl;

    iget-object v1, v1, Lcl;->b:Lig;

    iget v2, p0, Lcm;->a:I

    invoke-virtual {v1, v2, v3}, Lig;->a(ILjava/lang/Object;)V

    .line 433
    invoke-virtual {p0}, Lcm;->g()V

    .line 434
    iget-object v1, p0, Lcm;->o:Lcl;

    invoke-virtual {v1, v0}, Lcl;->a(Lcm;)V

    goto :goto_0

    .line 440
    :cond_4
    iget-object v0, p0, Lcm;->g:Ljava/lang/Object;

    if-ne v0, p2, :cond_5

    iget-boolean v0, p0, Lcm;->e:Z

    if-nez v0, :cond_6

    .line 441
    :cond_5
    iput-object p2, p0, Lcm;->g:Ljava/lang/Object;

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm;->e:Z

    .line 443
    iget-boolean v0, p0, Lcm;->h:Z

    if-eqz v0, :cond_6

    .line 444
    invoke-virtual {p0, p1, p2}, Lcm;->b(Lfe;Ljava/lang/Object;)V

    .line 454
    :cond_6
    iget-object v0, p0, Lcm;->o:Lcl;

    iget-object v0, v0, Lcl;->c:Lig;

    iget v1, p0, Lcm;->a:I

    invoke-virtual {v0, v1}, Lig;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm;

    .line 455
    if-eqz v0, :cond_7

    if-eq v0, p0, :cond_7

    .line 456
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcm;->f:Z

    .line 457
    invoke-virtual {v0}, Lcm;->g()V

    .line 458
    iget-object v0, p0, Lcm;->o:Lcl;

    iget-object v0, v0, Lcl;->c:Lig;

    iget v1, p0, Lcm;->a:I

    invoke-virtual {v0, v1}, Lig;->b(I)V

    .line 461
    :cond_7
    iget-object v0, p0, Lcm;->o:Lcl;

    .line 8190
    iget-object v0, v0, Lcl;->h:Lbf;

    .line 461
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcm;->o:Lcl;

    invoke-virtual {v0}, Lcl;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    iget-object v0, p0, Lcm;->o:Lcl;

    .line 9190
    iget-object v0, v0, Lcl;->h:Lbf;

    .line 462
    iget-object v0, v0, Lbf;->d:Lbh;

    invoke-virtual {v0}, Lbh;->f()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 500
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcm;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 501
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcm;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 502
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcm;->c:Lck;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcm;->d:Lfe;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcm;->d:Lfe;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcm;->d:Lfe;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lfe;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 507
    :cond_0
    iget-boolean v0, p0, Lcm;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcm;->f:Z

    if-eqz v0, :cond_2

    .line 508
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcm;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 509
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcm;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 510
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcm;->g:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 512
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcm;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 513
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcm;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 514
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcm;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 515
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcm;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 516
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcm;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 517
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcm;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 518
    iget-object v0, p0, Lcm;->n:Lcm;

    if-eqz v0, :cond_3

    .line 519
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcm;->n:Lcm;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcm;->n:Lcm;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcm;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 523
    :cond_3
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 278
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Retaining: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm;->i:Z

    .line 280
    iget-boolean v0, p0, Lcm;->h:Z

    iput-boolean v0, p0, Lcm;->j:Z

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm;->h:Z

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcm;->c:Lck;

    .line 283
    return-void
.end method

.method b(Lfe;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcm;->c:Lck;

    if-eqz v0, :cond_2

    .line 468
    const/4 v0, 0x0

    .line 469
    iget-object v1, p0, Lcm;->o:Lcl;

    .line 10190
    iget-object v1, v1, Lcl;->h:Lbf;

    .line 469
    if-eqz v1, :cond_4

    .line 470
    iget-object v0, p0, Lcm;->o:Lcl;

    .line 11190
    iget-object v0, v0, Lcl;->h:Lbf;

    .line 470
    iget-object v0, v0, Lbf;->d:Lbh;

    iget-object v0, v0, Lbh;->v:Ljava/lang/String;

    .line 471
    iget-object v1, p0, Lcm;->o:Lcl;

    .line 12190
    iget-object v1, v1, Lcl;->h:Lbf;

    .line 471
    iget-object v1, v1, Lbf;->d:Lbh;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Lbh;->v:Ljava/lang/String;

    move-object v1, v0

    .line 474
    :goto_0
    :try_start_0
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  onLoadFinished in "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, p2}, Lfe;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_0
    iget-object v0, p0, Lcm;->c:Lck;

    invoke-interface {v0, p1, p2}, Lck;->onLoadFinished(Lfe;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    iget-object v0, p0, Lcm;->o:Lcl;

    .line 13190
    iget-object v0, v0, Lcl;->h:Lbf;

    .line 478
    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcm;->o:Lcl;

    .line 14190
    iget-object v0, v0, Lcl;->h:Lbf;

    .line 479
    iget-object v0, v0, Lbf;->d:Lbh;

    iput-object v1, v0, Lbh;->v:Ljava/lang/String;

    .line 482
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm;->f:Z

    .line 484
    :cond_2
    return-void

    .line 478
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcm;->o:Lcl;

    .line 15190
    iget-object v2, v2, Lcl;->h:Lbf;

    .line 478
    if-eqz v2, :cond_3

    .line 479
    iget-object v2, p0, Lcm;->o:Lcl;

    .line 16190
    iget-object v2, v2, Lcl;->h:Lbf;

    .line 479
    iget-object v2, v2, Lbf;->d:Lbh;

    iput-object v1, v2, Lbh;->v:Ljava/lang/String;

    :cond_3
    throw v0

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 286
    iget-boolean v0, p0, Lcm;->i:Z

    if-eqz v0, :cond_1

    .line 287
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Finished Retaining: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm;->i:Z

    .line 289
    iget-boolean v0, p0, Lcm;->h:Z

    iget-boolean v1, p0, Lcm;->j:Z

    if-eq v0, v1, :cond_1

    .line 290
    iget-boolean v0, p0, Lcm;->h:Z

    if-nez v0, :cond_1

    .line 294
    invoke-virtual {p0}, Lcm;->e()V

    .line 299
    :cond_1
    iget-boolean v0, p0, Lcm;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcm;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcm;->k:Z

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Lcm;->d:Lfe;

    iget-object v1, p0, Lcm;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcm;->b(Lfe;Ljava/lang/Object;)V

    .line 308
    :cond_2
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lcm;->h:Z

    if-eqz v0, :cond_0

    .line 312
    iget-boolean v0, p0, Lcm;->k:Z

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm;->k:Z

    .line 314
    iget-boolean v0, p0, Lcm;->e:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcm;->d:Lfe;

    iget-object v1, p0, Lcm;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcm;->b(Lfe;Ljava/lang/Object;)V

    .line 319
    :cond_0
    return-void
.end method

.method e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Stopping: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    :cond_0
    iput-boolean v2, p0, Lcm;->h:Z

    .line 324
    iget-boolean v0, p0, Lcm;->i:Z

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcm;->d:Lfe;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcm;->m:Z

    if-eqz v0, :cond_1

    .line 327
    iput-boolean v2, p0, Lcm;->m:Z

    .line 328
    iget-object v0, p0, Lcm;->d:Lfe;

    invoke-virtual {v0, p0}, Lfe;->a(Lfh;)V

    .line 329
    iget-object v0, p0, Lcm;->d:Lfe;

    invoke-virtual {v0, p0}, Lfe;->b(Lfg;)V

    .line 330
    iget-object v0, p0, Lcm;->d:Lfe;

    invoke-virtual {v0}, Lfe;->v()V

    .line 333
    :cond_1
    return-void
.end method

.method f()V
    .locals 2

    .prologue
    .line 336
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Canceling: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    :cond_0
    iget-boolean v0, p0, Lcm;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcm;->d:Lfe;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcm;->m:Z

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcm;->d:Lfe;

    invoke-virtual {v0}, Lfe;->t()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    invoke-virtual {p0}, Lcm;->h()V

    .line 342
    :cond_1
    return-void
.end method

.method g()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 345
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Destroying: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm;->l:Z

    .line 347
    iget-boolean v0, p0, Lcm;->f:Z

    .line 348
    iput-boolean v4, p0, Lcm;->f:Z

    .line 349
    iget-object v1, p0, Lcm;->c:Lck;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcm;->d:Lfe;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcm;->e:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 350
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Reseting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    :cond_1
    iget-object v0, p0, Lcm;->o:Lcl;

    .line 1190
    iget-object v0, v0, Lcl;->h:Lbf;

    .line 352
    if-eqz v0, :cond_7

    .line 353
    iget-object v0, p0, Lcm;->o:Lcl;

    .line 2190
    iget-object v0, v0, Lcl;->h:Lbf;

    .line 353
    iget-object v0, v0, Lbf;->d:Lbh;

    iget-object v0, v0, Lbh;->v:Ljava/lang/String;

    .line 354
    iget-object v1, p0, Lcm;->o:Lcl;

    .line 3190
    iget-object v1, v1, Lcl;->h:Lbf;

    .line 354
    iget-object v1, v1, Lbf;->d:Lbh;

    const-string v3, "onLoaderReset"

    iput-object v3, v1, Lbh;->v:Ljava/lang/String;

    move-object v1, v0

    .line 357
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcm;->c:Lck;

    iget-object v3, p0, Lcm;->d:Lfe;

    invoke-interface {v0, v3}, Lck;->onLoaderReset(Lfe;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    iget-object v0, p0, Lcm;->o:Lcl;

    .line 4190
    iget-object v0, v0, Lcl;->h:Lbf;

    .line 359
    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcm;->o:Lcl;

    .line 5190
    iget-object v0, v0, Lcl;->h:Lbf;

    .line 360
    iget-object v0, v0, Lbf;->d:Lbh;

    iput-object v1, v0, Lbh;->v:Ljava/lang/String;

    .line 364
    :cond_2
    iput-object v2, p0, Lcm;->c:Lck;

    .line 365
    iput-object v2, p0, Lcm;->g:Ljava/lang/Object;

    .line 366
    iput-boolean v4, p0, Lcm;->e:Z

    .line 367
    iget-object v0, p0, Lcm;->d:Lfe;

    if-eqz v0, :cond_4

    .line 368
    iget-boolean v0, p0, Lcm;->m:Z

    if-eqz v0, :cond_3

    .line 369
    iput-boolean v4, p0, Lcm;->m:Z

    .line 370
    iget-object v0, p0, Lcm;->d:Lfe;

    invoke-virtual {v0, p0}, Lfe;->a(Lfh;)V

    .line 371
    iget-object v0, p0, Lcm;->d:Lfe;

    invoke-virtual {v0, p0}, Lfe;->b(Lfg;)V

    .line 373
    :cond_3
    iget-object v0, p0, Lcm;->d:Lfe;

    invoke-virtual {v0}, Lfe;->y()V

    .line 375
    :cond_4
    iget-object v0, p0, Lcm;->n:Lcm;

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Lcm;->n:Lcm;

    invoke-virtual {v0}, Lcm;->g()V

    .line 378
    :cond_5
    return-void

    .line 359
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcm;->o:Lcl;

    .line 6190
    iget-object v2, v2, Lcl;->h:Lbf;

    .line 359
    if-eqz v2, :cond_6

    .line 360
    iget-object v2, p0, Lcm;->o:Lcl;

    .line 7190
    iget-object v2, v2, Lcl;->h:Lbf;

    .line 360
    iget-object v2, v2, Lbf;->d:Lbh;

    iput-object v1, v2, Lbh;->v:Ljava/lang/String;

    :cond_6
    throw v0

    :cond_7
    move-object v1, v2

    goto :goto_0
.end method

.method public h()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 382
    sget-boolean v0, Lcl;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLoadCanceled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    :cond_0
    iget-boolean v0, p0, Lcm;->l:Z

    if-eqz v0, :cond_2

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 389
    :cond_2
    iget-object v0, p0, Lcm;->o:Lcl;

    iget-object v0, v0, Lcl;->b:Lig;

    iget v1, p0, Lcm;->a:I

    invoke-virtual {v0, v1}, Lig;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 396
    iget-object v0, p0, Lcm;->n:Lcm;

    .line 397
    if-eqz v0, :cond_1

    .line 401
    sget-boolean v1, Lcl;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Switching to pending loader: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    :cond_3
    iput-object v3, p0, Lcm;->n:Lcm;

    .line 403
    iget-object v1, p0, Lcm;->o:Lcl;

    iget-object v1, v1, Lcl;->b:Lig;

    iget v2, p0, Lcm;->a:I

    invoke-virtual {v1, v2, v3}, Lig;->a(ILjava/lang/Object;)V

    .line 404
    invoke-virtual {p0}, Lcm;->g()V

    .line 405
    iget-object v1, p0, Lcm;->o:Lcl;

    invoke-virtual {v1, v0}, Lcl;->a(Lcm;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 489
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget v1, p0, Lcm;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v1, p0, Lcm;->d:Lfe;

    invoke-static {v1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 495
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
