.class public abstract Lagr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lagr",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Lahc;

.field b:Ljava/lang/Integer;

.field c:Z

.field public d:Lagz;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:Lagw;

.field private i:Lagu;

.field private j:Z

.field private k:Z

.field private l:J

.field private m:Lagj;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lagw;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lagr;-><init>(Ljava/lang/String;Lagw;B)V

    .line 123
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lagw;B)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v0, Lahc;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lahc;

    invoke-direct {v0}, Lahc;-><init>()V

    :goto_0
    iput-object v0, p0, Lagr;->a:Lahc;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lagr;->c:Z

    .line 88
    iput-boolean v2, p0, Lagr;->j:Z

    .line 91
    iput-boolean v2, p0, Lagr;->k:Z

    .line 94
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lagr;->l:J

    .line 107
    iput-object v1, p0, Lagr;->m:Lagj;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lagr;->e:I

    .line 133
    iput-object p1, p0, Lagr;->f:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lagr;->h:Lagw;

    .line 135
    new-instance v0, Lagz;

    invoke-direct {v0}, Lagz;-><init>()V

    invoke-virtual {p0, v0}, Lagr;->a(Lagz;)Lagr;

    .line 1184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1185
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1186
    if-eqz v0, :cond_1

    .line 1187
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1188
    if-eqz v0, :cond_1

    .line 1189
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 137
    :goto_1
    iput v0, p0, Lagr;->g:I

    .line 138
    return-void

    :cond_0
    move-object v0, v1

    .line 61
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1193
    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lagr;->e:I

    return v0
.end method

.method public a(Lagr;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagr",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 587
    invoke-virtual {p0}, Lagr;->l()Lagt;

    move-result-object v0

    .line 588
    invoke-virtual {p1}, Lagr;->l()Lagt;

    move-result-object v1

    .line 592
    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lagr;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lagr;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lagt;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lagt;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public a(Lagj;)Lagr;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagj;",
            ")",
            "Lagr",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 304
    iput-object p1, p0, Lagr;->m:Lagj;

    .line 305
    return-object p0
.end method

.method public a(Lagu;)Lagr;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagu;",
            ")",
            "Lagr",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 259
    iput-object p1, p0, Lagr;->i:Lagu;

    .line 260
    return-object p0
.end method

.method public a(Lagz;)Lagr;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagz;",
            ")",
            "Lagr",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 202
    iput-object p1, p0, Lagr;->d:Lagz;

    .line 203
    return-object p0
.end method

.method public abstract a(Lagq;)Lagv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagq;",
            ")",
            "Lagv",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected a(Laha;)Laha;
    .locals 0

    .prologue
    .line 557
    return-object p1
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 210
    sget-boolean v0, Lahc;->a:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lagr;->a:Lahc;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lahc;->a(Ljava/lang/String;J)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-wide v0, p0, Lagr;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lagr;->l:J

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lagr;->g:I

    return v0
.end method

.method public b(Laha;)V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lagr;->h:Lagw;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lagr;->h:Lagw;

    invoke-virtual {v0, p1}, Lagw;->a(Laha;)V

    .line 579
    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 223
    iget-object v0, p0, Lagr;->i:Lagu;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lagr;->i:Lagu;

    invoke-virtual {v0, p0}, Lagu;->b(Lagr;)V

    .line 226
    :cond_0
    sget-boolean v0, Lahc;->a:Z

    if-eqz v0, :cond_3

    .line 227
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 228
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 231
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 232
    new-instance v3, Lags;

    invoke-direct {v3, p0, p1, v0, v1}, Lags;-><init>(Lagr;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    iget-object v2, p0, Lagr;->a:Lahc;

    invoke-virtual {v2, p1, v0, v1}, Lahc;->a(Ljava/lang/String;J)V

    .line 243
    iget-object v0, p0, Lagr;->a:Lahc;

    invoke-virtual {p0}, Lagr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lahc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lagr;->l:J

    sub-long/2addr v0, v2

    .line 246
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 247
    const-string v2, "%d ms: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lagr;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 2060
    invoke-static {v2, v3}, Lahb;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lagr;->f:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 38
    check-cast p1, Lagr;

    invoke-virtual {p0, p1}, Lagr;->a(Lagr;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lagr;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lagj;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lagr;->m:Lagj;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lagr;->j:Z

    return v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0}, Lagr;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    const/4 v0, 0x0

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lagr;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Lagt;
    .locals 1

    .prologue
    .line 504
    sget-object v0, Lagt;->b:Lagt;

    return-object v0
.end method

.method public m()Lagz;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lagr;->d:Lagz;

    return-object v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lagr;->k:Z

    .line 529
    return-void
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lagr;->k:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lagr;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lagr;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "[X] "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lagr;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lagr;->l()Lagt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagr;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "[ ] "

    goto :goto_0
.end method
