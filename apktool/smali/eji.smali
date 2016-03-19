.class public final Leji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgpr;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lgps;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lgpy;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgpr;)V
    .locals 4

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-interface {p1}, Lgpr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leji;->a:Ljava/lang/String;

    .line 100
    invoke-interface {p1}, Lgpr;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leji;->b:Ljava/lang/String;

    .line 101
    invoke-interface {p1}, Lgpr;->b()Ljava/lang/Iterable;

    move-result-object v0

    iput-object v0, p0, Leji;->c:Ljava/lang/Iterable;

    .line 102
    invoke-interface {p1}, Lgpr;->P_()Ljava/lang/Iterable;

    move-result-object v0

    iput-object v0, p0, Leji;->d:Ljava/lang/Iterable;

    .line 103
    invoke-interface {p1}, Lgpr;->d()Ljava/lang/Iterable;

    move-result-object v0

    iput-object v0, p0, Leji;->e:Ljava/lang/Iterable;

    .line 104
    invoke-interface {p1}, Lgpr;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leji;->f:Ljava/lang/String;

    .line 105
    invoke-interface {p1}, Lgpr;->f()Z

    move-result v0

    iput-boolean v0, p0, Leji;->g:Z

    .line 106
    invoke-interface {p1}, Lgpr;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leji;->h:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    .line 109
    :try_start_0
    invoke-interface {p1}, Lgpr;->h()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_0
    iput-object v0, p0, Leji;->i:Ljava/lang/String;

    .line 115
    invoke-interface {p1}, Lgpr;->i()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leji;->j:[Ljava/lang/String;

    .line 116
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 112
    const-string v2, "Babel"

    const-string v3, "Caught NPE in getAvatarUrl"

    invoke-static {v2, v3, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/security/MessageDigest;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public P_()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lgps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Leji;->d:Ljava/lang/Iterable;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Leji;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Leji;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Leji;->a(Ljava/security/MessageDigest;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Leji;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Leji;->a(Ljava/security/MessageDigest;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Leji;->c:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1051
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2336
    new-array v5, v8, [B

    .line 2337
    const/4 v0, 0x7

    :goto_1
    if-ltz v0, :cond_0

    .line 2338
    const-wide/16 v6, 0xff

    and-long/2addr v6, v2

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 2339
    shr-long/2addr v2, v8

    .line 2337
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {p1, v5}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Leji;->P_()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgps;

    .line 128
    invoke-interface {v0}, Lgps;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Leji;->a(Ljava/security/MessageDigest;Ljava/lang/String;)V

    .line 129
    invoke-interface {v0}, Lgps;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Leji;->a(Ljava/security/MessageDigest;Ljava/lang/String;)V

    goto :goto_2

    .line 132
    :cond_2
    invoke-virtual {p0}, Leji;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpy;

    .line 133
    invoke-interface {v0}, Lgpy;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Leji;->a(Ljava/security/MessageDigest;Ljava/lang/String;)V

    .line 134
    invoke-interface {v0}, Lgpy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Leji;->a(Ljava/security/MessageDigest;Ljava/lang/String;)V

    goto :goto_3

    .line 137
    :cond_3
    iget-object v0, p0, Leji;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Leji;->a(Ljava/security/MessageDigest;Ljava/lang/String;)V

    .line 139
    iget-boolean v0, p0, Leji;->g:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update(B)V

    .line 140
    iget-object v0, p0, Leji;->h:Ljava/lang/String;

    invoke-static {p1, v0}, Leji;->a(Ljava/security/MessageDigest;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Leji;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Leji;->a(Ljava/security/MessageDigest;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Leji;->j:[Ljava/lang/String;

    array-length v2, v0

    :goto_5
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 144
    invoke-static {p1, v3}, Leji;->a(Ljava/security/MessageDigest;Ljava/lang/String;)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    move v0, v1

    .line 139
    goto :goto_4

    .line 146
    :cond_5
    return-void
.end method

.method public b()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Leji;->c:Ljava/lang/Iterable;

    return-object v0
.end method

.method public d()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lgpy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Leji;->e:Ljava/lang/Iterable;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Leji;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Leji;->g:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Leji;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Leji;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Leji;->j:[Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Leji;->b:Ljava/lang/String;

    return-object v0
.end method
