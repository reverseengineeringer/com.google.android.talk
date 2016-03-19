.class public final Llct;
.super Llyi;
.source "SourceFile"


# static fields
.field private static volatile c:[Llct;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Llyi;-><init>()V

    .line 1040
    const-string v0, ""

    iput-object v0, p0, Llct;->a:Ljava/lang/String;

    .line 1041
    sget-object v0, Llyo;->h:[B

    iput-object v0, p0, Llct;->b:[B

    .line 1042
    const/4 v0, -0x1

    iput v0, p0, Llct;->eE:I

    .line 37
    return-void
.end method

.method public static d()[Llct;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Llct;->c:[Llct;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Llct;->c:[Llct;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Llct;

    sput-object v0, Llct;->c:[Llct;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Llct;->c:[Llct;

    return-object v0

    .line 22
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
    .line 1077
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1078
    sparse-switch v0, :sswitch_data_0

    .line 2095
    invoke-virtual {p1, v0}, Llxy;->b(I)Z

    move-result v0

    .line 1082
    if-nez v0, :cond_0

    .line 1083
    :sswitch_0
    return-object p0

    .line 1088
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llct;->a:Ljava/lang/String;

    goto :goto_0

    .line 1092
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Llct;->b:[B

    goto :goto_0

    .line 1078
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
    .line 49
    iget-object v0, p0, Llct;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iget-object v1, p0, Llct;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 52
    :cond_0
    iget-object v0, p0, Llct;->b:[B

    sget-object v1, Llyo;->h:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    const/4 v0, 0x2

    iget-object v1, p0, Llct;->b:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 55
    :cond_1
    invoke-super {p0, p1}, Llyi;->a(Llxz;)V

    .line 56
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Llyi;->b()I

    move-result v0

    .line 61
    iget-object v1, p0, Llct;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    const/4 v1, 0x1

    iget-object v2, p0, Llct;->a:Ljava/lang/String;

    .line 63
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_0
    iget-object v1, p0, Llct;->b:[B

    sget-object v2, Llyo;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    const/4 v1, 0x2

    iget-object v2, p0, Llct;->b:[B

    .line 67
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_1
    return v0
.end method
