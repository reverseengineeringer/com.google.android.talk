.class public final Laan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;

.field private b:I

.field private c:I

.field private d:Lpq;

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3776
    iput-object p1, p0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10144
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/view/animation/Interpolator;

    .line 3767
    iput-object v0, p0, Laan;->e:Landroid/view/animation/Interpolator;

    .line 3771
    iput-boolean v1, p0, Laan;->f:Z

    .line 3774
    iput-boolean v1, p0, Laan;->g:Z

    .line 3777
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 11144
    sget-object v1, Landroid/support/v7/widget/RecyclerView;->z:Landroid/view/animation/Interpolator;

    .line 3777
    invoke-static {v0, v1}, Lpq;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lpq;

    move-result-object v0

    iput-object v0, p0, Laan;->d:Lpq;

    .line 3778
    return-void
.end method

.method private a(III)V
    .locals 1

    .prologue
    .line 50219
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/view/animation/Interpolator;

    .line 3957
    invoke-direct {p0, p1, p2, p3, v0}, Laan;->a(IIILandroid/view/animation/Interpolator;)V

    .line 3958
    return-void
.end method

.method private a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3961
    iget-object v0, p0, Laan;->e:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 3962
    iput-object p4, p0, Laan;->e:Landroid/view/animation/Interpolator;

    .line 3963
    iget-object v0, p0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lpq;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lpq;

    move-result-object v0

    iput-object v0, p0, Laan;->d:Lpq;

    .line 3965
    :cond_0
    iget-object v0, p0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 50220
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 3966
    iput v1, p0, Laan;->c:I

    iput v1, p0, Laan;->b:I

    .line 3967
    iget-object v0, p0, Laan;->d:Lpq;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lpq;->a(IIIII)V

    .line 3968
    invoke-direct {p0}, Laan;->b()V

    .line 3969
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 3904
    iget-boolean v0, p0, Laan;->f:Z

    if-eqz v0, :cond_0

    .line 3905
    const/4 v0, 0x1

    iput-boolean v0, p0, Laan;->g:Z

    .line 3910
    :goto_0
    return-void

    .line 3907
    :cond_0
    iget-object v0, p0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3908
    iget-object v0, p0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Lks;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 3972
    iget-object v0, p0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3973
    iget-object v0, p0, Laan;->d:Lpq;

    invoke-virtual {v0}, Lpq;->h()V

    .line 3974
    return-void
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 3913
    iget-object v0, p0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 50194
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 3914
    const/4 v0, 0x0

    iput v0, p0, Laan;->c:I

    iput v0, p0, Laan;->b:I

    .line 3915
    iget-object v0, p0, Laan;->d:Lpq;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-virtual {v0, p1, p2, v1, v2}, Lpq;->a(IIII)V

    .line 3917
    invoke-direct {p0}, Laan;->b()V

    .line 3918
    return-void
.end method

.method public b(II)V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 50197
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 50198
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 50199
    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    .line 50200
    :goto_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 50201
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 50202
    if-eqz v0, :cond_1

    iget-object v1, p0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 50203
    :goto_1
    div-int/lit8 v6, v1, 0x2

    .line 50204
    int-to-float v5, v5

    mul-float/2addr v5, v12

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 50205
    int-to-float v7, v6

    int-to-float v6, v6

    .line 50216
    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v5, v8

    .line 50217
    float-to-double v8, v5

    const-wide v10, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v8, v10

    double-to-float v5, v8

    .line 50218
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 50205
    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 50209
    if-lez v4, :cond_2

    .line 50210
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 50215
    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 50195
    invoke-direct {p0, p1, p2, v0}, Laan;->a(III)V

    .line 3922
    return-void

    .line 50199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50202
    :cond_1
    iget-object v1, p0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    .line 50212
    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    .line 50213
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v12

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 50212
    goto :goto_3
.end method

