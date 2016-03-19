.class public Ldpu;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:I

.field public final b:Z


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3566
    const-string v0, "ui_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4205
    sget-boolean v0, Ldoo;->e:Z

    .line 3536
    if-eqz v0, :cond_0

    .line 3537
    iget v2, p0, Ldpu;->a:I

    iget-boolean v0, p0, Ldpu;->b:Z

    if-eqz v0, :cond_1

    .line 3538
    const-string v0, " in a call."

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "SetInCallPresenceRequest build protobuf "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3541
    :cond_0
    new-instance v2, Lken;

    invoke-direct {v2}, Lken;-><init>()V

    .line 3543
    new-instance v3, Lkba;

    invoke-direct {v3}, Lkba;-><init>()V

    .line 3545
    iget-boolean v0, p0, Ldpu;->b:Z

    if-eqz v0, :cond_3

    .line 3546
    iget v0, p0, Ldpu;->a:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 5134
    :goto_1
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 3547
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lkba;->a:Ljava/lang/Integer;

    .line 3548
    iget v0, p0, Ldpu;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lkba;->b:Ljava/lang/Long;

    .line 3553
    :goto_2
    iput-object v3, v2, Lken;->e:Lkba;

    .line 3554
    iget-object v0, p0, Ldpu;->h:Lfak;

    invoke-static {p1, p2, p3, v0}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v2, Lken;->requestHeader:Lkdo;

    .line 3556
    return-object v2

    .line 3538
    :cond_1
    const-string v0, " NOT in a call."

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3546
    goto :goto_1

    .line 3550
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lkba;->a:Ljava/lang/Integer;

    goto :goto_2
.end method

.method public a(Lcwi;)Z
    .locals 2

    .prologue
    .line 3581
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3582
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 1

    .prologue
    .line 3571
    const/4 v0, 0x0

    return v0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 3576
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Ldpu;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3561
    const-string v0, "presence/setpresence"

    return-object v0
.end method
