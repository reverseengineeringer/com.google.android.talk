.class public final Lhgo;
.super Lhcv;
.source "SourceFile"

# interfaces
.implements Lhft;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhfu;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhgn;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lhge;

.field private final d:Lhcd;

.field private final e:Lhci;

.field private final f:Lhfo;

.field private final g:Lhbj;

.field private final h:Lhgs;

.field private i:Lhfn;


# direct methods
.method public constructor <init>(Lhcd;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lhcv;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhgo;->a:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhgo;->b:Ljava/util/List;

    .line 35
    new-instance v0, Lhgs;

    .line 1259
    invoke-direct {v0, p0}, Lhgs;-><init>(Lhgo;)V

    .line 35
    iput-object v0, p0, Lhgo;->h:Lhgs;

    .line 39
    iput-object p1, p0, Lhgo;->d:Lhcd;

    .line 40
    invoke-virtual {p1}, Lhcd;->d()Lhci;

    move-result-object v0

    iput-object v0, p0, Lhgo;->e:Lhci;

    .line 41
    invoke-virtual {p1}, Lhcd;->c()Lhfo;

    move-result-object v0

    iput-object v0, p0, Lhgo;->f:Lhfo;

    .line 42
    new-instance v0, Lhge;

    invoke-direct {v0, p1}, Lhge;-><init>(Lhcd;)V

    iput-object v0, p0, Lhgo;->c:Lhge;

    .line 43
    iget-object v0, p0, Lhgo;->f:Lhfo;

    invoke-virtual {v0, p0}, Lhfo;->a(Lhft;)V

    .line 44
    iget-object v0, p0, Lhgo;->e:Lhci;

    invoke-virtual {v0, p0}, Lhci;->a(Lhcu;)V

    .line 45
    iget-object v0, p0, Lhgo;->e:Lhci;

    invoke-virtual {v0}, Lhci;->d()Lhbo;

    move-result-object v0

    const-class v1, Lhbj;

    .line 46
    invoke-virtual {v0, v1}, Lhbo;->a(Ljava/lang/Class;)Lhbm;

    move-result-object v0

    check-cast v0, Lhbj;

    iput-object v0, p0, Lhgo;->g:Lhbj;

    .line 47
    iget-object v0, p0, Lhgo;->g:Lhbj;

    iget-object v1, p0, Lhgo;->h:Lhgs;

    invoke-interface {v0, v1}, Lhbj;->a(Lhbn;)V

    .line 48
    return-void
.end method

.method private b(Ljava/lang/String;)Lhfu;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lhgo;->e:Lhci;

    invoke-virtual {v0}, Lhci;->a()Lhcs;

    move-result-object v2

    .line 83
    if-nez v2, :cond_1

    .line 84
    const-string v0, "vclib"

    const-string v2, "Attempted to access remote video while not in a call"

    .line 2089
    const/4 v3, 0x5

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    iget-object v0, p0, Lhgo;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfu;

    .line 88
    if-nez v0, :cond_0

    .line 89
    invoke-virtual {v2, p1}, Lhcs;->b(Ljava/lang/String;)Lhil;

    move-result-object v0

    .line 90
    if-nez v0, :cond_2

    .line 91
    const-string v0, "vclib"

    const-string v2, "Attempted to get remote source for a non-remote participant"

    .line 3081
    const/4 v3, 0x4

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 92
    goto :goto_0

    .line 94
    :cond_2
    new-instance v0, Lhfu;

    iget-object v1, p0, Lhgo;->d:Lhcd;

    iget-object v2, p0, Lhgo;->f:Lhfo;

    invoke-virtual {v2, p1}, Lhfo;->a(Ljava/lang/String;)Lhfn;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhfu;-><init>(Lhcd;Lhfn;)V

    .line 95
    iget-object v1, p0, Lhgo;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lhgn;
    .locals 1

    .prologue
    .line 62
    const-string v0, "Cannot get source of a null participant"

    invoke-static {v0, p1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "localParticipant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhgo;->f:Lhfo;

    .line 64
    invoke-virtual {v0}, Lhfo;->d()Lhfn;

    move-result-object v0

    invoke-virtual {v0}, Lhfn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    iget-object v0, p0, Lhgo;->c:Lhge;

    .line 67
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lhgo;->b(Ljava/lang/String;)Lhfu;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lhgo;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfu;

    .line 52
    invoke-virtual {v0}, Lhfu;->a()V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lhgo;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 55
    iget-object v0, p0, Lhgo;->f:Lhfo;

    invoke-virtual {v0, p0}, Lhfo;->b(Lhft;)V

    .line 56
    iget-object v0, p0, Lhgo;->e:Lhci;

    invoke-virtual {v0, p0}, Lhci;->b(Lhcu;)V

    .line 57
    iget-object v0, p0, Lhgo;->g:Lhbj;

    iget-object v1, p0, Lhgo;->h:Lhgs;

    invoke-interface {v0, v1}, Lhbj;->b(Lhbn;)V

    .line 58
    iget-object v0, p0, Lhgo;->c:Lhge;

    invoke-virtual {v0}, Lhge;->h()V

    .line 59
    return-void
.end method

.method public a(Lhfn;)V
    .locals 4

    .prologue
    .line 218
    invoke-virtual {p1}, Lhfn;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p1}, Lhfn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhgo;->b(Ljava/lang/String;)Lhfu;

    move-result-object v1

    .line 4198
    const-string v0, "Expected non-null"

    invoke-static {v0, v1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Lhfn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laal;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v2, p0, Lhgo;->g:Lhbj;

    invoke-interface {v2}, Lhbj;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkja;

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v1, v0}, Lhfu;->a(Lkja;)V

    goto :goto_0
.end method

.method a(Lhgn;)V
    .locals 3

    .prologue
    .line 189
    const/4 v0, 0x0

    iget-object v1, p0, Lhgo;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 190
    iget-object v2, p0, Lhgo;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    iget-object v1, p0, Lhgo;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 195
    :cond_0
    return-void

    .line 189
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lhil;Latn;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p1}, Lhil;->k()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lhgo;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lhil;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {p1}, Lhil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lhgo;->b(Ljava/lang/String;)Lhfu;

    move-result-object v1

    .line 203
    instance-of v2, p2, Lhiq;

    if-eqz v2, :cond_4

    .line 204
    check-cast p2, Lhiq;

    .line 205
    iget v2, p2, Lhiq;->a:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 206
    invoke-virtual {p1}, Lhil;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Lhfu;->b(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lhil;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 207
    :cond_3
    iget v2, p2, Lhiq;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 208
    invoke-virtual {p1}, Lhil;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lhfu;->b(I)V

    goto :goto_0

    .line 210
    :cond_4
    instance-of v0, p2, Lhis;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p1}, Lhil;->o()Z

    move-result v0

    invoke-virtual {v1, v0}, Lhfu;->a(Z)V

    goto :goto_0
