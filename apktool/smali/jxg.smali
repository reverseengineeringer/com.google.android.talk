.class public final Ljxg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljxg;


# instance fields
.field public a:Llcf;

.field public b:Ljava/lang/Integer;

.field public c:Lkmf;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24845
    invoke-direct {p0}, Llyb;-><init>()V

    .line 25850
    iput-object v0, p0, Ljxg;->a:Llcf;

    .line 25851
    iput-object v0, p0, Ljxg;->b:Ljava/lang/Integer;

    .line 25852
    iput-object v0, p0, Ljxg;->c:Lkmf;

    .line 25853
    iput-object v0, p0, Ljxg;->d:Ljava/lang/Boolean;

    .line 25854
    iput-object v0, p0, Ljxg;->eD:Llyd;

    .line 25855
    const/4 v0, -0x1

    iput v0, p0, Ljxg;->eE:I

    .line 24847
    return-void
.end method

.method public static d()[Ljxg;
    .locals 2

    .prologue
    .line 24820
    sget-object v0, Ljxg;->e:[Ljxg;

    if-nez v0, :cond_1

    .line 24821
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 24823
    :try_start_0
    sget-object v0, Ljxg;->e:[Ljxg;

    if-nez v0, :cond_0

    .line 24824
    const/4 v0, 0x0

    new-array v0, v0, [Ljxg;

    sput-object v0, Ljxg;->e:[Ljxg;

    .line 24826
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24828
    :cond_1
    sget-object v0, Ljxg;->e:[Ljxg;

    return-object v0

    .line 24826
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
    .line 26904
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 26905
    sparse-switch v0, :sswitch_data_0

    .line 26909
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26910
    :sswitch_0
    return-object p0

    .line 26915
    :sswitch_1
    iget-object v0, p0, Ljxg;->a:Llcf;

    if-nez v0, :cond_1

    .line 26916
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Ljxg;->a:Llcf;

    .line 26918
    :cond_1
    iget-object v0, p0, Ljxg;->a:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 26922
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 26923
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 26926
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljxg;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 26932
    :sswitch_3
    iget-object v0, p0, Ljxg;->c:Lkmf;

    if-nez v0, :cond_2

    .line 26933
    new-instance v0, Lkmf;

    invoke-direct {v0}, Lkmf;-><init>()V

    iput-object v0, p0, Ljxg;->c:Lkmf;

    .line 26935
    :cond_2
    iget-object v0, p0, Ljxg;->c:Lkmf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 26939
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljxg;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 26905
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 26923
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 24862
    iget-object v0, p0, Ljxg;->a:Llcf;

    if-eqz v0, :cond_0

    .line 24863
    const/4 v0, 0x1

    iget-object v1, p0, Ljxg;->a:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 24865
    :cond_0
    iget-object v0, p0, Ljxg;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 24866
    const/4 v0, 0x2

    iget-object v1, p0, Ljxg;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 24868
    :cond_1
    iget-object v0, p0, Ljxg;->c:Lkmf;

    if-eqz v0, :cond_2

    .line 24869
    const/4 v0, 0x3

    iget-object v1, p0, Ljxg;->c:Lkmf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 24871
    :cond_2
    iget-object v0, p0, Ljxg;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 24872
    const/4 v0, 0x4

    iget-object v1, p0, Ljxg;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 24874
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 24875
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 24879
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 24880
    iget-object v1, p0, Ljxg;->a:Llcf;

    if-eqz v1, :cond_0

    .line 24881
    const/4 v1, 0x1

    iget-object v2, p0, Ljxg;->a:Llcf;

    .line 24882
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24884
    :cond_0
    iget-object v1, p0, Ljxg;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 24885
    const/4 v1, 0x2

    iget-object v2, p0, Ljxg;->b:Ljava/lang/Integer;

    .line 24886
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24888
    :cond_1
    iget-object v1, p0, Ljxg;->c:Lkmf;

    if-eqz v1, :cond_2

    .line 24889
    const/4 v1, 0x3

    iget-object v2, p0, Ljxg;->c:Lkmf;

    .line 24890
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24892
    :cond_2
    iget-object v1, p0, Ljxg;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 24893
    const/4 v1, 0x4

    iget-object v2, p0, Ljxg;->d:Ljava/lang/Boolean;

    .line 24894
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 24894
    add-int/2addr v0, v1

    .line 24896
    :cond_3
    return v0
.end method
