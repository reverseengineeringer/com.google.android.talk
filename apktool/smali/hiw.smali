.class final Lhiw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfif;
.implements Lfih;


# instance fields
.field final synthetic a:Lhiv;

.field private final b:Lfic;

.field private final c:Lfgr;

.field private final d:Lmdx;


# direct methods
.method constructor <init>(Lhiv;)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 124
    iput-object p1, p0, Lhiw;->a:Lhiv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    iget-object v0, p1, Lhiv;->b:Lhks;

    .line 125
    invoke-interface {v0}, Lhks;->l()Lhkv;

    move-result-object v0

    invoke-virtual {v0}, Lhkv;->a()Lhkt;

    move-result-object v2

    .line 126
    new-instance v0, Lfid;

    .line 2041
    iget-object v3, p1, Lhiv;->a:Landroid/content/Context;

    .line 126
    invoke-direct {v0, v3}, Lfid;-><init>(Landroid/content/Context;)V

    sget-object v3, Lfgr;->c:Lfhw;

    .line 127
    invoke-virtual {v0, v3}, Lfid;->a(Lfhw;)Lfid;

    move-result-object v3

    if-nez v2, :cond_0

    .line 128
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Lfid;->a(Ljava/lang/String;)Lfid;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, Lfid;->a(Lfif;)Lfid;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lfid;->b()Lfic;

    move-result-object v0

    iput-object v0, p0, Lhiw;->b:Lfic;

    .line 131
    iget-object v0, p0, Lhiw;->b:Lfic;

    invoke-interface {v0}, Lfic;->b()V

    .line 132
    invoke-virtual {p1}, Lhiv;->a()Lfgr;

    move-result-object v0

    iput-object v0, p0, Lhiw;->c:Lfgr;

    .line 3041
    iget-object v0, p1, Lhiv;->a:Landroid/content/Context;

    .line 4105
    if-eqz v2, :cond_1

    .line 4106
    invoke-virtual {v2}, Lhkt;->d()Lmdx;

    move-result-object v0

    .line 133
    :goto_1
    iput-object v0, p0, Lhiw;->d:Lmdx;

    .line 134
    return-void

    .line 128
    :cond_0
    invoke-virtual {v2}, Lhkt;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4110
    :cond_1
    new-instance v2, Lmdx;

    invoke-direct {v2}, Lmdx;-><init>()V

    .line 4111
    const/16 v3, 0x197

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lmdx;->b:Ljava/lang/Integer;

    .line 4112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lmdx;->c:Ljava/lang/Integer;

    .line 4113
    invoke-static {v0}, Laal;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4114
    const/4 v0, 0x3

    .line 4113
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lmdx;->a:Ljava/lang/Integer;

    move-object v0, v2

    .line 4115
    goto :goto_1

    :cond_2
    move v0, v1

    .line 4114
    goto :goto_2
.end method

