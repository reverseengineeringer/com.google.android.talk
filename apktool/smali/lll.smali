.class public final Llll;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llll;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 894
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1899
    iput-object v0, p0, Llll;->a:Ljava/lang/Boolean;

    .line 1900
    iput-object v0, p0, Llll;->b:Ljava/lang/Integer;

    .line 1901
    iput-object v0, p0, Llll;->eD:Llyd;

    .line 1902
    const/4 v0, -0x1

    iput v0, p0, Llll;->eE:I

    .line 896
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2937
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2938
    sparse-switch v0, :sswitch_data_0

    .line 2942
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2943
    :sswitch_0
    return-object p0

    .line 2948
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llll;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2952
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2953
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2958
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llll;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2938
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 2953
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
    .line 909
    iget-object v0, p0, Llll;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 910
    const/4 v0, 0x1

    iget-object v1, p0, Llll;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 912
    :cond_0
    iget-object v0, p0, Llll;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 913
    const/4 v0, 0x2

    iget-object v1, p0, Llll;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 915
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 916
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 920
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 921
    iget-object v1, p0, Llll;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 922
    const/4 v1, 0x1

    iget-object v2, p0, Llll;->a:Ljava/lang/Boolean;

    .line 923
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 923
    add-int/2addr v0, v1

    .line 925
    :cond_0
    iget-object v1, p0, Llll;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 926
    const/4 v1, 0x2

    iget-object v2, p0, Llll;->b:Ljava/lang/Integer;

    .line 927
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 929
    :cond_1
    return v0
.end method
