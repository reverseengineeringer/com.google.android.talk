.class public final Llnd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llnd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Lloh;

.field public c:Llow;

.field public d:Llhp;

.field public e:Llmt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 842
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1847
    iput-object v0, p0, Llnd;->a:Ljava/lang/Boolean;

    .line 1848
    iput-object v0, p0, Llnd;->b:Lloh;

    .line 1849
    iput-object v0, p0, Llnd;->c:Llow;

    .line 1850
    iput-object v0, p0, Llnd;->d:Llhp;

    .line 1851
    iput-object v0, p0, Llnd;->e:Llmt;

    .line 1852
    iput-object v0, p0, Llnd;->eD:Llyd;

    .line 1853
    const/4 v0, -0x1

    iput v0, p0, Llnd;->eE:I

    .line 844
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2909
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2910
    sparse-switch v0, :sswitch_data_0

    .line 2914
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2915
    :sswitch_0
    return-object p0

    .line 2920
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llnd;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2924
    :sswitch_2
    iget-object v0, p0, Llnd;->b:Lloh;

    if-nez v0, :cond_1

    .line 2925
    new-instance v0, Lloh;

    invoke-direct {v0}, Lloh;-><init>()V

    iput-object v0, p0, Llnd;->b:Lloh;

    .line 2927
    :cond_1
    iget-object v0, p0, Llnd;->b:Lloh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2931
    :sswitch_3
    iget-object v0, p0, Llnd;->c:Llow;

    if-nez v0, :cond_2

    .line 2932
    new-instance v0, Llow;

    invoke-direct {v0}, Llow;-><init>()V

    iput-object v0, p0, Llnd;->c:Llow;

    .line 2934
    :cond_2
    iget-object v0, p0, Llnd;->c:Llow;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2938
    :sswitch_4
    iget-object v0, p0, Llnd;->d:Llhp;

    if-nez v0, :cond_3

    .line 2939
    new-instance v0, Llhp;

    invoke-direct {v0}, Llhp;-><init>()V

    iput-object v0, p0, Llnd;->d:Llhp;

    .line 2941
    :cond_3
    iget-object v0, p0, Llnd;->d:Llhp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2945
    :sswitch_5
    iget-object v0, p0, Llnd;->e:Llmt;

    if-nez v0, :cond_4

    .line 2946
    new-instance v0, Llmt;

    invoke-direct {v0}, Llmt;-><init>()V

    iput-object v0, p0, Llnd;->e:Llmt;

    .line 2948
    :cond_4
    iget-object v0, p0, Llnd;->e:Llmt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2910
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Llnd;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 861
    const/4 v0, 0x1

    iget-object v1, p0, Llnd;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 863
    :cond_0
    iget-object v0, p0, Llnd;->b:Lloh;

    if-eqz v0, :cond_1

    .line 864
    const/4 v0, 0x2

    iget-object v1, p0, Llnd;->b:Lloh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 866
    :cond_1
    iget-object v0, p0, Llnd;->c:Llow;

    if-eqz v0, :cond_2

    .line 867
    const/4 v0, 0x3

    iget-object v1, p0, Llnd;->c:Llow;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 869
    :cond_2
    iget-object v0, p0, Llnd;->d:Llhp;

    if-eqz v0, :cond_3

    .line 870
    const/4 v0, 0x4

    iget-object v1, p0, Llnd;->d:Llhp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 872
    :cond_3
    iget-object v0, p0, Llnd;->e:Llmt;

    if-eqz v0, :cond_4

    .line 873
    const/4 v0, 0x5

    iget-object v1, p0, Llnd;->e:Llmt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 875
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 876
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 880
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 881
    iget-object v1, p0, Llnd;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 882
    const/4 v1, 0x1

    iget-object v2, p0, Llnd;->a:Ljava/lang/Boolean;

    .line 883
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 883
    add-int/2addr v0, v1

    .line 885
    :cond_0
    iget-object v1, p0, Llnd;->b:Lloh;

    if-eqz v1, :cond_1

    .line 886
    const/4 v1, 0x2

    iget-object v2, p0, Llnd;->b:Lloh;

    .line 887
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 889
    :cond_1
    iget-object v1, p0, Llnd;->c:Llow;

    if-eqz v1, :cond_2

    .line 890
    const/4 v1, 0x3

    iget-object v2, p0, Llnd;->c:Llow;

    .line 891
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 893
    :cond_2
    iget-object v1, p0, Llnd;->d:Llhp;

    if-eqz v1, :cond_3

    .line 894
    const/4 v1, 0x4

    iget-object v2, p0, Llnd;->d:Llhp;

    .line 895
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 897
    :cond_3
    iget-object v1, p0, Llnd;->e:Llmt;

    if-eqz v1, :cond_4

    .line 898
    const/4 v1, 0x5

    iget-object v2, p0, Llnd;->e:Llmt;

    .line 899
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 901
    :cond_4
    return v0
.end method
