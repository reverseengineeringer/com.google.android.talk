.class final Lapf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lapf",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Lavq;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lapf;->a:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method static a(Ljava/lang/Object;II)Lapf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lapf",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v1, Lapf;->a:Ljava/util/Queue;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lapf;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapf;

    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lapf;

    invoke-direct {v0}, Lapf;-><init>()V

    .line 1099
    :cond_0
    iput-object p0, v0, Lapf;->d:Ljava/lang/Object;

    .line 1100
    iput p1, v0, Lapf;->c:I

    .line 1101
    iput p2, v0, Lapf;->b:I

    .line 92
    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 105
    sget-object v1, Lapf;->a:Ljava/util/Queue;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lapf;->a:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 107
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 112
    instance-of v1, p1, Lapf;

    if-eqz v1, :cond_0

    .line 113
    check-cast p1, Lapf;

    .line 114
    iget v1, p0, Lapf;->c:I

    iget v2, p1, Lapf;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lapf;->b:I

    iget v2, p1, Lapf;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lapf;->d:Ljava/lang/Object;

    iget-object v2, p1, Lapf;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 116
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lapf;->b:I

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lapf;->c:I

    add-int/2addr v0, v1

    .line 123
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lapf;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    return v0
.end method
