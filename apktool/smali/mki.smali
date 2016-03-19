.class public final Lmki;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmki;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lmki;


# instance fields
.field public a:Llbu;

.field public b:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1043
    iput-object v0, p0, Lmki;->a:Llbu;

    .line 1044
    iput-object v0, p0, Lmki;->b:Ljava/lang/Float;

    .line 1045
    iput-object v0, p0, Lmki;->eD:Llyd;

    .line 1046
    const/4 v0, -0x1

    iput v0, p0, Lmki;->eE:I

    .line 40
    return-void
.end method

.method public static d()[Lmki;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lmki;->c:[Lmki;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lmki;->c:[Lmki;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lmki;

    sput-object v0, Lmki;->c:[Lmki;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lmki;->c:[Lmki;

    return-object v0

    .line 25
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
    .line 2081
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2082
    sparse-switch v0, :sswitch_data_0

    .line 2086
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2087
    :sswitch_0
    return-object p0

    .line 2092
    :sswitch_1
    iget-object v0, p0, Lmki;->a:Llbu;

    if-nez v0, :cond_1

    .line 2093
    new-instance v0, Llbu;

    invoke-direct {v0}, Llbu;-><init>()V

    iput-object v0, p0, Lmki;->a:Llbu;

    .line 2095
    :cond_1
    iget-object v0, p0, Lmki;->a:Llbu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2099
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmki;->b:Ljava/lang/Float;

    goto :goto_0

    .line 2082
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lmki;->a:Llbu;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iget-object v1, p0, Lmki;->a:Llbu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lmki;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x2

    iget-object v1, p0, Lmki;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 59
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 60
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 65
    iget-object v1, p0, Lmki;->a:Llbu;

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x1

    iget-object v2, p0, Lmki;->a:Llbu;

    .line 67
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_0
    iget-object v1, p0, Lmki;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 70
    const/4 v1, 0x2

    iget-object v2, p0, Lmki;->b:Ljava/lang/Float;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 71
    add-int/2addr v0, v1

    .line 73
    :cond_1
    return v0
.end method
