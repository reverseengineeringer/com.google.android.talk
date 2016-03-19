.class public final Ljjn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljjn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2710
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3715
    iput-object v0, p0, Ljjn;->a:Ljava/lang/String;

    .line 3716
    iput-object v0, p0, Ljjn;->b:Ljava/lang/String;

    .line 3717
    iput-object v0, p0, Ljjn;->c:Ljava/lang/String;

    .line 3718
    iput-object v0, p0, Ljjn;->eD:Llyd;

    .line 3719
    const/4 v0, -0x1

    iput v0, p0, Ljjn;->eE:I

    .line 2712
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3757
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3758
    sparse-switch v0, :sswitch_data_0

    .line 3762
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3763
    :sswitch_0
    return-object p0

    .line 3768
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjn;->a:Ljava/lang/String;

    goto :goto_0

    .line 3772
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjn;->b:Ljava/lang/String;

    goto :goto_0

    .line 3776
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjn;->c:Ljava/lang/String;

    goto :goto_0

    .line 3758
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2726
    const/4 v0, 0x1

    iget-object v1, p0, Ljjn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2727
    iget-object v0, p0, Ljjn;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2728
    const/4 v0, 0x2

    iget-object v1, p0, Ljjn;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2730
    :cond_0
    iget-object v0, p0, Ljjn;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2731
    const/4 v0, 0x3

    iget-object v1, p0, Ljjn;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2733
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2734
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2738
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2739
    const/4 v1, 0x1

    iget-object v2, p0, Ljjn;->a:Ljava/lang/String;

    .line 2740
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2741
    iget-object v1, p0, Ljjn;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2742
    const/4 v1, 0x2

    iget-object v2, p0, Ljjn;->b:Ljava/lang/String;

    .line 2743
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2745
    :cond_0
    iget-object v1, p0, Ljjn;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2746
    const/4 v1, 0x3

    iget-object v2, p0, Ljjn;->c:Ljava/lang/String;

    .line 2747
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2749
    :cond_1
    return v0
.end method
