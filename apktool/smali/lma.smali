.class public final Llma;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llma;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Llma;


# instance fields
.field public a:Llop;

.field public b:Llku;

.field public c:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2694
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3699
    iput-object v0, p0, Llma;->a:Llop;

    .line 3700
    iput-object v0, p0, Llma;->b:Llku;

    .line 3701
    iput-object v0, p0, Llma;->c:Ljava/lang/Float;

    .line 3702
    iput-object v0, p0, Llma;->eD:Llyd;

    .line 3703
    const/4 v0, -0x1

    iput v0, p0, Llma;->eE:I

    .line 2696
    return-void
.end method

.method public static d()[Llma;
    .locals 2

    .prologue
    .line 2672
    sget-object v0, Llma;->d:[Llma;

    if-nez v0, :cond_1

    .line 2673
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2675
    :try_start_0
    sget-object v0, Llma;->d:[Llma;

    if-nez v0, :cond_0

    .line 2676
    const/4 v0, 0x0

    new-array v0, v0, [Llma;

    sput-object v0, Llma;->d:[Llma;

    .line 2678
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2680
    :cond_1
    sget-object v0, Llma;->d:[Llma;

    return-object v0

    .line 2678
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
    .line 4745
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4746
    sparse-switch v0, :sswitch_data_0

    .line 4750
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4751
    :sswitch_0
    return-object p0

    .line 4756
    :sswitch_1
    iget-object v0, p0, Llma;->a:Llop;

    if-nez v0, :cond_1

    .line 4757
    new-instance v0, Llop;

    invoke-direct {v0}, Llop;-><init>()V

    iput-object v0, p0, Llma;->a:Llop;

    .line 4759
    :cond_1
    iget-object v0, p0, Llma;->a:Llop;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4763
    :sswitch_2
    iget-object v0, p0, Llma;->b:Llku;

    if-nez v0, :cond_2

    .line 4764
    new-instance v0, Llku;

    invoke-direct {v0}, Llku;-><init>()V

    iput-object v0, p0, Llma;->b:Llku;

    .line 4766
    :cond_2
    iget-object v0, p0, Llma;->b:Llku;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4770
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llma;->c:Ljava/lang/Float;

    goto :goto_0

    .line 4746
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2710
    iget-object v0, p0, Llma;->a:Llop;

    if-eqz v0, :cond_0

    .line 2711
    const/4 v0, 0x1

    iget-object v1, p0, Llma;->a:Llop;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2713
    :cond_0
    iget-object v0, p0, Llma;->b:Llku;

    if-eqz v0, :cond_1

    .line 2714
    const/4 v0, 0x2

    iget-object v1, p0, Llma;->b:Llku;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2716
    :cond_1
    iget-object v0, p0, Llma;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 2717
    const/4 v0, 0x3

    iget-object v1, p0, Llma;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 2719
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2720
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2724
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2725
    iget-object v1, p0, Llma;->a:Llop;

    if-eqz v1, :cond_0

    .line 2726
    const/4 v1, 0x1

    iget-object v2, p0, Llma;->a:Llop;

    .line 2727
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2729
    :cond_0
    iget-object v1, p0, Llma;->b:Llku;

    if-eqz v1, :cond_1

    .line 2730
    const/4 v1, 0x2

    iget-object v2, p0, Llma;->b:Llku;

    .line 2731
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2733
    :cond_1
    iget-object v1, p0, Llma;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 2734
    const/4 v1, 0x3

    iget-object v2, p0, Llma;->c:Ljava/lang/Float;

    .line 2735
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 2735
    add-int/2addr v0, v1

    .line 2737
    :cond_2
    return v0
.end method
