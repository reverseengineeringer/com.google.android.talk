.class public final Ljdz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljdz;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljdz;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9952
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10957
    iput-object v0, p0, Ljdz;->a:Ljava/lang/String;

    .line 10958
    iput-object v0, p0, Ljdz;->b:Ljava/lang/String;

    .line 10959
    iput-object v0, p0, Ljdz;->eD:Llyd;

    .line 10960
    const/4 v0, -0x1

    iput v0, p0, Ljdz;->eE:I

    .line 9954
    return-void
.end method

.method public static d()[Ljdz;
    .locals 2

    .prologue
    .line 9933
    sget-object v0, Ljdz;->c:[Ljdz;

    if-nez v0, :cond_1

    .line 9934
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 9936
    :try_start_0
    sget-object v0, Ljdz;->c:[Ljdz;

    if-nez v0, :cond_0

    .line 9937
    const/4 v0, 0x0

    new-array v0, v0, [Ljdz;

    sput-object v0, Ljdz;->c:[Ljdz;

    .line 9939
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9941
    :cond_1
    sget-object v0, Ljdz;->c:[Ljdz;

    return-object v0

    .line 9939
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
    .line 10995
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10996
    sparse-switch v0, :sswitch_data_0

    .line 11000
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11001
    :sswitch_0
    return-object p0

    .line 11006
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljdz;->a:Ljava/lang/String;

    goto :goto_0

    .line 11010
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljdz;->b:Ljava/lang/String;

    goto :goto_0

    .line 10996
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 9967
    iget-object v0, p0, Ljdz;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9968
    const/4 v0, 0x1

    iget-object v1, p0, Ljdz;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9970
    :cond_0
    iget-object v0, p0, Ljdz;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 9971
    const/4 v0, 0x2

    iget-object v1, p0, Ljdz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9973
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9974
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 9978
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9979
    iget-object v1, p0, Ljdz;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9980
    const/4 v1, 0x1

    iget-object v2, p0, Ljdz;->a:Ljava/lang/String;

    .line 9981
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9983
    :cond_0
    iget-object v1, p0, Ljdz;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9984
    const/4 v1, 0x2

    iget-object v2, p0, Ljdz;->b:Ljava/lang/String;

    .line 9985
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9987
    :cond_1
    return v0
.end method
