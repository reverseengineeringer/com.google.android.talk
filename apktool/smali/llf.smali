.class public final Lllf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lllf;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Lllf;


# instance fields
.field public a:Llml;

.field public b:Llku;

.field public c:Lllg;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1966
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2971
    iput-object v0, p0, Lllf;->a:Llml;

    .line 2972
    iput-object v0, p0, Lllf;->b:Llku;

    .line 2973
    iput-object v0, p0, Lllf;->c:Lllg;

    .line 2974
    iput-object v0, p0, Lllf;->d:Ljava/lang/String;

    .line 2975
    iput-object v0, p0, Lllf;->eD:Llyd;

    .line 2976
    const/4 v0, -0x1

    iput v0, p0, Lllf;->eE:I

    .line 1968
    return-void
.end method

.method public static d()[Lllf;
    .locals 2

    .prologue
    .line 1941
    sget-object v0, Lllf;->e:[Lllf;

    if-nez v0, :cond_1

    .line 1942
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1944
    :try_start_0
    sget-object v0, Lllf;->e:[Lllf;

    if-nez v0, :cond_0

    .line 1945
    const/4 v0, 0x0

    new-array v0, v0, [Lllf;

    sput-object v0, Lllf;->e:[Lllf;

    .line 1947
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1949
    :cond_1
    sget-object v0, Lllf;->e:[Lllf;

    return-object v0

    .line 1947
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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
    iget-object v0, p0, Lllf;->a:Llml;

    if-nez v0, :cond_1

    .line 3037
    new-instance v0, Llml;

    invoke-direct {v0}, Llml;-><init>()V

    iput-object v0, p0, Lllf;->a:Llml;

    .line 3039
    :cond_1
    iget-object v0, p0, Lllf;->a:Llml;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3043
    :sswitch_2
    iget-object v0, p0, Lllf;->b:Llku;

    if-nez v0, :cond_2

    .line 3044
    new-instance v0, Llku;

    invoke-direct {v0}, Llku;-><init>()V

    iput-object v0, p0, Lllf;->b:Llku;

    .line 3046
    :cond_2
    iget-object v0, p0, Lllf;->b:Llku;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3050
    :sswitch_3
    iget-object v0, p0, Lllf;->c:Lllg;

    if-nez v0, :cond_3

    .line 3051
    new-instance v0, Lllg;

    invoke-direct {v0}, Lllg;-><init>()V

    iput-object v0, p0, Lllf;->c:Lllg;

    .line 3053
    :cond_3
    iget-object v0, p0, Lllf;->c:Lllg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3057
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lllf;->d:Ljava/lang/String;

    goto :goto_0

    .line 3026
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
    .line 1983
    iget-object v0, p0, Lllf;->a:Llml;

    if-eqz v0, :cond_0

    .line 1984
    const/4 v0, 0x1

    iget-object v1, p0, Lllf;->a:Llml;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1986
    :cond_0
    iget-object v0, p0, Lllf;->b:Llku;

    if-eqz v0, :cond_1

    .line 1987
    const/4 v0, 0x2

    iget-object v1, p0, Lllf;->b:Llku;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1989
    :cond_1
    iget-object v0, p0, Lllf;->c:Lllg;

    if-eqz v0, :cond_2

    .line 1990
    const/4 v0, 0x3

    iget-object v1, p0, Lllf;->c:Lllg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1992
    :cond_2
    iget-object v0, p0, Lllf;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1993
    const/4 v0, 0x4

    iget-object v1, p0, Lllf;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1995
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1996
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2000
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2001
    iget-object v1, p0, Lllf;->a:Llml;

    if-eqz v1, :cond_0

    .line 2002
    const/4 v1, 0x1

    iget-object v2, p0, Lllf;->a:Llml;

    .line 2003
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2005
    :cond_0
    iget-object v1, p0, Lllf;->b:Llku;

    if-eqz v1, :cond_1

    .line 2006
    const/4 v1, 0x2

    iget-object v2, p0, Lllf;->b:Llku;

    .line 2007
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2009
    :cond_1
    iget-object v1, p0, Lllf;->c:Lllg;

    if-eqz v1, :cond_2

    .line 2010
    const/4 v1, 0x3

    iget-object v2, p0, Lllf;->c:Lllg;

    .line 2011
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2013
    :cond_2
    iget-object v1, p0, Lllf;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2014
    const/4 v1, 0x4

    iget-object v2, p0, Lllf;->d:Ljava/lang/String;

    .line 2015
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2017
    :cond_3
    return v0
.end method
