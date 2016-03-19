.class public final Lgll;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lgll;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:J

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgll;

    invoke-direct {v0}, Lgll;-><init>()V

    sput-object v0, Lgll;->a:Lgll;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1fffff

    iput v0, p0, Lgll;->d:I

    const/4 v0, 0x7

    iput v0, p0, Lgll;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lgll;->i:I

    return-void
.end method


# virtual methods
.method public a()Lgll;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgll;->e:Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lgll;
    .locals 0

    iput-object p1, p0, Lgll;->g:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgll;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgll;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lgll;->d:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lgll;->e:Z

    return v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lgll;->f:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgll;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lgll;->h:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lgll;->i:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lgll;->j:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "mCircleId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lgll;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mQualifiedIds"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lgll;->c:Ljava/util/Collection;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mProjection"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lgll;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mPeopleOnly"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lgll;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mChangedSince"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-wide v2, p0, Lgll;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mQuery"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lgll;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mSearchFields"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget v2, p0, Lgll;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mSortOrder"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget v2, p0, Lgll;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mExtraColumns"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget v2, p0, Lgll;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Laal;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
