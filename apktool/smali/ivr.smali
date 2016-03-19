.class public final Livr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livr;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile h:[Livr;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7902
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8907
    iput-object v0, p0, Livr;->a:Lixc;

    .line 8908
    iput-object v0, p0, Livr;->b:Ljava/lang/String;

    .line 8909
    iput-object v0, p0, Livr;->c:Ljava/lang/String;

    .line 8910
    iput-object v0, p0, Livr;->d:Ljava/lang/Integer;

    .line 8911
    iput-object v0, p0, Livr;->e:Ljava/lang/Integer;

    .line 8912
    iput-object v0, p0, Livr;->f:Ljava/lang/Boolean;

    .line 8913
    iput-object v0, p0, Livr;->g:Ljava/lang/Boolean;

    .line 8914
    iput-object v0, p0, Livr;->eD:Llyd;

    .line 8915
    const/4 v0, -0x1

    iput v0, p0, Livr;->eE:I

    .line 7904
    return-void
.end method

.method public static d()[Livr;
    .locals 2

    .prologue
    .line 7868
    sget-object v0, Livr;->h:[Livr;

    if-nez v0, :cond_1

    .line 7869
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 7871
    :try_start_0
    sget-object v0, Livr;->h:[Livr;

    if-nez v0, :cond_0

    .line 7872
    const/4 v0, 0x0

    new-array v0, v0, [Livr;

    sput-object v0, Livr;->h:[Livr;

    .line 7874
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7876
    :cond_1
    sget-object v0, Livr;->h:[Livr;

    return-object v0

    .line 7874
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
    .line 10985
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10986
    sparse-switch v0, :sswitch_data_0

    .line 10990
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10991
    :sswitch_0
    return-object p0

    .line 10996
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livr;->b:Ljava/lang/String;

    goto :goto_0

    .line 11000
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livr;->c:Ljava/lang/String;

    goto :goto_0

    .line 11004
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Livr;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 11008
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Livr;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 11012
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Livr;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 11016
    :sswitch_6
    iget-object v0, p0, Livr;->a:Lixc;

    if-nez v0, :cond_1

    .line 11017
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Livr;->a:Lixc;

    .line 11019
    :cond_1
    iget-object v0, p0, Livr;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11023
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Livr;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 10986
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 7922
    iget-object v0, p0, Livr;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7923
    const/4 v0, 0x1

    iget-object v1, p0, Livr;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7925
    :cond_0
    iget-object v0, p0, Livr;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7926
    const/4 v0, 0x2

    iget-object v1, p0, Livr;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7928
    :cond_1
    iget-object v0, p0, Livr;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 7929
    const/4 v0, 0x3

    iget-object v1, p0, Livr;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 7931
    :cond_2
    iget-object v0, p0, Livr;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 7932
    const/4 v0, 0x4

    iget-object v1, p0, Livr;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 7934
    :cond_3
    iget-object v0, p0, Livr;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 7935
    const/4 v0, 0x5

    iget-object v1, p0, Livr;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 7937
    :cond_4
    iget-object v0, p0, Livr;->a:Lixc;

    if-eqz v0, :cond_5

    .line 7938
    const/4 v0, 0x6

    iget-object v1, p0, Livr;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7940
    :cond_5
    iget-object v0, p0, Livr;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 7941
    const/4 v0, 0x7

    iget-object v1, p0, Livr;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 7943
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7944
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 7948
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7949
    iget-object v1, p0, Livr;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7950
    const/4 v1, 0x1

    iget-object v2, p0, Livr;->b:Ljava/lang/String;

    .line 7951
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7953
    :cond_0
    iget-object v1, p0, Livr;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7954
    const/4 v1, 0x2

    iget-object v2, p0, Livr;->c:Ljava/lang/String;

    .line 7955
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7957
    :cond_1
    iget-object v1, p0, Livr;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 7958
    const/4 v1, 0x3

    iget-object v2, p0, Livr;->d:Ljava/lang/Integer;

    .line 7959
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7961
    :cond_2
    iget-object v1, p0, Livr;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 7962
    const/4 v1, 0x4

    iget-object v2, p0, Livr;->e:Ljava/lang/Integer;

    .line 7963
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7965
    :cond_3
    iget-object v1, p0, Livr;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 7966
    const/4 v1, 0x5

    iget-object v2, p0, Livr;->f:Ljava/lang/Boolean;

    .line 7967
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 7967
    add-int/2addr v0, v1

    .line 7969
    :cond_4
    iget-object v1, p0, Livr;->a:Lixc;

    if-eqz v1, :cond_5

    .line 7970
    const/4 v1, 0x6

    iget-object v2, p0, Livr;->a:Lixc;

    .line 7971
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7973
    :cond_5
    iget-object v1, p0, Livr;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 7974
    const/4 v1, 0x7

    iget-object v2, p0, Livr;->g:Ljava/lang/Boolean;

    .line 7975
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 7975
    add-int/2addr v0, v1

    .line 7977
    :cond_6
    return v0
.end method
