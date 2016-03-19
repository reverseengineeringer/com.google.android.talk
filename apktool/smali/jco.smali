.class public final Ljco;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljco;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Ljco;


# instance fields
.field public a:Ljcn;

.field public b:Ljcn;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1002
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2007
    iput-object v0, p0, Ljco;->a:Ljcn;

    .line 2008
    iput-object v0, p0, Ljco;->b:Ljcn;

    .line 2009
    iput-object v0, p0, Ljco;->c:Ljava/lang/Boolean;

    .line 2010
    iput-object v0, p0, Ljco;->eD:Llyd;

    .line 2011
    const/4 v0, -0x1

    iput v0, p0, Ljco;->eE:I

    .line 1004
    return-void
.end method

.method public static d()[Ljco;
    .locals 2

    .prologue
    .line 980
    sget-object v0, Ljco;->d:[Ljco;

    if-nez v0, :cond_1

    .line 981
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 983
    :try_start_0
    sget-object v0, Ljco;->d:[Ljco;

    if-nez v0, :cond_0

    .line 984
    const/4 v0, 0x0

    new-array v0, v0, [Ljco;

    sput-object v0, Ljco;->d:[Ljco;

    .line 986
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    :cond_1
    sget-object v0, Ljco;->d:[Ljco;

    return-object v0

    .line 986
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
    .line 3053
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3054
    sparse-switch v0, :sswitch_data_0

    .line 3058
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3059
    :sswitch_0
    return-object p0

    .line 3064
    :sswitch_1
    iget-object v0, p0, Ljco;->a:Ljcn;

    if-nez v0, :cond_1

    .line 3065
    new-instance v0, Ljcn;

    invoke-direct {v0}, Ljcn;-><init>()V

    iput-object v0, p0, Ljco;->a:Ljcn;

    .line 3067
    :cond_1
    iget-object v0, p0, Ljco;->a:Ljcn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3071
    :sswitch_2
    iget-object v0, p0, Ljco;->b:Ljcn;

    if-nez v0, :cond_2

    .line 3072
    new-instance v0, Ljcn;

    invoke-direct {v0}, Ljcn;-><init>()V

    iput-object v0, p0, Ljco;->b:Ljcn;

    .line 3074
    :cond_2
    iget-object v0, p0, Ljco;->b:Ljcn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3078
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljco;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 3054
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1018
    iget-object v0, p0, Ljco;->a:Ljcn;

    if-eqz v0, :cond_0

    .line 1019
    const/4 v0, 0x1

    iget-object v1, p0, Ljco;->a:Ljcn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1021
    :cond_0
    iget-object v0, p0, Ljco;->b:Ljcn;

    if-eqz v0, :cond_1

    .line 1022
    const/4 v0, 0x2

    iget-object v1, p0, Ljco;->b:Ljcn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1024
    :cond_1
    iget-object v0, p0, Ljco;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1025
    const/4 v0, 0x3

    iget-object v1, p0, Ljco;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1027
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1028
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1032
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1033
    iget-object v1, p0, Ljco;->a:Ljcn;

    if-eqz v1, :cond_0

    .line 1034
    const/4 v1, 0x1

    iget-object v2, p0, Ljco;->a:Ljcn;

    .line 1035
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1037
    :cond_0
    iget-object v1, p0, Ljco;->b:Ljcn;

    if-eqz v1, :cond_1

    .line 1038
    const/4 v1, 0x2

    iget-object v2, p0, Ljco;->b:Ljcn;

    .line 1039
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1041
    :cond_1
    iget-object v1, p0, Ljco;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1042
    const/4 v1, 0x3

    iget-object v2, p0, Ljco;->c:Ljava/lang/Boolean;

    .line 1043
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1043
    add-int/2addr v0, v1

    .line 1045
    :cond_2
    return v0
.end method
