.class public Ldpt;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 3478
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 3479
    iput-wide p1, p0, Ldpt;->a:J

    .line 3480
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3512
    const-string v0, "ui_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 4205
    sget-boolean v0, Ldoo;->e:Z

    .line 3485
    if-eqz v0, :cond_0

    .line 3486
    iget-wide v0, p0, Ldpt;->a:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x39

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "SetDndPresenceRequest build protobuf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3489
    :cond_0
    new-instance v6, Lken;

    invoke-direct {v6}, Lken;-><init>()V

    .line 3490
    new-instance v7, Ljyy;

    invoke-direct {v7}, Ljyy;-><init>()V

    .line 3495
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Ldpt;->a:J

    .line 3496
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v2, v8

    .line 3495
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 3497
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Ljyy;->a:Ljava/lang/Boolean;

    .line 3498
    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    move-wide v0, v2

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Ljyy;->b:Ljava/lang/Long;

    .line 3499
    iput-object v7, v6, Lken;->b:Ljyy;

    .line 3500
    iget-object v0, p0, Ldpt;->h:Lfak;

    invoke-static {p1, p2, p3, v0}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v6, Lken;->requestHeader:Lkdo;

    .line 3502
    return-object v6

    .line 3497
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-wide v0, v4

    .line 3498
    goto :goto_1
.end method

.method public a(Lcwi;)Z
    .locals 2

    .prologue
    .line 3517
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3518
    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3507
    const-string v0, "presence/setpresence"

    return-object v0
.end method
