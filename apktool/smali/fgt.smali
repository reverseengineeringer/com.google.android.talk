.class public final Lfgt;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lfgr;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private final g:La;

.field private h:La;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lgbt;

.field private k:Z


# direct methods
.method constructor <init>(Lfgr;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lfgt;-><init>(Lfgr;[BB)V

    return-void
.end method

.method private constructor <init>(Lfgr;[BB)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 0
    iput-object p1, p0, Lfgt;->a:Lfgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lfgt;->a:Lfgr;

    invoke-static {v0}, Lfgr;->a(Lfgr;)I

    move-result v0

    iput v0, p0, Lfgt;->b:I

    iget-object v0, p0, Lfgt;->a:Lfgr;

    invoke-static {v0}, Lfgr;->b(Lfgr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfgt;->c:Ljava/lang/String;

    iget-object v0, p0, Lfgt;->a:Lfgr;

    invoke-static {v0}, Lfgr;->c(Lfgr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfgt;->d:Ljava/lang/String;

    iget-object v0, p0, Lfgt;->a:Lfgr;

    invoke-static {v0}, Lfgr;->d(Lfgr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfgt;->e:Ljava/lang/String;

    iget-object v0, p0, Lfgt;->a:Lfgr;

    invoke-static {v0}, Lfgr;->e(Lfgr;)I

    move-result v0

    iput v0, p0, Lfgt;->f:I

    iput-object v4, p0, Lfgt;->i:Ljava/util/ArrayList;

    new-instance v0, Lgbt;

    invoke-direct {v0}, Lgbt;-><init>()V

    iput-object v0, p0, Lfgt;->j:Lgbt;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfgt;->k:Z

    invoke-static {p1}, Lfgr;->c(Lfgr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfgt;->d:Ljava/lang/String;

    invoke-static {p1}, Lfgr;->d(Lfgr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfgt;->e:Ljava/lang/String;

    iget-object v0, p0, Lfgt;->j:Lgbt;

    invoke-static {p1}, Lfgr;->f(Lfgr;)Lfmr;

    move-result-object v1

    invoke-interface {v1}, Lfmr;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lgbt;->a:J

    iget-object v0, p0, Lfgt;->j:Lgbt;

    invoke-static {p1}, Lfgr;->f(Lfgr;)Lfmr;

    move-result-object v1

    invoke-interface {v1}, Lfmr;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lgbt;->b:J

    iget-object v0, p0, Lfgt;->j:Lgbt;

    invoke-static {p1}, Lfgr;->g(Lfgr;)Lfgu;

    iget-object v1, p0, Lfgt;->j:Lgbt;

    iget-wide v2, v1, Lgbt;->a:J

    .line 1000
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    .line 0
    iput-wide v2, v0, Lgbt;->n:J

    if-eqz p2, :cond_0

    iget-object v0, p0, Lfgt;->j:Lgbt;

    iput-object p2, v0, Lgbt;->i:[B

    :cond_0
    iput-object v4, p0, Lfgt;->g:La;

    return-void
.end method

.method private b()Lcom/google/android/gms/clearcut/LogEventParcelable;
    .locals 10

    new-instance v9, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lfgt;->a:Lfgr;

    invoke-static {v1}, Lfgr;->i(Lfgr;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfgt;->a:Lfgr;

    invoke-static {v2}, Lfgr;->j(Lfgr;)I

    move-result v2

    iget v3, p0, Lfgt;->b:I

    iget-object v4, p0, Lfgt;->c:Ljava/lang/String;

    iget-object v5, p0, Lfgt;->d:Ljava/lang/String;

    iget-object v6, p0, Lfgt;->e:Ljava/lang/String;

    iget-object v7, p0, Lfgt;->a:Lfgr;

    invoke-static {v7}, Lfgr;->h(Lfgr;)Z

    move-result v7

    iget v8, p0, Lfgt;->f:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lfgt;->j:Lgbt;

    iget-object v4, p0, Lfgt;->g:La;

    iget-object v5, p0, Lfgt;->h:La;

    iget-object v1, p0, Lfgt;->i:Ljava/util/ArrayList;

    invoke-static {v1}, Lfgr;->a(Ljava/util/ArrayList;)[I

    move-result-object v6

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lgbt;La;La;[I)V

    return-object v9
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lfgt;
    .locals 0

    iput-object p1, p0, Lfgt;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lfij;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfij",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lfgt;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfgt;->k:Z

    iget-object v0, p0, Lfgt;->a:Lfgr;

    invoke-static {v0}, Lfgr;->k(Lfgr;)Lfgv;

    move-result-object v0

    iget-object v1, p0, Lfgt;->a:Lfgr;

    invoke-static {v1}, Lfgr;->l(Lfgr;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lfgt;->b()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lfgv;->a(Landroid/content/Context;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lfij;

    move-result-object v0

    return-object v0
.end method

.method public a(Lfic;)Lfij;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            ")",
            "Lfij",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lfgt;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfgt;->k:Z

    iget-object v0, p0, Lfgt;->a:Lfgr;

    invoke-static {v0}, Lfgr;->k(Lfgr;)Lfgv;

    move-result-object v0

    invoke-direct {p0}, Lfgt;->b()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lfgv;->a(Lfic;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lfij;

    move-result-object v0

    return-object v0
.end method

.method public b(Lfic;)Lfij;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            ")",
            "Lfij",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lfgt;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfgt;->k:Z

    iget-object v0, p0, Lfgt;->a:Lfgr;

    invoke-static {v0}, Lfgr;->k(Lfgr;)Lfgv;

    move-result-object v0

    invoke-direct {p0}, Lfgt;->b()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lfgv;->b(Lfic;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lfij;

    move-result-object v0

    return-object v0
.end method
