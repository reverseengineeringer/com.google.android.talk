.class final Lhgf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhge;


# direct methods
.method constructor <init>(Lhge;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lhgf;->a:Lhge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lhgf;->a:Lhge;

    .line 1024
    iget-object v0, v0, Lhge;->i:Lhle;

    .line 38
    if-eqz v0, :cond_0

    iget-object v0, p0, Lhgf;->a:Lhge;

    .line 2024
    iget-boolean v0, v0, Lhge;->k:Z

    .line 38
    if-eqz v0, :cond_0

    iget-object v0, p0, Lhgf;->a:Lhge;

    .line 3024
    iget-object v0, v0, Lhge;->j:Lhlg;

    .line 38
    iget-object v0, v0, Lhlg;->a:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhgf;->a:Lhge;

    .line 4024
    iget-object v0, v0, Lhge;->j:Lhlg;

    .line 39
    iget-object v0, v0, Lhlg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lhgf;->a:Lhge;

    .line 5024
    iget-object v0, v0, Lhge;->i:Lhle;

    .line 40
    iget-object v1, p0, Lhgf;->a:Lhge;

    .line 6024
    iget-object v1, v1, Lhge;->j:Lhlg;

    .line 40
    invoke-virtual {v0, v1}, Lhle;->a(Lhlg;)V

    .line 42
    :cond_0
    return-void
.end method
