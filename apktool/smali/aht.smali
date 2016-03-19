.class public final Laht;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lapj;

.field private final b:Laty;

.field private final c:Lauc;

.field private final d:Laue;

.field private final e:Lajj;

.field private final f:Latc;

.field private final g:Laub;

.field private final h:Laua;

.field private final i:Lic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Laub;

    invoke-direct {v0}, Laub;-><init>()V

    iput-object v0, p0, Laht;->g:Laub;

    .line 43
    new-instance v0, Laua;

    invoke-direct {v0}, Laua;-><init>()V

    iput-object v0, p0, Laht;->h:Laua;

    .line 44
    invoke-static {}, Lavs;->a()Lic;

    move-result-object v0

    iput-object v0, p0, Laht;->i:Lic;

    .line 47
    new-instance v0, Lapj;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Laht;->i:Lic;

    invoke-direct {v0, v1, v2}, Lapj;-><init>(Landroid/content/Context;Lic;)V

    iput-object v0, p0, Laht;->a:Lapj;

    .line 49
    new-instance v0, Laty;

    invoke-direct {v0}, Laty;-><init>()V

    iput-object v0, p0, Laht;->b:Laty;

    .line 50
    new-instance v0, Lauc;

    invoke-direct {v0}, Lauc;-><init>()V

    iput-object v0, p0, Laht;->c:Lauc;

    .line 51
    new-instance v0, Laue;

    invoke-direct {v0}, Laue;-><init>()V

    iput-object v0, p0, Laht;->d:Laue;

    .line 52
    new-instance v0, Lajj;

    invoke-direct {v0}, Lajj;-><init>()V

    iput-object v0, p0, Laht;->e:Lajj;

    .line 53
    new-instance v0, Latc;

    invoke-direct {v0}, Latc;-><init>()V

    iput-object v0, p0, Laht;->f:Latc;

    .line 54
    return-void
.end method


# virtual methods
.method public a(Laji;)Laht;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Laht;->e:Lajj;

    invoke-virtual {v0, p1}, Lajj;->a(Laji;)V

    .line 81
    return-object p0
.end method

.method public a(Ljava/lang/Class;Laiu;)Laht;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Laiu",
            "<TData;>;)",
            "Laht;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Laht;->b:Laty;

    invoke-virtual {v0, p1, p2}, Laty;->a(Ljava/lang/Class;Laiu;)V

    .line 58
    return-object p0
.end method

.method public a(Ljava/lang/Class;Lajc;)Laht;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lajc",
            "<TTResource;>;)",
            "Laht;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Laht;->d:Laue;

    invoke-virtual {v0, p1, p2}, Laue;->a(Ljava/lang/Class;Lajc;)V

    .line 76
    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lajb;)Laht;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lajb",
            "<TData;TTResource;>;)",
            "Laht;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Laht;->c:Lauc;

    invoke-virtual {v0, p3, p1, p2}, Lauc;->a(Lajb;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 64
    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lapi",
            "<TModel;TData;>;)",
            "Laht;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Laht;->a:Lapj;

    invoke-virtual {v0, p1, p2, p3}, Lapj;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)V

    .line 109
    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Latb;)Laht;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;",
            "Latb",
            "<TTResource;TTranscode;>;)",
            "Laht;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Laht;->f:Latc;

    invoke-virtual {v0, p1, p2, p3}, Latc;->a(Ljava/lang/Class;Ljava/lang/Class;Latb;)V

    .line 87
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Laiu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Laiu",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Laht;->b:Laty;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Laty;->a(Ljava/lang/Class;)Laiu;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    .line 210
    return-object v0

    .line 212
    :cond_0
    new-instance v0, Lax;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lax;-><init>(Ljava/lang/Class;B)V

    throw v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lalo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Lalo",
            "<TData;TTResource;TTranscode;>;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Laht;->h:Laua;

    .line 127
    invoke-virtual {v0, p1, p2, p3}, Laua;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lalo;

    move-result-object v0

    .line 128
    if-nez v0, :cond_2

    iget-object v1, p0, Laht;->h:Laua;

    invoke-virtual {v1, p1, p2, p3}, Laua;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1147
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    iget-object v0, p0, Laht;->c:Lauc;

    .line 1149
    invoke-virtual {v0, p1, p2}, Lauc;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 1152
    iget-object v0, p0, Laht;->f:Latc;

    .line 1153
    invoke-virtual {v0, v2, p3}, Latc;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 1157
    iget-object v0, p0, Laht;->c:Lauc;

    .line 1158
    invoke-virtual {v0, p1, v2}, Lauc;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 1159
    iget-object v0, p0, Laht;->f:Latc;

    .line 1160
    invoke-virtual {v0, v2, v3}, Latc;->a(Ljava/lang/Class;Ljava/lang/Class;)Latb;

    move-result-object v5

    .line 1161
    new-instance v0, Lakp;

    iget-object v6, p0, Laht;->i:Lic;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lakp;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Latb;Lic;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    const/4 v0, 0x0

    .line 139
    :goto_1
    iget-object v1, p0, Laht;->h:Laua;

    invoke-virtual {v1, p1, p2, p3, v0}, Laua;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lalo;)V

    .line 141
    :cond_2
    return-object v0

    .line 136
    :cond_3
    new-instance v0, Lalo;

    iget-object v5, p0, Laht;->i:Lic;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lalo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lic;)V

    goto :goto_1
