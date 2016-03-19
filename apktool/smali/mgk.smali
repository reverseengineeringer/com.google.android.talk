.class public final Lmgk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmgg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1998
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3003
    iput-object v0, p0, Lmgk;->a:Lmgg;

    .line 3004
    iput-object v0, p0, Lmgk;->eD:Llyd;

    .line 3005
    const/4 v0, -0x1

    iput v0, p0, Lmgk;->eE:I

    .line 2000
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3033
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3034
    sparse-switch v0, :sswitch_data_0

    .line 3038
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3039
    :sswitch_0
    return-object p0

    .line 3044
    :sswitch_1
    iget-object v0, p0, Lmgk;->a:Lmgg;

    if-nez v0, :cond_1

    .line 3045
    new-instance v0, Lmgg;

    invoke-direct {v0}, Lmgg;-><init>()V

    iput-object v0, p0, Lmgk;->a:Lmgg;

    .line 3047
    :cond_1
    iget-object v0, p0, Lmgk;->a:Lmgg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3034
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2012
    iget-object v0, p0, Lmgk;->a:Lmgg;

    if-eqz v0, :cond_0

    .line 2013
    const/4 v0, 0x1

    iget-object v1, p0, Lmgk;->a:Lmgg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2015
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2016
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2020
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2021
    iget-object v1, p0, Lmgk;->a:Lmgg;

    if-eqz v1, :cond_0

    .line 2022
    const/4 v1, 0x1

    iget-object v2, p0, Lmgk;->a:Lmgg;

    .line 2023
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2025
    :cond_0
    return v0
.end method
