.class public abstract Lhya;
.super Ligp;
.source "SourceFile"

# interfaces
.implements Lifa;


# instance fields
.field public final a:Lhye;

.field final b:Lhyo;

.field public c:Lhyc;

.field private d:J

.field private e:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhye;Ligq;)V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Ligp;-><init>(Ligs;Ligq;)V

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lhya;->r:I

    .line 202
    iput-object p1, p0, Lhya;->a:Lhye;

    .line 203
    new-instance v0, Lhyo;

    invoke-direct {v0, p0, p1}, Lhyo;-><init>(Lhya;Lhye;)V

    iput-object v0, p0, Lhya;->b:Lhyo;

    .line 204
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)I
    .locals 2

    .prologue
    .line 437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 438
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    .line 442
    :goto_0
    return v0

    .line 440
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/nio/ByteBuffer;ZZ)V
    .locals 1

    .prologue
    .line 641
    if-eqz p3, :cond_0

    .line 642
    iget-object v0, p0, Lhya;->b:Lhyo;

    invoke-virtual {v0, p1, p4}, Lhyo;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 647
    :cond_0
    if-eqz p4, :cond_1

    .line 648
    iget-object v0, p0, Lhya;->a:Lhye;

    invoke-interface {v0}, Lhye;->c()Lhxm;

    move-result-object v0

    .line 649
    :goto_1
    invoke-virtual {v0, p1, p2}, Lhxm;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Lhya;->a:Lhye;

    invoke-interface {v0}, Lhye;->b()Lhxm;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 506
    iget-object v0, p0, Lhya;->g:Ligq;

    check-cast v0, Ligq;

    .line 507
    iget v3, p0, Lhya;->i:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Lhya;->i:I

    if-eq v3, v1, :cond_1

    .line 508
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lhya;->g:Ligq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-virtual {p0}, Lhya;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x35

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Resource no longer needed, not delivering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget v3, v0, Ligq;->i:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 516
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    iget-object v0, p0, Lhya;->g:Ligq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-virtual {p0}, Lhya;->f()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Completing a download-only request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " file name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_2
    iget-object v0, p0, Lhya;->a:Lhye;

    invoke-virtual {p0}, Lhya;->f()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lhye;->a(Ligp;ILjava/lang/Object;)V

    goto :goto_0

    .line 524
    :cond_3
    iget v3, v0, Ligq;->i:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 525
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 526
    iget-object v0, p0, Lhya;->g:Ligq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x38

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Image decoding disabled. Delivering bytes to consumers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_4
    iget-object v0, p0, Lhya;->a:Lhye;

    .line 529
    invoke-static {p1}, Laal;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 528
    invoke-interface {v0, p0, v1, v2}, Lhye;->a(Ligp;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 3021
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-lt v3, v5, :cond_8

    .line 3023
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3024
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    const/16 v4, 0x47

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_8

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_8

    .line 535
    :goto_1
    if-eqz v1, :cond_6

    .line 536
    const/4 v2, 0x2

    iput v2, p0, Lhya;->k:I

    .line 539
    :cond_6
    iget v2, v0, Ligq;->i:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9

    iget v2, v0, Ligq;->i:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_9

    .line 540
    invoke-static {p1}, Lhxx;->a(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 541
    new-instance v0, Lhxx;

    invoke-static {p1}, Landroid/support/rastermill/FrameSequence;->decodeByteBuffer(Ljava/nio/ByteBuffer;)Landroid/support/rastermill/FrameSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lhxx;-><init>(Landroid/support/rastermill/FrameSequence;)V

    .line 542
    invoke-virtual {p0, v0}, Lhya;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 568
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 569
    iget-object v0, p0, Lhya;->g:Ligq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Out of memory while decoding image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :cond_7
    new-instance v0, Lhyb;

    invoke-direct {v0, p0}, Lhyb;-><init>(Lhya;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 584
    iget-object v0, p0, Lhya;->a:Lhye;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v5, v1}, Lhye;->a(Ligp;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 3024
    goto :goto_1

    .line 543
    :cond_9
    :try_start_1
    iget v0, v0, Ligq;->i:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 544
    new-instance v0, Lhxt;

    invoke-direct {v0, p1}, Lhxt;-><init>(Ljava/nio/ByteBuffer;)V

    .line 545
    invoke-virtual {p0, v0}, Lhya;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3653
    :cond_a
    iget-object v0, p0, Lhya;->a:Lhye;

    invoke-interface {v0, p0, p1}, Lhye;->a(Lhya;Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    .line 3654
    iget-object v0, p0, Lhya;->c:Lhyc;

    if-eqz v0, :cond_f

    .line 3655
    iget-object v2, p0, Lhya;->c:Lhyc;

    iget-object v0, p0, Lhya;->g:Ligq;

    check-cast v0, Ligq;

    invoke-interface {v2, v0, v1}, Lhyc;->a(Ligq;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 549
    :goto_2
    if-eqz v0, :cond_c

    .line 550
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 551
    iget-object v1, p0, Lhya;->g:Ligq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Delivering image to consumers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_b
    invoke-virtual {p0, v0}, Lhya;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 556
    :cond_c
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 557
    iget-object v0, p0, Lhya;->g:Ligq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Bad image; cannot decode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_d
    invoke-virtual {p0}, Lhya;->f()Ljava/io/File;

    move-result-object v0

    .line 561
    if-eqz v0, :cond_e

    .line 562
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 564
    :cond_e
    iget-object v0, p0, Lhya;->a:Lhye;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1}, Lhye;->a(Ligp;I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_f
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lhya;->b:Lhyo;

    invoke-virtual {v0}, Lhyo;->g()V

    .line 663
    invoke-super {p0, p1}, Ligp;->a(I)V

    .line 664
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lhya;->b:Lhyo;

    invoke-virtual {v0}, Lhyo;->g()V

    .line 669
    invoke-super {p0, p1, p2}, Ligp;->a(ILjava/lang/String;)V

    .line 670
    return-void
.end method

.method public final a(JJ)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public final a(JLjava/lang/String;IIILandroid/graphics/Bitmap;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 679
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lhya;->d:J

    .line 680
    iget-wide v0, p0, Lhya;->d:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhya;->e:Ljava/lang/String;

    .line 681
    iput-object p3, p0, Lhya;->p:Ljava/lang/String;

    .line 682
    iput p4, p0, Lhya;->q:I

    .line 683
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    if-nez p7, :cond_1

    const-string v0, "null"

    .line 686
    :goto_0
    iget-object v1, p0, Lhya;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x50

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Decoded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from source ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] into bitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    :cond_0
    iput-object v5, p0, Lhya;->s:Ljava/lang/String;

    .line 692
    iput-object v5, p0, Lhya;->t:Ljava/lang/String;

    .line 693
    iput-object v5, p0, Lhya;->u:Ljava/lang/String;

    .line 694
    iput-object v5, p0, Lhya;->v:Ljava/lang/String;

    .line 695
    return-void

    .line 684
    :cond_1
    invoke-virtual {p7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 685
    invoke-virtual {p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 310
    iget-object v0, p0, Lhya;->g:Ligq;

    check-cast v0, Ligq;

    .line 313
    iget v0, v0, Ligq;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lhya;->b:Lhyo;

    invoke-virtual {v0}, Lhyo;->g()V

    .line 315
    iget-object v0, p0, Lhya;->b:Lhyo;

    invoke-virtual {v0}, Lhyo;->d()Ljava/io/File;

    move-result-object v0

    .line 316
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lhya;->g:Ligq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Completing a download-only request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " file name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_0
    iget-object v1, p0, Lhya;->a:Lhye;

    invoke-interface {v1, p0, v3, v0}, Lhye;->a(Ligp;ILjava/lang/Object;)V

    .line 1620
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 325
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 327
    iget-object v1, p0, Lhya;->g:Ligq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2f

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Delivering data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "; buffer has "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    :cond_3
    if-eqz p1, :cond_1

    .line 1593
    iget-object v0, p0, Lhya;->g:Ligq;

    check-cast v0, Ligq;

    .line 1594
    iget-object v1, p0, Lhya;->b:Lhyo;

    invoke-virtual {v1}, Lhyo;->g()V

    .line 1595
    iget-object v1, p0, Lhya;->b:Lhyo;

    invoke-virtual {v1}, Lhyo;->h()V

    .line 1597
    iget v1, p0, Lhya;->i:I

    if-eq v1, v8, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1602
    :cond_4
    iget-object v1, p0, Lhya;->b:Lhyo;

    invoke-virtual {v1}, Lhyo;->j()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_7

    iget v1, p0, Lhya;->i:I

    if-eq v1, v8, :cond_7

    move v4, v3

    .line 1609
    :goto_1
    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lhya;->e()Ljava/lang/String;

    move-result-object v1

    .line 1610
    :goto_2
    iget v5, v0, Ligq;->i:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_5

    move v2, v3

    .line 1612
    :cond_5
    iget v5, v0, Ligq;->i:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_a

    .line 1613
    invoke-direct {p0, v1, p1, v4, v2}, Lhya;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;ZZ)V

    .line 1614
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1615
    iget-object v0, p0, Lhya;->g:Ligq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1616
    invoke-virtual {p0}, Lhya;->f()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_9

    .line 1617
    const-string v0, "; long-term cache"

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Completing a download-only request: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    :cond_6
    iget-object v0, p0, Lhya;->a:Lhye;

    invoke-virtual {p0}, Lhya;->f()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, p0, v3, v1}, Lhye;->a(Ligp;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1604
    :cond_7
    iget-object v1, p0, Lhya;->b:Lhyo;

    invoke-virtual {v1}, Lhyo;->j()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_e

    .line 1605
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lhya;->b:Lhyo;

    invoke-virtual {v1}, Lhyo;->j()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_e

    move v4, v3

    .line 1606
    goto/16 :goto_1

    .line 1609
    :cond_8
    invoke-virtual {p0}, Lhya;->d()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 1617
    :cond_9
    const-string v0, ""

    goto :goto_3

    .line 1623
    :cond_a
    if-nez v4, :cond_b

    .line 1624
    invoke-direct {p0, p1}, Lhya;->a(Ljava/nio/ByteBuffer;)V

    .line 1627
    :cond_b
    iget v0, v0, Ligq;->i:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 1631
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1632
    iget-object v0, p0, Lhya;->g:Ligq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_d

    .line 1633
    const-string v0, "; long-term cache"

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x28

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Saving image in file cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " file name: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    :cond_c
    invoke-direct {p0, v1, p1, v4, v2}, Lhya;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;ZZ)V

    goto/16 :goto_0

    .line 1633
    :cond_d
    const-string v0, ""

    goto :goto_4

    :cond_e
    move v4, v2

    goto/16 :goto_1
.end method

.method protected final a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 674
    const-string v0, "\n  Size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lhya;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 675
    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Lhya;->g:Ligq;

    check-cast v0, Ligq;

    .line 449
    iget v1, v0, Ligq;->i:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 450
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lhya;->g:Ligq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lhya;->f()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Loading disabled for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " file name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_0
    iget-object v0, p0, Lhya;->a:Lhye;

    invoke-interface {v0, p0, v8, v2}, Lhye;->a(Ligp;ILjava/lang/Object;)V

    .line 503
    :goto_0
    return-void

    .line 457
    :cond_1
    iget v1, v0, Ligq;->i:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 458
    invoke-virtual {p0}, Lhya;->g()Ljava/io/File;

    move-result-object v1

    .line 459
    if-eqz v1, :cond_3

    .line 461
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lhya;->g:Ligq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Returning file name to consumers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " file name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_2
    iget-object v0, p0, Lhya;->a:Lhye;

    invoke-interface {v0, p0, v6, v1}, Lhye;->a(Ligp;ILjava/lang/Object;)V

    goto :goto_0

    .line 471
    :cond_3
    iget v1, v0, Ligq;->i:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_5

    .line 472
    invoke-virtual {p0}, Lhya;->g()Ljava/io/File;

    move-result-object v1

    .line 473
    if-eqz v1, :cond_5

    .line 474
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 475
    iget-object v3, p0, Lhya;->g:Ligq;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x25

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Loading image from file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " file name: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_4
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v1, v3}, Laal;->a(Ljava/io/File;Z)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 487
    :goto_1
    if-eqz v1, :cond_6

    .line 488
    invoke-direct {p0, v1}, Lhya;->a(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 483
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_1

    .line 481
    :catch_1
    move-exception v3

    .line 482
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Cannot load file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lhya;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move-object v1, v2

    goto :goto_1

    .line 490
    :cond_6
    iget v0, v0, Ligq;->i:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 491
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 492
    iget-object v0, p0, Lhya;->g:Ligq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lhya;->f()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Downloading disabled for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " file name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_7
    iget-object v0, p0, Lhya;->a:Lhye;

    invoke-interface {v0, p0, v8, v2}, Lhye;->a(Ligp;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 498
    :cond_8
    invoke-virtual {p0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 499
    iget-object v0, p0, Lhya;->g:Ligq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Requesting download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_9
    invoke-virtual {p0}, Lhya;->h()V

    goto/16 :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lhya;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 253
    invoke-virtual {p0}, Lhya;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/io/File;
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lhya;->g:Ligq;

    check-cast v0, Ligq;

    .line 266
    iget v1, v0, Ligq;->i:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    .line 270
    :cond_0
    iget v0, v0, Ligq;->i:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lhya;->a:Lhye;

    invoke-interface {v0}, Lhye;->c()Lhxm;

    move-result-object v0

    .line 272
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lhya;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lhxm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lhya;->a:Lhye;

    invoke-interface {v0}, Lhye;->b()Lhxm;

    move-result-object v0

    goto :goto_1
.end method

.method public g()Ljava/io/File;
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lhya;->d()Ljava/lang/String;

    move-result-object v1

    .line 279
    iget-object v0, p0, Lhya;->a:Lhye;

    invoke-interface {v0}, Lhye;->b()Lhxm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lhxm;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhya;->a:Lhye;

    invoke-interface {v0}, Lhye;->c()Lhxm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lhxm;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public h()V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lhya;->b:Lhyo;

    invoke-virtual {v0}, Lhyo;->f()V

    .line 292
    invoke-virtual {p0}, Lhya;->a()Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lhya;->b:Lhyo;

    invoke-virtual {v1, v0}, Lhyo;->a(Ljava/lang/String;)V

    .line 294
    if-nez v0, :cond_1

    .line 295
    const-string v0, "ImageResource"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lhya;->g:Ligq;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unable to download null image url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lhya;->a(I)V

    .line 306
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lhya;->g:Ligq;

    check-cast v0, Ligq;

    iget v0, v0, Ligq;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lhya;->b:Lhyo;

    invoke-virtual {v0}, Lhyo;->b()V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lhya;->b:Lhyo;

    invoke-virtual {v0}, Lhyo;->c()V

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lhya;->g:Ligq;

    check-cast v0, Ligq;

    iget v0, v0, Ligq;->i:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 2352
    iget-object v0, p0, Lhya;->h:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2353
    iget-object v0, p0, Lhya;->h:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 341
    :goto_0
    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 345
    :cond_0
    iget-object v1, p0, Lhya;->a:Lhye;

    invoke-interface {v1, v0}, Lhye;->a(Landroid/graphics/Bitmap;)V

    .line 348
    :cond_1
    invoke-super {p0}, Ligp;->i()V

    .line 349
    return-void

    .line 2354
    :cond_2
    iget-object v0, p0, Lhya;->h:Ljava/lang/Object;

    instance-of v0, v0, Lhxu;

    if-eqz v0, :cond_3

    .line 2355
    iget-object v0, p0, Lhya;->h:Ljava/lang/Object;

    check-cast v0, Lhxu;

    iget-object v0, v0, Lhxu;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 2357
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()I
    .locals 2

    .prologue
    .line 412
    iget v0, p0, Lhya;->r:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lhya;->h:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 415
    iget-object v0, p0, Lhya;->h:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lhya;->h:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 417
    invoke-static {v0}, Lhya;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lhya;->r:I

    .line 431
    :cond_0
    :goto_0
    iget v0, p0, Lhya;->r:I

    return v0

    .line 418
    :cond_1
    iget-object v0, p0, Lhya;->h:Ljava/lang/Object;

    instance-of v0, v0, Lhxu;

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lhya;->h:Ljava/lang/Object;

    check-cast v0, Lhxu;

    iget-object v0, v0, Lhxu;->a:Landroid/graphics/Bitmap;

    .line 420
    invoke-static {v0}, Lhya;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lhya;->r:I

    goto :goto_0

    .line 421
    :cond_2
    iget-object v0, p0, Lhya;->h:Ljava/lang/Object;

    instance-of v0, v0, Lhxt;

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lhya;->h:Ljava/lang/Object;

    check-cast v0, Lhxt;

    .line 423
    invoke-virtual {v0}, Lhxt;->a()I

    move-result v0

    iput v0, p0, Lhya;->r:I

    goto :goto_0

    .line 424
    :cond_3
    iget-object v0, p0, Lhya;->h:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_4

    .line 425
    iget-object v0, p0, Lhya;->h:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    iput v0, p0, Lhya;->r:I

    goto :goto_0

    .line 427
    :cond_4
    const v0, 0x7fffffff

    iput v0, p0, Lhya;->r:I

    goto :goto_0
.end method

.method k()Ljava/lang/String;
    .locals 4

    .prologue
    .line 808
    iget-object v0, p0, Lhya;->b:Lhyo;

    .line 809
    invoke-virtual {v0}, Lhyo;->k()J

    move-result-wide v0

    iget-object v2, p0, Lhya;->b:Lhyo;

    invoke-virtual {v2}, Lhyo;->i()J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhya;->o:Ljava/lang/String;

    return-object v0
.end method
