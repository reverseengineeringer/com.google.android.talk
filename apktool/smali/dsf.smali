.class public final Ldsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:J

.field public e:I

.field public final f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    sget v0, Ldsg;->a:I

    iput v0, p0, Ldsf;->e:I

    .line 476
    const-string v0, ""

    iput-object v0, p0, Ldsf;->a:Ljava/lang/String;

    .line 477
    const/4 v0, 0x1

    iput v0, p0, Ldsf;->b:I

    .line 478
    const-string v0, ""

    iput-object v0, p0, Ldsf;->c:Ljava/lang/String;

    .line 479
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldsf;->d:J

    .line 480
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldsf;->f:J

    .line 481
    return-void
.end method

.method public constructor <init>(Liye;)V
    .locals 2

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    sget v0, Ldsg;->a:I

    iput v0, p0, Ldsf;->e:I

    .line 485
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldsf;->d:J

    .line 495
    const-string v0, ""

    iput-object v0, p0, Ldsf;->a:Ljava/lang/String;

    .line 496
    const/4 v0, 0x1

    iput v0, p0, Ldsf;->b:I

    .line 497
    const-string v0, ""

    iput-object v0, p0, Ldsf;->c:Ljava/lang/String;

    .line 499
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldsf;->f:J

    .line 500
    return-void
.end method

.method public constructor <init>(Lkdp;)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    sget v0, Ldsg;->a:I

    iput v0, p0, Ldsf;->e:I

    .line 503
    iget-object v0, p1, Lkdp;->b:Ljava/lang/String;

    iput-object v0, p0, Ldsf;->a:Ljava/lang/String;

    .line 504
    iget-object v0, p1, Lkdp;->a:Ljava/lang/Integer;

    .line 1043
    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 504
    iput v0, p0, Ldsf;->b:I

    .line 505
    iget-object v0, p1, Lkdp;->c:Ljava/lang/String;

    iput-object v0, p0, Ldsf;->c:Ljava/lang/String;

    .line 506
    iget-object v0, p1, Lkdp;->d:Ljava/lang/Long;

    .line 1051
    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 506
    iput-wide v0, p0, Ldsf;->d:J

    .line 507
    iget-object v0, p1, Lkdp;->i:Lkfl;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lkdp;->i:Lkfl;

    iget-object v0, v0, Lkfl;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lkdp;->i:Lkfl;

    iget-object v0, v0, Lkfl;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p1, Lkdp;->i:Lkfl;

    iget-object v0, v0, Lkfl;->b:Ljava/lang/Long;

    .line 2051
    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 510
    iput-wide v0, p0, Ldsf;->f:J

    .line 511
    iget-object v0, p1, Lkdp;->i:Lkfl;

    iget-object v0, v0, Lkfl;->a:Ljava/lang/Integer;

    .line 3043
    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 511
    packed-switch v0, :pswitch_data_0

    .line 525
    const-string v0, "Babel"

    iget-object v1, p1, Lkdp;->i:Lkfl;

    iget-object v1, v1, Lkfl;->a:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x42

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected error code for syncHintAnswer in clientResponseHeader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    :goto_0
    return-void

    .line 513
    :pswitch_0
    sget v0, Ldsg;->a:I

    iput v0, p0, Ldsf;->e:I

    goto :goto_0

    .line 516
    :pswitch_1
    sget v0, Ldsg;->b:I

    iput v0, p0, Ldsf;->e:I

    goto :goto_0

    .line 519
    :pswitch_2
    sget v0, Ldsg;->c:I

    iput v0, p0, Ldsf;->e:I

    goto :goto_0

    .line 522
    :pswitch_3
    sget v0, Ldsg;->d:I

    iput v0, p0, Ldsf;->e:I

    goto :goto_0

    .line 529
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldsf;->f:J

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
