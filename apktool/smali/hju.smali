.class public final Lhju;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lhks;

.field b:Z

.field c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Z


# direct methods
.method public constructor <init>(Lhks;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lhju;->d:F

    .line 34
    iput v0, p0, Lhju;->e:F

    .line 35
    iput v1, p0, Lhju;->f:F

    .line 36
    iput v1, p0, Lhju;->g:F

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhju;->h:Z

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lhju;->c:I

    .line 43
    iput-object p1, p0, Lhju;->a:Lhks;

    .line 44
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 78
    iget-boolean v0, p0, Lhju;->b:Z

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    :pswitch_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lhju;->a:Lhks;

    invoke-interface {v0}, Lhks;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iput-boolean v6, p0, Lhju;->b:Z

    .line 93
    iget-object v0, p0, Lhju;->a:Lhks;

    new-instance v1, Lhjv;

    invoke-direct {v1, p0}, Lhjv;-><init>(Lhju;)V

    invoke-interface {v0, v1}, Lhks;->a(Lhku;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lhju;->a:Lhks;

    invoke-interface {v0}, Lhks;->q()Lhbo;

    move-result-object v1

    .line 105
    const-class v0, Lhbj;

    invoke-virtual {v1, v0}, Lhbo;->a(Ljava/lang/Class;)Lhbm;

    move-result-object v0

    check-cast v0, Lhbj;

    .line 106
    iget v2, p0, Lhju;->c:I

    packed-switch v2, :pswitch_data_0

    .line 128
    const-class v2, Lhbh;

    .line 129
    invoke-virtual {v1, v2}, Lhbo;->a(Ljava/lang/Class;)Lhbm;

    move-result-object v1

    check-cast v1, Lhbh;

    invoke-interface {v1}, Lhbh;->a()Lkhk;

    move-result-object v1

    .line 131
    new-instance v2, Lkjg;

    invoke-direct {v2}, Lkjg;-><init>()V

    .line 132
    new-instance v3, Lkja;

    invoke-direct {v3}, Lkja;-><init>()V

    iput-object v3, v2, Lkjg;->a:Lkja;

    .line 133
    iget-object v3, v2, Lkjg;->a:Lkja;

    iget-object v4, v1, Lkhk;->a:Ljava/lang/String;

    iput-object v4, v3, Lkja;->a:Ljava/lang/String;

    .line 134
    iget-object v3, v2, Lkjg;->a:Lkja;

    iget-object v1, v1, Lkhk;->b:Ljava/lang/String;

    iput-object v1, v3, Lkja;->b:Ljava/lang/String;

    .line 135
    iget-object v1, v2, Lkjg;->a:Lkja;

    const-string v3, "2"

    iput-object v3, v1, Lkja;->c:Ljava/lang/String;

    .line 136
    iget-object v1, v2, Lkjg;->a:Lkja;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lkja;->d:Ljava/lang/Integer;

    .line 138
    iget-object v1, v2, Lkjg;->a:Lkja;

    new-instance v3, Lkje;

    invoke-direct {v3}, Lkje;-><init>()V

    iput-object v3, v1, Lkja;->g:Lkje;

    .line 140
    iget v1, p0, Lhju;->f:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    iget v1, p0, Lhju;->g:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    .line 141
    new-instance v1, Lkjf;

    invoke-direct {v1}, Lkjf;-><init>()V

    .line 142
    iget v3, p0, Lhju;->d:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lkjf;->a:Ljava/lang/Float;

    .line 143
    iget v3, p0, Lhju;->e:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lkjf;->b:Ljava/lang/Float;

    .line 144
    iget v3, p0, Lhju;->f:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lkjf;->c:Ljava/lang/Float;

    .line 145
    iget v3, p0, Lhju;->g:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lkjf;->d:Ljava/lang/Float;

    .line 146
    iget-object v3, v2, Lkjg;->a:Lkja;

    iget-object v3, v3, Lkja;->g:Lkje;

    new-array v4, v6, [Lkjf;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    iput-object v4, v3, Lkje;->c:[Lkjf;

    .line 149
    :cond_2
    iget-boolean v1, p0, Lhju;->h:Z

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, v2, Lkjg;->a:Lkja;

    iget-object v1, v1, Lkja;->g:Lkje;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lkje;->a:Ljava/lang/Integer;

    .line 155
    :goto_1
    new-instance v1, Lhjx;

    invoke-direct {v1, p0}, Lhjx;-><init>(Lhju;)V

    invoke-interface {v0, v2, v1}, Lhbj;->a(Llyi;Lhbp;)V

    goto/16 :goto_0

    .line 110
    :pswitch_1
    iput v6, p0, Lhju;->c:I

    .line 111
    new-instance v1, Lhjw;

    invoke-direct {v1, p0, v0}, Lhjw;-><init>(Lhju;Lhbj;)V

    invoke-interface {v0, v1}, Lhbj;->a(Lhbn;)V

    goto/16 :goto_0

    .line 152
    :cond_3
    iget-object v1, v2, Lkjg;->a:Lkja;

    iget-object v1, v1, Lkja;->g:Lkje;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lkje;->a:Ljava/lang/Integer;

    goto :goto_1

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(FF)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lhju;->d:F

    .line 55
    iput v0, p0, Lhju;->e:F

    .line 56
    iput p1, p0, Lhju;->f:F

    .line 57
    iput p2, p0, Lhju;->g:F

    .line 58
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lhju;->h:Z

    .line 72
    return-void
.end method
