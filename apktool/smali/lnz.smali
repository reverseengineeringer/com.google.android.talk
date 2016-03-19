.class public final Llnz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llnz;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Llnz;


# instance fields
.field public a:Llmf;

.field public b:Llmm;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2831
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3836
    iput-object v0, p0, Llnz;->a:Llmf;

    .line 3837
    iput-object v0, p0, Llnz;->b:Llmm;

    .line 3838
    iput-object v0, p0, Llnz;->c:Ljava/lang/Float;

    .line 3839
    iput-object v0, p0, Llnz;->d:Ljava/lang/Float;

    .line 3840
    iput-object v0, p0, Llnz;->eD:Llyd;

    .line 3841
    const/4 v0, -0x1

    iput v0, p0, Llnz;->eE:I

    .line 2833
    return-void
.end method

.method public static d()[Llnz;
    .locals 2

    .prologue
    .line 2806
    sget-object v0, Llnz;->e:[Llnz;

    if-nez v0, :cond_1

    .line 2807
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2809
    :try_start_0
    sget-object v0, Llnz;->e:[Llnz;

    if-nez v0, :cond_0

    .line 2810
    const/4 v0, 0x0

    new-array v0, v0, [Llnz;

    sput-object v0, Llnz;->e:[Llnz;

    .line 2812
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2814
    :cond_1
    sget-object v0, Llnz;->e:[Llnz;

    return-object v0

    .line 2812
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
    .line 5890
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5891
    sparse-switch v0, :sswitch_data_0

    .line 5895
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5896
    :sswitch_0
    return-object p0

    .line 5901
    :sswitch_1
    iget-object v0, p0, Llnz;->a:Llmf;

    if-nez v0, :cond_1

    .line 5902
    new-instance v0, Llmf;

    invoke-direct {v0}, Llmf;-><init>()V

    iput-object v0, p0, Llnz;->a:Llmf;

    .line 5904
    :cond_1
    iget-object v0, p0, Llnz;->a:Llmf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5908
    :sswitch_2
    iget-object v0, p0, Llnz;->b:Llmm;

    if-nez v0, :cond_2

    .line 5909
    new-instance v0, Llmm;

    invoke-direct {v0}, Llmm;-><init>()V

    iput-object v0, p0, Llnz;->b:Llmm;

    .line 5911
    :cond_2
    iget-object v0, p0, Llnz;->b:Llmm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5915
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llnz;->c:Ljava/lang/Float;

    goto :goto_0

    .line 5919
    :sswitch_4
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llnz;->d:Ljava/lang/Float;

    goto :goto_0

    .line 5891
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2848
    iget-object v0, p0, Llnz;->a:Llmf;

    if-eqz v0, :cond_0

    .line 2849
    const/4 v0, 0x1

    iget-object v1, p0, Llnz;->a:Llmf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2851
    :cond_0
    iget-object v0, p0, Llnz;->b:Llmm;

    if-eqz v0, :cond_1

    .line 2852
    const/4 v0, 0x2

    iget-object v1, p0, Llnz;->b:Llmm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2854
    :cond_1
    iget-object v0, p0, Llnz;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 2855
    const/4 v0, 0x3

    iget-object v1, p0, Llnz;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 2857
    :cond_2
    iget-object v0, p0, Llnz;->d:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 2858
    const/4 v0, 0x4

    iget-object v1, p0, Llnz;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 2860
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2861
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2865
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2866
    iget-object v1, p0, Llnz;->a:Llmf;

    if-eqz v1, :cond_0

    .line 2867
    const/4 v1, 0x1

    iget-object v2, p0, Llnz;->a:Llmf;

    .line 2868
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2870
    :cond_0
    iget-object v1, p0, Llnz;->b:Llmm;

    if-eqz v1, :cond_1

    .line 2871
    const/4 v1, 0x2

    iget-object v2, p0, Llnz;->b:Llmm;

    .line 2872
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2874
    :cond_1
    iget-object v1, p0, Llnz;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 2875
    const/4 v1, 0x3

    iget-object v2, p0, Llnz;->c:Ljava/lang/Float;

    .line 2876
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 2876
    add-int/2addr v0, v1

    .line 2878
    :cond_2
    iget-object v1, p0, Llnz;->d:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 2879
    const/4 v1, 0x4

    iget-object v2, p0, Llnz;->d:Ljava/lang/Float;

    .line 2880
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 5569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 2880
    add-int/2addr v0, v1

    .line 2882
    :cond_3
    return v0
.end method
