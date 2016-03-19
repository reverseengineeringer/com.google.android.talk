.class public final Lkbm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llcf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1872
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2877
    iput-object v0, p0, Lkbm;->a:Llcf;

    .line 2878
    iput-object v0, p0, Lkbm;->eD:Llyd;

    .line 2879
    const/4 v0, -0x1

    iput v0, p0, Lkbm;->eE:I

    .line 1874
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2907
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2908
    sparse-switch v0, :sswitch_data_0

    .line 2912
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2913
    :sswitch_0
    return-object p0

    .line 2918
    :sswitch_1
    iget-object v0, p0, Lkbm;->a:Llcf;

    if-nez v0, :cond_1

    .line 2919
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Lkbm;->a:Llcf;

    .line 2921
    :cond_1
    iget-object v0, p0, Lkbm;->a:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2908
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
    .line 1886
    iget-object v0, p0, Lkbm;->a:Llcf;

    if-eqz v0, :cond_0

    .line 1887
    const/4 v0, 0x1

    iget-object v1, p0, Lkbm;->a:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1889
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1890
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1894
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1895
    iget-object v1, p0, Lkbm;->a:Llcf;

    if-eqz v1, :cond_0

    .line 1896
    const/4 v1, 0x1

    iget-object v2, p0, Lkbm;->a:Llcf;

    .line 1897
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1899
    :cond_0
    return v0
.end method
