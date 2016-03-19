.class public final Ljpm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljpm;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljpm;


# instance fields
.field public a:Ljpn;

.field public b:Ljpu;

.field public c:Ljava/lang/Boolean;

.field public d:Ljpx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4963
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5968
    iput-object v0, p0, Ljpm;->a:Ljpn;

    .line 5969
    iput-object v0, p0, Ljpm;->b:Ljpu;

    .line 5970
    iput-object v0, p0, Ljpm;->c:Ljava/lang/Boolean;

    .line 5971
    iput-object v0, p0, Ljpm;->d:Ljpx;

    .line 5972
    iput-object v0, p0, Ljpm;->eD:Llyd;

    .line 5973
    const/4 v0, -0x1

    iput v0, p0, Ljpm;->eE:I

    .line 4965
    return-void
.end method

.method public static d()[Ljpm;
    .locals 2

    .prologue
    .line 4938
    sget-object v0, Ljpm;->e:[Ljpm;

    if-nez v0, :cond_1

    .line 4939
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4941
    :try_start_0
    sget-object v0, Ljpm;->e:[Ljpm;

    if-nez v0, :cond_0

    .line 4942
    const/4 v0, 0x0

    new-array v0, v0, [Ljpm;

    sput-object v0, Ljpm;->e:[Ljpm;

    .line 4944
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4946
    :cond_1
    sget-object v0, Ljpm;->e:[Ljpm;

    return-object v0

    .line 4944
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
    .line 7022
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7023
    sparse-switch v0, :sswitch_data_0

    .line 7027
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7028
    :sswitch_0
    return-object p0

    .line 7033
    :sswitch_1
    iget-object v0, p0, Ljpm;->a:Ljpn;

    if-nez v0, :cond_1

    .line 7034
    new-instance v0, Ljpn;

    invoke-direct {v0}, Ljpn;-><init>()V

    iput-object v0, p0, Ljpm;->a:Ljpn;

    .line 7036
    :cond_1
    iget-object v0, p0, Ljpm;->a:Ljpn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7040
    :sswitch_2
    iget-object v0, p0, Ljpm;->b:Ljpu;

    if-nez v0, :cond_2

    .line 7041
    new-instance v0, Ljpu;

    invoke-direct {v0}, Ljpu;-><init>()V

    iput-object v0, p0, Ljpm;->b:Ljpu;

    .line 7043
    :cond_2
    iget-object v0, p0, Ljpm;->b:Ljpu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7047
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljpm;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 7051
    :sswitch_4
    iget-object v0, p0, Ljpm;->d:Ljpx;

    if-nez v0, :cond_3

    .line 7052
    new-instance v0, Ljpx;

    invoke-direct {v0}, Ljpx;-><init>()V

    iput-object v0, p0, Ljpm;->d:Ljpx;

    .line 7054
    :cond_3
    iget-object v0, p0, Ljpm;->d:Ljpx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7023
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x2a -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 4980
    iget-object v0, p0, Ljpm;->a:Ljpn;

    if-eqz v0, :cond_0

    .line 4981
    const/4 v0, 0x1

    iget-object v1, p0, Ljpm;->a:Ljpn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4983
    :cond_0
    iget-object v0, p0, Ljpm;->b:Ljpu;

    if-eqz v0, :cond_1

    .line 4984
    const/4 v0, 0x2

    iget-object v1, p0, Ljpm;->b:Ljpu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4986
    :cond_1
    iget-object v0, p0, Ljpm;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 4987
    const/4 v0, 0x3

    iget-object v1, p0, Ljpm;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 4989
    :cond_2
    iget-object v0, p0, Ljpm;->d:Ljpx;

    if-eqz v0, :cond_3

    .line 4990
    const/4 v0, 0x5

    iget-object v1, p0, Ljpm;->d:Ljpx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4992
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4993
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4997
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4998
    iget-object v1, p0, Ljpm;->a:Ljpn;

    if-eqz v1, :cond_0

    .line 4999
    const/4 v1, 0x1

    iget-object v2, p0, Ljpm;->a:Ljpn;

    .line 5000
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5002
    :cond_0
    iget-object v1, p0, Ljpm;->b:Ljpu;

    if-eqz v1, :cond_1

    .line 5003
    const/4 v1, 0x2

    iget-object v2, p0, Ljpm;->b:Ljpu;

    .line 5004
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5006
    :cond_1
    iget-object v1, p0, Ljpm;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 5007
    const/4 v1, 0x3

    iget-object v2, p0, Ljpm;->c:Ljava/lang/Boolean;

    .line 5008
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 5008
    add-int/2addr v0, v1

    .line 5010
    :cond_2
    iget-object v1, p0, Ljpm;->d:Ljpx;

    if-eqz v1, :cond_3

    .line 5011
    const/4 v1, 0x5

    iget-object v2, p0, Ljpm;->d:Ljpx;

    .line 5012
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5014
    :cond_3
    return v0
.end method
