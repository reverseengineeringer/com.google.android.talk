.class public final Ljas;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljas;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7989
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8994
    iput-object v0, p0, Ljas;->a:Ljava/lang/Integer;

    .line 8995
    iput-object v0, p0, Ljas;->b:Ljava/lang/String;

    .line 8996
    iput-object v0, p0, Ljas;->eD:Llyd;

    .line 8997
    const/4 v0, -0x1

    iput v0, p0, Ljas;->eE:I

    .line 7991
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 9032
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9033
    sparse-switch v0, :sswitch_data_0

    .line 9037
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9038
    :sswitch_0
    return-object p0

    .line 9043
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 9044
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 9049
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljas;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 9055
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljas;->b:Ljava/lang/String;

    goto :goto_0

    .line 9033
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 9044
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 8004
    iget-object v0, p0, Ljas;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 8005
    const/4 v0, 0x1

    iget-object v1, p0, Ljas;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 8007
    :cond_0
    iget-object v0, p0, Ljas;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8008
    const/4 v0, 0x2

    iget-object v1, p0, Ljas;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8010
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8011
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 8015
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8016
    iget-object v1, p0, Ljas;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 8017
    const/4 v1, 0x1

    iget-object v2, p0, Ljas;->a:Ljava/lang/Integer;

    .line 8018
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8020
    :cond_0
    iget-object v1, p0, Ljas;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 8021
    const/4 v1, 0x2

    iget-object v2, p0, Ljas;->b:Ljava/lang/String;

    .line 8022
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8024
    :cond_1
    return v0
.end method
