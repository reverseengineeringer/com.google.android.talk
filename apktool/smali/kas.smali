.class public final Lkas;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkas;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25638
    invoke-direct {p0}, Llyb;-><init>()V

    .line 26643
    iput-object v0, p0, Lkas;->a:Ljava/lang/Integer;

    .line 26644
    iput-object v0, p0, Lkas;->b:[B

    .line 26645
    iput-object v0, p0, Lkas;->eD:Llyd;

    .line 26646
    const/4 v0, -0x1

    iput v0, p0, Lkas;->eE:I

    .line 25640
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 26681
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 26682
    sparse-switch v0, :sswitch_data_0

    .line 26686
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26687
    :sswitch_0
    return-object p0

    .line 26692
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkas;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 26696
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkas;->b:[B

    goto :goto_0

    .line 26682
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 25653
    iget-object v0, p0, Lkas;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 25654
    const/4 v0, 0x1

    iget-object v1, p0, Lkas;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 25656
    :cond_0
    iget-object v0, p0, Lkas;->b:[B

    if-eqz v0, :cond_1

    .line 25657
    const/4 v0, 0x2

    iget-object v1, p0, Lkas;->b:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 25659
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 25660
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 25664
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 25665
    iget-object v1, p0, Lkas;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 25666
    const/4 v1, 0x1

    iget-object v2, p0, Lkas;->a:Ljava/lang/Integer;

    .line 25667
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25669
    :cond_0
    iget-object v1, p0, Lkas;->b:[B

    if-eqz v1, :cond_1

    .line 25670
    const/4 v1, 0x2

    iget-object v2, p0, Lkas;->b:[B

    .line 25671
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 25673
    :cond_1
    return v0
.end method
