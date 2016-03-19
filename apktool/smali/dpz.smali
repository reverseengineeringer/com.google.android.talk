.class public Ldpz;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:I

.field public final b:J

.field public final c:[I

.field public final d:Z

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 2882
    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Ldpz;-><init>(JIZLjava/lang/String;)V

    .line 2883
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 7

    .prologue
    .line 2833
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v1 .. v6}, Ldpz;-><init>(JIZLjava/lang/String;)V

    .line 2834
    return-void
.end method

.method private constructor <init>(JIZLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2839
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 2840
    iput-wide p1, p0, Ldpz;->b:J

    .line 2845
    iput-object p5, p0, Ldpz;->j:Ljava/lang/String;

    .line 2846
    iput p3, p0, Ldpz;->a:I

    .line 2847
    iput-boolean p4, p0, Ldpz;->d:Z

    .line 2848
    new-array v0, v4, [I

    iput-object v0, p0, Ldpz;->c:[I

    .line 2849
    packed-switch p3, :pswitch_data_0

    .line 2875
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "illegal filter mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2851
    :pswitch_0
    iget-object v0, p0, Ldpz;->c:[I

    aput v2, v0, v1

    .line 2852
    iget-object v0, p0, Ldpz;->c:[I

    aput v3, v0, v2

    .line 2873
    :goto_0
    return-void

    .line 2855
    :pswitch_1
    iget-object v0, p0, Ldpz;->c:[I

    aput v4, v0, v1

    .line 2856
    iget-object v0, p0, Ldpz;->c:[I

    aput v3, v0, v2

    goto :goto_0

    .line 2859
    :pswitch_2
    iget-object v0, p0, Ldpz;->c:[I

    aput v2, v0, v1

    .line 2860
    iget-object v0, p0, Ldpz;->c:[I

    aput v5, v0, v2

    goto :goto_0

    .line 2863
    :pswitch_3
    iget-object v0, p0, Ldpz;->c:[I

    aput v2, v0, v1

    .line 2864
    iget-object v0, p0, Ldpz;->c:[I

    const/4 v1, 0x5

    aput v1, v0, v2

    goto :goto_0

    .line 2867
    :pswitch_4
    iget-object v0, p0, Ldpz;->c:[I

    aput v2, v0, v1

    .line 2868
    iget-object v0, p0, Ldpz;->c:[I

    aput v3, v0, v2

    goto :goto_0

    .line 2871
    :pswitch_5
    iget-object v0, p0, Ldpz;->c:[I

    aput v2, v0, v1

    .line 2872
    iget-object v0, p0, Ldpz;->c:[I

    aput v5, v0, v2

    goto :goto_0

    .line 2849
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 6

    .prologue
    .line 2892
    new-instance v1, Lkfm;

    invoke-direct {v1}, Lkfm;-><init>()V

    .line 2895
    iget-wide v2, p0, Ldpz;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 2896
    iget-wide v2, p0, Ldpz;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lkfm;->a:Ljava/lang/Long;

    .line 2901
    :cond_0
    iget v0, p0, Ldpz;->a:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 2903
    const/16 v0, 0x64

    .line 2906
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lkfm;->b:Ljava/lang/Integer;

    .line 2907
    iget-object v0, p0, Ldpz;->h:Lfak;

    invoke-static {p1, p2, p3, v0}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v1, Lkfm;->requestHeader:Lkdo;

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2909
    const-string v2, "babel_smaxevperconv"

    const/16 v3, 0x14

    invoke-static {v0, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lkfm;->c:Ljava/lang/Integer;

    .line 2912
    iget-object v0, p0, Ldpz;->c:[I

    if-eqz v0, :cond_1

    .line 2913
    iget-object v0, p0, Ldpz;->c:[I

    iput-object v0, v1, Lkfm;->d:[I

    .line 2916
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lkfm;->e:Ljava/lang/Integer;

    .line 2917
    return-object v1

    .line 3036
    :cond_2
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2904
    const-string v2, "babel_smaxconv"

    const/16 v3, 0x1e

    invoke-static {v0, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 4

    .prologue
    .line 2959
    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    .line 5205
    sget-boolean v1, Ldoo;->e:Z

    .line 2960
    if-eqz v1, :cond_0

    .line 2961
    const-string v1, "SyncRecentConversations.onFailed "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 5327
    :cond_0
    :goto_0
    sget-boolean v0, Lexo;->b:Z

    .line 2964
    if-eqz v0, :cond_1

    .line 2965
    new-instance v0, Lexr;

    invoke-direct {v0}, Lexr;-><init>()V

    const-string v1, "src_expired"

    invoke-virtual {v0, v1}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v0

    .line 2966
    invoke-virtual {v0, p1}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v0

    iget v1, p0, Ldpz;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "filterMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2967
    invoke-virtual {v0, v1}, Lexr;->b(Ljava/lang/String;)Lexr;

    move-result-object v0

    .line 2968
    invoke-virtual {v0}, Lexr;->b()V

    .line 2970
    :cond_1
    iget-object v0, p0, Ldpz;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2971
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    invoke-static {v0}, Lebo;->b(I)Lebo;

    move-result-object v0

    .line 2972
    iget-object v1, p0, Ldpz;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lebo;->d(Ljava/lang/String;)Z

    .line 2975
    :cond_2
    return-void

    .line 2961
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcwi;)Z
    .locals 4

    .prologue
    .line 2950
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2951
    check-cast p1, Ldpz;

    .line 2952
    iget-wide v0, p0, Ldpz;->b:J

    iget-wide v2, p1, Ldpz;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Ldpz;->a:I

    iget v1, p1, Ldpz;->a:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Ldpz;->d:Z

    iget-boolean v1, p1, Ldpz;->d:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 2935
    invoke-virtual {p0}, Ldpz;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2937
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 2939
    :goto_0
    return-wide v0

    .line 5036
    :cond_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2939
    const-string v1, "babel_src_timeout"

    sget-wide v2, Leea;->f:J

    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2922
    const-string v0, "conversations/syncrecentconversations"

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 2886
    iget v0, p0, Ldpz;->a:I

    return v0
.end method

.method public p()Z
    .locals 4

    .prologue
    .line 2926
    iget-wide v0, p0, Ldpz;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2930
    iget-object v0, p0, Ldpz;->j:Ljava/lang/String;

    return-object v0
.end method
