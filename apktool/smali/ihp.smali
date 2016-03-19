.class public final Lihp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Lihq;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lihq;

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    iput-object v0, p0, Lihp;->a:Lhq;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lihp;->d:J

    .line 64
    return-void
.end method

.method public a(Liht;)V
    .locals 6

    .prologue
    .line 103
    iget-object v0, p0, Lihp;->b:Lihq;

    .line 7013
    iget-wide v2, v0, Lihq;->e:J

    .line 103
    invoke-virtual {p1}, Liht;->a()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 8013
    iput-wide v2, v0, Lihq;->e:J

    .line 104
    iget-object v0, p0, Lihp;->b:Lihq;

    .line 9013
    iget-wide v2, v0, Lihq;->f:J

    .line 104
    invoke-virtual {p1}, Liht;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 10013
    iput-wide v2, v0, Lihq;->f:J

    .line 105
    iget-object v0, p0, Lihp;->b:Lihq;

    .line 11013
    iget-wide v2, v0, Lihq;->d:J

    .line 105
    invoke-virtual {p1}, Liht;->e()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 12013
    iput-wide v2, v0, Lihq;->d:J

    .line 106
    iget-object v0, p0, Lihp;->b:Lihq;

    invoke-virtual {p1}, Liht;->c()Ljava/lang/String;

    move-result-object v1

    .line 13013
    iput-object v1, v0, Lihq;->i:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lihp;->b:Lihq;

    invoke-virtual {p1}, Liht;->f()J

    move-result-wide v2

    .line 14013
    iput-wide v2, v0, Lihq;->g:J

    .line 108
    iget-object v0, p0, Lihp;->b:Lihq;

    .line 15013
    iget-object v0, v0, Lihq;->h:Lhq;

    .line 108
    invoke-virtual {p1}, Liht;->g()Lif;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhq;->a(Lif;)V

    .line 109
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lihp;->a:Lhq;

    invoke-virtual {v1}, Lhq;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lihp;->a:Lhq;

    invoke-virtual {v2, v0}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lihp;->a:Lhq;

    invoke-virtual {v0, p1}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lihq;

    iput-object v0, p0, Lihp;->b:Lihq;

    .line 49
    iget-object v0, p0, Lihp;->b:Lihq;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lihq;

    .line 1013
    invoke-direct {v0}, Lihq;-><init>()V

    .line 50
    iput-object v0, p0, Lihp;->b:Lihq;

    .line 51
    iget-object v0, p0, Lihp;->b:Lihq;

    .line 2013
    iput-object p1, v0, Lihq;->a:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lihp;->b:Lihq;

    iput-object p2, v0, Lihq;->j:[Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lihp;->a:Lhq;

    iget-object v1, p0, Lihp;->b:Lihq;

    invoke-virtual {v0, p1, v1}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lihp;->c:J

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lihp;->e:J

    .line 57
    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v0, p0, Lihp;->a:Lhq;

    invoke-virtual {v0}, Lhq;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lihq;

    .line 69
    iget-object v0, v0, Lihq;->j:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lihp;->e:J

    .line 76
    return-void
.end method

.method public d()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 2079
    iget-wide v0, p0, Lihp;->e:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 2080
    iget-object v0, p0, Lihp;->b:Lihq;

    .line 3013
    iget-wide v2, v0, Lihq;->c:J

    .line 2080
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lihp;->e:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 4013
    iput-wide v2, v0, Lihq;->c:J

    .line 2081
    iput-wide v8, p0, Lihp;->e:J

    .line 2083
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lihp;->f:J

    .line 91
    iget-object v0, p0, Lihp;->b:Lihq;

    .line 5013
    iget-wide v2, v0, Lihq;->b:J

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lihp;->c:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 6013
    iput-wide v2, v0, Lihq;->b:J

    .line 92
    return-void
.end method

.method public e()J
    .locals 5

    .prologue
    .line 182
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lihp;->a:Lhq;

    invoke-virtual {v0}, Lhq;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 183
    const-wide/16 v0, 0x0

    .line 184
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lihp;->a:Lhq;

    invoke-virtual {v1, v0}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lihq;

    .line 16013
    iget-wide v0, v0, Lihq;->e:J

    .line 185
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 186
    goto :goto_0

    .line 187
    :cond_0
    return-wide v2
.end method

.method public f()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lihp;->c:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lihp;->f:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lihp;->d:J

    return-wide v0
.end method

.method public i()J
    .locals 5

    .prologue
    .line 223
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lihp;->a:Lhq;

    invoke-virtual {v0}, Lhq;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    const-wide/16 v0, 0x0

    .line 225
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lihp;->a:Lhq;

    invoke-virtual {v1, v0}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lihq;

    .line 17013
    iget-wide v0, v0, Lihq;->f:J

    .line 226
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 227
    goto :goto_0

    .line 228
    :cond_0
    return-wide v2
.end method

.method public j()J
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lihp;->b:Lihq;

    .line 18013
    iget-wide v0, v0, Lihq;->g:J

    .line 260
    return-wide v0
.end method

.method public k()Lhq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lihp;->b:Lihq;

    .line 19013
    iget-object v0, v0, Lihq;->h:Lhq;

    .line 267
    return-object v0
.end method
