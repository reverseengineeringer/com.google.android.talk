.class public final Lbea;
.super Lbdy;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbdx;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbdw;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbee;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lbdx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/util/List",
            "<",
            "Lbdw;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lbee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lbdy;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbea;->d:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lbea;->b:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lbea;->c:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lbea;->d:Ljava/util/List;

    .line 40
    iput-object p4, p0, Lbea;->e:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lbea;->f:Ljava/lang/String;

    .line 42
    iput-boolean p6, p0, Lbea;->g:Z

    .line 43
    iput-boolean p7, p0, Lbea;->h:Z

    .line 44
    iput-boolean p8, p0, Lbea;->i:Z

    .line 45
    iput-boolean p9, p0, Lbea;->j:Z

    .line 46
    iput-object p10, p0, Lbea;->k:Ljava/util/List;

    .line 47
    iput-object p11, p0, Lbea;->l:Ljava/util/List;

    .line 48
    return-void
.end method

.method public static a(Lcyx;Ljava/util/List;Z)Lbea;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcyx;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lbea;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v0, p0, Lcyx;->A:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcyx;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    new-instance v4, Lbee;

    invoke-direct {v4, v0}, Lbee;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    if-eqz p1, :cond_1

    .line 185
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    new-instance v5, Lbee;

    invoke-direct {v5, v0}, Lbee;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v0, p0, Lcyx;->B:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcyx;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    new-instance v6, Lbdw;

    invoke-direct {v6, v0}, Lbdw;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 197
    :cond_2
    new-instance v5, Lbeb;

    invoke-direct {v5}, Lbeb;-><init>()V

    .line 198
    iget-object v0, p0, Lcyx;->h:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lbeb;->b(Ljava/lang/String;)Lbeb;

    move-result-object v0

    .line 199
    invoke-static {p0, v1}, Laal;->a(Lcyx;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lbeb;->a(Ljava/lang/String;)Lbeb;

    move-result-object v6

    if-nez p2, :cond_3

    iget-boolean v0, p0, Lcyx;->z:Z

    if-eqz v0, :cond_6

    :cond_3
    const/4 v0, 0x1

    .line 200
    :goto_3
    invoke-virtual {v6, v0}, Lbeb;->a(Z)Lbeb;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v2}, Lbeb;->c(Ljava/util/Collection;)Lbeb;

    move-result-object v0

    .line 202
    invoke-virtual {v0, v3}, Lbeb;->c(Ljava/util/Collection;)Lbeb;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v4}, Lbeb;->b(Ljava/util/Collection;)Lbeb;

    .line 204
    invoke-virtual {p0}, Lcyx;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 205
    new-instance v0, Lbdx;

    invoke-virtual {p0}, Lcyx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcyx;->h()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lbdx;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v0}, Lbeb;->a(Lbdx;)Lbeb;

    .line 207
    :cond_4
    iget-object v0, p0, Lcyx;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 208
    iget-object v0, p0, Lcyx;->c:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lbeb;->f(Ljava/lang/String;)Lbeb;

    .line 210
    :cond_5
    invoke-virtual {v5}, Lbeb;->a()Lbea;

    move-result-object v0

    return-object v0

    :cond_6
    move v0, v1

    .line 199
    goto :goto_3
.end method


# virtual methods
.method public a()Lbee;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1214
    iget-object v0, p0, Lbea;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbea;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 219
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lbea;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbee;

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 1214
    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public synthetic b()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 3224
    iget-object v0, p0, Lbea;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3225
    iget-object v0, p0, Lbea;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3227
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1232
    iget-object v0, p0, Lbea;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbea;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 237
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lbea;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdw;

    invoke-virtual {v0}, Lbdw;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 1232
    goto :goto_0

    .line 237
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public synthetic d()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lbea;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2243
    iget-object v0, p0, Lbea;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2245
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lbea;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 311
    if-ne p0, p1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 315
    goto :goto_0

    .line 318
    :cond_3
    check-cast p1, Lbea;

    .line 320
    iget-object v2, p0, Lbea;->d:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lbea;->d:Ljava/util/List;

    iget-object v3, p1, Lbea;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    .line 321
    goto :goto_0

    .line 320
    :cond_5
    iget-object v2, p1, Lbea;->d:Ljava/util/List;

    if-nez v2, :cond_4

    .line 323
    :cond_6
    iget-object v2, p0, Lbea;->k:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lbea;->k:Ljava/util/List;

    iget-object v3, p1, Lbea;->k:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    .line 325
    goto :goto_0

    .line 323
    :cond_8
    iget-object v2, p1, Lbea;->k:Ljava/util/List;

    if-nez v2, :cond_7

    .line 327
    :cond_9
    iget-object v2, p0, Lbea;->l:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lbea;->l:Ljava/util/List;

    iget-object v3, p1, Lbea;->l:Ljava/util/List;

    .line 328
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lbea;->l:Ljava/util/List;

    if-nez v2, :cond_a

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lbea;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lbea;->h:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lbea;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lbea;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbea;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 335
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lbea;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbea;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 336
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lbea;->l:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lbea;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 337
    return v0

    :cond_1
    move v0, v1

    .line 334
    goto :goto_0

    :cond_2
    move v0, v1

    .line 335
    goto :goto_1
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lbea;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbea;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdx;

    invoke-virtual {v0}, Lbdx;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic j()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lbea;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 20
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lbea;->e:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lbea;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lbea;->f:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lbea;->g:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lbea;->j:Z

    return v0
.end method
