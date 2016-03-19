.class public final Lkbd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Lkcr;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36865
    invoke-direct {p0}, Llyb;-><init>()V

    .line 37870
    iput-object v0, p0, Lkbd;->a:Ljxw;

    .line 37871
    iput-object v0, p0, Lkbd;->b:Lkcr;

    .line 37872
    iput-object v0, p0, Lkbd;->c:Ljava/lang/Integer;

    .line 37873
    iput-object v0, p0, Lkbd;->eD:Llyd;

    .line 37874
    const/4 v0, -0x1

    iput v0, p0, Lkbd;->eE:I

    .line 36867
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 37916
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 37917
    sparse-switch v0, :sswitch_data_0

    .line 37921
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37922
    :sswitch_0
    return-object p0

    .line 37927
    :sswitch_1
    iget-object v0, p0, Lkbd;->a:Ljxw;

    if-nez v0, :cond_1

    .line 37928
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkbd;->a:Ljxw;

    .line 37930
    :cond_1
    iget-object v0, p0, Lkbd;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 37934
    :sswitch_2
    iget-object v0, p0, Lkbd;->b:Lkcr;

    if-nez v0, :cond_2

    .line 37935
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Lkbd;->b:Lkcr;

    .line 37937
    :cond_2
    iget-object v0, p0, Lkbd;->b:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 37941
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 37942
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 37947
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkbd;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 37917
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 37942
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 36881
    iget-object v0, p0, Lkbd;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 36882
    const/4 v0, 0x1

    iget-object v1, p0, Lkbd;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 36884
    :cond_0
    iget-object v0, p0, Lkbd;->b:Lkcr;

    if-eqz v0, :cond_1

    .line 36885
    const/4 v0, 0x2

    iget-object v1, p0, Lkbd;->b:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 36887
    :cond_1
    iget-object v0, p0, Lkbd;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 36888
    const/4 v0, 0x3

    iget-object v1, p0, Lkbd;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 36890
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 36891
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 36895
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 36896
    iget-object v1, p0, Lkbd;->a:Ljxw;

    if-eqz v1, :cond_0

    .line 36897
    const/4 v1, 0x1

    iget-object v2, p0, Lkbd;->a:Ljxw;

    .line 36898
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36900
    :cond_0
    iget-object v1, p0, Lkbd;->b:Lkcr;

    if-eqz v1, :cond_1

    .line 36901
    const/4 v1, 0x2

    iget-object v2, p0, Lkbd;->b:Lkcr;

    .line 36902
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36904
    :cond_1
    iget-object v1, p0, Lkbd;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 36905
    const/4 v1, 0x3

    iget-object v2, p0, Lkbd;->c:Ljava/lang/Integer;

    .line 36906
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36908
    :cond_2
    return v0
.end method
