.class final Lalp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalr;
.implements Lavy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lalr",
        "<TZ;>;",
        "Lavy;"
    }
.end annotation


# static fields
.field private static final a:Lic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic",
            "<",
            "Lalp",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lawa;

.field private c:Lalr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lalr",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const/16 v0, 0x14

    new-instance v1, Lalq;

    invoke-direct {v1}, Lalq;-><init>()V

    invoke-static {v0, v1}, Lavs;->a(ILavw;)Lic;

    move-result-object v0

    sput-object v0, Lalp;->a:Lic;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2016
    new-instance v0, Lawb;

    .line 2033
    invoke-direct {v0}, Lawb;-><init>()V

    .line 24
    iput-object v0, p0, Lalp;->b:Lawa;

    .line 36
    return-void
.end method

.method static a(Lalr;)Lalp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lalr",
            "<TZ;>;)",
            "Lalp",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lalp;->a:Lic;

    invoke-interface {v0}, Lic;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalp;

    .line 1039
    const/4 v1, 0x0

    iput-boolean v1, v0, Lalp;->e:Z

    .line 1040
    const/4 v1, 0x1

    iput-boolean v1, v0, Lalp;->d:Z

    .line 1041
    iput-object p0, v0, Lalp;->c:Lalr;

    .line 33
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lalp;->b:Lawa;

    invoke-virtual {v0}, Lawa;->a()V

    .line 52
    iget-boolean v0, p0, Lalp;->d:Z

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lalp;->d:Z

    .line 56
    iget-boolean v0, p0, Lalp;->e:Z

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lalp;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lalp;->c:Lalr;

    invoke-interface {v0}, Lalr;->b()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lalp;->c:Lalr;

    invoke-interface {v0}, Lalr;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lalp;->c:Lalr;

    invoke-interface {v0}, Lalr;->d()I

    move-result v0

    return v0
.end method

.method public declared-synchronized e()V
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lalp;->b:Lawa;

    invoke-virtual {v0}, Lawa;->a()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lalp;->e:Z

    .line 81
    iget-boolean v0, p0, Lalp;->d:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lalp;->c:Lalr;

    invoke-interface {v0}, Lalr;->e()V

    .line 2045
    const/4 v0, 0x0

    iput-object v0, p0, Lalp;->c:Lalr;

    .line 2046
    sget-object v0, Lalp;->a:Lic;

    invoke-interface {v0, p0}, Lic;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i_()Lawa;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lalp;->b:Lawa;

    return-object v0
.end method
