.class final Lrq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lri;


# direct methods
.method constructor <init>(Lri;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lrq;->a:Lri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    iget-object v0, p0, Lrq;->a:Lri;

    .line 2092
    iget v0, v0, Lri;->I:I

    .line 128
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lrq;->a:Lri;

    .line 3535
    invoke-virtual {v0, v4}, Lri;->e(I)Lry;

    move-result-object v1

    .line 3537
    iget-object v2, v1, Lry;->j:Ltl;

    if-eqz v2, :cond_1

    .line 3538
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3539
    iget-object v3, v1, Lry;->j:Ltl;

    invoke-virtual {v3, v2}, Ltl;->a(Landroid/os/Bundle;)V

    .line 3540
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 3541
    iput-object v2, v1, Lry;->s:Landroid/os/Bundle;

    .line 3544
    :cond_0
    iget-object v2, v1, Lry;->j:Ltl;

    invoke-virtual {v2}, Ltl;->g()V

    .line 3545
    iget-object v2, v1, Lry;->j:Ltl;

    invoke-virtual {v2}, Ltl;->clear()V

    .line 3547
    :cond_1
    iput-boolean v5, v1, Lry;->r:Z

    .line 3548
    iput-boolean v5, v1, Lry;->q:Z

    .line 3551
    iget-object v1, v0, Lri;->o:Lve;

    if-eqz v1, :cond_2

    .line 3553
    invoke-virtual {v0, v4}, Lri;->e(I)Lry;

    move-result-object v1

    .line 3554
    if-eqz v1, :cond_2

    .line 3555
    iput-boolean v4, v1, Lry;->m:Z

    .line 3556
    invoke-virtual {v0, v1, v6}, Lri;->b(Lry;Landroid/view/KeyEvent;)Z

    .line 131
    :cond_2
    iget-object v0, p0, Lrq;->a:Lri;

    .line 4092
    iget v0, v0, Lri;->I:I

    .line 131
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_5

    .line 132
    iget-object v0, p0, Lrq;->a:Lri;

    .line 5535
    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lri;->e(I)Lry;

    move-result-object v1

    .line 5537
    iget-object v2, v1, Lry;->j:Ltl;

    if-eqz v2, :cond_4

    .line 5538
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5539
    iget-object v3, v1, Lry;->j:Ltl;

    invoke-virtual {v3, v2}, Ltl;->a(Landroid/os/Bundle;)V

    .line 5540
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 5541
    iput-object v2, v1, Lry;->s:Landroid/os/Bundle;

    .line 5544
    :cond_3
    iget-object v2, v1, Lry;->j:Ltl;

    invoke-virtual {v2}, Ltl;->g()V

    .line 5545
    iget-object v2, v1, Lry;->j:Ltl;

    invoke-virtual {v2}, Ltl;->clear()V

    .line 5547
    :cond_4
    iput-boolean v5, v1, Lry;->r:Z

    .line 5548
    iput-boolean v5, v1, Lry;->q:Z

    .line 5551
    iget-object v1, v0, Lri;->o:Lve;

    if-eqz v1, :cond_5

    .line 5553
    invoke-virtual {v0, v4}, Lri;->e(I)Lry;

    move-result-object v1

    .line 5554
    if-eqz v1, :cond_5

    .line 5555
    iput-boolean v4, v1, Lry;->m:Z

    .line 5556
    invoke-virtual {v0, v1, v6}, Lri;->b(Lry;Landroid/view/KeyEvent;)Z

    .line 134
    :cond_5
    iget-object v0, p0, Lrq;->a:Lri;

    .line 6092
    iput-boolean v4, v0, Lri;->H:Z

    .line 135
    iget-object v0, p0, Lrq;->a:Lri;

    .line 7092
    iput v4, v0, Lri;->I:I

    .line 136
    return-void
.end method
