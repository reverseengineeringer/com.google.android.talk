.class public final Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 507
    invoke-direct {p0}, Llyb;-><init>()V

    .line 508
    iput v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->a:I

    .line 509
    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->b:Z

    .line 510
    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->c:Z

    .line 511
    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->d:Z

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->eD:Llyd;

    .line 513
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->eE:I

    .line 514
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4554
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4555
    sparse-switch v0, :sswitch_data_0

    .line 4559
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4560
    :sswitch_0
    return-object p0

    .line 4565
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->b:Z

    .line 4566
    iget v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->a:I

    goto :goto_0

    .line 4570
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->c:Z

    .line 4571
    iget v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->a:I

    goto :goto_0

    .line 4575
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->d:Z

    .line 4576
    iget v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->a:I

    goto :goto_0

    .line 4555
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 519
    iget v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 520
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->b:Z

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 522
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 523
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->c:Z

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 525
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 526
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->d:Z

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 528
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 529
    return-void
.end method

.method protected b()I
    .locals 2

    .prologue
    .line 533
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 534
    iget v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 535
    const/4 v1, 0x1

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 536
    add-int/2addr v0, v1

    .line 538
    :cond_0
    iget v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 539
    const/4 v1, 0x2

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 540
    add-int/2addr v0, v1

    .line 542
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$RenderInfo;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 543
    const/4 v1, 0x3

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 544
    add-int/2addr v0, v1

    .line 546
    :cond_2
    return v0
.end method
