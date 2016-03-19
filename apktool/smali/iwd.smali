.class public final Liwd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10816
    invoke-direct {p0}, Llyb;-><init>()V

    .line 11821
    iput-object v0, p0, Liwd;->a:Ljava/lang/String;

    .line 11822
    iput-object v0, p0, Liwd;->b:Ljava/lang/Integer;

    .line 11823
    iput-object v0, p0, Liwd;->c:Ljava/lang/String;

    .line 11824
    iput-object v0, p0, Liwd;->eD:Llyd;

    .line 11825
    const/4 v0, -0x1

    iput v0, p0, Liwd;->eE:I

    .line 10818
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 11867
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11868
    sparse-switch v0, :sswitch_data_0

    .line 11872
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11873
    :sswitch_0
    return-object p0

    .line 11878
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwd;->a:Ljava/lang/String;

    goto :goto_0

    .line 11882
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 11883
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 11887
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liwd;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 11893
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwd;->c:Ljava/lang/String;

    goto :goto_0

    .line 11868
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 11883
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 10832
    iget-object v0, p0, Liwd;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10833
    const/4 v0, 0x1

    iget-object v1, p0, Liwd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 10835
    :cond_0
    iget-object v0, p0, Liwd;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 10836
    const/4 v0, 0x2

    iget-object v1, p0, Liwd;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 10838
    :cond_1
    iget-object v0, p0, Liwd;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 10839
    const/4 v0, 0x3

    iget-object v1, p0, Liwd;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 10841
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 10842
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 10846
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 10847
    iget-object v1, p0, Liwd;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10848
    const/4 v1, 0x1

    iget-object v2, p0, Liwd;->a:Ljava/lang/String;

    .line 10849
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10851
    :cond_0
    iget-object v1, p0, Liwd;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 10852
    const/4 v1, 0x2

    iget-object v2, p0, Liwd;->b:Ljava/lang/Integer;

    .line 10853
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10855
    :cond_1
    iget-object v1, p0, Liwd;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 10856
    const/4 v1, 0x3

    iget-object v2, p0, Liwd;->c:Ljava/lang/String;

    .line 10857
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10859
    :cond_2
    return v0
.end method