.method public run()V
    .locals 23

    .prologue
    .line 11892
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Laan;->g:Z

    .line 11893
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Laan;->f:Z

    .line 3783
    move-object/from16 v0, p0

    iget-object v4, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 12144
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 3786
    move-object/from16 v0, p0

    iget-object v11, v0, Laan;->d:Lpq;

    .line 3787
    move-object/from16 v0, p0

    iget-object v4, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 13144
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->h:Laab;

    .line 3787
    iget-object v12, v4, Laab;->s:Laak;

    .line 3788
    invoke-virtual {v11}, Lpq;->g()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3789
    invoke-virtual {v11}, Lpq;->b()I

    move-result v13

    .line 3790
    invoke-virtual {v11}, Lpq;->c()I

    move-result v14

    .line 3791
    move-object/from16 v0, p0

    iget v4, v0, Laan;->b:I

    sub-int v15, v13, v4

    .line 3792
    move-object/from16 v0, p0

    iget v4, v0, Laan;->c:I

    sub-int v16, v14, v4

    .line 3793
    const/4 v7, 0x0

    .line 3794
    const/4 v5, 0x0

    .line 3795
    move-object/from16 v0, p0

    iput v13, v0, Laan;->b:I

    .line 3796
    move-object/from16 v0, p0

    iput v14, v0, Laan;->c:I

    .line 3797
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 3798
    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 14144
    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 3798
    if-eqz v8, :cond_40

    .line 3799
    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 3800
    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 15144
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 3801
    const-string v8, "RV Scroll"

    invoke-static {v8}, Laal;->a(Ljava/lang/String;)V

    .line 3802
    if-eqz v15, :cond_0

    .line 3803
    move-object/from16 v0, p0

    iget-object v6, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 16144
    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->h:Laab;

    .line 3803
    move-object/from16 v0, p0

    iget-object v7, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->b:Laag;

    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v6, v15, v7, v8}, Laab;->a(ILaag;Laam;)I

    move-result v7

    .line 3804
    sub-int v6, v15, v7

    .line 3806
    :cond_0
    if-eqz v16, :cond_1

    .line 3807
    move-object/from16 v0, p0

    iget-object v4, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 17144
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->h:Laab;

    .line 3807
    move-object/from16 v0, p0

    iget-object v5, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->b:Laag;

    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    move/from16 v0, v16

    invoke-virtual {v4, v0, v5, v8}, Laab;->b(ILaag;Laam;)I

    move-result v5

    .line 3808
    sub-int v4, v16, v5

    .line 3810
    :cond_1
    invoke-static {}, Laal;->b()V

    .line 3811
    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 18144
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->z()V

    .line 3813
    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 19144
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 3814
    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 3816
    if-eqz v12, :cond_40

    invoke-virtual {v12}, Laak;->b()Z

    move-result v8

    if-nez v8, :cond_40

    invoke-virtual {v12}, Laak;->c()Z

    move-result v8

    if-eqz v8, :cond_40

    .line 3818
    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v8}, Laam;->d()I

    move-result v8

    .line 3819
    if-nez v8, :cond_17

    .line 3820
    invoke-virtual {v12}, Laak;->a()V

    move/from16 v22, v6

    move v6, v5

    move/from16 v5, v22

    .line 3829
    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 42144
    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->i:Ljava/util/ArrayList;

    .line 3829
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 3830
    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 3832
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 42709
    sget-object v9, Lks;->a:Llc;

    invoke-virtual {v9, v8}, Llc;->a(Landroid/view/View;)I

    move-result v8

    .line 3832
    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    .line 3834
    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 43144
    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    .line 3836
    :cond_3
    if-nez v5, :cond_4

    if-eqz v4, :cond_9

    .line 3837
    :cond_4
    invoke-virtual {v11}, Lpq;->f()F

    move-result v8

    float-to-int v9, v8

    .line 3839
    const/4 v8, 0x0

    .line 3840
    if-eq v5, v13, :cond_59

    .line 3841
    if-gez v5, :cond_41

    neg-int v8, v9

    :goto_1
    move v10, v8

    .line 3844
    :goto_2
    const/4 v8, 0x0

    .line 3845
    if-eq v4, v14, :cond_58

    .line 3846
    if-gez v4, :cond_43

    neg-int v9, v9

    .line 3849
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 43709
    sget-object v17, Lks;->a:Llc;

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Llc;->a(Landroid/view/View;)I

    move-result v8

    .line 3849
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v8, v0, :cond_6

    .line 3851
    move-object/from16 v0, p0

    iget-object v8, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v10, v9}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    .line 3853
    :cond_6
    if-nez v10, :cond_7

    if-eq v5, v13, :cond_7

    invoke-virtual {v11}, Lpq;->d()I

    move-result v5

    if-nez v5, :cond_9

    :cond_7
    if-nez v9, :cond_8

    if-eq v4, v14, :cond_8

    invoke-virtual {v11}, Lpq;->e()I

    move-result v4

    if-nez v4, :cond_9

    .line 3855
    :cond_8
    invoke-virtual {v11}, Lpq;->h()V

    .line 3858
    :cond_9
    if-nez v7, :cond_a

    if-eqz v6, :cond_b

    .line 3859
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v7, v6}, Landroid/support/v7/widget/RecyclerView;->h(II)V

    .line 3862
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 3863
    move-object/from16 v0, p0

    iget-object v4, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 3866
    :cond_c
    if-eqz v16, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 44144
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->h:Laab;

    .line 3866
    invoke-virtual {v4}, Laab;->j()Z

    move-result v4

    if-eqz v4, :cond_44

    move/from16 v0, v16

    if-ne v6, v0, :cond_44

    const/4 v4, 0x1

    move v5, v4

    .line 3868
    :goto_4
    if-eqz v15, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 45144
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->h:Laab;

    .line 3868
    invoke-virtual {v4}, Laab;->i()Z

    move-result v4

    if-eqz v4, :cond_45

    if-ne v7, v15, :cond_45

    const/4 v4, 0x1

    .line 3870
    :goto_5
    if-nez v15, :cond_d

    if-eqz v16, :cond_e

    :cond_d
    if-nez v4, :cond_e

    if-eqz v5, :cond_46

    :cond_e
    const/4 v4, 0x1

    .line 3873
    :goto_6
    invoke-virtual {v11}, Lpq;->a()Z

    move-result v5

    if-nez v5, :cond_f

    if-nez v4, :cond_47

    .line 3874
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Laan;->a:Landroid/support/v7/widget/RecyclerView;

    .line 46144
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 3880
    :cond_10
    :goto_7
    if-eqz v12, :cond_15

    .line 3881
    invoke-virtual {v12}, Laak;->b()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 46935
    iget-object v4, v12, Laak;->b:Landroid/support/v7/widget/RecyclerView;

    .line 46936
    iget-boolean v5, v12, Laak;->d:Z

    if-eqz v5, :cond_11

    iget v5, v12, Laak;->a:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_11

    if-nez v4, :cond_12

    .line 46937
    :cond_11
    invoke-virtual {v12}, Laak;->a()V

    .line 46939
    :cond_12
    const/4 v5, 0x0

    iput-boolean v5, v12, Laak;->c:Z

    .line 46940
    iget-object v5, v12, Laak;->e:Landroid/view/View;

    if-eqz v5, :cond_13

    .line 46942
    iget-object v5, v12, Laak;->e:Landroid/view/View;

    invoke-virtual {v12, v5}, Laak;->a(Landroid/view/View;)I

    move-result v5

    iget v6, v12, Laak;->a:I

    if-ne v5, v6, :cond_4f

    .line 46943
    iget-object v5, v4, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    .line 46944
    iget-object v5, v12, Laak;->f:Laal;

    .line 47131
    iget v6, v5, Laal;->d:I

    if-ltz v6, :cond_48

    .line 47132
    iget v6, v5, Laal;->d:I

    .line 47133
    const/4 v7, -0x1

    iput v7, v5, Laal;->d:I

    .line 48144
    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 47135
    const/4 v6, 0x0

    iput-boolean v6, v5, Laal;->f:Z

    .line 46945
    :goto_8
    invoke-virtual {v12}, Laak;->a()V

    .line 46951
    :cond_13
    :goto_9
    iget-boolean v5, v12, Laak;->d:Z

    if-eqz v5, :cond_14

    .line 46952
    iget-object v5, v4, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    .line 46953
    iget-object v5, v12, Laak;->f:Laal;

    invoke-virtual {v5}, Laal;->a()Z

    move-result v5

    .line 46954
    iget-object v6, v12, Laak;->f:Laal;

    .line 50147
    iget v7, v6, Laal;->d:I

    if-ltz v7, :cond_50

    .line 50148
    iget v7, v6, Laal;->d:I

    .line 50149
    const/4 v8, -0x1

    iput v8, v6, Laal;->d:I

    .line 50177
    invoke-virtual {v4, v7}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 50151
    const/4 v7, 0x0

    iput-boolean v7, v6, Laal;->f:Z

    .line 46955
    :goto_a
    if-eqz v5, :cond_14

    .line 46957
    iget-boolean v5, v12, Laak;->d:Z

    if-eqz v5, :cond_57

    .line 46958
    const/4 v5, 0x1

    iput-boolean v5, v12, Laak;->c:Z

    .line 50188
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 46959
    invoke-direct {v4}, Laan;->b()V

    .line 3884
    :cond_14
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Laan;->g:Z

    if-nez v4, :cond_15

    .line 3885
    invoke-virtual {v12}, Laak;->a()V

    .line 50189
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Laan;->f:Z

    .line 50190
    move-object/from16 v0, p0

    iget-boolean v4, v0, Laan;->g:Z

    if-eqz v4, :cond_16

    .line 50191
    invoke-direct/range {p0 .. p0}, Laan;->b()V

    .line 3889
    :cond_16
    return-void

    .line 3821
    :cond_17
    invoke-virtual {v12}, Laak;->d()I

    move-result v9

    if-lt v9, v8, :cond_2c

    .line 3822
    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v12, v8}, Laak;->a(I)V

    .line 19935
    iget-object v8, v12, Laak;->b:Landroid/support/v7/widget/RecyclerView;

    .line 19936
    iget-boolean v9, v12, Laak;->d:Z

    if-eqz v9, :cond_18

    iget v9, v12, Laak;->a:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_18

    if-nez v8, :cond_19

    .line 19937
    :cond_18
    invoke-virtual {v12}, Laak;->a()V

    .line 19939
    :cond_19
    const/4 v9, 0x0

    iput-boolean v9, v12, Laak;->c:Z

    .line 19940
    iget-object v9, v12, Laak;->e:Landroid/view/View;

    if-eqz v9, :cond_1a

    .line 19942
    iget-object v9, v12, Laak;->e:Landroid/view/View;

    invoke-virtual {v12, v9}, Laak;->a(Landroid/view/View;)I

    move-result v9

    iget v10, v12, Laak;->a:I

    if-ne v9, v10, :cond_22

    .line 19943
    iget-object v9, v8, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    .line 19944
    iget-object v9, v12, Laak;->f:Laal;

    .line 20131
    iget v10, v9, Laal;->d:I

    if-ltz v10, :cond_1b

    .line 20132
    iget v10, v9, Laal;->d:I

    .line 20133
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v9, Laal;->d:I

    .line 21144
    invoke-virtual {v8, v10}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 20135
    const/4 v10, 0x0

    iput-boolean v10, v9, Laal;->f:Z

    .line 19945
    :goto_c
    invoke-virtual {v12}, Laak;->a()V

    .line 19951
    :cond_1a
    :goto_d
    iget-boolean v9, v12, Laak;->d:Z

    if-eqz v9, :cond_2b

    .line 19952
    iget-object v9, v8, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    .line 19953
    iget-object v9, v12, Laak;->f:Laal;

    invoke-virtual {v9}, Laal;->a()Z

    move-result v9

    .line 19954
    iget-object v10, v12, Laak;->f:Laal;

    .line 25131
    iget v0, v10, Laal;->d:I

    move/from16 v17, v0

    if-ltz v17, :cond_23

    .line 25132
    iget v0, v10, Laal;->d:I

    move/from16 v17, v0

    .line 25133
    const/16 v18, -0x1

    move/from16 v0, v18

    iput v0, v10, Laal;->d:I

    .line 26144
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 25135
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v10, Laal;->f:Z

    .line 19955
    :goto_e
    if-eqz v9, :cond_2b

    .line 19957
    iget-boolean v9, v12, Laak;->d:Z

    if-eqz v9, :cond_2a

    .line 19958
    const/4 v9, 0x1

    iput-boolean v9, v12, Laak;->c:Z

    .line 30144
    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 19959
    invoke-direct {v8}, Laan;->b()V

    move/from16 v22, v6

    move v6, v5

    move/from16 v5, v22

    goto/16 :goto_0

    .line 20138
    :cond_1b
    iget-boolean v10, v9, Laal;->f:Z

    if-eqz v10, :cond_21

    .line 21163
    iget-object v10, v9, Laal;->e:Landroid/view/animation/Interpolator;

    if-eqz v10, :cond_1c

    iget v10, v9, Laal;->c:I

    if-gtz v10, :cond_1c

    .line 21164
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 21166
    :cond_1c
    iget v10, v9, Laal;->c:I

    if-gtz v10, :cond_1d

    .line 21167
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Scroll duration must be a positive number"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 20140
    :cond_1d
    iget-object v10, v9, Laal;->e:Landroid/view/animation/Interpolator;

    if-nez v10, :cond_20

    .line 20141
    iget v10, v9, Laal;->c:I

    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v10, v0, :cond_1f

    .line 22144
    iget-object v10, v8, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 20142
    iget v0, v9, Laal;->a:I

    move/from16 v17, v0

    iget v0, v9, Laal;->b:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Laan;->b(II)V

    .line 20149
    :goto_f
    iget v10, v9, Laal;->g:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Laal;->g:I

    .line 20150
    iget v10, v9, Laal;->g:I

    const/16 v17, 0xa

    move/from16 v0, v17

    if-le v10, v0, :cond_1e

    .line 20153
    const-string v10, "RecyclerView"

    const-string v17, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20156
    :cond_1e
    const/4 v10, 0x0

    iput-boolean v10, v9, Laal;->f:Z

    goto/16 :goto_c

    .line 23144
    :cond_1f
    iget-object v10, v8, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 20144
    iget v0, v9, Laal;->a:I

    move/from16 v17, v0

    iget v0, v9, Laal;->b:I

    move/from16 v18, v0

    iget v0, v9, Laal;->c:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v10, v0, v1, v2}, Laan;->a(III)V

    goto :goto_f

    .line 24144
    :cond_20
    iget-object v10, v8, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 20147
    iget v0, v9, Laal;->a:I

    move/from16 v17, v0

    iget v0, v9, Laal;->b:I

    move/from16 v18, v0

    iget v0, v9, Laal;->c:I

    move/from16 v19, v0

    iget-object v0, v9, Laal;->e:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v10, v0, v1, v2, v3}, Laan;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_f

    .line 20158
    :cond_21
    const/4 v10, 0x0

    iput v10, v9, Laal;->g:I

    goto/16 :goto_c

    .line 19947
    :cond_22
    const-string v9, "RecyclerView"

    const-string v10, "Passed over target position while smooth scrolling."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19948
    const/4 v9, 0x0

    iput-object v9, v12, Laak;->e:Landroid/view/View;

    goto/16 :goto_d

    .line 25138
    :cond_23
    iget-boolean v0, v10, Laal;->f:Z

    move/from16 v17, v0

    if-eqz v17, :cond_29

    .line 26163
    iget-object v0, v10, Laal;->e:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    if-eqz v17, :cond_24

    iget v0, v10, Laal;->c:I

    move/from16 v17, v0

    if-gtz v17, :cond_24

    .line 26164
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 26166
    :cond_24
    iget v0, v10, Laal;->c:I

    move/from16 v17, v0

    if-gtz v17, :cond_25

    .line 26167
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Scroll duration must be a positive number"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 25140
    :cond_25
    iget-object v0, v10, Laal;->e:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    if-nez v17, :cond_28

    .line 25141
    iget v0, v10, Laal;->c:I

    move/from16 v17, v0

    const/high16 v18, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_27

    .line 27144
    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    move-object/from16 v17, v0

    .line 25142
    iget v0, v10, Laal;->a:I

    move/from16 v18, v0

    iget v0, v10, Laal;->b:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Laan;->b(II)V

    .line 25149
    :goto_10
    iget v0, v10, Laal;->g:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v10, Laal;->g:I

    .line 25150
    iget v0, v10, Laal;->g:I

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_26

    .line 25153
    const-string v17, "RecyclerView"

    const-string v18, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25156
    :cond_26
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v10, Laal;->f:Z

    goto/16 :goto_e

    .line 28144
    :cond_27
    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    move-object/from16 v17, v0

    .line 25144
    iget v0, v10, Laal;->a:I

    move/from16 v18, v0

    iget v0, v10, Laal;->b:I

    move/from16 v19, v0

    iget v0, v10, Laal;->c:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Laan;->a(III)V

    goto :goto_10

    .line 29144
    :cond_28
    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    move-object/from16 v17, v0

    .line 25147
    iget v0, v10, Laal;->a:I

    move/from16 v18, v0

    iget v0, v10, Laal;->b:I

    move/from16 v19, v0

    iget v0, v10, Laal;->c:I

    move/from16 v20, v0

    iget-object v0, v10, Laal;->e:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    invoke-direct/range {v17 .. v21}, Laan;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_10

    .line 25158
    :cond_29
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v10, Laal;->g:I

    goto/16 :goto_e

    .line 19961
    :cond_2a
    invoke-virtual {v12}, Laak;->a()V

    :cond_2b
    move/from16 v22, v6

    move v6, v5

    move/from16 v5, v22

    .line 3823
    goto/16 :goto_0

    .line 30935
    :cond_2c
    iget-object v8, v12, Laak;->b:Landroid/support/v7/widget/RecyclerView;

    .line 30936
    iget-boolean v9, v12, Laak;->d:Z

    if-eqz v9, :cond_2d

    iget v9, v12, Laak;->a:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2d

    if-nez v8, :cond_2e

    .line 30937
    :cond_2d
    invoke-virtual {v12}, Laak;->a()V

    .line 30939
    :cond_2e
    const/4 v9, 0x0

    iput-boolean v9, v12, Laak;->c:Z

    .line 30940
    iget-object v9, v12, Laak;->e:Landroid/view/View;

    if-eqz v9, :cond_2f

    .line 30942
    iget-object v9, v12, Laak;->e:Landroid/view/View;

    invoke-virtual {v12, v9}, Laak;->a(Landroid/view/View;)I

    move-result v9

    iget v10, v12, Laak;->a:I

    if-ne v9, v10, :cond_37

    .line 30943
    iget-object v9, v8, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    .line 30944
    iget-object v9, v12, Laak;->f:Laal;

    .line 31131
    iget v10, v9, Laal;->d:I

    if-ltz v10, :cond_30

    .line 31132
    iget v10, v9, Laal;->d:I

    .line 31133
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v9, Laal;->d:I

    .line 32144
    invoke-virtual {v8, v10}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 31135
    const/4 v10, 0x0

    iput-boolean v10, v9, Laal;->f:Z

    .line 30945
    :goto_11
    invoke-virtual {v12}, Laak;->a()V

    .line 30951
    :cond_2f
    :goto_12
    iget-boolean v9, v12, Laak;->d:Z

    if-eqz v9, :cond_40

    .line 30952
    iget-object v9, v8, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    .line 30953
    iget-object v9, v12, Laak;->f:Laal;

    invoke-virtual {v9}, Laal;->a()Z

    move-result v9

    .line 30954
    iget-object v10, v12, Laak;->f:Laal;

    .line 36131
    iget v0, v10, Laal;->d:I

    move/from16 v17, v0

    if-ltz v17, :cond_38

    .line 36132
    iget v0, v10, Laal;->d:I

    move/from16 v17, v0

    .line 36133
    const/16 v18, -0x1

    move/from16 v0, v18

    iput v0, v10, Laal;->d:I

    .line 37144
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 36135
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v10, Laal;->f:Z

    .line 30955
    :goto_13
    if-eqz v9, :cond_40

    .line 30957
    iget-boolean v9, v12, Laak;->d:Z

    if-eqz v9, :cond_3f

    .line 30958
    const/4 v9, 0x1

    iput-boolean v9, v12, Laak;->c:Z

    .line 41144
    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 30959
    invoke-direct {v8}, Laan;->b()V

    move/from16 v22, v6

    move v6, v5

    move/from16 v5, v22

    goto/16 :goto_0

    .line 31138
    :cond_30
    iget-boolean v10, v9, Laal;->f:Z

    if-eqz v10, :cond_36

    .line 32163
    iget-object v10, v9, Laal;->e:Landroid/view/animation/Interpolator;

    if-eqz v10, :cond_31

    iget v10, v9, Laal;->c:I

    if-gtz v10, :cond_31

    .line 32164
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 32166
    :cond_31
    iget v10, v9, Laal;->c:I

    if-gtz v10, :cond_32

    .line 32167
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Scroll duration must be a positive number"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 31140
    :cond_32
    iget-object v10, v9, Laal;->e:Landroid/view/animation/Interpolator;

    if-nez v10, :cond_35

    .line 31141
    iget v10, v9, Laal;->c:I

    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v10, v0, :cond_34

    .line 33144
    iget-object v10, v8, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 31142
    iget v0, v9, Laal;->a:I

    move/from16 v17, v0

    iget v0, v9, Laal;->b:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Laan;->b(II)V

    .line 31149
    :goto_14
    iget v10, v9, Laal;->g:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Laal;->g:I

    .line 31150
    iget v10, v9, Laal;->g:I

    const/16 v17, 0xa

    move/from16 v0, v17

    if-le v10, v0, :cond_33

    .line 31153
    const-string v10, "RecyclerView"

    const-string v17, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31156
    :cond_33
    const/4 v10, 0x0

    iput-boolean v10, v9, Laal;->f:Z

    goto/16 :goto_11

    .line 34144
    :cond_34
    iget-object v10, v8, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 31144
    iget v0, v9, Laal;->a:I

    move/from16 v17, v0

    iget v0, v9, Laal;->b:I

    move/from16 v18, v0

    iget v0, v9, Laal;->c:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v10, v0, v1, v2}, Laan;->a(III)V

    goto :goto_14

    .line 35144
    :cond_35
    iget-object v10, v8, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 31147
    iget v0, v9, Laal;->a:I

    move/from16 v17, v0

    iget v0, v9, Laal;->b:I

    move/from16 v18, v0

    iget v0, v9, Laal;->c:I

    move/from16 v19, v0

    iget-object v0, v9, Laal;->e:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v10, v0, v1, v2, v3}, Laan;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_14

    .line 31158
    :cond_36
    const/4 v10, 0x0

    iput v10, v9, Laal;->g:I

    goto/16 :goto_11

    .line 30947
    :cond_37
    const-string v9, "RecyclerView"

    const-string v10, "Passed over target position while smooth scrolling."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30948
    const/4 v9, 0x0

    iput-object v9, v12, Laak;->e:Landroid/view/View;

    goto/16 :goto_12

    .line 36138
    :cond_38
    iget-boolean v0, v10, Laal;->f:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3e

    .line 37163
    iget-object v0, v10, Laal;->e:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    if-eqz v17, :cond_39

    iget v0, v10, Laal;->c:I

    move/from16 v17, v0

    if-gtz v17, :cond_39

    .line 37164
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 37166
    :cond_39
    iget v0, v10, Laal;->c:I

    move/from16 v17, v0

    if-gtz v17, :cond_3a

    .line 37167
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Scroll duration must be a positive number"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 36140
    :cond_3a
    iget-object v0, v10, Laal;->e:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    if-nez v17, :cond_3d

    .line 36141
    iget v0, v10, Laal;->c:I

    move/from16 v17, v0

    const/high16 v18, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3c

    .line 38144
    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    move-object/from16 v17, v0

    .line 36142
    iget v0, v10, Laal;->a:I

    move/from16 v18, v0

    iget v0, v10, Laal;->b:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Laan;->b(II)V

    .line 36149
    :goto_15
    iget v0, v10, Laal;->g:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v10, Laal;->g:I

    .line 36150
    iget v0, v10, Laal;->g:I

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3b

    .line 36153
    const-string v17, "RecyclerView"

    const-string v18, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36156
    :cond_3b
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v10, Laal;->f:Z

    goto/16 :goto_13

    .line 39144
    :cond_3c
    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    move-object/from16 v17, v0

    .line 36144
    iget v0, v10, Laal;->a:I

    move/from16 v18, v0

    iget v0, v10, Laal;->b:I

    move/from16 v19, v0

    iget v0, v10, Laal;->c:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Laan;->a(III)V

    goto :goto_15

    .line 40144
    :cond_3d
    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    move-object/from16 v17, v0

    .line 36147
    iget v0, v10, Laal;->a:I

    move/from16 v18, v0

    iget v0, v10, Laal;->b:I

    move/from16 v19, v0

    iget v0, v10, Laal;->c:I

    move/from16 v20, v0

    iget-object v0, v10, Laal;->e:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    invoke-direct/range {v17 .. v21}, Laan;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_15

    .line 36158
    :cond_3e
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v10, Laal;->g:I

    goto/16 :goto_13

    .line 30961
    :cond_3f
    invoke-virtual {v12}, Laak;->a()V

    :cond_40
    move/from16 v22, v6

    move v6, v5

    move/from16 v5, v22

    goto/16 :goto_0

    .line 3841
    :cond_41
    if-lez v5, :cond_42

    move v8, v9

    goto/16 :goto_1

    :cond_42
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 3846
    :cond_43
    if-gtz v4, :cond_5

    const/4 v9, 0x0

    goto/16 :goto_3

    .line 3866
    :cond_44
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_4

    .line 3868
    :cond_45
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 3870
    :cond_46
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 3876
    :cond_47
    invoke-direct/range {p0 .. p0}, Laan;->b()V

    goto/16 :goto_7

    .line 47138
    :cond_48
    iget-boolean v6, v5, Laal;->f:Z

    if-eqz v6, :cond_4e

    .line 48163
    iget-object v6, v5, Laal;->e:Landroid/view/animation/Interpolator;

    if-eqz v6, :cond_49

    iget v6, v5, Laal;->c:I

    if-gtz v6, :cond_49

    .line 48164
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 48166
    :cond_49
    iget v6, v5, Laal;->c:I

    if-gtz v6, :cond_4a

    .line 48167
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Scroll duration must be a positive number"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 47140
    :cond_4a
    iget-object v6, v5, Laal;->e:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_4d

    .line 47141
    iget v6, v5, Laal;->c:I

    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_4c

    .line 49144
    iget-object v6, v4, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 47142
    iget v7, v5, Laal;->a:I

    iget v8, v5, Laal;->b:I

    invoke-virtual {v6, v7, v8}, Laan;->b(II)V

    .line 47149
    :goto_16
    iget v6, v5, Laal;->g:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Laal;->g:I

    .line 47150
    iget v6, v5, Laal;->g:I

    const/16 v7, 0xa

    if-le v6, v7, :cond_4b

    .line 47153
    const-string v6, "RecyclerView"

    const-string v7, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47156
    :cond_4b
    const/4 v6, 0x0

    iput-boolean v6, v5, Laal;->f:Z

    goto/16 :goto_8

    .line 50144
    :cond_4c
    iget-object v6, v4, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 47144
    iget v7, v5, Laal;->a:I

    iget v8, v5, Laal;->b:I

    iget v9, v5, Laal;->c:I

    invoke-direct {v6, v7, v8, v9}, Laan;->a(III)V

    goto :goto_16

    .line 50145
    :cond_4d
    iget-object v6, v4, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 47147
    iget v7, v5, Laal;->a:I

    iget v8, v5, Laal;->b:I

    iget v9, v5, Laal;->c:I

    iget-object v10, v5, Laal;->e:Landroid/view/animation/Interpolator;

    invoke-direct {v6, v7, v8, v9, v10}, Laan;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_16

    .line 47158
    :cond_4e
    const/4 v6, 0x0

    iput v6, v5, Laal;->g:I

    goto/16 :goto_8

    .line 46947
    :cond_4f
    const-string v5, "RecyclerView"

    const-string v6, "Passed over target position while smooth scrolling."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46948
    const/4 v5, 0x0

    iput-object v5, v12, Laak;->e:Landroid/view/View;

    goto/16 :goto_9

    .line 50154
    :cond_50
    iget-boolean v7, v6, Laal;->f:Z

    if-eqz v7, :cond_56

    .line 50178
    iget-object v7, v6, Laal;->e:Landroid/view/animation/Interpolator;

    if-eqz v7, :cond_51

    iget v7, v6, Laal;->c:I

    if-gtz v7, :cond_51

    .line 50179
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50181
    :cond_51
    iget v7, v6, Laal;->c:I

    if-gtz v7, :cond_52

    .line 50182
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Scroll duration must be a positive number"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50156
    :cond_52
    iget-object v7, v6, Laal;->e:Landroid/view/animation/Interpolator;

    if-nez v7, :cond_55

    .line 50157
    iget v7, v6, Laal;->c:I

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_54

    .line 50185
    iget-object v7, v4, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 50158
    iget v8, v6, Laal;->a:I

    iget v9, v6, Laal;->b:I

    invoke-virtual {v7, v8, v9}, Laan;->b(II)V

    .line 50165
    :goto_17
    iget v7, v6, Laal;->g:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Laal;->g:I

    .line 50166
    iget v7, v6, Laal;->g:I

    const/16 v8, 0xa

    if-le v7, v8, :cond_53

    .line 50169
    const-string v7, "RecyclerView"

    const-string v8, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50172
    :cond_53
    const/4 v7, 0x0

    iput-boolean v7, v6, Laal;->f:Z

    goto/16 :goto_a

    .line 50186
    :cond_54
    iget-object v7, v4, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 50160
    iget v8, v6, Laal;->a:I

    iget v9, v6, Laal;->b:I

    iget v10, v6, Laal;->c:I

    invoke-direct {v7, v8, v9, v10}, Laan;->a(III)V

    goto :goto_17

    .line 50187
    :cond_55
    iget-object v7, v4, Landroid/support/v7/widget/RecyclerView;->t:Laan;

    .line 50163
    iget v8, v6, Laal;->a:I

    iget v9, v6, Laal;->b:I

    iget v10, v6, Laal;->c:I

    iget-object v11, v6, Laal;->e:Landroid/view/animation/Interpolator;

    invoke-direct {v7, v8, v9, v10, v11}, Laan;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_17

    .line 50174
    :cond_56
    const/4 v7, 0x0

    iput v7, v6, Laal;->g:I

    goto/16 :goto_a

    .line 46961
    :cond_57
    invoke-virtual {v12}, Laak;->a()V

    goto/16 :goto_b

    :cond_58
    move v9, v8

    goto/16 :goto_3

    :cond_59
    move v10, v8

    goto/16 :goto_2
.end method
