.class final Lbvn;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:I

.field private final h:Lczb;

.field private final i:Ljava/lang/String;

.field private final j:J


# direct methods
.method private constructor <init>(Lkch;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 24
    iget-object v0, p1, Lkch;->responseHeader:Lkdp;

    iget-object v1, p1, Lkch;->a:Ljzl;

    iget-object v1, v1, Ljzl;->c:Ljava/lang/Long;

    .line 1051
    invoke-static {v1, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 24
    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 26
    iget-object v0, p1, Lkch;->a:Ljzl;

    iget-object v0, v0, Ljzl;->d:Ljava/lang/String;

    iput-object v0, p0, Lbvn;->i:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lkch;->a:Ljzl;

    iget-object v0, v0, Ljzl;->o:Ljava/lang/Long;

    .line 2051
    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 27
    iput-wide v0, p0, Lbvn;->j:J

    .line 29
    new-instance v0, Lczb;

    iget-object v1, p1, Lkch;->a:Ljzl;

    iget-object v1, v1, Ljzl;->b:Lkcr;

    iget-object v1, v1, Lkcr;->b:Ljava/lang/String;

    iget-object v2, p1, Lkch;->a:Ljzl;

    iget-object v2, v2, Ljzl;->b:Lkcr;

    iget-object v2, v2, Lkcr;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lczb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lbvn;->h:Lczb;

    .line 31
    iget-object v0, p1, Lkch;->a:Ljzl;

    iget-object v0, v0, Ljzl;->k:Lkcq;

    iget-object v0, v0, Lkcq;->b:Ljava/lang/Integer;

    .line 3043
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 31
    iput v0, p0, Lbvn;->g:I

    .line 33
    return-void
.end method

.method public static a(Lkch;)Ldqf;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lkch;->responseHeader:Lkdp;

    invoke-static {v0}, Lbvn;->a(Lkdp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ldqs;

    iget-object v1, p0, Lkch;->responseHeader:Lkdp;

    invoke-direct {v0, v1}, Ldqs;-><init>(Lkdp;)V

    .line 40
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbvn;

    invoke-direct {v0, p0}, Lbvn;-><init>(Lkch;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 14

    .prologue
    .line 47
    invoke-super/range {p0 .. p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 48
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "Babel"

    const-string v1, "processEventResponse response status: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbvn;->c:Ldsf;

    iget v2, v2, Ldsf;->b:I

    iget-object v3, p0, Lbvn;->c:Ldsf;

    iget-object v3, v3, Ldsf;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1d

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error description"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lbvn;->b:Leff;

    check-cast v0, Lbvm;

    .line 54
    invoke-virtual {v0}, Lbvm;->a()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {v0}, Lbvm;->b()Ljava/lang/String;

    move-result-object v2

    .line 56
    if-eqz v1, :cond_1

    iget-object v0, p0, Lbvn;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Lbfz;->a()V

    .line 59
    :try_start_0
    iget-object v3, p0, Lbvn;->i:Ljava/lang/String;

    iget-wide v4, p0, Lbvn;->d:J

    iget-wide v6, p0, Lbvn;->j:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lbfz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 61
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p1}, Lbfz;->c()V

    .line 68
    :cond_1
    iget-wide v4, p0, Lbvn;->d:J

    invoke-virtual {p1, v2, v4, v5}, Lbfz;->h(Ljava/lang/String;J)V

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 69
    const-class v3, Lcyh;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyh;

    .line 70
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v3

    invoke-virtual {v3}, Lbfd;->g()I

    move-result v3

    invoke-interface {v0, v3}, Lcyh;->c(I)V

    .line 73
    new-instance v3, Ledp;

    iget-object v5, p0, Lbvn;->h:Lczb;

    iget-wide v6, p0, Lbvn;->d:J

    iget-wide v8, p0, Lbvn;->j:J

    iget-object v10, p0, Lbvn;->i:Ljava/lang/String;

    iget v12, p0, Lbvn;->g:I

    sget-object v13, Lemc;->e:Lemc;

    move-object v4, v2

    move-object v11, v1

    invoke-direct/range {v3 .. v13}, Ledp;-><init>(Ljava/lang/String;Lczb;JJLjava/lang/String;Ljava/lang/String;ILemc;)V

    .line 75
    invoke-virtual {v3, p1}, Ledp;->b(Lbfz;)V

    .line 76
    return-void

    .line 63
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0
.end method
