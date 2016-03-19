.class public final Llkx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llkx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llmi;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3407
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4412
    iput-object v0, p0, Llkx;->a:Llmi;

    .line 4413
    iput-object v0, p0, Llkx;->b:Ljava/lang/Boolean;

    .line 4414
    iput-object v0, p0, Llkx;->eD:Llyd;

    .line 4415
    const/4 v0, -0x1

    iput v0, p0, Llkx;->eE:I

    .line 3409
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 5450
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5451
    sparse-switch v0, :sswitch_data_0

    .line 5455
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5456
    :sswitch_0
    return-object p0

    .line 5461
    :sswitch_1
    iget-object v0, p0, Llkx;->a:Llmi;

    if-nez v0, :cond_1

    .line 5462
    new-instance v0, Llmi;

    invoke-direct {v0}, Llmi;-><init>()V

    iput-object v0, p0, Llkx;->a:Llmi;

    .line 5464
    :cond_1
    iget-object v0, p0, Llkx;->a:Llmi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5468
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llkx;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 5451
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3422
    iget-object v0, p0, Llkx;->a:Llmi;

    if-eqz v0, :cond_0

    .line 3423
    const/4 v0, 0x1

    iget-object v1, p0, Llkx;->a:Llmi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3425
    :cond_0
    iget-object v0, p0, Llkx;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 3426
    const/4 v0, 0x2

    iget-object v1, p0, Llkx;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 3428
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3429
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3433
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3434
    iget-object v1, p0, Llkx;->a:Llmi;

    if-eqz v1, :cond_0

    .line 3435
    const/4 v1, 0x1

    iget-object v2, p0, Llkx;->a:Llmi;

    .line 3436
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3438
    :cond_0
    iget-object v1, p0, Llkx;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 3439
    const/4 v1, 0x2

    iget-object v2, p0, Llkx;->b:Ljava/lang/Boolean;

    .line 3440
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3440
    add-int/2addr v0, v1

    .line 3442
    :cond_1
    return v0
.end method
