.class public final Lmag;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmag;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1950
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2955
    iput-object v0, p0, Lmag;->a:Ljava/lang/Boolean;

    .line 2956
    iput-object v0, p0, Lmag;->b:Ljava/lang/Boolean;

    .line 2957
    iput-object v0, p0, Lmag;->c:Ljava/lang/Boolean;

    .line 2958
    iput-object v0, p0, Lmag;->eD:Llyd;

    .line 2959
    const/4 v0, -0x1

    iput v0, p0, Lmag;->eE:I

    .line 1952
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 6001
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6002
    sparse-switch v0, :sswitch_data_0

    .line 6006
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6007
    :sswitch_0
    return-object p0

    .line 6012
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmag;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 6016
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmag;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 6020
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmag;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 6002
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1966
    iget-object v0, p0, Lmag;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1967
    const/4 v0, 0x1

    iget-object v1, p0, Lmag;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1969
    :cond_0
    iget-object v0, p0, Lmag;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1970
    const/4 v0, 0x2

    iget-object v1, p0, Lmag;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1972
    :cond_1
    iget-object v0, p0, Lmag;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1973
    const/4 v0, 0x3

    iget-object v1, p0, Lmag;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1975
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1976
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1980
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1981
    iget-object v1, p0, Lmag;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1982
    const/4 v1, 0x1

    iget-object v2, p0, Lmag;->a:Ljava/lang/Boolean;

    .line 1983
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1983
    add-int/2addr v0, v1

    .line 1985
    :cond_0
    iget-object v1, p0, Lmag;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 1986
    const/4 v1, 0x2

    iget-object v2, p0, Lmag;->b:Ljava/lang/Boolean;

    .line 1987
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1987
    add-int/2addr v0, v1

    .line 1989
    :cond_1
    iget-object v1, p0, Lmag;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1990
    const/4 v1, 0x3

    iget-object v2, p0, Lmag;->c:Ljava/lang/Boolean;

    .line 1991
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1991
    add-int/2addr v0, v1

    .line 1993
    :cond_2
    return v0
.end method
