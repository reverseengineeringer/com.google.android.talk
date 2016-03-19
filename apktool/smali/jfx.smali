.class public final Ljfx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljfx;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile r:[Ljfx;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljgb;

.field public c:Ljey;

.field public d:I

.field public e:Ljfv;

.field public f:Ljfw;

.field public g:Ljgb;

.field public h:Ljey;

.field public i:[Ljava/lang/String;

.field public j:[Ljgb;

.field public k:[Ljey;

.field public l:Ljava/lang/Boolean;

.field public m:Ljava/lang/Boolean;

.field public n:Ljava/lang/Boolean;

.field public o:I

.field public p:Ljgf;

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    .line 4740
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4741
    iput-object v1, p0, Ljfx;->a:Ljava/lang/String;

    .line 4742
    iput-object v1, p0, Ljfx;->b:Ljgb;

    .line 4743
    iput-object v1, p0, Ljfx;->c:Ljey;

    .line 4744
    iput v2, p0, Ljfx;->d:I

    .line 4745
    iput-object v1, p0, Ljfx;->e:Ljfv;

    .line 4746
    iput-object v1, p0, Ljfx;->f:Ljfw;

    .line 4747
    iput-object v1, p0, Ljfx;->g:Ljgb;

    .line 4748
    iput-object v1, p0, Ljfx;->h:Ljey;

    .line 4749
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljfx;->i:[Ljava/lang/String;

    .line 4750
    invoke-static {}, Ljgb;->d()[Ljgb;

    move-result-object v0

    iput-object v0, p0, Ljfx;->j:[Ljgb;

    .line 4751
    invoke-static {}, Ljey;->d()[Ljey;

    move-result-object v0

    iput-object v0, p0, Ljfx;->k:[Ljey;

    .line 4752
    iput-object v1, p0, Ljfx;->l:Ljava/lang/Boolean;

    .line 4753
    iput-object v1, p0, Ljfx;->m:Ljava/lang/Boolean;

    .line 4754
    iput-object v1, p0, Ljfx;->n:Ljava/lang/Boolean;

    .line 4755
    iput v2, p0, Ljfx;->o:I

    .line 4756
    iput-object v1, p0, Ljfx;->p:Ljgf;

    .line 4757
    iput-object v1, p0, Ljfx;->q:Ljava/lang/String;

    .line 4758
    iput-object v1, p0, Ljfx;->eD:Llyd;

    .line 4759
    const/4 v0, -0x1

    iput v0, p0, Ljfx;->eE:I

    .line 4760
    return-void
.end method

.method public static d()[Ljfx;
    .locals 2

    .prologue
    .line 4676
    sget-object v0, Ljfx;->r:[Ljfx;

    if-nez v0, :cond_1

    .line 4677
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4679
    :try_start_0
    sget-object v0, Ljfx;->r:[Ljfx;

    if-nez v0, :cond_0

    .line 4680
    const/4 v0, 0x0

    new-array v0, v0, [Ljfx;

    sput-object v0, Ljfx;->r:[Ljfx;

    .line 4682
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4684
    :cond_1
    sget-object v0, Ljfx;->r:[Ljfx;

    return-object v0

    .line 4682
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7929
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7930
    sparse-switch v0, :sswitch_data_0

    .line 7934
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7935
    :sswitch_0
    return-object p0

    .line 7940
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfx;->a:Ljava/lang/String;

    goto :goto_0

    .line 7944
    :sswitch_2
    iget-object v0, p0, Ljfx;->b:Ljgb;

    if-nez v0, :cond_1

    .line 7945
    new-instance v0, Ljgb;

    invoke-direct {v0}, Ljgb;-><init>()V

    iput-object v0, p0, Ljfx;->b:Ljgb;

    .line 7947
    :cond_1
    iget-object v0, p0, Ljfx;->b:Ljgb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7951
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 7952
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7959
    :pswitch_0
    iput v0, p0, Ljfx;->d:I

    goto :goto_0

    .line 7965
    :sswitch_4
    iget-object v0, p0, Ljfx;->e:Ljfv;

    if-nez v0, :cond_2

    .line 7966
    new-instance v0, Ljfv;

    invoke-direct {v0}, Ljfv;-><init>()V

    iput-object v0, p0, Ljfx;->e:Ljfv;

    .line 7968
    :cond_2
    iget-object v0, p0, Ljfx;->e:Ljfv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7972
    :sswitch_5
    iget-object v0, p0, Ljfx;->g:Ljgb;

    if-nez v0, :cond_3

    .line 7973
    new-instance v0, Ljgb;

    invoke-direct {v0}, Ljgb;-><init>()V

    iput-object v0, p0, Ljfx;->g:Ljgb;

    .line 7975
    :cond_3
    iget-object v0, p0, Ljfx;->g:Ljgb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7979
    :sswitch_6
    const/16 v0, 0x32

    .line 7980
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 7981
    iget-object v0, p0, Ljfx;->i:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    .line 7982
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 7983
    if-eqz v0, :cond_4

    .line 7984
    iget-object v3, p0, Ljfx;->i:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7986
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 7987
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 7988
    invoke-virtual {p1}, Llxy;->a()I

    .line 7986
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7981
    :cond_5
    iget-object v0, p0, Ljfx;->i:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 7991
    :cond_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 7992
    iput-object v2, p0, Ljfx;->i:[Ljava/lang/String;

    goto/16 :goto_0

    .line 7996
    :sswitch_7
    const/16 v0, 0x3a

    .line 7997
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 7998
    iget-object v0, p0, Ljfx;->j:[Ljgb;

    if-nez v0, :cond_8

    move v0, v1

    .line 7999
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljgb;

    .line 8001
    if-eqz v0, :cond_7

    .line 8002
    iget-object v3, p0, Ljfx;->j:[Ljgb;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8004
    :cond_7
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 8005
    new-instance v3, Ljgb;

    invoke-direct {v3}, Ljgb;-><init>()V

    aput-object v3, v2, v0

    .line 8006
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 8007
    invoke-virtual {p1}, Llxy;->a()I

    .line 8004
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 7998
    :cond_8
    iget-object v0, p0, Ljfx;->j:[Ljgb;

    array-length v0, v0

    goto :goto_3

    .line 8010
    :cond_9
    new-instance v3, Ljgb;

    invoke-direct {v3}, Ljgb;-><init>()V

    aput-object v3, v2, v0

    .line 8011
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 8012
    iput-object v2, p0, Ljfx;->j:[Ljgb;

    goto/16 :goto_0

    .line 8016
    :sswitch_8
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljfx;->l:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 8020
    :sswitch_9
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljfx;->m:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 8024
    :sswitch_a
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 8025
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 8028
    :pswitch_1
    iput v0, p0, Ljfx;->o:I

    goto/16 :goto_0

    .line 8034
    :sswitch_b
    iget-object v0, p0, Ljfx;->p:Ljgf;

    if-nez v0, :cond_a

    .line 8035
    new-instance v0, Ljgf;

    invoke-direct {v0}, Ljgf;-><init>()V

    iput-object v0, p0, Ljfx;->p:Ljgf;

    .line 8037
    :cond_a
    iget-object v0, p0, Ljfx;->p:Ljgf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 8041
    :sswitch_c
    iget-object v0, p0, Ljfx;->f:Ljfw;

    if-nez v0, :cond_b

    .line 8042
    new-instance v0, Ljfw;

    invoke-direct {v0}, Ljfw;-><init>()V

    iput-object v0, p0, Ljfx;->f:Ljfw;

    .line 8044
    :cond_b
    iget-object v0, p0, Ljfx;->f:Ljfw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 8048
    :sswitch_d
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljfx;->n:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 8052
    :sswitch_e
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfx;->q:Ljava/lang/String;

    goto/16 :goto_0

    .line 8056
    :sswitch_f
    iget-object v0, p0, Ljfx;->c:Ljey;

    if-nez v0, :cond_c

    .line 8057
    new-instance v0, Ljey;

    invoke-direct {v0}, Ljey;-><init>()V

    iput-object v0, p0, Ljfx;->c:Ljey;

    .line 8059
    :cond_c
    iget-object v0, p0, Ljfx;->c:Ljey;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 8063
    :sswitch_10
    iget-object v0, p0, Ljfx;->h:Ljey;

    if-nez v0, :cond_d

    .line 8064
    new-instance v0, Ljey;

    invoke-direct {v0}, Ljey;-><init>()V

    iput-object v0, p0, Ljfx;->h:Ljey;

    .line 8066
    :cond_d
    iget-object v0, p0, Ljfx;->h:Ljey;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 8070
    :sswitch_11
    const/16 v0, 0x8a

    .line 8071
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 8072
    iget-object v0, p0, Ljfx;->k:[Ljey;

    if-nez v0, :cond_f

    move v0, v1

    .line 8073
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ljey;

    .line 8075
    if-eqz v0, :cond_e

    .line 8076
    iget-object v3, p0, Ljfx;->k:[Ljey;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8078
    :cond_e
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_10

    .line 8079
    new-instance v3, Ljey;

    invoke-direct {v3}, Ljey;-><init>()V

    aput-object v3, v2, v0

    .line 8080
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 8081
    invoke-virtual {p1}, Llxy;->a()I

    .line 8078
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 8072
    :cond_f
    iget-object v0, p0, Ljfx;->k:[Ljey;

    array-length v0, v0

    goto :goto_5

    .line 8084
    :cond_10
    new-instance v3, Ljey;

    invoke-direct {v3}, Ljey;-><init>()V

    aput-object v3, v2, v0

    .line 8085
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 8086
    iput-object v2, p0, Ljfx;->k:[Ljey;

    goto/16 :goto_0

    .line 7930
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
    .end sparse-switch

    .line 7952
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 8025
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    const/4 v1, 0x0

    .line 4765
    const/4 v0, 0x1

    iget-object v2, p0, Ljfx;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 4766
    iget-object v0, p0, Ljfx;->b:Ljgb;

    if-eqz v0, :cond_0

    .line 4767
    const/4 v0, 0x2

    iget-object v2, p0, Ljfx;->b:Ljgb;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 4769
    :cond_0
    iget v0, p0, Ljfx;->d:I

    if-eq v0, v4, :cond_1

    .line 4770
    const/4 v0, 0x3

    iget v2, p0, Ljfx;->d:I

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 4772
    :cond_1
    iget-object v0, p0, Ljfx;->e:Ljfv;

    if-eqz v0, :cond_2

    .line 4773
    const/4 v0, 0x4

    iget-object v2, p0, Ljfx;->e:Ljfv;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 4775
    :cond_2
    iget-object v0, p0, Ljfx;->g:Ljgb;

    if-eqz v0, :cond_3

    .line 4776
    const/4 v0, 0x5

    iget-object v2, p0, Ljfx;->g:Ljgb;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 4778
    :cond_3
    iget-object v0, p0, Ljfx;->i:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljfx;->i:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 4779
    :goto_0
    iget-object v2, p0, Ljfx;->i:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 4780
    iget-object v2, p0, Ljfx;->i:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 4781
    if-eqz v2, :cond_4

    .line 4782
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 4779
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4786
    :cond_5
    iget-object v0, p0, Ljfx;->j:[Ljgb;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljfx;->j:[Ljgb;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 4787
    :goto_1
    iget-object v2, p0, Ljfx;->j:[Ljgb;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 4788
    iget-object v2, p0, Ljfx;->j:[Ljgb;

    aget-object v2, v2, v0

    .line 4789
    if-eqz v2, :cond_6

    .line 4790
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 4787
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4794
    :cond_7
    iget-object v0, p0, Ljfx;->l:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 4795
    const/16 v0, 0x8

    iget-object v2, p0, Ljfx;->l:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 4797
    :cond_8
    iget-object v0, p0, Ljfx;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 4798
    const/16 v0, 0x9

    iget-object v2, p0, Ljfx;->m:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 4800
    :cond_9
    iget v0, p0, Ljfx;->o:I

    if-eq v0, v4, :cond_a

    .line 4801
    const/16 v0, 0xa

    iget v2, p0, Ljfx;->o:I

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 4803
    :cond_a
    iget-object v0, p0, Ljfx;->p:Ljgf;

    if-eqz v0, :cond_b

    .line 4804
    const/16 v0, 0xb

    iget-object v2, p0, Ljfx;->p:Ljgf;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 4806
    :cond_b
    iget-object v0, p0, Ljfx;->f:Ljfw;

    if-eqz v0, :cond_c

    .line 4807
    const/16 v0, 0xc

    iget-object v2, p0, Ljfx;->f:Ljfw;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 4809
    :cond_c
    iget-object v0, p0, Ljfx;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 4810
    const/16 v0, 0xd

    iget-object v2, p0, Ljfx;->n:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 4812
    :cond_d
    iget-object v0, p0, Ljfx;->q:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 4813
    const/16 v0, 0xe

    iget-object v2, p0, Ljfx;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 4815
    :cond_e
    iget-object v0, p0, Ljfx;->c:Ljey;

    if-eqz v0, :cond_f

    .line 4816
    const/16 v0, 0xf

    iget-object v2, p0, Ljfx;->c:Ljey;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 4818
    :cond_f
    iget-object v0, p0, Ljfx;->h:Ljey;

    if-eqz v0, :cond_10

    .line 4819
    const/16 v0, 0x10

    iget-object v2, p0, Ljfx;->h:Ljey;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 4821
    :cond_10
    iget-object v0, p0, Ljfx;->k:[Ljey;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljfx;->k:[Ljey;

    array-length v0, v0

    if-lez v0, :cond_12

    .line 4822
    :goto_2
    iget-object v0, p0, Ljfx;->k:[Ljey;

    array-length v0, v0

    if-ge v1, v0, :cond_12

    .line 4823
    iget-object v0, p0, Ljfx;->k:[Ljey;

    aget-object v0, v0, v1

    .line 4824
    if-eqz v0, :cond_11

    .line 4825
    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 4822
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4829
    :cond_12
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4830
    return-void
.end method

.method protected b()I
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    const/4 v2, 0x0

    .line 4834
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4835
    const/4 v1, 0x1

    iget-object v3, p0, Ljfx;->a:Ljava/lang/String;

    .line 4836
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4837
    iget-object v1, p0, Ljfx;->b:Ljgb;

    if-eqz v1, :cond_0

    .line 4838
    const/4 v1, 0x2

    iget-object v3, p0, Ljfx;->b:Ljgb;

    .line 4839
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4841
    :cond_0
    iget v1, p0, Ljfx;->d:I

    if-eq v1, v6, :cond_1

    .line 4842
    const/4 v1, 0x3

    iget v3, p0, Ljfx;->d:I

    .line 4843
    invoke-static {v1, v3}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4845
    :cond_1
    iget-object v1, p0, Ljfx;->e:Ljfv;

    if-eqz v1, :cond_2

    .line 4846
    const/4 v1, 0x4

    iget-object v3, p0, Ljfx;->e:Ljfv;

    .line 4847
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4849
    :cond_2
    iget-object v1, p0, Ljfx;->g:Ljgb;

    if-eqz v1, :cond_3

    .line 4850
    const/4 v1, 0x5

    iget-object v3, p0, Ljfx;->g:Ljgb;

    .line 4851
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4853
    :cond_3
    iget-object v1, p0, Ljfx;->i:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Ljfx;->i:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v2

    move v3, v2

    move v4, v2

    .line 4856
    :goto_0
    iget-object v5, p0, Ljfx;->i:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 4857
    iget-object v5, p0, Ljfx;->i:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 4858
    if-eqz v5, :cond_4

    .line 4859
    add-int/lit8 v4, v4, 0x1

    .line 4861
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 4856
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4864
    :cond_5
    add-int/2addr v0, v3

    .line 4865
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 4867
    :cond_6
    iget-object v1, p0, Ljfx;->j:[Ljgb;

    if-eqz v1, :cond_9

    iget-object v1, p0, Ljfx;->j:[Ljgb;

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v0

    move v0, v2

    .line 4868
    :goto_1
    iget-object v3, p0, Ljfx;->j:[Ljgb;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 4869
    iget-object v3, p0, Ljfx;->j:[Ljgb;

    aget-object v3, v3, v0

    .line 4870
    if-eqz v3, :cond_7

    .line 4871
    const/4 v4, 0x7

    .line 4872
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4868
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v1

    .line 4876
    :cond_9
    iget-object v1, p0, Ljfx;->l:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 4877
    const/16 v1, 0x8

    iget-object v3, p0, Ljfx;->l:Ljava/lang/Boolean;

    .line 4878
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4878
    add-int/2addr v0, v1

    .line 4880
    :cond_a
    iget-object v1, p0, Ljfx;->m:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 4881
    const/16 v1, 0x9

    iget-object v3, p0, Ljfx;->m:Ljava/lang/Boolean;

    .line 4882
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4882
    add-int/2addr v0, v1

    .line 4884
    :cond_b
    iget v1, p0, Ljfx;->o:I

    if-eq v1, v6, :cond_c

    .line 4885
    const/16 v1, 0xa

    iget v3, p0, Ljfx;->o:I

    .line 4886
    invoke-static {v1, v3}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4888
    :cond_c
    iget-object v1, p0, Ljfx;->p:Ljgf;

    if-eqz v1, :cond_d

    .line 4889
    const/16 v1, 0xb

    iget-object v3, p0, Ljfx;->p:Ljgf;

    .line 4890
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4892
    :cond_d
    iget-object v1, p0, Ljfx;->f:Ljfw;

    if-eqz v1, :cond_e

    .line 4893
    const/16 v1, 0xc

    iget-object v3, p0, Ljfx;->f:Ljfw;

    .line 4894
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4896
    :cond_e
    iget-object v1, p0, Ljfx;->n:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    .line 4897
    const/16 v1, 0xd

    iget-object v3, p0, Ljfx;->n:Ljava/lang/Boolean;

    .line 4898
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4898
    add-int/2addr v0, v1

    .line 4900
    :cond_f
    iget-object v1, p0, Ljfx;->q:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 4901
    const/16 v1, 0xe

    iget-object v3, p0, Ljfx;->q:Ljava/lang/String;

    .line 4902
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4904
    :cond_10
    iget-object v1, p0, Ljfx;->c:Ljey;

    if-eqz v1, :cond_11

    .line 4905
    const/16 v1, 0xf

    iget-object v3, p0, Ljfx;->c:Ljey;

    .line 4906
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4908
    :cond_11
    iget-object v1, p0, Ljfx;->h:Ljey;

    if-eqz v1, :cond_12

    .line 4909
    const/16 v1, 0x10

    iget-object v3, p0, Ljfx;->h:Ljey;

    .line 4910
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4912
    :cond_12
    iget-object v1, p0, Ljfx;->k:[Ljey;

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljfx;->k:[Ljey;

    array-length v1, v1

    if-lez v1, :cond_14

    .line 4913
    :goto_2
    iget-object v1, p0, Ljfx;->k:[Ljey;

    array-length v1, v1

    if-ge v2, v1, :cond_14

    .line 4914
    iget-object v1, p0, Ljfx;->k:[Ljey;

    aget-object v1, v1, v2

    .line 4915
    if-eqz v1, :cond_13

    .line 4916
    const/16 v3, 0x11

    .line 4917
    invoke-static {v3, v1}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4913
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4921
    :cond_14
    return v0
.end method