.end method

.method public a(Lalr;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalr",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Laht;->d:Laue;

    invoke-interface {p1}, Lalr;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Laue;->a(Ljava/lang/Class;)Lajc;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;Lajb;)Laht;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lajb",
            "<TData;TTResource;>;)",
            "Laht;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Laht;->c:Lauc;

    invoke-virtual {v0, p3, p1, p2}, Lauc;->b(Lajb;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 70
    return-object p0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lapi",
            "<TModel;TData;>;)",
            "Laht;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Laht;->a:Lapj;

    invoke-virtual {v0, p1, p2, p3}, Lapj;->b(Ljava/lang/Class;Ljava/lang/Class;Lapi;)V

    .line 115
    return-object p0
.end method

.method public b(Lalr;)Lajc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lalr",
            "<TX;>;)",
            "Lajc",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Laht;->d:Laue;

    invoke-interface {p1}, Lalr;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Laue;->a(Ljava/lang/Class;)Lajc;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    .line 201
    return-object v0

    .line 203
    :cond_0
    new-instance v0, Lax;

    invoke-interface {p1}, Lalr;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lax;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public b(Ljava/lang/Object;)Lajh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lajh",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Laht;->e:Lajj;

    invoke-virtual {v0, p1}, Lajj;->a(Ljava/lang/Object;)Lajh;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Laht;->g:Laub;

    invoke-virtual {v0, p1, p2}, Laub;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 172
    if-nez v0, :cond_3

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v0, p0, Laht;->a:Lapj;

    invoke-virtual {v0, p1}, Lapj;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 176
    iget-object v3, p0, Laht;->c:Lauc;

    .line 177
    invoke-virtual {v3, v0, p2}, Lauc;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 179
    iget-object v4, p0, Laht;->f:Latc;

    .line 180
    invoke-virtual {v4, v0, p3}, Latc;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 181
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 182
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Laht;->g:Laub;

    .line 187
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 186
    invoke-virtual {v0, p1, p2, v2}, Laub;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    move-object v0, v1

    .line 190
    :cond_3
    return-object v0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lapi",
            "<TModel;TData;>;)",
            "Laht;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Laht;->a:Lapj;

    invoke-virtual {v0, p1, p2, p3}, Lapj;->c(Ljava/lang/Class;Ljava/lang/Class;Lapi;)V

    .line 121
    return-object p0
.end method

.method public c(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List",
            "<",
            "Lapg",
            "<TModel;*>;>;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Laht;->a:Lapj;

    invoke-virtual {v0, p1}, Lapj;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    new-instance v0, Lax;

    invoke-direct {v0, p1}, Lax;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 224
    :cond_0
    return-object v0
.end method
