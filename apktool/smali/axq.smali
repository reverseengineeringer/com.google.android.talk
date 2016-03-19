.class public final Laxq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field transient a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxs;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxt;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldtw;",
            "Laxt;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxt;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldtw;",
            "Laxt;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laxq;->b:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laxq;->c:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laxq;->d:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laxq;->e:Ljava/util/Map;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Laxq;->f:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laxq;->a:Ljava/util/List;

    .line 53
    return-void
.end method

.method public constructor <init>(Lihb;Z)V
    .locals 1

    .prologue
    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lihb;->g()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Laxq;-><init>(Ljava/util/Collection;Z)V

    .line 83
    return-void

    .line 82
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/Collection;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Laxt;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laxq;->b:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laxq;->c:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laxq;->d:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laxq;->e:Ljava/util/Map;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Laxq;->f:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laxq;->a:Ljava/util/List;

    .line 62
    if-eqz p2, :cond_0

    .line 63
    iget-object v0, p0, Laxq;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxt;

    .line 65
    iget-object v2, p0, Laxq;->e:Ljava/util/Map;

    invoke-virtual {v0}, Laxt;->b()Ldtw;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Laxq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxt;

    .line 70
    iget-object v2, p0, Laxq;->c:Ljava/util/Map;

    invoke-virtual {v0}, Laxt;->b()Ldtw;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 73
    :cond_1
    return-void
.end method

.method private a(Ldtw;)Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Laxq;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laxq;->c:Ljava/util/Map;

    .line 191
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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

.method private h()V
    .locals 1

    .prologue
    .line 230
    new-instance v0, Laxr;

    invoke-direct {v0, p0}, Laxr;-><init>(Laxq;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laxq;->a:Ljava/util/List;

    .line 91
    return-void
.end method


# virtual methods
.method public a()Lihb;
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lihb;->newBuilder()Laxm;

    move-result-object v0

    iget-object v1, p0, Laxq;->d:Ljava/util/List;

    .line 101
    invoke-virtual {v0, v1}, Laxm;->a(Ljava/lang/Iterable;)Laxm;

    move-result-object v0

    iget-object v1, p0, Laxq;->b:Ljava/util/List;

    .line 102
    invoke-virtual {v0, v1}, Laxm;->a(Ljava/lang/Iterable;)Laxm;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Laxm;->a()Lihb;

    move-result-object v0

    return-object v0
.end method

.method public a(Laxs;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Laxq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public a(Laxt;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Laxq;->e:Ljava/util/Map;

    invoke-virtual {p1}, Laxt;->b()Ldtw;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laxq;->c:Ljava/util/Map;

    .line 119
    invoke-virtual {p1}, Laxt;->b()Ldtw;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Laxq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Laxq;->c:Ljava/util/Map;

    invoke-virtual {p1}, Laxt;->b()Ldtw;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-direct {p0}, Laxq;->h()V

    goto :goto_0
.end method

.method public a(Lbdy;)V
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Laxq;->c(Lbdy;)Z

    move-result v0

    const-string v1, "Person has already been removed from the model."

    invoke-static {v0, v1}, Lfii;->b(ZLjava/lang/Object;)V

    .line 139
    invoke-virtual {p1}, Lbdy;->p()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtw;

    .line 140
    invoke-direct {p0, v0}, Laxq;->a(Ldtw;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Laxq;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxt;

    invoke-virtual {p0, v0}, Laxq;->b(Laxt;)V

    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    const-string p1, ""

    .line 221
    :cond_0
    iget-object v0, p0, Laxq;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iput-object p1, p0, Laxq;->f:Ljava/lang/String;

    .line 1241
    iget-object v0, p0, Laxq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxs;

    .line 1242
    iget-object v2, p0, Laxq;->f:Ljava/lang/String;

    invoke-interface {v0, v2}, Laxs;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Laxq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Laxq;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Laxt;)V
    .locals 2

    .prologue
    .line 1186
    invoke-virtual {p1}, Laxt;->b()Ldtw;

    move-result-object v0

    invoke-direct {p0, v0}, Laxq;->a(Ldtw;)Z

    move-result v0

    .line 128
    const-string v1, "Person has already been removed from the model."

    invoke-static {v0, v1}, Lfii;->b(ZLjava/lang/Object;)V

    .line 130
    iget-object v0, p0, Laxq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Laxq;->c:Ljava/util/Map;

    invoke-virtual {p1}, Laxt;->b()Ldtw;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Laxq;->h()V

    .line 134
    :cond_0
    return-void
.end method

.method public b(Lbdy;)Z
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p1}, Lbdy;->p()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtw;

    .line 177
    iget-object v2, p0, Laxq;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laxt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Laxq;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public c(Laxt;)Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Laxq;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Lbdy;)Z
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p1}, Lbdy;->p()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtw;

    .line 196
    invoke-direct {p0, v0}, Laxq;->a(Ldtw;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laxt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object v1, p0, Laxq;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    iget-object v1, p0, Laxq;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    return-object v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Laxq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Laxq;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Laxq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    iget-object v0, p0, Laxq;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 206
    invoke-direct {p0}, Laxq;->h()V

    .line 207
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Laxq;->f:Ljava/lang/String;

    return-object v0
.end method
