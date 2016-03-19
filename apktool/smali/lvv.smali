.class public final Llvv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Llvx",
        "<TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Llvv;


# instance fields
.field private final a:Llwv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llwv",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Llvv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llvv;-><init>(B)V

    sput-object v0, Llvv;->d:Llvv;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Llvv;->c:Z

    .line 53
    const/16 v0, 0x10

    invoke-static {v0}, Llwv;->a(I)Llwv;

    move-result-object v0

    iput-object v0, p0, Llvv;->a:Llwv;

    .line 54
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Llvv;->c:Z

    .line 61
    invoke-static {v0}, Llwv;->a(I)Llwv;

    move-result-object v0

    iput-object v0, p0, Llvv;->a:Llwv;

    .line 62
    invoke-virtual {p0}, Llvv;->a()V

    .line 63
    return-void
.end method

.method private static a(Llxo;ILjava/lang/Object;)I
    .locals 2

    .prologue
    .line 927
    invoke-static {p1}, Llvq;->m(I)I

    move-result v0

    .line 928
    sget-object v1, Llxo;->j:Llxo;

    if-ne p0, v1, :cond_0

    .line 932
    invoke-static {}, Llwg;->a()Z

    .line 934
    shl-int/lit8 v0, v0, 0x1

    .line 939
    :cond_0
    invoke-static {p0, p2}, Llvv;->b(Llxo;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static a(Llxo;Z)I
    .locals 1

    .prologue
    .line 564
    if-eqz p1, :cond_0

    .line 565
    const/4 v0, 0x2

    .line 567
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Llxo;->b()I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 587
    instance-of v0, p0, Llws;

    if-eqz v0, :cond_1

    .line 588
    check-cast p0, Llws;

    invoke-interface {p0}, Llws;->b()Llws;

    move-result-object p0

    .line 597
    :cond_0
    :goto_0
    return-object p0

    .line 591
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 592
    check-cast p0, [B

    .line 593
    array-length v0, p0

    new-array v0, v0, [B

    .line 594
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 595
    goto :goto_0
.end method

.method public static a(Llvp;Llxo;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 669
    sget-object v0, Llxu;->a:Llxu;

    .line 3184
    sget-object v1, Llxn;->a:[I

    invoke-virtual {p1}, Llxo;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3185
    :pswitch_0
    invoke-virtual {p0}, Llvp;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 3200
    :goto_0
    return-object v0

    .line 3186
    :pswitch_1
    invoke-virtual {p0}, Llvp;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 3187
    :pswitch_2
    invoke-virtual {p0}, Llvp;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 3188
    :pswitch_3
    invoke-virtual {p0}, Llvp;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 3189
    :pswitch_4
    invoke-virtual {p0}, Llvp;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 3190
    :pswitch_5
    invoke-virtual {p0}, Llvp;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 3191
    :pswitch_6
    invoke-virtual {p0}, Llvp;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 3192
    :pswitch_7
    invoke-virtual {p0}, Llvp;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 3193
    :pswitch_8
    invoke-virtual {p0}, Llvp;->l()Llvk;

    move-result-object v0

    goto :goto_0

    .line 3194
    :pswitch_9
    invoke-virtual {p0}, Llvp;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 3195
    :pswitch_a
    invoke-virtual {p0}, Llvp;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 3196
    :pswitch_b
    invoke-virtual {p0}, Llvp;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 3197
    :pswitch_c
    invoke-virtual {p0}, Llvp;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 3198
    :pswitch_d
    invoke-virtual {p0}, Llvp;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 3200
    :pswitch_e
    invoke-virtual {v0, p0}, Llxu;->a(Llvp;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 3202
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3205
    :pswitch_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3210
    :pswitch_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private static a(Llvq;Llxo;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 753
    sget-object v0, Llxo;->j:Llxo;

    if-ne p1, v0, :cond_0

    .line 755
    invoke-static {}, Llwg;->a()Z

    .line 762
    check-cast p3, Llwp;

    invoke-virtual {p0, p2, p3}, Llvq;->e(ILlwp;)V

    .line 770
    :goto_0
    return-void

    .line 767
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Llvv;->a(Llxo;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Llvq;->a(II)V

    .line 768
    invoke-static {p0, p1, p3}, Llvv;->a(Llvq;Llxo;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Llvq;Llxo;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 786
    sget-object v0, Llvw;->b:[I

    invoke-virtual {p1}, Llxo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 825
    :goto_0
    return-void

    .line 787
    :pswitch_0
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Llvq;->a(D)V

    goto :goto_0

    .line 788
    :pswitch_1
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Llvq;->a(F)V

    goto :goto_0

    .line 789
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Llvq;->a(J)V

    goto :goto_0

    .line 790
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Llvq;->b(J)V

    goto :goto_0

    .line 791
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Llvq;->b(I)V

    goto :goto_0

    .line 792
    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Llvq;->d(J)V

    goto :goto_0

    .line 793
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Llvq;->e(I)V

    goto :goto_0

    .line 794
    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Llvq;->a(Z)V

    goto :goto_0

    .line 795
    :pswitch_8
    check-cast p2, Llwp;

    invoke-virtual {p0, p2}, Llvq;->c(Llwp;)V

    goto :goto_0

    .line 796
    :pswitch_9
    check-cast p2, Llwp;

    invoke-virtual {p0, p2}, Llvq;->a(Llwp;)V

    goto :goto_0

    .line 798
    :pswitch_a
    instance-of v0, p2, Llvk;

    if-eqz v0, :cond_0

    .line 799
    check-cast p2, Llvk;

    invoke-virtual {p0, p2}, Llvq;->a(Llvk;)V

    goto :goto_0

    .line 801
    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Llvq;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 805
    :pswitch_b
    instance-of v0, p2, Llvk;

    if-eqz v0, :cond_1

    .line 806
    check-cast p2, Llvk;

    invoke-virtual {p0, p2}, Llvq;->a(Llvk;)V

    goto :goto_0

    .line 808
    :cond_1
    check-cast p2, [B

    invoke-virtual {p0, p2}, Llvq;->b([B)V

    goto :goto_0

    .line 811
    :pswitch_c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Llvq;->c(I)V

    goto/16 :goto_0

    .line 812
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Llvq;->f(I)V

    goto/16 :goto_0

    .line 813
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Llvq;->e(J)V

    goto/16 :goto_0

    .line 814
    :pswitch_f
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Llvq;->d(I)V

    goto/16 :goto_0

    .line 815
    :pswitch_10
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Llvq;->c(J)V

    goto/16 :goto_0

    .line 818
    :pswitch_11
    instance-of v0, p2, Llwh;

    if-eqz v0, :cond_2

    .line 819
    check-cast p2, Llwh;

    invoke-interface {p2}, Llwh;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Llvq;->g(I)V

    goto/16 :goto_0

    .line 821
    :cond_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Llvq;->g(I)V

    goto/16 :goto_0

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static a(Llvx;Ljava/lang/Object;Llvq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llvx",
            "<*>;",
            "Ljava/lang/Object;",
            "Llvq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 832
    invoke-virtual {p0}, Llvx;->b()Llxo;

    move-result-object v1

    .line 833
    invoke-virtual {p0}, Llvx;->a()I

    move-result v0

    .line 834
    invoke-virtual {p0}, Llvx;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 835
    check-cast p1, Ljava/util/List;

    .line 836
    invoke-virtual {p0}, Llvx;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 837
    const/4 v2, 0x2

    invoke-virtual {p2, v0, v2}, Llvq;->a(II)V

    .line 839
    const/4 v0, 0x0

    .line 840
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 841
    invoke-static {v1, v3}, Llvv;->b(Llxo;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 842
    goto :goto_0

    .line 843
    :cond_0
    invoke-virtual {p2, v0}, Llvq;->r(I)V

    .line 845
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 846
    invoke-static {p2, v1, v2}, Llvv;->a(Llvq;Llxo;Ljava/lang/Object;)V

    goto :goto_1

    .line 849
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 850
    invoke-static {p2, v1, v0, v3}, Llvv;->a(Llvq;Llxo;ILjava/lang/Object;)V

    goto :goto_2

    .line 854
    :cond_2
    instance-of v2, p1, Llwl;

    if-eqz v2, :cond_4

    .line 855
    check-cast p1, Llwl;

    invoke-virtual {p1}, Llwl;->a()Llwp;

    move-result-object v2

    invoke-static {p2, v1, v0, v2}, Llvv;->a(Llvq;Llxo;ILjava/lang/Object;)V

    .line 860
    :cond_3
    :goto_3
    return-void

    .line 857
    :cond_4
    invoke-static {p2, v1, v0, p1}, Llvv;->a(Llvq;Llxo;ILjava/lang/Object;)V

    goto :goto_3
.end method

.method private static a(Llxo;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 463
    if-nez p1, :cond_0

    .line 464
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 468
    :cond_0
    sget-object v2, Llvw;->a:[I

    invoke-virtual {p0}, Llxo;->a()Llxt;

    move-result-object v3

    invoke-virtual {v3}, Llxt;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 490
    :cond_1
    :goto_0
    if-nez v0, :cond_5

    .line 498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :pswitch_0
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_0

    .line 470
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 471
    :pswitch_2
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 472
    :pswitch_3
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 473
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 474
    :pswitch_5
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 476
    :pswitch_6
    instance-of v2, p1, Llvk;

    if-nez v2, :cond_2

    instance-of v2, p1, [B

    if-eqz v2, :cond_1

    :cond_2
    move v0, v1

    goto :goto_0

    .line 480
    :pswitch_7
    instance-of v2, p1, Ljava/lang/Integer;

    if-nez v2, :cond_3

    instance-of v2, p1, Llwh;

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 485
    :pswitch_8
    instance-of v2, p1, Llwp;

    if-nez v2, :cond_4

    instance-of v2, p1, Llwl;

    if-eqz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    .line 501
    :cond_5
    return-void

    .line 468
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static a(Ljava/util/Map$Entry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 530
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llvx;

    .line 531
    invoke-virtual {v0}, Llvx;->c()Llxt;

    move-result-object v3

    sget-object v4, Llxt;->i:Llxt;

    if-ne v3, v4, :cond_4

    .line 532
    invoke-virtual {v0}, Llvx;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llwp;

    .line 535
    invoke-interface {v0}, Llwp;->f()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 553
    :goto_0
    return v0

    .line 540
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 541
    instance-of v3, v0, Llwp;

    if-eqz v3, :cond_2

    .line 542
    check-cast v0, Llwp;

    invoke-interface {v0}, Llwp;->f()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 543
    goto :goto_0

    .line 545
    :cond_2
    instance-of v0, v0, Llwl;

    if-eqz v0, :cond_3

    move v0, v2

    .line 546
    goto :goto_0

    .line 548
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v2

    .line 553
    goto :goto_0
.end method

.method private static b(Llxo;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 954
    sget-object v0, Llvw;->b:[I

    invoke-virtual {p0}, Llxo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1000
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :pswitch_0
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    invoke-static {}, Llvq;->f()I

    move-result v0

    .line 996
    :goto_0
    return v0

    .line 958
    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    invoke-static {}, Llvq;->e()I

    move-result v0

    goto :goto_0

    .line 959
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Llvq;->f(J)I

    move-result v0

    goto :goto_0

    .line 960
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Llvq;->g(J)I

    move-result v0

    goto :goto_0

    .line 961
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Llvq;->n(I)I

    move-result v0

    goto :goto_0

    .line 962
    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    invoke-static {}, Llvq;->c()I

    move-result v0

    goto :goto_0

    .line 963
    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Llvq;->a()I

    move-result v0

    goto :goto_0

    .line 964
    :pswitch_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {}, Llvq;->g()I

    move-result v0

    goto :goto_0

    .line 965
    :pswitch_8
    check-cast p1, Llwp;

    invoke-static {p1}, Llvq;->d(Llwp;)I

    move-result v0

    goto :goto_0

    .line 967
    :pswitch_9
    instance-of v0, p1, Llvk;

    if-eqz v0, :cond_0

    .line 968
    check-cast p1, Llvk;

    invoke-static {p1}, Llvq;->b(Llvk;)I

    move-result v0

    goto :goto_0

    .line 970
    :cond_0
    check-cast p1, [B

    invoke-static {p1}, Llvq;->c([B)I

    move-result v0

    goto :goto_0

    .line 973
    :pswitch_a
    instance-of v0, p1, Llvk;

    if-eqz v0, :cond_1

    .line 974
    check-cast p1, Llvk;

    invoke-static {p1}, Llvq;->b(Llvk;)I

    move-result v0

    goto :goto_0

    .line 976
    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Llvq;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 978
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Llvq;->o(I)I

    move-result v0

    goto :goto_0

    .line 979
    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Llvq;->b()I

    move-result v0

    goto/16 :goto_0

    .line 980
    :pswitch_d
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    invoke-static {}, Llvq;->d()I

    move-result v0

    goto/16 :goto_0

    .line 981
    :pswitch_e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Llvq;->p(I)I

    move-result v0

    goto/16 :goto_0

    .line 982
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Llvq;->h(J)I

    move-result v0

    goto/16 :goto_0

    .line 985
    :pswitch_10
    instance-of v0, p1, Llwl;

    if-eqz v0, :cond_2

    .line 986
    check-cast p1, Llwl;

    invoke-static {p1}, Llvq;->a(Llwo;)I

    move-result v0

    goto/16 :goto_0

    .line 988
    :cond_2
    check-cast p1, Llwp;

    invoke-static {p1}, Llvq;->b(Llwp;)I

    move-result v0

    goto/16 :goto_0

    .line 992
    :pswitch_11
    instance-of v0, p1, Llwh;

    if-eqz v0, :cond_3

    .line 993
    check-cast p1, Llwh;

    .line 994
    invoke-interface {p1}, Llwh;->a()I

    move-result v0

    .line 993
    invoke-static {v0}, Llvq;->q(I)I

    move-result v0

    goto/16 :goto_0

    .line 996
    :cond_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Llvq;->q(I)I

    move-result v0

    goto/16 :goto_0

    .line 954
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method private b(Ljava/util/Map$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llvx;

    .line 605
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 606
    instance-of v2, v1, Llwl;

    if-eqz v2, :cond_0

    .line 607
    check-cast v1, Llwl;

    invoke-virtual {v1}, Llwl;->a()Llwp;

    move-result-object v1

    .line 610
    :cond_0
    invoke-virtual {v0}, Llvx;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 611
    invoke-virtual {p0, v0}, Llvv;->a(Llvx;)Ljava/lang/Object;

    move-result-object v2

    .line 612
    if-nez v2, :cond_1

    .line 613
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 615
    :cond_1
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v2

    .line 616
    check-cast v1, Ljava/util/List;

    invoke-static {v4}, Llvv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 618
    :cond_2
    iget-object v1, p0, Llvv;->a:Llwv;

    invoke-virtual {v1, v0, v2}, Llwv;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :goto_1
    return-void

    .line 619
    :cond_3
    invoke-virtual {v0}, Llvx;->c()Llxt;

    move-result-object v2

    sget-object v3, Llxt;->i:Llxt;

    if-ne v2, v3, :cond_6

    .line 620
    invoke-virtual {p0, v0}, Llvv;->a(Llvx;)Ljava/lang/Object;

    move-result-object v2

    .line 621
    if-nez v2, :cond_4

    .line 622
    iget-object v2, p0, Llvv;->a:Llwv;

    invoke-static {v1}, Llvv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Llwv;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 626
    :cond_4
    instance-of v3, v2, Llws;

    if-eqz v3, :cond_5

    .line 1911
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 631
    :cond_5
    check-cast v2, Llwp;

    .line 632
    invoke-interface {v2}, Llwp;->h()Llwq;

    move-result-object v2

    check-cast v1, Llwp;

    .line 2905
    check-cast v2, Llwa;

    check-cast v1, Llvy;

    invoke-virtual {v2, v1}, Llwa;->a(Llvy;)Llwa;

    move-result-object v1

    .line 633
    invoke-interface {v1}, Llwq;->i()Llwp;

    move-result-object v1

    .line 638
    iget-object v2, p0, Llvv;->a:Llwv;

    invoke-virtual {v2, v0, v1}, Llwv;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 641
    :cond_6
    iget-object v2, p0, Llvv;->a:Llwv;

    invoke-static {v1}, Llvv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Llwv;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static c(Ljava/util/Map$Entry;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 897
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llvx;

    .line 898
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 899
    invoke-virtual {v0}, Llvx;->c()Llxt;

    move-result-object v3

    sget-object v4, Llxt;->i:Llxt;

    if-ne v3, v4, :cond_2

    .line 900
    invoke-virtual {v0}, Llvx;->d()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Llvx;->e()Z

    move-result v3

    if-nez v3, :cond_2

    .line 901
    instance-of v0, v1, Llwl;

    if-eqz v0, :cond_1

    .line 903
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llvx;

    invoke-virtual {v0}, Llvx;->a()I

    move-result v2

    move-object v0, v1

    check-cast v0, Llwl;

    .line 902
    invoke-static {v2, v0}, Llvq;->a(ILlwo;)I

    move-result v2

    .line 4025
    :cond_0
    :goto_0
    return v2

    .line 906
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llvx;

    invoke-virtual {v0}, Llvx;->a()I

    move-result v0

    check-cast v1, Llwp;

    .line 905
    invoke-static {v0, v1}, Llvq;->d(ILlwp;)I

    move-result v2

    goto :goto_0

    .line 4009
    :cond_2
    invoke-virtual {v0}, Llvx;->b()Llxo;

    move-result-object v3

    .line 4010
    invoke-virtual {v0}, Llvx;->a()I

    move-result v4

    .line 4011
    invoke-virtual {v0}, Llvx;->d()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4012
    invoke-virtual {v0}, Llvx;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4014
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v0, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4015
    invoke-static {v3, v2}, Llvv;->b(Llxo;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4016
    goto :goto_1

    .line 4018
    :cond_3
    invoke-static {v4}, Llvq;->m(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 4019
    invoke-static {v0}, Llvq;->s(I)I

    move-result v0

    add-int v2, v1, v0

    goto :goto_0

    .line 4022
    :cond_4
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4023
    invoke-static {v3, v4, v1}, Llvv;->a(Llxo;ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 4024
    goto :goto_2

    .line 4028
    :cond_5
    invoke-static {v3, v4, v1}, Llvv;->a(Llxo;ILjava/lang/Object;)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public a(Llvx;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Llvv;->a:Llwv;

    invoke-virtual {v0, p1}, Llwv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 320
    instance-of v1, v0, Llwl;

    if-eqz v1, :cond_0

    .line 321
    check-cast v0, Llwl;

    invoke-virtual {v0}, Llwl;->a()Llwp;

    move-result-object v0

    .line 323
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Llvv;->b:Z

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Llvv;->a:Llwv;

    invoke-virtual {v0}, Llwv;->a()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Llvv;->b:Z

    goto :goto_0
.end method

.method public a(Llvv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llvv",
            "<TFieldDescriptorType;>;)V"
        }
    .end annotation

    .prologue
    .line 576
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Llvv;->a:Llwv;

    invoke-virtual {v1}, Llwv;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 577
    iget-object v1, p1, Llvv;->a:Llwv;

    invoke-virtual {v1, v0}, Llwv;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Llvv;->b(Ljava/util/Map$Entry;)V

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    :cond_0
    iget-object v0, p1, Llvv;->a:Llwv;

    invoke-virtual {v0}, Llwv;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 581
    invoke-direct {p0, v0}, Llvv;->b(Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 583
    :cond_1
    return-void
.end method

.method public a(Llvx;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p1}, Llvx;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 344
    invoke-virtual {p1}, Llvx;->b()Llxo;

    move-result-object v3

    invoke-static {v3, v2}, Llvv;->a(Llxo;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 351
    :goto_1
    instance-of v0, p2, Llwl;

    if-eqz v0, :cond_2

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Llvv;->c:Z

    .line 354
    :cond_2
    iget-object v0, p0, Llvv;->a:Llwv;

    invoke-virtual {v0, p1, p2}, Llwv;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    return-void

    .line 348
    :cond_3
    invoke-virtual {p1}, Llvx;->b()Llxo;

    move-result-object v0

    invoke-static {v0, p2}, Llvv;->a(Llxo;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public b(Llvx;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p1}, Llvx;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    invoke-virtual {p1}, Llvx;->b()Llxo;

    move-result-object v0

    invoke-static {v0, p2}, Llvv;->a(Llxo;Ljava/lang/Object;)V

    .line 442
    invoke-virtual {p0, p1}, Llvv;->a(Llvx;)Ljava/lang/Object;

    move-result-object v0

    .line 444
    if-nez v0, :cond_1

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    iget-object v1, p0, Llvv;->a:Llwv;

    invoke-virtual {v1, p1, v0}, Llwv;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    return-void

    .line 448
    :cond_1
    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Llvv;->b:Z

    return v0
.end method

.method public c()Llvv;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llvv",
            "<TFieldDescriptorType;>;"
        }
    .end annotation

    .prologue
    .line 1068
    new-instance v2, Llvv;

    invoke-direct {v2}, Llvv;-><init>()V

    .line 111
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Llvv;->a:Llwv;

    invoke-virtual {v0}, Llwv;->c()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 112
    iget-object v0, p0, Llvv;->a:Llwv;

    invoke-virtual {v0, v1}, Llwv;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 113
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llvx;

    .line 114
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Llvv;->a(Llvx;Ljava/lang/Object;)V

    .line 111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Llvv;->a:Llwv;

    invoke-virtual {v0}, Llwv;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llvx;

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Llvv;->a(Llvx;Ljava/lang/Object;)V

    goto :goto_1

    .line 121
    :cond_1
    iget-boolean v0, p0, Llvv;->c:Z

    iput-boolean v0, v2, Llvv;->c:Z

    .line 122
    return-object v2
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Llvv;->c()Llvv;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 292
    iget-boolean v0, p0, Llvv;->c:Z

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Llwn;

    iget-object v1, p0, Llvv;->a:Llwv;

    .line 294
    invoke-virtual {v1}, Llwv;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Llwn;-><init>(Ljava/util/Iterator;)V

    .line 296
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llvv;->a:Llwv;

    invoke-virtual {v0}, Llwv;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 513
    :goto_0
    iget-object v2, p0, Llvv;->a:Llwv;

    invoke-virtual {v2}, Llwv;->c()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 514
    iget-object v2, p0, Llvv;->a:Llwv;

    invoke-virtual {v2, v0}, Llwv;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Llvv;->a(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    :goto_1
    return v1

    .line 513
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_1
    iget-object v0, p0, Llvv;->a:Llwv;

    invoke-virtual {v0}, Llwv;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 520
    invoke-static {v0}, Llvv;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 524
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public f()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 885
    :goto_0
    iget-object v2, p0, Llvv;->a:Llwv;

    invoke-virtual {v2}, Llwv;->c()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 886
    iget-object v2, p0, Llvv;->a:Llwv;

    invoke-virtual {v2, v0}, Llwv;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Llvv;->c(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    .line 885
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 889
    :cond_0
    iget-object v0, p0, Llvv;->a:Llwv;

    invoke-virtual {v0}, Llwv;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 890
    invoke-static {v0}, Llvv;->c(Ljava/util/Map$Entry;)I

    move-result v0

    add-int/2addr v1, v0

    .line 891
    goto :goto_1

    .line 892
    :cond_1
    return v1
.end method
