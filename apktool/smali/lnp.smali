.class public final Llnp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llnp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Llfk;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1974
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2979
    iput-object v0, p0, Llnp;->a:Ljava/lang/Integer;

    .line 2980
    iput-object v0, p0, Llnp;->b:Llfk;

    .line 2981
    iput-object v0, p0, Llnp;->c:Ljava/lang/Integer;

    .line 2982
    iput-object v0, p0, Llnp;->eD:Llyd;

    .line 2983
    const/4 v0, -0x1

    iput v0, p0, Llnp;->eE:I

    .line 1976
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3025
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3026
    sparse-switch v0, :sswitch_data_0

    .line 3030
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3031
    :sswitch_0
    return-object p0

    .line 3036
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3037
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3057
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llnp;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3063
    :sswitch_2
    iget-object v0, p0, Llnp;->b:Llfk;

    if-nez v0, :cond_1

    .line 3064
    new-instance v0, Llfk;

    invoke-direct {v0}, Llfk;-><init>()V

    iput-object v0, p0, Llnp;->b:Llfk;

    .line 3066
    :cond_1
    iget-object v0, p0, Llnp;->b:Llfk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3070
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3071
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3075
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llnp;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 3026
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch

    .line 3037
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3071
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1990
    iget-object v0, p0, Llnp;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1991
    const/4 v0, 0x1

    iget-object v1, p0, Llnp;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1993
    :cond_0
    iget-object v0, p0, Llnp;->b:Llfk;

    if-eqz v0, :cond_1

    .line 1994
    const/4 v0, 0x2

    iget-object v1, p0, Llnp;->b:Llfk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1996
    :cond_1
    iget-object v0, p0, Llnp;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1997
    const/4 v0, 0x4

    iget-object v1, p0, Llnp;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1999
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2000
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2004
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2005
    iget-object v1, p0, Llnp;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2006
    const/4 v1, 0x1

    iget-object v2, p0, Llnp;->a:Ljava/lang/Integer;

    .line 2007
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2009
    :cond_0
    iget-object v1, p0, Llnp;->b:Llfk;

    if-eqz v1, :cond_1

    .line 2010
    const/4 v1, 0x2

    iget-object v2, p0, Llnp;->b:Llfk;

    .line 2011
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2013
    :cond_1
    iget-object v1, p0, Llnp;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 2014
    const/4 v1, 0x4

    iget-object v2, p0, Llnp;->c:Ljava/lang/Integer;

    .line 2015
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2017
    :cond_2
    return v0
.end method
