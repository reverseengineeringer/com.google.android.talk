.class public Ldqk;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:[B

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldtv;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Z


# direct methods
.method private constructor <init>(Ljyf;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 609
    iget-object v1, p1, Ljyf;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v1, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 610
    iget-object v1, p1, Ljyf;->b:Ljxr;

    if-eqz v1, :cond_2

    .line 611
    iget-object v1, p1, Ljyf;->b:Ljxr;

    invoke-static {v1}, Llyi;->a(Llyi;)[B

    move-result-object v1

    iput-object v1, p0, Ldqk;->g:[B

    .line 615
    :goto_0
    iget-object v1, p1, Ljyf;->c:[Lkbh;

    invoke-static {v1}, Ldtv;->a([Lkbh;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ldqk;->h:Ljava/util/List;

    .line 620
    iget-object v1, p1, Ljyf;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p1, Ljyf;->d:Ljava/lang/Boolean;

    .line 1015
    invoke-static {v1, v0}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 621
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ldqk;->i:Z

    .line 1232
    sget-boolean v0, Ldqf;->a:Z

    .line 622
    if-eqz v0, :cond_1

    .line 623
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CreateConversationResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :cond_1
    return-void

    .line 613
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Ldqk;->g:[B

    goto :goto_0
.end method

.method private k()Lega;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 641
    :try_start_0
    iget-object v0, p0, Ldqk;->g:[B

    if-nez v0, :cond_0

    move-object v0, v1

    .line 649
    :goto_0
    return-object v0

    .line 644
    :cond_0
    new-instance v0, Ljxr;

    invoke-direct {v0}, Ljxr;-><init>()V

    iget-object v2, p0, Ldqk;->g:[B

    .line 3131
    array-length v3, v2

    invoke-static {v0, v2, v3}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 644
    check-cast v0, Ljxr;

    .line 646
    new-instance v2, Lega;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lega;-><init>(Ljxr;B)V
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 629
    new-instance v0, Ljyf;

    invoke-direct {v0}, Ljyf;-><init>()V

    .line 2131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 630
    check-cast v0, Ljyf;

    .line 631
    iget-object v1, v0, Ljyf;->responseHeader:Lkdp;

    invoke-static {v1}, Ldqk;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    new-instance v1, Ldqs;

    iget-object v0, v0, Ljyf;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 634
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldqk;

    invoke-direct {v1, v0}, Ldqk;-><init>(Ljyf;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 660
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 661
    invoke-direct {p0}, Ldqk;->k()Lega;

    move-result-object v1

    .line 662
    iget-object v0, p0, Ldqk;->b:Leff;

    check-cast v0, Ldos;

    iget-object v4, v0, Ldos;->j:Ljava/lang/String;

    .line 664
    const-string v0, "Babel"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    const-string v0, "Babel"

    const-string v2, "processCreateConversationResponse requestClientGeneratedId: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 667
    invoke-virtual {v1}, Lega;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 668
    invoke-virtual {v1}, Lega;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 669
    invoke-virtual {v1}, Lega;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x27

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " clientGeneratedId: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conversationId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    .line 665
    invoke-static {v0, v2, v3}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    :cond_0
    invoke-virtual {p1}, Lbfz;->a()V

    .line 674
    :try_start_0
    iget-object v0, p0, Ldqk;->c:Ldsf;

    iget v0, v0, Ldsf;->b:I

    .line 683
    new-instance v6, Lbfy;

    invoke-direct {v6}, Lbfy;-><init>()V

    .line 690
    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    .line 693
    invoke-virtual {v1}, Lega;->w()J

    move-result-wide v8

    .line 3737
    cmp-long v0, v8, v10

    if-nez v0, :cond_5

    .line 692
    :goto_0
    invoke-virtual {v1, v2, v3}, Lega;->a(J)V

    .line 696
    :cond_1
    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lbft;->a(Lbfz;Lega;JLjava/lang/String;Ldyy;Lbfy;Z)Z

    .line 699
    iget-object v2, v6, Lbfy;->a:Ljava/lang/String;

    .line 701
    iget-object v0, p0, Ldqk;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 703
    invoke-virtual {v1}, Lega;->w()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    .line 705
    iget-object v1, p0, Ldqk;->h:Ljava/util/List;

    .line 706
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, -0x1

    move-object v0, p1

    .line 705
    invoke-static/range {v0 .. v7}, Lbft;->a(Lbfz;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 710
    :cond_2
    iget-boolean v0, p0, Ldqk;->i:Z

    if-eqz v0, :cond_3

    .line 712
    new-instance v1, Ldoz;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Ldoz;-><init>(Ljava/lang/String;ZZZ[BJLjava/lang/String;JLegf;)V

    invoke-virtual {p2, v1}, Ldyy;->a(Leff;)V

    .line 724
    :cond_3
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    invoke-virtual {p1}, Lbfz;->c()V

    .line 728
    if-eqz v2, :cond_4

    .line 729
    invoke-static {p1, v2}, Lbft;->c(Lbfz;Ljava/lang/String;)V

    .line 730
    invoke-static {p1, v2}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    .line 732
    :cond_4
    return-void

    :cond_5
    move-wide v2, v8

    .line 3737
    goto :goto_0

    .line 726
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0
.end method
