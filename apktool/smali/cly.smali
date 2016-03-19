.class final Lcly;
.super Lhbn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbn;"
    }
.end annotation


# instance fields
.field final synthetic a:Lclu;


# direct methods
.method constructor <init>(Lclu;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcly;->a:Lclu;

    invoke-direct {p0}, Lhbn;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 1045
    iput-boolean v7, v0, Lclu;->n:Z

    .line 274
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 2045
    iget-object v0, v0, Lclu;->j:Lhbh;

    .line 274
    invoke-interface {v0}, Lhbh;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkhk;

    .line 275
    iget-object v3, v0, Lkhk;->q:Ljava/lang/Integer;

    .line 3043
    invoke-static {v3, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 275
    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 276
    iget-object v3, p0, Lcly;->a:Lclu;

    .line 3045
    iget-object v3, v3, Lclu;->g:Ljava/util/Map;

    .line 276
    iget-object v4, v0, Lkhk;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcly;->a:Lclu;

    iget-object v2, p0, Lcly;->a:Lclu;

    .line 4045
    iget-object v2, v2, Lclu;->j:Lhbh;

    .line 281
    invoke-interface {v2}, Lhbh;->a()Lkhk;

    move-result-object v2

    .line 5045
    iput-object v2, v0, Lclu;->l:Lkhk;

    .line 282
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 6045
    iget-object v0, v0, Lclu;->l:Lkhk;

    .line 6198
    const-string v2, "Expected non-null"

    invoke-static {v2, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v2, p0, Lcly;->a:Lclu;

    .line 7116
    iget-boolean v3, v2, Lclu;->o:Z

    .line 7117
    iput-boolean v1, v2, Lclu;->o:Z

    .line 7119
    iget-boolean v0, v2, Lclu;->n:Z

    if-eqz v0, :cond_3

    iget-object v0, v2, Lclu;->l:Lkhk;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lclu;->l:Lkhk;

    iget-object v0, v0, Lkhk;->s:[I

    if-eqz v0, :cond_3

    .line 7120
    iget-object v0, v2, Lclu;->l:Lkhk;

    iget-object v4, v0, Lkhk;->s:[I

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_3

    aget v6, v4, v0

    .line 7121
    if-ne v6, v7, :cond_2

    .line 7122
    iput-boolean v7, v2, Lclu;->o:Z

    .line 7120
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7127
    :cond_3
    iget-boolean v0, v2, Lclu;->o:Z

    if-eq v3, v0, :cond_5

    .line 7257
    iget-object v0, v2, Lclu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclm;

    .line 7258
    invoke-interface {v0}, Lclm;->a()V

    goto :goto_2

    .line 7129
    :cond_4
    invoke-virtual {v2}, Lclu;->c()V

    .line 288
    :cond_5
    const-string v0, "Babel"

    const-string v2, "Found %d pending knocks on collection synced"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcly;->a:Lclu;

    .line 8045
    iget-object v4, v4, Lclu;->g:Ljava/util/Map;

    .line 291
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 290
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 288
    invoke-static {v0, v2, v1}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 9045
    invoke-virtual {v0}, Lclu;->c()V

    .line 293
    return-void
.end method

.method public synthetic a(Llyi;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 268
    check-cast p1, Lkhk;

    .line 30297
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 31045
    iget-boolean v0, v0, Lclu;->n:Z

    .line 30297
    if-eqz v0, :cond_0

    .line 30301
    iget-object v0, p1, Lkhk;->b:Ljava/lang/String;

    .line 30302
    iget-object v1, p1, Lkhk;->q:Ljava/lang/Integer;

    .line 32043
    invoke-static {v1, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 30302
    packed-switch v1, :pswitch_data_0

    .line 30311
    :cond_0
    :goto_0
    return-void

    .line 30304
    :pswitch_0
    const-string v1, "Babel"

    const-string v2, "New knocker (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30305
    iget-object v1, p0, Lcly;->a:Lclu;

    .line 32045
    iget-object v1, v1, Lclu;->g:Ljava/util/Map;

    .line 30305
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30306
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 33045
    invoke-virtual {v0}, Lclu;->c()V

    goto :goto_0

    .line 30309
    :pswitch_1
    const-string v1, "Babel"

    const-string v2, "Knock accepted (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30310
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 34245
    iget-object v0, v0, Lclu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclm;

    .line 34246
    invoke-interface {v0, p1}, Lclm;->b(Lkhk;)V

    goto :goto_1

    .line 30313
    :pswitch_2
    const-string v1, "Babel"

    const-string v2, "Knock rejected (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30314
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 35251
    iget-object v0, v0, Lclu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclm;

    .line 35252
    invoke-interface {v0, p1}, Lclm;->c(Lkhk;)V

    goto :goto_2

    .line 30302
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic a(Llyi;Llyi;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xa

    const/4 v0, 0x0

    .line 268
    check-cast p1, Lkhk;

    check-cast p2, Lkhk;

    .line 15323
    iget-object v1, p2, Lkhk;->b:Ljava/lang/String;

    .line 15324
    iget-object v2, p2, Lkhk;->q:Ljava/lang/Integer;

    .line 16043
    invoke-static {v2, v0}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 15325
    iget-object v3, p1, Lkhk;->q:Ljava/lang/Integer;

    .line 17043
    invoke-static {v3, v0}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 15327
    iget-object v4, p0, Lcly;->a:Lclu;

    .line 17045
    iget-object v4, v4, Lclu;->l:Lkhk;

    .line 15327
    if-eqz v4, :cond_3

    iget-object v4, p0, Lcly;->a:Lclu;

    .line 18045
    iget-object v4, v4, Lclu;->l:Lkhk;

    .line 15327
    iget-object v4, v4, Lkhk;->b:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15328
    iget-object v4, p0, Lcly;->a:Lclu;

    .line 19045
    iput-object p2, v4, Lclu;->l:Lkhk;

    .line 15329
    iget-object v4, p0, Lcly;->a:Lclu;

    .line 20116
    iget-boolean v5, v4, Lclu;->o:Z

    .line 20117
    iput-boolean v0, v4, Lclu;->o:Z

    .line 20119
    iget-boolean v6, v4, Lclu;->n:Z

    if-eqz v6, :cond_1

    iget-object v6, v4, Lclu;->l:Lkhk;

    if-eqz v6, :cond_1

    iget-object v6, v4, Lclu;->l:Lkhk;

    iget-object v6, v6, Lkhk;->s:[I

    if-eqz v6, :cond_1

    .line 20120
    iget-object v6, v4, Lclu;->l:Lkhk;

    iget-object v6, v6, Lkhk;->s:[I

    array-length v7, v6

    :goto_0
    if-ge v0, v7, :cond_1

    aget v8, v6, v0

    .line 20121
    if-ne v8, v10, :cond_0

    .line 20122
    iput-boolean v10, v4, Lclu;->o:Z

    .line 20120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20127
    :cond_1
    iget-boolean v0, v4, Lclu;->o:Z

    if-eq v5, v0, :cond_3

    .line 20257
    iget-object v0, v4, Lclu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclm;

    .line 20258
    invoke-interface {v0}, Lclm;->a()V

    goto :goto_1

    .line 20129
    :cond_2
    invoke-virtual {v4}, Lclu;->c()V

    .line 15332
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 15355
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 29045
    iget-object v0, v0, Lclu;->g:Ljava/util/Map;

    .line 15355
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15356
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 30045
    invoke-virtual {v0}, Lclu;->c()V

    .line 15350
    :cond_4
    :goto_2
    return-void

    .line 15334
    :pswitch_0
    if-eq v3, v9, :cond_4

    .line 15335
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 21045
    iget-object v0, v0, Lclu;->g:Ljava/util/Map;

    .line 15335
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15336
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 22045
    invoke-virtual {v0}, Lclu;->c()V

    goto :goto_2

    .line 15340
    :pswitch_1
    if-ne v3, v9, :cond_4

    .line 15341
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 23045
    iget-object v0, v0, Lclu;->g:Ljava/util/Map;

    .line 15341
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15342
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 24045
    invoke-virtual {v0}, Lclu;->c()V

    .line 15343
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 25245
    iget-object v0, v0, Lclu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclm;

    .line 25246
    invoke-interface {v0, p2}, Lclm;->b(Lkhk;)V

    goto :goto_3

    .line 15347
    :pswitch_2
    if-ne v3, v9, :cond_4

    .line 15348
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 26045
    iget-object v0, v0, Lclu;->g:Ljava/util/Map;

    .line 15348
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15349
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 27045
    invoke-virtual {v0}, Lclu;->c()V

    .line 15350
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 28251
    iget-object v0, v0, Lclu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclm;

    .line 28252
    invoke-interface {v0, p2}, Lclm;->c(Lkhk;)V

    goto :goto_4

    .line 15332
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic b(Llyi;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 268
    check-cast p1, Lkhk;

    .line 9363
    iget-object v1, p1, Lkhk;->b:Ljava/lang/String;

    .line 9364
    iget-object v2, p0, Lcly;->a:Lclu;

    .line 10045
    iget-object v2, v2, Lclu;->l:Lkhk;

    .line 9364
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcly;->a:Lclu;

    .line 11045
    iget-object v2, v2, Lclu;->l:Lkhk;

    .line 9364
    iget-object v2, v2, Lkhk;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9365
    iget-object v2, p0, Lcly;->a:Lclu;

    .line 12045
    const/4 v3, 0x0

    iput-object v3, v2, Lclu;->l:Lkhk;

    .line 9366
    iget-object v2, p0, Lcly;->a:Lclu;

    .line 13116
    iget-boolean v3, v2, Lclu;->o:Z

    .line 13117
    iput-boolean v0, v2, Lclu;->o:Z

    .line 13119
    iget-boolean v4, v2, Lclu;->n:Z

    if-eqz v4, :cond_1

    iget-object v4, v2, Lclu;->l:Lkhk;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lclu;->l:Lkhk;

    iget-object v4, v4, Lkhk;->s:[I

    if-eqz v4, :cond_1

    .line 13120
    iget-object v4, v2, Lclu;->l:Lkhk;

    iget-object v4, v4, Lkhk;->s:[I

    array-length v5, v4

    :goto_0
    if-ge v0, v5, :cond_1

    aget v6, v4, v0

    .line 13121
    if-ne v6, v7, :cond_0

    .line 13122
    iput-boolean v7, v2, Lclu;->o:Z

    .line 13120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13127
    :cond_1
    iget-boolean v0, v2, Lclu;->o:Z

    if-eq v3, v0, :cond_3

    .line 13257
    iget-object v0, v2, Lclu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclm;

    .line 13258
    invoke-interface {v0}, Lclm;->a()V

    goto :goto_1

    .line 13129
    :cond_2
    invoke-virtual {v2}, Lclu;->c()V

    .line 9369
    :cond_3
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 14045
    iget-object v0, v0, Lclu;->g:Ljava/util/Map;

    .line 9369
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9370
    iget-object v0, p0, Lcly;->a:Lclu;

    .line 15045
    invoke-virtual {v0}, Lclu;->c()V

    .line 268
    :cond_4
    return-void
.end method
