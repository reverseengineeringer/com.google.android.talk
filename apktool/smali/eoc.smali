.class final Leoc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lczb;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public i:J

.field public j:J

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-wide v0, p0, Leoc;->c:J

    .line 445
    iput-wide v0, p0, Leoc;->i:J

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Leoc;->k:Z

    .line 447
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 471
    iput-wide p1, p0, Leoc;->i:J

    .line 472
    return-void
.end method

.method public a(Lczb;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;IJ)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Leoc;->a:Lczb;

    .line 457
    iput-object p2, p0, Leoc;->b:Ljava/lang/String;

    .line 458
    iput-object p3, p0, Leoc;->e:Ljava/lang/String;

    .line 459
    iput-wide p4, p0, Leoc;->c:J

    .line 460
    iput-wide p6, p0, Leoc;->d:J

    .line 461
    iput p8, p0, Leoc;->f:I

    .line 462
    iput-object p9, p0, Leoc;->g:Ljava/lang/String;

    .line 463
    iput p10, p0, Leoc;->h:I

    .line 464
    iput-wide p11, p0, Leoc;->j:J

    .line 465
    return-void
.end method
