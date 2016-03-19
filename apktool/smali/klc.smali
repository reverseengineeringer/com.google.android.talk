.class public final Lklc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lklc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1908
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2913
    iput-object v0, p0, Lklc;->a:Ljava/lang/Integer;

    .line 2914
    iput-object v0, p0, Lklc;->b:Ljava/lang/Integer;

    .line 2915
    iput-object v0, p0, Lklc;->c:Ljava/lang/Integer;

    .line 2916
    iput-object v0, p0, Lklc;->d:Ljava/lang/Integer;

    .line 2917
    iput-object v0, p0, Lklc;->eD:Llyd;

    .line 2918
    const/4 v0, -0x1

    iput v0, p0, Lklc;->eE:I

    .line 1910
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2967
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2968
    sparse-switch v0, :sswitch_data_0

    .line 2972
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2973
    :sswitch_0
    return-object p0

    .line 2978
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklc;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2982
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklc;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2986
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklc;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 2990
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lklc;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 2968
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1925
    iget-object v0, p0, Lklc;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1926
    const/4 v0, 0x1

    iget-object v1, p0, Lklc;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1928
    :cond_0
    iget-object v0, p0, Lklc;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1929
    const/4 v0, 0x2

    iget-object v1, p0, Lklc;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1931
    :cond_1
    iget-object v0, p0, Lklc;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1932
    const/4 v0, 0x3

    iget-object v1, p0, Lklc;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1934
    :cond_2
    iget-object v0, p0, Lklc;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 1935
    const/4 v0, 0x4

    iget-object v1, p0, Lklc;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1937
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1938
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1942
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1943
    iget-object v1, p0, Lklc;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1944
    const/4 v1, 0x1

    iget-object v2, p0, Lklc;->a:Ljava/lang/Integer;

    .line 1945
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1947
    :cond_0
    iget-object v1, p0, Lklc;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1948
    const/4 v1, 0x2

    iget-object v2, p0, Lklc;->b:Ljava/lang/Integer;

    .line 1949
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1951
    :cond_1
    iget-object v1, p0, Lklc;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1952
    const/4 v1, 0x3

    iget-object v2, p0, Lklc;->c:Ljava/lang/Integer;

    .line 1953
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1955
    :cond_2
    iget-object v1, p0, Lklc;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 1956
    const/4 v1, 0x4

    iget-object v2, p0, Lklc;->d:Ljava/lang/Integer;

    .line 1957
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1959
    :cond_3
    return v0
.end method
