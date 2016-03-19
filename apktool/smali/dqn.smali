.class public Ldqn;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:J

.field private final h:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljyo;)V
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .line 3677
    iget-object v0, p1, Ljyo;->responseHeader:Lkdp;

    invoke-direct {p0, v0, v6, v7}, Ldqf;-><init>(Lkdp;J)V

    .line 4232
    sget-boolean v0, Ldqf;->a:Z

    .line 3678
    if-eqz v0, :cond_0

    .line 3679
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "DeleteConversationResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3681
    :cond_0
    const/4 v0, 0x0

    .line 3682
    const-wide/16 v2, -0x1

    .line 3683
    iget-object v1, p1, Ljyo;->a:Ljyl;

    if-eqz v1, :cond_3

    .line 3684
    iget-object v1, p1, Ljyo;->a:Ljyl;

    iget-object v1, v1, Ljyl;->a:Ljava/lang/Integer;

    .line 5043
    const/4 v4, 0x0

    invoke-static {v1, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 3684
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 3686
    iget-object v0, p1, Ljyo;->a:Ljyl;

    iget-object v0, v0, Ljyl;->d:[Ljava/lang/String;

    .line 3688
    :cond_1
    iget-object v1, p1, Ljyo;->a:Ljyl;

    iget-object v1, v1, Ljyl;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 3689
    iget-object v1, p1, Ljyo;->a:Ljyl;

    iget-object v1, v1, Ljyl;->c:Ljava/lang/Long;

    .line 5051
    invoke-static {v1, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    .line 3693
    :goto_0
    iput-wide v0, p0, Ldqn;->g:J

    .line 3694
    iput-object v2, p0, Ldqn;->h:[Ljava/lang/String;

    .line 3695
    return-void

    :cond_2
    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    goto :goto_0

    :cond_3
    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    goto :goto_0
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 3699
    new-instance v0, Ljyo;

    invoke-direct {v0}, Ljyo;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 3700
    check-cast v0, Ljyo;

    .line 3701
    iget-object v1, v0, Ljyo;->responseHeader:Lkdp;

    invoke-static {v1}, Ldqn;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3702
    new-instance v1, Ldqs;

    iget-object v0, v0, Ljyo;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 3704
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldqn;

    invoke-direct {v1, v0}, Ldqn;-><init>(Ljyo;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 5

    .prologue
    .line 3711
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 3713
    invoke-virtual {p1}, Lbfz;->a()V

    .line 3715
    :try_start_0
    iget-object v0, p0, Ldqn;->b:Leff;

    check-cast v0, Ldou;

    .line 3717
    new-instance v1, Ldwl;

    iget-object v0, v0, Ldou;->c:Ljava/lang/String;

    iget-wide v2, p0, Ldqn;->g:J

    iget-object v4, p0, Ldqn;->h:[Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Ldwl;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    .line 3720
    invoke-virtual {v1, p1}, Ldwl;->a(Lbfz;)V

    .line 3721
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3723
    invoke-virtual {p1}, Lbfz;->c()V

    .line 3724
    return-void

    .line 3723
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0
.end method
