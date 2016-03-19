.class public Ldqx;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:I


# direct methods
.method private constructor <init>(Lmgn;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4703
    invoke-direct {p0}, Ldqf;-><init>()V

    .line 4704
    iget-object v0, p1, Lmgn;->d:Ljava/lang/Integer;

    .line 5043
    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 4704
    iput v0, p0, Ldqx;->i:I

    .line 4707
    iget-object v0, p1, Lmgn;->b:Ljava/lang/Integer;

    .line 6043
    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 4707
    if-ne v0, v3, :cond_0

    iget-object v0, p1, Lmgn;->c:Lmgo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmgn;->c:Lmgo;

    iget-object v0, v0, Lmgo;->c:Lmgc;

    if-eqz v0, :cond_0

    .line 4710
    iget-object v0, p1, Lmgn;->c:Lmgo;

    iget-object v0, v0, Lmgo;->c:Lmgc;

    .line 4714
    :goto_0
    if-eqz v0, :cond_2

    .line 4715
    iget-object v1, v0, Lmgc;->c:Ljava/lang/String;

    iput-object v1, p0, Ldqx;->g:Ljava/lang/String;

    .line 4716
    iget-object v0, v0, Lmgc;->a:Ljava/lang/Long;

    .line 6051
    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 4716
    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 4717
    iput-boolean v3, p0, Ldqx;->h:Z

    .line 4725
    :goto_1
    return-void

    .line 4712
    :cond_0
    iget-object v0, p1, Lmgn;->a:Lmgc;

    goto :goto_0

    .line 4719
    :cond_1
    iput-boolean v2, p0, Ldqx;->h:Z

    goto :goto_1

    .line 4722
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Ldqx;->g:Ljava/lang/String;

    .line 4723
    iput-boolean v2, p0, Ldqx;->h:Z

    goto :goto_1
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 4729
    if-eqz p0, :cond_0

    .line 4730
    new-instance v0, Lmgn;

    invoke-direct {v0}, Lmgn;-><init>()V

    .line 6131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 4731
    check-cast v0, Lmgn;

    .line 4732
    if-eqz v0, :cond_0

    .line 4733
    new-instance v1, Ldqx;

    invoke-direct {v1, v0}, Ldqx;-><init>(Lmgn;)V

    move-object v0, v1

    .line 4737
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4746
    iget-object v0, p0, Ldqx;->g:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 4751
    iget-boolean v0, p0, Ldqx;->h:Z

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 4762
    iget v0, p0, Ldqx;->i:I

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 4773
    iget v0, p0, Ldqx;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
