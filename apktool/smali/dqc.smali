.class public Ldqc;
.super Ldor;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 1497
    invoke-direct {p0, p1}, Ldor;-><init>(Ljava/lang/String;)V

    .line 1498
    iput-wide p2, p0, Ldqc;->a:J

    .line 1499
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1526
    const-string v0, "background_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 5

    .prologue
    .line 2205
    sget-boolean v0, Ldoo;->e:Z

    .line 1504
    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Ldqc;->c:Ljava/lang/String;

    iget-wide v2, p0, Ldqc;->a:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4d

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "updateWatermark build protobuf conversationID="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " watermark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1509
    :cond_0
    new-instance v0, Lkfv;

    invoke-direct {v0}, Lkfv;-><init>()V

    .line 1511
    iget-object v1, p0, Ldqc;->c:Ljava/lang/String;

    invoke-static {v1}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v1

    iput-object v1, v0, Lkfv;->a:Ljxw;

    .line 1513
    iget-wide v2, p0, Ldqc;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lkfv;->b:Ljava/lang/Long;

    .line 1514
    iget-object v1, p0, Ldqc;->h:Lfak;

    invoke-static {p1, p2, p3, v1}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v1

    iput-object v1, v0, Lkfv;->requestHeader:Lkdo;

    .line 1516
    return-object v0
.end method

.method public a(Lcwi;)Z
    .locals 2

    .prologue
    .line 1531
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1532
    check-cast p1, Ldqc;

    .line 1533
    iget-object v0, p1, Ldqc;->c:Ljava/lang/String;

    iget-object v1, p0, Ldqc;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1521
    const-string v0, "conversations/updatewatermark"

    return-object v0
.end method