.method private c(I)Lkls;
    .locals 6

    .prologue
    .line 141
    new-instance v0, Lkls;

    invoke-direct {v0}, Lkls;-><init>()V

    .line 142
    iget-object v1, p0, Lhiw;->d:Lmdx;

    iput-object v1, v0, Lkls;->e:Lmdx;

    .line 143
    new-instance v1, Lkli;

    invoke-direct {v1}, Lkli;-><init>()V

    iput-object v1, v0, Lkls;->a:Lkli;

    .line 144
    iget-object v1, v0, Lkls;->a:Lkli;

    new-instance v2, Lklj;

    invoke-direct {v2}, Lklj;-><init>()V

    iput-object v2, v1, Lkli;->j:Lklj;

    .line 145
    iget-object v1, v0, Lkls;->a:Lkli;

    iget-object v1, v1, Lkli;->j:Lklj;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lklj;->a:Ljava/lang/Integer;

    .line 147
    iget-object v1, p0, Lhiw;->a:Lhiv;

    .line 5041
    iget-object v1, v1, Lhiv;->b:Lhks;

    .line 147
    invoke-interface {v1}, Lhks;->l()Lhkv;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lhkv;->a()Lhkt;

    move-result-object v2

    .line 149
    invoke-virtual {v1}, Lhkv;->b()Lhkw;

    move-result-object v3

    .line 150
    iget-object v4, v0, Lkls;->a:Lkli;

    new-instance v5, Lklh;

    invoke-direct {v5}, Lklh;-><init>()V

    iput-object v5, v4, Lkli;->a:Lklh;

    .line 153
    if-eqz v3, :cond_2

    .line 154
    iget-object v4, v0, Lkls;->a:Lkli;

    iget-object v4, v4, Lkli;->a:Lklh;

    invoke-virtual {v3}, Lhkw;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lklh;->c:Ljava/lang/String;

    .line 155
    iget-object v4, v0, Lkls;->a:Lkli;

    iget-object v4, v4, Lkli;->a:Lklh;

    invoke-virtual {v3}, Lhkw;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lklh;->d:Ljava/lang/String;

    .line 160
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 164
    iget-object v3, v0, Lkls;->a:Lkli;

    iget-object v3, v3, Lkli;->a:Lklh;

    invoke-virtual {v2}, Lhkt;->p()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lklh;->a:Ljava/lang/String;

    .line 167
    :cond_1
    iget-object v2, v0, Lkls;->a:Lkli;

    iget-object v2, v2, Lkli;->a:Lklh;

    invoke-virtual {v1}, Lhkv;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lklh;->k:Ljava/lang/String;

    .line 168
    iget-object v2, v0, Lkls;->a:Lkli;

    iget-object v2, v2, Lkli;->a:Lklh;

    invoke-virtual {v1}, Lhkv;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lklh;->b:Ljava/lang/String;

    .line 169
    iget-object v2, v0, Lkls;->a:Lkli;

    iget-object v2, v2, Lkli;->a:Lklh;

    invoke-virtual {v1}, Lhkv;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lklh;->e:Ljava/lang/String;

    .line 174
    return-object v0

    .line 156
    :cond_2
    if-eqz v2, :cond_0

    .line 157
    iget-object v3, v0, Lkls;->a:Lkli;

    iget-object v3, v3, Lkli;->a:Lklh;

    invoke-virtual {v2}, Lhkt;->f()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lklh;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lhiw;->c:Lfgr;

    iget-object v1, p0, Lhiw;->b:Lfic;

    invoke-virtual {v0, v1}, Lfgr;->a(Lfic;)V

    .line 138
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 200
    const-string v0, "vclib"

    const-string v1, "ImpressionReporter GoogleApiClient suspended: %d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method a(JII)V
    .locals 5

    .prologue
    .line 184
    const/16 v0, 0xbc7

    invoke-direct {p0, v0}, Lhiw;->c(I)Lkls;

    move-result-object v0

    .line 185
    iget-object v1, v0, Lkls;->a:Lkli;

    iget-object v1, v1, Lkli;->j:Lklj;

    new-instance v2, Lklo;

    invoke-direct {v2}, Lklo;-><init>()V

    iput-object v2, v1, Lklj;->i:Lklo;

    .line 186
    iget-object v1, v0, Lkls;->a:Lkli;

    iget-object v1, v1, Lkli;->j:Lklj;

    iget-object v1, v1, Lklj;->i:Lklo;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lklo;->a:Ljava/lang/Long;

    .line 187
    iget-object v1, v0, Lkls;->a:Lkli;

    iget-object v1, v1, Lkli;->j:Lklj;

    iget-object v1, v1, Lklj;->i:Lklo;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lklo;->b:Ljava/lang/Integer;

    .line 188
    iget-object v1, v0, Lkls;->a:Lkli;

    iget-object v1, v1, Lkli;->j:Lklj;

    iget-object v1, v1, Lklj;->i:Lklo;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lklo;->c:Ljava/lang/Integer;

    .line 189
    iget-object v1, p0, Lhiw;->c:Lfgr;

    invoke-static {v0}, Llyi;->a(Llyi;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lfgr;->a([B)Lfgt;

    move-result-object v1

    iget-object v2, p0, Lhiw;->b:Lfic;

    invoke-virtual {v1, v2}, Lfgt;->b(Lfic;)Lfij;

    .line 190
    const-string v1, "vclib"

    const-string v2, "Logging UMA event to clearcut: \n%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 6077
    const/4 v0, 0x3

    invoke-static {v0, v1, v2, v3}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    .prologue
    .line 205
    const-string v0, "vclib"

    const-string v1, "ImpressionReporter GoogleApiClient failed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public a_(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 195
    const-string v0, "vclib"

    const-string v1, "ImpressionReporter connected to GoogleApiClient."

    .line 6081
    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method b(I)V
    .locals 5

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lhiw;->c(I)Lkls;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lhiw;->c:Lfgr;

    invoke-static {v0}, Llyi;->a(Llyi;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lfgr;->a([B)Lfgt;

    move-result-object v1

    iget-object v2, p0, Lhiw;->b:Lfic;

    invoke-virtual {v1, v2}, Lfgt;->b(Lfic;)Lfij;

    .line 180
    const-string v1, "vclib"

    const-string v2, "Logging to clearcut: \n%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 5077
    const/4 v0, 0x3

    invoke-static {v0, v1, v2, v3}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    return-void
.end method
