.class public final Ldqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:J


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 2

    .prologue
    .line 2577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2578
    iput p1, p0, Ldqe;->a:I

    .line 2579
    iput p2, p0, Ldqe;->b:I

    .line 2580
    iput p3, p0, Ldqe;->c:I

    .line 2581
    iput-object p4, p0, Ldqe;->d:Ljava/lang/String;

    .line 2582
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldqe;->e:J

    .line 2583
    return-void
.end method

.method private static a(I)Lkzs;
    .locals 2

    .prologue
    .line 2599
    new-instance v0, Lkzs;

    invoke-direct {v0}, Lkzs;-><init>()V

    .line 2601
    const-string v1, "bbl"

    iput-object v1, v0, Lkzs;->a:Ljava/lang/String;

    .line 2602
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkzs;->b:Ljava/lang/Integer;

    .line 2603
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2586
    iget-object v0, p0, Ldqe;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 2594
    iput-wide p1, p0, Ldqe;->e:J

    .line 2595
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 2590
    iget-wide v0, p0, Ldqe;->e:J

    return-wide v0
.end method

.method public c()Lkax;
    .locals 6

    .prologue
    .line 2624
    new-instance v0, Lkax;

    invoke-direct {v0}, Lkax;-><init>()V

    .line 3607
    new-instance v1, Lkzq;

    invoke-direct {v1}, Lkzq;-><init>()V

    .line 3609
    iget v2, p0, Ldqe;->b:I

    invoke-static {v2}, Ldqe;->a(I)Lkzs;

    move-result-object v2

    iput-object v2, v1, Lkzq;->e:Lkzs;

    .line 3610
    iget v2, p0, Ldqe;->a:I

    invoke-static {v2}, Ldqe;->a(I)Lkzs;

    move-result-object v2

    iput-object v2, v1, Lkzq;->f:Lkzs;

    .line 2625
    iput-object v1, v0, Lkax;->a:Lkzq;

    .line 3615
    new-instance v1, Lkay;

    invoke-direct {v1}, Lkay;-><init>()V

    .line 3616
    new-instance v2, Lkev;

    invoke-direct {v2}, Lkev;-><init>()V

    .line 3617
    iget v3, p0, Ldqe;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lkev;->a:Ljava/lang/Integer;

    .line 3618
    iget-wide v4, p0, Ldqe;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lkev;->b:Ljava/lang/Long;

    .line 3619
    iput-object v2, v1, Lkay;->d:Lkev;

    .line 2626
    iput-object v1, v0, Lkax;->b:Lkay;

    .line 2627
    return-object v0
.end method