.end method

.method public a(Lhla;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3179
    iget-object v0, p0, Lhgo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    .line 3180
    iget-object v0, p0, Lhgo;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgn;

    .line 3181
    invoke-virtual {v0}, Lhgn;->o()Lhla;

    move-result-object v4

    invoke-virtual {p1, v4}, Lhla;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    :goto_1
    if-eqz v0, :cond_3

    .line 155
    const-string v1, "vclib"

    const-string v3, "unbindVideoFromSurface start source=%s, surface=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const/4 v2, 0x1

    aput-object p1, v4, v2

    .line 4077
    const/4 v2, 0x3

    invoke-static {v2, v1, v3, v4}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    new-instance v1, Lhgq;

    invoke-direct {v1, p0, v0, p1, p2}, Lhgq;-><init>(Lhgo;Lhgn;Lhla;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lhgn;->a(Lhla;Ljava/lang/Runnable;)V

    .line 176
    :cond_0
    :goto_2
    return-void

    .line 3179
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3185
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 172
    :cond_3
    if-eqz p2, :cond_0

    .line 173
    invoke-static {p2}, Laal;->a(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Lhla;)V
    .locals 3

    .prologue
    .line 112
    const-string v0, "bindVideoToSurface requires a valid participantId"

    invoke-static {v0, p1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "localParticipant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhgo;->f:Lhfo;

    .line 115
    invoke-virtual {v0}, Lhfo;->d()Lhfn;

    move-result-object v0

    invoke-virtual {v0}, Lhfn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    iget-object v0, p0, Lhgo;->c:Lhge;

    .line 120
    :goto_0
    if-nez v0, :cond_2

    .line 121
    const-string v0, "vclib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Attempted to bind video for participant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but there is no VideoSource for this participant"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_1
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lhgo;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgn;

    goto :goto_0

    .line 127
    :cond_2
    new-instance v1, Lhgp;

    invoke-direct {v1, p0, v0, p2}, Lhgp;-><init>(Lhgo;Lhgn;Lhla;)V

    .line 137
    invoke-virtual {v0}, Lhgn;->o()Lhla;

    move-result-object v0

    invoke-virtual {p2, v0}, Lhla;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {p0, p2, v1}, Lhgo;->a(Lhla;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public b()Lhge;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lhgo;->c:Lhge;

    return-object v0
.end method

.method public b(Lhfn;)V
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p1}, Lhfn;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v0, Lhgr;

    invoke-direct {v0, p0, p1}, Lhgr;-><init>(Lhgo;Lhfn;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public c(Lhfn;)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lhgo;->i:Lhfn;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lhgo;->a:Ljava/util/Map;

    iget-object v1, p0, Lhgo;->i:Lhfn;

    invoke-virtual {v1}, Lhfn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfu;

    .line 248
    if-eqz v0, :cond_0

    .line 249
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhfu;->b(Z)V

    .line 252
    :cond_0
    iput-object p1, p0, Lhgo;->i:Lhfn;

    .line 253
    iget-object v0, p0, Lhgo;->a:Ljava/util/Map;

    iget-object v1, p0, Lhgo;->i:Lhfn;

    invoke-virtual {v1}, Lhfn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfu;

    .line 254
    if-eqz v0, :cond_1

    .line 255
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhfu;->b(Z)V

    .line 257
    :cond_1
    return-void
.end method
