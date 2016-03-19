.class public final Lkib;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkib;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1969
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2974
    iput-object v0, p0, Lkib;->a:Ljava/lang/String;

    .line 2975
    iput-object v0, p0, Lkib;->b:Ljava/lang/String;

    .line 2976
    iput-object v0, p0, Lkib;->c:Ljava/lang/String;

    .line 2977
    iput-object v0, p0, Lkib;->d:Ljava/lang/String;

    .line 2978
    iput-object v0, p0, Lkib;->eD:Llyd;

    .line 2979
    const/4 v0, -0x1

    iput v0, p0, Lkib;->eE:I

    .line 1971
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3028
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3029
    sparse-switch v0, :sswitch_data_0

    .line 3033
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3034
    :sswitch_0
    return-object p0

    .line 3039
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkib;->a:Ljava/lang/String;

    goto :goto_0

    .line 3043
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkib;->b:Ljava/lang/String;

    goto :goto_0

    .line 3047
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkib;->c:Ljava/lang/String;

    goto :goto_0

    .line 3051
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkib;->d:Ljava/lang/String;

    goto :goto_0

    .line 3029
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1986
    iget-object v0, p0, Lkib;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1987
    const/4 v0, 0x1

    iget-object v1, p0, Lkib;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1989
    :cond_0
    iget-object v0, p0, Lkib;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1990
    const/4 v0, 0x2

    iget-object v1, p0, Lkib;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1992
    :cond_1
    iget-object v0, p0, Lkib;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1993
    const/4 v0, 0x3

    iget-object v1, p0, Lkib;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1995
    :cond_2
    iget-object v0, p0, Lkib;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1996
    const/4 v0, 0x4

    iget-object v1, p0, Lkib;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1998
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1999
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2003
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2004
    iget-object v1, p0, Lkib;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2005
    const/4 v1, 0x1

    iget-object v2, p0, Lkib;->a:Ljava/lang/String;

    .line 2006
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2008
    :cond_0
    iget-object v1, p0, Lkib;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2009
    const/4 v1, 0x2

    iget-object v2, p0, Lkib;->b:Ljava/lang/String;

    .line 2010
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2012
    :cond_1
    iget-object v1, p0, Lkib;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2013
    const/4 v1, 0x3

    iget-object v2, p0, Lkib;->c:Ljava/lang/String;

    .line 2014
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2016
    :cond_2
    iget-object v1, p0, Lkib;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2017
    const/4 v1, 0x4

    iget-object v2, p0, Lkib;->d:Ljava/lang/String;

    .line 2018
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2020
    :cond_3
    return v0
.end method
