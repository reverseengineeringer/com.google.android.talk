.class public final Lkkc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkkc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lkkc;


# instance fields
.field public a:Lkfa;

.field public b:Lkko;

.field public c:Lkki;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2982
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3987
    iput-object v0, p0, Lkkc;->a:Lkfa;

    .line 3988
    iput-object v0, p0, Lkkc;->b:Lkko;

    .line 3989
    iput-object v0, p0, Lkkc;->c:Lkki;

    .line 3990
    iput-object v0, p0, Lkkc;->eD:Llyd;

    .line 3991
    const/4 v0, -0x1

    iput v0, p0, Lkkc;->eE:I

    .line 2984
    return-void
.end method

.method public static d()[Lkkc;
    .locals 2

    .prologue
    .line 2960
    sget-object v0, Lkkc;->d:[Lkkc;

    if-nez v0, :cond_1

    .line 2961
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2963
    :try_start_0
    sget-object v0, Lkkc;->d:[Lkkc;

    if-nez v0, :cond_0

    .line 2964
    const/4 v0, 0x0

    new-array v0, v0, [Lkkc;

    sput-object v0, Lkkc;->d:[Lkkc;

    .line 2966
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2968
    :cond_1
    sget-object v0, Lkkc;->d:[Lkkc;

    return-object v0

    .line 2966
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
    .line 4033
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4034
    sparse-switch v0, :sswitch_data_0

    .line 4038
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4039
    :sswitch_0
    return-object p0

    .line 4044
    :sswitch_1
    iget-object v0, p0, Lkkc;->a:Lkfa;

    if-nez v0, :cond_1

    .line 4045
    new-instance v0, Lkfa;

    invoke-direct {v0}, Lkfa;-><init>()V

    iput-object v0, p0, Lkkc;->a:Lkfa;

    .line 4047
    :cond_1
    iget-object v0, p0, Lkkc;->a:Lkfa;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4051
    :sswitch_2
    iget-object v0, p0, Lkkc;->b:Lkko;

    if-nez v0, :cond_2

    .line 4052
    new-instance v0, Lkko;

    invoke-direct {v0}, Lkko;-><init>()V

    iput-object v0, p0, Lkkc;->b:Lkko;

    .line 4054
    :cond_2
    iget-object v0, p0, Lkkc;->b:Lkko;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4058
    :sswitch_3
    iget-object v0, p0, Lkkc;->c:Lkki;

    if-nez v0, :cond_3

    .line 4059
    new-instance v0, Lkki;

    invoke-direct {v0}, Lkki;-><init>()V

    iput-object v0, p0, Lkkc;->c:Lkki;

    .line 4061
    :cond_3
    iget-object v0, p0, Lkkc;->c:Lkki;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4034
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2998
    iget-object v0, p0, Lkkc;->a:Lkfa;

    if-eqz v0, :cond_0

    .line 2999
    const/4 v0, 0x1

    iget-object v1, p0, Lkkc;->a:Lkfa;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3001
    :cond_0
    iget-object v0, p0, Lkkc;->b:Lkko;

    if-eqz v0, :cond_1

    .line 3002
    const/4 v0, 0x2

    iget-object v1, p0, Lkkc;->b:Lkko;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3004
    :cond_1
    iget-object v0, p0, Lkkc;->c:Lkki;

    if-eqz v0, :cond_2

    .line 3005
    const/4 v0, 0x3

    iget-object v1, p0, Lkkc;->c:Lkki;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3007
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3008
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3012
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3013
    iget-object v1, p0, Lkkc;->a:Lkfa;

    if-eqz v1, :cond_0

    .line 3014
    const/4 v1, 0x1

    iget-object v2, p0, Lkkc;->a:Lkfa;

    .line 3015
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3017
    :cond_0
    iget-object v1, p0, Lkkc;->b:Lkko;

    if-eqz v1, :cond_1

    .line 3018
    const/4 v1, 0x2

    iget-object v2, p0, Lkkc;->b:Lkko;

    .line 3019
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3021
    :cond_1
    iget-object v1, p0, Lkkc;->c:Lkki;

    if-eqz v1, :cond_2

    .line 3022
    const/4 v1, 0x3

    iget-object v2, p0, Lkkc;->c:Lkki;

    .line 3023
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3025
    :cond_2
    return v0
.end method
