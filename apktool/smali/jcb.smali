.class public final Ljcb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljcb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6696
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7701
    iput-object v0, p0, Ljcb;->a:Ljava/lang/Float;

    .line 7702
    iput-object v0, p0, Ljcb;->b:Ljava/lang/Float;

    .line 7703
    iput-object v0, p0, Ljcb;->c:Ljava/lang/Float;

    .line 7704
    iput-object v0, p0, Ljcb;->d:Ljava/lang/Float;

    .line 7705
    iput-object v0, p0, Ljcb;->eD:Llyd;

    .line 7706
    const/4 v0, -0x1

    iput v0, p0, Ljcb;->eE:I

    .line 6698
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 11755
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11756
    sparse-switch v0, :sswitch_data_0

    .line 11760
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11761
    :sswitch_0
    return-object p0

    .line 11766
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljcb;->a:Ljava/lang/Float;

    goto :goto_0

    .line 11770
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljcb;->b:Ljava/lang/Float;

    goto :goto_0

    .line 11774
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljcb;->c:Ljava/lang/Float;

    goto :goto_0

    .line 11778
    :sswitch_4
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljcb;->d:Ljava/lang/Float;

    goto :goto_0

    .line 11756
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 6713
    iget-object v0, p0, Ljcb;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 6714
    const/4 v0, 0x1

    iget-object v1, p0, Ljcb;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 6716
    :cond_0
    iget-object v0, p0, Ljcb;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 6717
    const/4 v0, 0x2

    iget-object v1, p0, Ljcb;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 6719
    :cond_1
    iget-object v0, p0, Ljcb;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 6720
    const/4 v0, 0x3

    iget-object v1, p0, Ljcb;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 6722
    :cond_2
    iget-object v0, p0, Ljcb;->d:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 6723
    const/4 v0, 0x4

    iget-object v1, p0, Ljcb;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 6725
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6726
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6730
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6731
    iget-object v1, p0, Ljcb;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 6732
    const/4 v1, 0x1

    iget-object v2, p0, Ljcb;->a:Ljava/lang/Float;

    .line 6733
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 8569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 6733
    add-int/2addr v0, v1

    .line 6735
    :cond_0
    iget-object v1, p0, Ljcb;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 6736
    const/4 v1, 0x2

    iget-object v2, p0, Ljcb;->b:Ljava/lang/Float;

    .line 6737
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 9569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 6737
    add-int/2addr v0, v1

    .line 6739
    :cond_1
    iget-object v1, p0, Ljcb;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 6740
    const/4 v1, 0x3

    iget-object v2, p0, Ljcb;->c:Ljava/lang/Float;

    .line 6741
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 10569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 6741
    add-int/2addr v0, v1

    .line 6743
    :cond_2
    iget-object v1, p0, Ljcb;->d:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 6744
    const/4 v1, 0x4

    iget-object v2, p0, Ljcb;->d:Ljava/lang/Float;

    .line 6745
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 11569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 6745
    add-int/2addr v0, v1

    .line 6747
    :cond_3
    return v0
.end method
