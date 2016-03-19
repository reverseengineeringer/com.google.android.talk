.class final Lhcf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lhcd;


# direct methods
.method constructor <init>(Lhcd;I)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lhcf;->b:Lhcd;

    iput p2, p0, Lhcf;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lhcf;->b:Lhcd;

    .line 1387
    iget-boolean v1, v0, Lhcd;->o:Z

    if-nez v1, :cond_0

    .line 1388
    invoke-virtual {v0, v2}, Lhcd;->a(Lhlb;)V

    .line 1389
    invoke-virtual {v0, v2}, Lhcd;->a(Lhkq;)V

    .line 1390
    invoke-virtual {v0, v2}, Lhcd;->a(Lhkr;)V

    .line 1392
    iget-object v1, v0, Lhcd;->i:Lhgo;

    invoke-virtual {v1}, Lhgo;->a()V

    .line 1393
    iget-object v1, v0, Lhcd;->f:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    invoke-virtual {v1}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->a()V

    .line 1394
    iget-object v1, v0, Lhcd;->h:Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;

    invoke-virtual {v1}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->a()V

    .line 1395
    iget-object v1, v0, Lhcd;->g:Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;

    invoke-virtual {v1}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->b()V

    .line 1396
    iget-object v1, v0, Lhcd;->d:Lhee;

    invoke-virtual {v1}, Lhee;->a()V

    .line 1397
    iget-object v1, v0, Lhcd;->e:Lhfo;

    invoke-virtual {v1}, Lhfo;->a()V

    .line 1398
    iget-object v1, v0, Lhcd;->j:Lhiv;

    invoke-virtual {v1}, Lhiv;->b()V

    .line 2074
    sget-object v1, Lhdf;->a:Lhdf;

    .line 1399
    invoke-virtual {v1}, Lhdf;->a()V

    .line 1402
    const/4 v1, 0x1

    iput-boolean v1, v0, Lhcd;->o:Z

    .line 324
    :cond_0
    iget-object v0, p0, Lhcf;->b:Lhcd;

    .line 3053
    iget-object v0, v0, Lhcd;->b:Lhci;

    .line 324
    iget v1, p0, Lhcf;->a:I

    invoke-virtual {v0, v1}, Lhci;->a(I)V

    .line 325
    return-void
.end method
