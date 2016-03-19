.class final Lbka;
.super Lebh;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field b:Ljava/lang/Exception;

.field c:I

.field d:Ljava/lang/String;

.field final synthetic e:Lbjz;

.field private final f:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lbjz;Landroid/content/Context;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lbka;->e:Lbjz;

    .line 103
    invoke-direct {p0, p2}, Lebh;-><init>(Landroid/content/Context;)V

    .line 104
    iput-object p2, p0, Lbka;->a:Landroid/content/Context;

    .line 105
    iput-object p3, p0, Lbka;->f:Landroid/os/ConditionVariable;

    .line 106
    return-void
.end method


# virtual methods
.method public a(ILbfd;Ldwd;Leau;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 112
    iget v0, p0, Lbka;->c:I

    if-eq p1, v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p4}, Leau;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 117
    const-string v0, "Babel_ConvCreator"

    .line 119
    invoke-virtual {p4}, Leau;->b()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x59

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error in RealTimeChatServiceResult returned by conversation creation request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 117
    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lbka;->a:Landroid/content/Context;

    .line 121
    invoke-virtual {p4}, Leau;->b()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 122
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->aD:I

    .line 120
    :goto_1
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    :goto_2
    iget-object v0, p0, Lbka;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 123
    :cond_1
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->bZ:I

    goto :goto_1

    .line 126
    :cond_2
    iget-object v0, p3, Ldwd;->a:Ljava/lang/String;

    iput-object v0, p0, Lbka;->d:Ljava/lang/String;

    goto :goto_2
.end method

.method protected a(Leau;)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 137
    iput-object p1, p0, Lbka;->b:Ljava/lang/Exception;

    .line 138
    iget-object v0, p0, Lbka;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 139
    return-void
.end method
