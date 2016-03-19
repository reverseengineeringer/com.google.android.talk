.class final Lhjm;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhjk;


# direct methods
.method public constructor <init>(Lhjk;)V
    .locals 2

    .prologue
    .line 528
    iput-object p1, p0, Lhjm;->a:Lhjk;

    .line 529
    iget-object v0, p1, Lhjk;->k:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 530
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .prologue
    .line 535
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lhjm;->a:Lhjk;

    iget-object v1, v0, Lhjk;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-object v0, p0, Lhjm;->a:Lhjk;

    .line 1035
    iget-boolean v0, v0, Lhjk;->z:Z

    .line 544
    if-eqz v0, :cond_3

    .line 545
    iget-object v0, p0, Lhjm;->a:Lhjk;

    .line 2035
    invoke-virtual {v0}, Lhjk;->n()I

    move-result v0

    .line 561
    :cond_1
    :goto_1
    iget-object v2, p0, Lhjm;->a:Lhjk;

    .line 4035
    iget v2, v2, Lhjk;->y:I

    .line 561
    if-eq v0, v2, :cond_2

    .line 562
    iget-object v2, p0, Lhjm;->a:Lhjk;

    .line 5035
    iput v0, v2, Lhjk;->y:I

    .line 563
    iget-object v0, p0, Lhjm;->a:Lhjk;

    .line 6035
    invoke-virtual {v0}, Lhjk;->l()V

    .line 565
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 547
    :cond_3
    :try_start_1
    iget-object v0, p0, Lhjm;->a:Lhjk;

    .line 3035
    iget v0, v0, Lhjk;->y:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    const/16 v2, 0x152

    if-ge p1, v2, :cond_4

    const/16 v2, 0x16

    if-gt p1, v2, :cond_5

    .line 549
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 550
    :cond_5
    const/16 v2, 0x44

    if-lt p1, v2, :cond_6

    const/16 v2, 0x70

    if-gt p1, v2, :cond_6

    .line 553
    const/16 v0, 0x10e

    goto :goto_1

    .line 554
    :cond_6
    const/16 v2, 0x9e

    if-lt p1, v2, :cond_7

    const/16 v2, 0xca

    if-gt p1, v2, :cond_7

    .line 555
    const/16 v0, 0xb4

    goto :goto_1

    .line 556
    :cond_7
    const/16 v2, 0xf8

    if-lt p1, v2, :cond_1

    const/16 v2, 0x124

    if-gt p1, v2, :cond_1

    .line 557
    const/16 v0, 0x5a

    goto :goto_1
.end method
