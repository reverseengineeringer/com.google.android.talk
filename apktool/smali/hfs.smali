.class final Lhfs;
.super Lhcv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhfo;


# direct methods
.method constructor <init>(Lhfo;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lhfs;->a:Lhfo;

    invoke-direct {p0}, Lhcv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhil;Latn;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 1244
    instance-of v1, p2, Lhin;

    if-nez v1, :cond_0

    instance-of v1, p2, Lhik;

    if-eqz v1, :cond_2

    .line 1245
    :cond_0
    invoke-virtual {p1}, Lhil;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lhfo;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lhil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 281
    :goto_0
    if-eqz v0, :cond_4

    .line 283
    invoke-virtual {p1}, Lhil;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 2032
    iget-object v0, v0, Lhfo;->l:Lhfn;

    .line 285
    invoke-virtual {v0}, Lhfn;->b()Lhkx;

    move-result-object v1

    .line 287
    invoke-virtual {v1}, Lhkx;->f()Lhkx;

    .line 288
    invoke-virtual {p1}, Lhil;->r()Z

    move-result v4

    invoke-virtual {v1, v4}, Lhkx;->h(Z)Lhkx;

    .line 289
    invoke-virtual {p1}, Lhil;->t()Z

    move-result v4

    invoke-virtual {v1, v4}, Lhkx;->i(Z)Lhkx;

    move-object v1, v0

    .line 293
    :goto_1
    invoke-virtual {v1, p1}, Lhfn;->a(Lhil;)V

    .line 294
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 4032
    invoke-virtual {v0, v1}, Lhfo;->a(Lhfn;)V

    .line 295
    const-string v0, "vclib"

    const-string v4, "Participant joined: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lhfn;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 4077
    const/4 v2, 0x3

    invoke-static {v2, v0, v4, v3}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 5032
    iget-object v2, v0, Lhfo;->f:Ljava/lang/Object;

    .line 296
    monitor-enter v2

    .line 297
    :try_start_0
    iget-object v0, p0, Lhfs;->a:Lhfo;

    iget-object v0, v0, Lhfo;->h:Ljava/util/Map;

    invoke-virtual {v1}, Lhfn;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 6032
    iget-object v0, v0, Lhfo;->i:Ljava/util/Set;

    .line 298
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 7032
    invoke-virtual {v0}, Lhfo;->f()V

    .line 300
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 8032
    iget-object v0, v0, Lhfo;->e:Ljava/util/List;

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhft;

    .line 302
    invoke-interface {v0, v1}, Lhft;->a(Lhfn;)V

    goto :goto_2

    :cond_1
    move v0, v2

    .line 1245
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1247
    goto :goto_0

    .line 291
    :cond_3
    new-instance v0, Lhfn;

    iget-object v1, p0, Lhfs;->a:Lhfo;

    .line 3032
    iget-object v1, v1, Lhfo;->a:Lhcd;

    .line 291
    invoke-direct {v0, v1}, Lhfn;-><init>(Lhcd;)V

    move-object v1, v0

    goto :goto_1

    .line 300
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 304
    :cond_4
    instance-of v0, p2, Lhio;

    if-eqz v0, :cond_7

    .line 306
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 9032
    iget-object v1, v0, Lhfo;->f:Ljava/lang/Object;

    .line 306
    monitor-enter v1

    .line 307
    :try_start_2
    iget-object v0, p0, Lhfs;->a:Lhfo;

    iget-object v0, v0, Lhfo;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lhil;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfn;

    .line 308
    if-nez v0, :cond_5

    .line 309
    monitor-exit v1

    .line 327
    :goto_3
    return-void

    .line 311
    :cond_5
    iget-object v2, p0, Lhfs;->a:Lhfo;

    .line 10032
    iget-object v2, v2, Lhfo;->k:Ljava/util/Set;

    .line 311
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v2, p0, Lhfs;->a:Lhfo;

    .line 11032
    invoke-virtual {v2}, Lhfo;->f()V

    .line 313
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 314
    iget-object v1, p0, Lhfs;->a:Lhfo;

    .line 12032
    iget-object v1, v1, Lhfo;->m:Lhfn;

    .line 314
    if-ne v0, v1, :cond_6

    .line 315
    iget-object v1, p0, Lhfs;->a:Lhfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lhfo;->b(Ljava/lang/String;)V

    .line 317
    :cond_6
    iget-object v1, p0, Lhfs;->a:Lhfo;

    .line 13032
    iget-object v1, v1, Lhfo;->e:Ljava/util/List;

    .line 317
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhft;

    .line 318
    invoke-interface {v1, v0}, Lhft;->b(Lhfn;)V

    goto :goto_4

    .line 313
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 14255
    :cond_7
    instance-of v0, p2, Lhij;

    if-nez v0, :cond_8

    instance-of v0, p2, Lhiq;

    if-nez v0, :cond_8

    instance-of v0, p2, Lhis;

    if-eqz v0, :cond_a

    :cond_8
    move v0, v3

    .line 320
    :goto_5
    if-eqz v0, :cond_9

    .line 321
    iget-object v0, p0, Lhfs;->a:Lhfo;

    iget-object v0, v0, Lhfo;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lhil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfn;

    .line 322
    if-eqz v0, :cond_9

    .line 323
    invoke-virtual {v0}, Lhfn;->e()V

    .line 326
    :cond_9
    iget-object v0, p0, Lhfs;->a:Lhfo;

    invoke-virtual {v0}, Lhfo;->e()V

    goto :goto_3

    :cond_a
    move v0, v2

    .line 14255
    goto :goto_5
.end method

.method public a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 331
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 15032
    iget-object v1, v0, Lhfo;->n:Lhfn;

    .line 332
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 16032
    const/4 v2, 0x0

    iput-object v2, v0, Lhfo;->n:Lhfn;

    .line 333
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 17032
    iget-object v0, v0, Lhfo;->c:Lhci;

    .line 333
    invoke-virtual {v0}, Lhci;->a()Lhcs;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lhcs;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhil;

    .line 335
    invoke-virtual {v0}, Lhil;->l()Ljava/util/List;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    iget-object v2, p0, Lhfs;->a:Lhfo;

    iget-object v3, p0, Lhfs;->a:Lhfo;

    iget-object v3, v3, Lhfo;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lhil;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfn;

    .line 18032
    iput-object v0, v2, Lhfo;->n:Lhfn;

    .line 341
    :cond_1
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 19032
    iget-object v0, v0, Lhfo;->n:Lhfn;

    .line 341
    if-eq v0, v1, :cond_2

    .line 342
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 20032
    invoke-virtual {v0, v1}, Lhfo;->a(Lhfn;)V

    .line 343
    iget-object v0, p0, Lhfs;->a:Lhfo;

    iget-object v1, p0, Lhfs;->a:Lhfo;

    .line 21032
    iget-object v1, v1, Lhfo;->n:Lhfn;

    .line 22032
    invoke-virtual {v0, v1}, Lhfo;->a(Lhfn;)V

    .line 344
    iget-object v0, p0, Lhfs;->a:Lhfo;

    invoke-virtual {v0}, Lhfo;->e()V

    .line 346
    :cond_2
    return-void
.end method

.method public b(Lhcs;)V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 23032
    iget-object v0, v0, Lhfo;->c:Lhci;

    .line 350
    iget-object v1, p0, Lhfs;->a:Lhfo;

    iget-object v1, v1, Lhfo;->d:Lhfs;

    invoke-virtual {v0, v1}, Lhci;->b(Lhcu;)V

    .line 352
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 24032
    iget-object v1, v0, Lhfo;->f:Ljava/lang/Object;

    .line 352
    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 25032
    const/4 v2, 0x1

    iput-boolean v2, v0, Lhfo;->q:Z

    .line 354
    iget-object v0, p0, Lhfs;->a:Lhfo;

    .line 26032
    const/4 v2, 0x0

    iput-boolean v2, v0, Lhfo;->g:Z

    .line 355
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
