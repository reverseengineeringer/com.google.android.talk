.class public final Liwf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwf;",
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

    .line 10689
    invoke-direct {p0}, Llyb;-><init>()V

    .line 11694
    iput-object v0, p0, Liwf;->a:Ljava/lang/String;

    .line 11695
    iput-object v0, p0, Liwf;->b:Ljava/lang/String;

    .line 11696
    iput-object v0, p0, Liwf;->c:Ljava/lang/String;

    .line 11697
    iput-object v0, p0, Liwf;->eD:Llyd;

    .line 11698
    const/4 v0, -0x1

    iput v0, p0, Liwf;->eE:I

    .line 10691
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 11740
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11741
    sparse-switch v0, :sswitch_data_0

    .line 11745
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11746
    :sswitch_0
    return-object p0

    .line 11751
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwf;->a:Ljava/lang/String;

    goto :goto_0

    .line 11755
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwf;->b:Ljava/lang/String;

    goto :goto_0

    .line 11759
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwf;->c:Ljava/lang/String;

    goto :goto_0

    .line 11741
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
    .line 10705
    iget-object v0, p0, Liwf;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10706
    const/4 v0, 0x1

    iget-object v1, p0, Liwf;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 10708
    :cond_0
    iget-object v0, p0, Liwf;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 10709
    const/4 v0, 0x2

    iget-object v1, p0, Liwf;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 10711
    :cond_1
    iget-object v0, p0, Liwf;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 10712
    const/4 v0, 0x3

    iget-object v1, p0, Liwf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 10714
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 10715
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 10719
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 10720
    iget-object v1, p0, Liwf;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10721
    const/4 v1, 0x1

    iget-object v2, p0, Liwf;->a:Ljava/lang/String;

    .line 10722
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10724
    :cond_0
    iget-object v1, p0, Liwf;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 10725
    const/4 v1, 0x2

    iget-object v2, p0, Liwf;->b:Ljava/lang/String;

    .line 10726
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10728
    :cond_1
    iget-object v1, p0, Liwf;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 10729
    const/4 v1, 0x3

    iget-object v2, p0, Liwf;->c:Ljava/lang/String;

    .line 10730
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10732
    :cond_2
    return v0
.end method
