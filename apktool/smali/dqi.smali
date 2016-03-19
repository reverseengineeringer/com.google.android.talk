.class public Ldqi;
.super Ldqr;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldtv;",
            ">;"
        }
    .end annotation
.end field

.field private final k:J


# direct methods
.method private constructor <init>(Ljwv;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 1230
    iget-object v1, p1, Ljwv;->responseHeader:Lkdp;

    iget-object v0, p1, Ljwv;->b:Ljzl;

    iget-object v0, v0, Ljzl;->c:Ljava/lang/Long;

    .line 2051
    invoke-static {v0, v8, v9}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1231
    iget-object v0, p1, Ljwv;->b:Ljzl;

    iget-object v0, v0, Ljzl;->o:Ljava/lang/Long;

    .line 3051
    invoke-static {v0, v8, v9}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1232
    iget-object v0, p1, Ljwv;->b:Ljzl;

    iget-object v6, v0, Ljzl;->d:Ljava/lang/String;

    move-object v0, p0

    .line 1230
    invoke-direct/range {v0 .. v6}, Ldqr;-><init>(Lkdp;JJLjava/lang/String;)V

    .line 1234
    iget-object v0, p1, Ljwv;->a:[Lkbh;

    invoke-static {v0}, Ldtv;->a([Lkbh;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldqi;->j:Ljava/util/List;

    .line 1235
    iget-object v0, p1, Ljwv;->b:Ljzl;

    iget-object v0, v0, Ljzl;->o:Ljava/lang/Long;

    .line 4051
    invoke-static {v0, v8, v9}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 1235
    iput-wide v0, p0, Ldqi;->k:J

    .line 1237
    iget-object v0, p1, Ljwv;->b:Ljzl;

    iget-object v0, v0, Ljzl;->h:Lkcc;

    if-eqz v0, :cond_1

    .line 1238
    iget-object v0, p1, Ljwv;->b:Ljzl;

    iget-object v0, v0, Ljzl;->h:Lkcc;

    iget-object v0, v0, Lkcc;->b:[Lkcr;

    invoke-static {v0, v7}, Laal;->a([Lkcr;[Ljxy;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldqi;->g:Ljava/util/List;

    .line 4232
    :goto_0
    sget-boolean v0, Ldqf;->a:Z

    .line 1244
    if-eqz v0, :cond_0

    .line 1245
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AddUserResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    :cond_0
    return-void

    .line 1241
    :cond_1
    iput-object v7, p0, Ldqi;->g:Ljava/util/List;

    goto :goto_0
.end method

.method private a(Lbfz;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 1345
    const/4 v0, 0x0

    .line 1347
    new-instance v11, Ljava/util/ArrayList;

    iget-object v1, p0, Ldqi;->j:Ljava/util/List;

    .line 1348
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1349
    iget-object v1, p0, Ldqi;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v1, v0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ldtv;

    .line 1350
    iget v0, v6, Ldtv;->b:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 1351
    const/4 v10, 0x1

    .line 1352
    iget-object v0, v6, Ldtv;->a:Ldtw;

    iget-object v0, v0, Ldtw;->a:Ljava/lang/String;

    iget-object v1, v6, Ldtv;->a:Ldtw;

    iget-object v1, v1, Ldtw;->b:Ljava/lang/String;

    iget-object v2, v6, Ldtv;->a:Ldtw;

    iget-object v2, v2, Ldtw;->c:Ljava/lang/String;

    iget-object v3, v6, Ldtv;->a:Ldtw;

    iget-object v3, v3, Ldtw;->d:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v6, Ldtv;->a:Ldtw;

    iget-object v6, v6, Ldtw;->e:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1362
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1352
    invoke-static/range {v0 .. v9}, Laal;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcyx;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v10

    :goto_1
    move v1, v0

    .line 1365
    goto :goto_0

    .line 1366
    :cond_0
    if-nez v1, :cond_1

    .line 1371
    :goto_2
    return-void

    .line 1369
    :cond_1
    invoke-static {p1, p2, v11}, Lbft;->a(Lbfz;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static parseFrom([B)Ldqf;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1251
    new-instance v0, Ljwv;

    invoke-direct {v0}, Ljwv;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 1252
    check-cast v0, Ljwv;

    .line 5280
    iget-object v1, v0, Ljwv;->responseHeader:Lkdp;

    iget-object v1, v1, Lkdp;->a:Ljava/lang/Integer;

    .line 6043
    invoke-static {v1, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 5281
    if-ne v1, v5, :cond_1

    .line 5284
    iget-object v1, v0, Ljwv;->a:[Lkbh;

    .line 5285
    invoke-static {v1}, Ldtv;->a([Lkbh;)Ljava/util/List;

    move-result-object v1

    .line 5286
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldtv;

    .line 5287
    iget v1, v1, Ldtv;->b:I

    if-ne v1, v5, :cond_0

    move v1, v2

    .line 1253
    :goto_0
    if-eqz v1, :cond_2

    .line 1258
    iget-object v1, v0, Ljwv;->responseHeader:Lkdp;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lkdp;->a:Ljava/lang/Integer;

    .line 1260
    new-instance v1, Ljzl;

    invoke-direct {v1}, Ljzl;-><init>()V

    iput-object v1, v0, Ljwv;->b:Ljzl;

    .line 1261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 1263
    iget-object v1, v0, Ljwv;->b:Ljzl;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Ljzl;->c:Ljava/lang/Long;

    .line 1264
    iget-object v1, v0, Ljwv;->b:Ljzl;

    const-wide v4, 0x141dd76000L

    add-long/2addr v2, v4

    .line 1265
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Ljzl;->o:Ljava/lang/Long;

    .line 1266
    new-instance v1, Ldqi;

    invoke-direct {v1, v0}, Ldqi;-><init>(Ljwv;)V

    move-object v0, v1

    .line 1270
    :goto_1
    return-object v0

    :cond_1
    move v1, v3

    .line 5291
    goto :goto_0

    .line 1267
    :cond_2
    iget-object v1, v0, Ljwv;->responseHeader:Lkdp;

    invoke-static {v1}, Ldqi;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1268
    new-instance v1, Ldqs;

    iget-object v0, v0, Ljwv;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    goto :goto_1

    .line 1270
    :cond_3
    new-instance v1, Ldqi;

    invoke-direct {v1, v0}, Ldqi;-><init>(Ljwv;)V

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 10

    .prologue
    .line 1300
    invoke-super {p0, p1, p2}, Ldqr;->a(Lbfz;Ldyy;)V

    .line 1301
    sget-boolean v0, Lbft;->a:Z

    if-nez v0, :cond_0

    .line 6232
    sget-boolean v0, Ldqf;->a:Z

    .line 1301
    if-eqz v0, :cond_1

    .line 1302
    :cond_0
    const-string v0, "processAddUserResponse ClientContactError Count: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldqi;->j:Ljava/util/List;

    .line 1303
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1305
    :cond_1
    iget-object v0, p0, Ldqi;->b:Leff;

    check-cast v0, Ldop;

    iget-object v1, v0, Ldop;->c:Ljava/lang/String;

    .line 1306
    iget-object v0, p0, Ldqi;->b:Leff;

    check-cast v0, Ldop;

    iget-wide v2, v0, Ldop;->b:J

    .line 1307
    invoke-virtual {p1}, Lbfz;->a()V

    .line 1309
    if-nez v1, :cond_3

    .line 1310
    :try_start_0
    const-string v0, "Babel"

    const-string v2, "attempt to process invite response for a nonexistant conversation id ["

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1328
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    invoke-virtual {p1}, Lbfz;->c()V

    .line 1331
    invoke-static {p1, v1}, Lbft;->c(Lbfz;Ljava/lang/String;)V

    .line 1332
    invoke-static {p1}, Lbft;->d(Lbfz;)V

    .line 1333
    invoke-direct {p0, p1, v1}, Ldqi;->a(Lbfz;Ljava/lang/String;)V

    .line 1334
    return-void

    .line 1313
    :cond_3
    :try_start_1
    iget-object v0, p0, Ldqi;->g:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1314
    iget-object v0, p0, Ldqi;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczb;

    .line 1315
    const/4 v5, 0x1

    invoke-virtual {p1, v1, v0, v5}, Lbfz;->a(Ljava/lang/String;Lczb;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1330
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    .line 1331
    invoke-static {p1, v1}, Lbft;->c(Lbfz;Ljava/lang/String;)V

    .line 1332
    invoke-static {p1}, Lbft;->d(Lbfz;)V

    .line 1333
    invoke-direct {p0, p1, v1}, Ldqi;->a(Lbfz;Ljava/lang/String;)V

    throw v0

    .line 1319
    :cond_4
    :try_start_2
    iget-wide v4, p0, Ldqi;->d:J

    iget-wide v6, p0, Ldqi;->k:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lbfz;->a(Ljava/lang/String;JJJ)V

    .line 1321
    iget-object v0, p0, Ldqi;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1323
    iget-object v3, p0, Ldqi;->j:Ljava/util/List;

    iget-wide v4, p0, Ldqi;->d:J

    .line 1324
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Ldqi;->d:J

    iget-wide v8, p0, Ldqi;->k:J

    move-object v2, p1

    move-object v4, v1

    .line 1323
    invoke-static/range {v2 .. v9}, Lbft;->a(Lbfz;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
