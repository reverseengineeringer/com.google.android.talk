.class Lhjp;
.super Lhle;
.source "SourceFile"


# instance fields
.field final synthetic b:Lhjk;


# direct methods
.method constructor <init>(Lhjk;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lhjp;->b:Lhjk;

    invoke-direct {p0}, Lhle;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 489
    invoke-static {}, Laal;->w()V

    .line 490
    iget-object v0, p0, Lhjp;->b:Lhjk;

    iget-object v1, v0, Lhjk;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 491
    :try_start_0
    iget-object v0, p0, Lhjp;->b:Lhjk;

    iput-object p1, v0, Lhjk;->w:Landroid/graphics/SurfaceTexture;

    .line 492
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    iget-object v0, p0, Lhjp;->b:Lhjk;

    iget-object v1, p0, Lhjp;->b:Lhjk;

    iget-boolean v1, v1, Lhjk;->r:Z

    invoke-virtual {v0, v1}, Lhjk;->a(Z)V

    .line 494
    return-void

    .line 492
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
