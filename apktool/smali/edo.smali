.class public final Ledo;
.super Ledm;
.source "SourceFile"


# direct methods
.method public constructor <init>(Legg;)V
    .locals 16

    .prologue
    .line 1280
    invoke-virtual/range {p1 .. p1}, Legg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Legg;->b()Lczb;

    move-result-object v3

    .line 1281
    invoke-virtual/range {p1 .. p1}, Legg;->c()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Legg;->k()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Legg;->j()Ljava/lang/String;

    move-result-object v8

    .line 1282
    invoke-virtual/range {p1 .. p1}, Legg;->n()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Legg;->l()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Legg;->m()I

    move-result v11

    .line 1283
    invoke-virtual/range {p1 .. p1}, Legg;->o()J

    move-result-wide v12

    sget-object v14, Lemc;->e:Lemc;

    .line 1284
    invoke-virtual/range {p1 .. p1}, Legg;->p()[B

    move-result-object v15

    move-object/from16 v1, p0

    .line 1280
    invoke-direct/range {v1 .. v15}, Ledm;-><init>(Ljava/lang/String;Lczb;JJLjava/lang/String;Ljava/lang/String;IIJLemc;[B)V

    .line 1285
    return-void
.end method

.method public constructor <init>(Legw;)V
    .locals 16

    .prologue
    .line 2377
    invoke-virtual/range {p1 .. p1}, Legw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Legw;->b()Lczb;

    move-result-object v3

    .line 2378
    invoke-virtual/range {p1 .. p1}, Legw;->c()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Legw;->k()J

    move-result-wide v6

    .line 2379
    invoke-virtual/range {p1 .. p1}, Legw;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Legw;->n()Ljava/lang/String;

    move-result-object v9

    .line 2380
    invoke-virtual/range {p1 .. p1}, Legw;->l()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Legw;->m()I

    move-result v11

    .line 2381
    invoke-virtual/range {p1 .. p1}, Legw;->o()J

    move-result-wide v12

    sget-object v14, Lemc;->e:Lemc;

    .line 2382
    invoke-virtual/range {p1 .. p1}, Legw;->p()[B

    move-result-object v15

    move-object/from16 v1, p0

    .line 2377
    invoke-direct/range {v1 .. v15}, Ledm;-><init>(Ljava/lang/String;Lczb;JJLjava/lang/String;Ljava/lang/String;IIJLemc;[B)V

    .line 2383
    return-void
.end method

.method private c(Lbfz;)V
    .locals 7

    .prologue
    .line 2400
    iget-object v1, p0, Ledo;->j:[Lkfg;

    iget-object v2, p0, Ledo;->f:Ljava/lang/String;

    iget-object v3, p0, Ledo;->a:Ljava/lang/String;

    iget-wide v4, p0, Ledo;->h:J

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Ledo;->a([Lkfg;Ljava/lang/String;Ljava/lang/String;JLbfz;)V

    .line 2401
    return-void
.end method


# virtual methods
.method public b(Lbfz;)V
    .locals 0

    .prologue
    .line 2159
    invoke-virtual {p0, p1}, Ledm;->a(Lbfz;)V

    .line 1291
    return-void
.end method

# duplicate method ignored
# .method public b(Lbfz;)V
#     .locals 0

#     .prologue
#     .line 2388
#     invoke-direct {p0, p1}, Ledo;->c(Lbfz;)V

#     .line 2389
#     return-void
# .end method
