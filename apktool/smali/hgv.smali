.class public final Lhgv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lhhb;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lhgz",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 183
    new-instance v1, Liqr;

    invoke-direct {v1}, Liqr;-><init>()V

    const-class v0, Lhbr;

    .line 184
    invoke-static {p1, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 183
    :goto_0
    invoke-direct {p0, p1, p2, v1, v0}, Lhgv;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/api/client/http/HttpTransport;Z)V

    .line 185
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/api/client/http/HttpTransport;Z)V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lhgv;->b:Landroid/content/Context;

    .line 190
    iput-object p2, p0, Lhgv;->c:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lhgv;->h:Lcom/google/api/client/http/HttpTransport;

    .line 192
    iput-boolean p4, p0, Lhgv;->d:Z

    .line 193
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lhgv;->e:Ljava/util/Queue;

    .line 194
    return-void
.end method

.method private a(JLjava/lang/String;[BILhhb;)V
    .locals 11

    .prologue
    .line 282
    iget-boolean v0, p0, Lhgv;->d:Z

    if-eqz v0, :cond_0

    .line 284
    new-instance v1, Lhhd;

    iget-object v0, p0, Lhgv;->b:Landroid/content/Context;

    const-class v2, Lhbr;

    .line 285
    invoke-static {v0, v2}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhbr;

    iget-object v8, p0, Lhgv;->c:Ljava/lang/String;

    iget-object v10, p0, Lhgv;->b:Landroid/content/Context;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lhhd;-><init>(JLjava/lang/String;[BILhbr;Ljava/lang/String;Lhhb;Landroid/content/Context;)V

    .line 289
    :goto_0
    iget-object v0, p0, Lhgv;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lhgv;->f:Ljava/lang/String;

    iget-wide v2, p0, Lhgv;->g:J

    invoke-virtual {v1, v0, v2, v3}, Lhgz;->a(Ljava/lang/String;J)V

    .line 291
    new-instance v0, Lhhc;

    invoke-direct {v0, p0, v1}, Lhhc;-><init>(Lhgv;Lhgz;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lhhc;->a([Ljava/lang/Object;)Lhbw;

    .line 292
    const-string v0, "vclib"

    const-string v1, "Starting apiary request: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 4077
    const/4 v3, 0x3

    invoke-static {v3, v0, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :goto_1
    return-void

    .line 287
    :cond_0
    new-instance v1, Lhgz;

    iget-object v7, p0, Lhgv;->h:Lcom/google/api/client/http/HttpTransport;

    iget-object v8, p0, Lhgv;->c:Ljava/lang/String;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lhgz;-><init>(JLjava/lang/String;[BILcom/google/api/client/http/HttpTransport;Ljava/lang/String;Lhhb;)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lhgv;->e:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v0, "vclib"

    const-string v1, "authToken not available yet, delaying request. #pending: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lhgv;->e:Ljava/util/Queue;

    .line 296
    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5077
    const/4 v3, 0x3

    invoke-static {v3, v0, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public a(JLjava/lang/String;[BI)V
    .locals 9

    .prologue
    .line 257
    iget-object v0, p0, Lhgv;->a:Lhhb;

    .line 2198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    new-instance v7, Lhgw;

    invoke-direct {v7, p0}, Lhgw;-><init>(Lhgv;)V

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 258
    invoke-direct/range {v1 .. v7}, Lhgv;->a(JLjava/lang/String;[BILhhb;)V

    .line 259
    return-void
.end method

.method public a(Lhhb;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lhgv;->a:Lhhb;

    .line 223
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lhgv;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 198
    :goto_0
    const-string v3, "vclib"

    const-string v4, "Setting authToken, wasNull: %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1077
    invoke-static {v7, v3, v4, v5}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iput-object p1, p0, Lhgv;->f:Ljava/lang/String;

    .line 200
    iput-wide p2, p0, Lhgv;->g:J

    .line 202
    if-eqz v0, :cond_1

    .line 1208
    const-string v0, "vclib"

    const-string v3, "Issuing any pending requests, #requests: %d"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lhgv;->e:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 2077
    invoke-static {v7, v0, v3, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1209
    :goto_1
    iget-object v0, p0, Lhgv;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1210
    iget-object v0, p0, Lhgv;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgz;

    .line 1211
    iget-object v1, p0, Lhgv;->f:Ljava/lang/String;

    iget-wide v4, p0, Lhgv;->g:J

    invoke-virtual {v0, v1, v4, v5}, Lhgz;->a(Ljava/lang/String;J)V

    .line 1212
    new-instance v1, Lhhc;

    invoke-direct {v1, p0, v0}, Lhhc;-><init>(Lhgv;Lhgz;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lhhc;->a([Ljava/lang/Object;)Lhbw;

    goto :goto_1

    :cond_0
    move v0, v2

    .line 197
    goto :goto_0

    .line 205
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;[BILhhb;)V
    .locals 8

    .prologue
    .line 3198
    const-string v0, "Expected non-null"

    invoke-static {v0, p4}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-wide/16 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lhgv;->a(JLjava/lang/String;[BILhhb;)V

    .line 271
    return-void
.end method
