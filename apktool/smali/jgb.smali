.class public final Ljgb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljgb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile k:[Ljgb;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/Integer;

.field public j:Ljgc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3946
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3947
    iput-object v0, p0, Ljgb;->a:Ljava/lang/String;

    .line 3948
    iput-object v0, p0, Ljgb;->b:Ljava/lang/String;

    .line 3949
    iput-object v0, p0, Ljgb;->c:Ljava/lang/String;

    .line 3950
    iput-object v0, p0, Ljgb;->d:Ljava/lang/String;

    .line 3951
    iput-object v0, p0, Ljgb;->e:Ljava/lang/String;

    .line 3952
    iput-object v0, p0, Ljgb;->f:Ljava/lang/String;

    .line 3953
    iput-object v0, p0, Ljgb;->g:Ljava/lang/String;

    .line 3954
    iput-object v0, p0, Ljgb;->h:Ljava/lang/String;

    .line 3955
    iput-object v0, p0, Ljgb;->i:Ljava/lang/Integer;

    .line 3956
    iput-object v0, p0, Ljgb;->j:Ljgc;

    .line 3957
    iput-object v0, p0, Ljgb;->eD:Llyd;

    .line 3958
    const/4 v0, -0x1

    iput v0, p0, Ljgb;->eE:I

    .line 3959
    return-void
.end method

.method public static d()[Ljgb;
    .locals 2

    .prologue
    .line 3903
    sget-object v0, Ljgb;->k:[Ljgb;

    if-nez v0, :cond_1

    .line 3904
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3906
    :try_start_0
    sget-object v0, Ljgb;->k:[Ljgb;

    if-nez v0, :cond_0

    .line 3907
    const/4 v0, 0x0

    new-array v0, v0, [Ljgb;

    sput-object v0, Ljgb;->k:[Ljgb;

    .line 3909
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3911
    :cond_1
    sget-object v0, Ljgb;->k:[Ljgb;

    return-object v0

    .line 3909
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
    .line 5044
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5045
    sparse-switch v0, :sswitch_data_0

    .line 5049
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5050
    :sswitch_0
    return-object p0

    .line 5055
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgb;->b:Ljava/lang/String;

    goto :goto_0

    .line 5059
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgb;->c:Ljava/lang/String;

    goto :goto_0

    .line 5063
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgb;->d:Ljava/lang/String;

    goto :goto_0

    .line 5067
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgb;->e:Ljava/lang/String;

    goto :goto_0

    .line 5071
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgb;->f:Ljava/lang/String;

    goto :goto_0

    .line 5075
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgb;->h:Ljava/lang/String;

    goto :goto_0

    .line 5079
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljgb;->i:Ljava/lang/Integer;

    goto :goto_0

    .line 5083
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgb;->g:Ljava/lang/String;

    goto :goto_0

    .line 5087
    :sswitch_9
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgb;->a:Ljava/lang/String;

    goto :goto_0

    .line 5091
    :sswitch_a
    iget-object v0, p0, Ljgb;->j:Ljgc;

    if-nez v0, :cond_1

    .line 5092
    new-instance v0, Ljgc;

    invoke-direct {v0}, Ljgc;-><init>()V

    iput-object v0, p0, Ljgb;->j:Ljgc;

    .line 5094
    :cond_1
    iget-object v0, p0, Ljgb;->j:Ljgc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5045
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3964
    const/4 v0, 0x1

    iget-object v1, p0, Ljgb;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3965
    iget-object v0, p0, Ljgb;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3966
    const/4 v0, 0x2

    iget-object v1, p0, Ljgb;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3968
    :cond_0
    iget-object v0, p0, Ljgb;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3969
    const/4 v0, 0x3

    iget-object v1, p0, Ljgb;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3971
    :cond_1
    iget-object v0, p0, Ljgb;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3972
    const/4 v0, 0x4

    iget-object v1, p0, Ljgb;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3974
    :cond_2
    iget-object v0, p0, Ljgb;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3975
    const/4 v0, 0x5

    iget-object v1, p0, Ljgb;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3977
    :cond_3
    iget-object v0, p0, Ljgb;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3978
    const/4 v0, 0x6

    iget-object v1, p0, Ljgb;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3980
    :cond_4
    iget-object v0, p0, Ljgb;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 3981
    const/4 v0, 0x7

    iget-object v1, p0, Ljgb;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3983
    :cond_5
    iget-object v0, p0, Ljgb;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 3984
    const/16 v0, 0x8

    iget-object v1, p0, Ljgb;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3986
    :cond_6
    iget-object v0, p0, Ljgb;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 3987
    const/16 v0, 0x9

    iget-object v1, p0, Ljgb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3989
    :cond_7
    iget-object v0, p0, Ljgb;->j:Ljgc;

    if-eqz v0, :cond_8

    .line 3990
    const/16 v0, 0xa

    iget-object v1, p0, Ljgb;->j:Ljgc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3992
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3993
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3997
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3998
    const/4 v1, 0x1

    iget-object v2, p0, Ljgb;->b:Ljava/lang/String;

    .line 3999
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4000
    iget-object v1, p0, Ljgb;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4001
    const/4 v1, 0x2

    iget-object v2, p0, Ljgb;->c:Ljava/lang/String;

    .line 4002
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4004
    :cond_0
    iget-object v1, p0, Ljgb;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4005
    const/4 v1, 0x3

    iget-object v2, p0, Ljgb;->d:Ljava/lang/String;

    .line 4006
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4008
    :cond_1
    iget-object v1, p0, Ljgb;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4009
    const/4 v1, 0x4

    iget-object v2, p0, Ljgb;->e:Ljava/lang/String;

    .line 4010
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4012
    :cond_2
    iget-object v1, p0, Ljgb;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 4013
    const/4 v1, 0x5

    iget-object v2, p0, Ljgb;->f:Ljava/lang/String;

    .line 4014
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4016
    :cond_3
    iget-object v1, p0, Ljgb;->h:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 4017
    const/4 v1, 0x6

    iget-object v2, p0, Ljgb;->h:Ljava/lang/String;

    .line 4018
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4020
    :cond_4
    iget-object v1, p0, Ljgb;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 4021
    const/4 v1, 0x7

    iget-object v2, p0, Ljgb;->i:Ljava/lang/Integer;

    .line 4022
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4024
    :cond_5
    iget-object v1, p0, Ljgb;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 4025
    const/16 v1, 0x8

    iget-object v2, p0, Ljgb;->g:Ljava/lang/String;

    .line 4026
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4028
    :cond_6
    iget-object v1, p0, Ljgb;->a:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 4029
    const/16 v1, 0x9

    iget-object v2, p0, Ljgb;->a:Ljava/lang/String;

    .line 4030
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4032
    :cond_7
    iget-object v1, p0, Ljgb;->j:Ljgc;

    if-eqz v1, :cond_8

    .line 4033
    const/16 v1, 0xa

    iget-object v2, p0, Ljgb;->j:Ljgc;

    .line 4034
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4036
    :cond_8
    return v0
.end method
