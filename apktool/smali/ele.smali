.class final Lele;
.super Lbyp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbyp",
        "<",
        "Ldpv;",
        "Ldsu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lelc;

.field private final e:I

.field private final f:Z


# direct methods
.method constructor <init>(Lelc;IZ)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lele;->d:Lelc;

    invoke-direct {p0}, Lbyp;-><init>()V

    .line 137
    iput p2, p0, Lele;->e:I

    .line 138
    iput-boolean p3, p0, Lele;->f:Z

    .line 139
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lele;->d:Lelc;

    invoke-virtual {v0}, Lelc;->getActivity()Lba;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->iY:I

    invoke-virtual {v0, v1}, Lba;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Leau;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 152
    invoke-super {p0, p1}, Lbyp;->a(Leau;)V

    .line 155
    invoke-virtual {p1}, Leau;->c()Ldqf;

    move-result-object v0

    check-cast v0, Ldsu;

    .line 157
    iget-object v1, p0, Lele;->d:Lelc;

    .line 2035
    iget-object v1, v1, Lelc;->a:Lhpu;

    .line 157
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    .line 158
    invoke-virtual {v0}, Ldsu;->k()Ljava/lang/Boolean;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_0

    .line 3015
    invoke-static {v2, v4}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 161
    iget-object v3, p0, Lele;->d:Lelc;

    .line 3035
    iget-object v3, v3, Lelc;->f:Like;

    .line 161
    invoke-virtual {v3, v2}, Like;->a(Z)V

    .line 162
    iget-object v3, p0, Lele;->d:Lelc;

    .line 4035
    iget-object v3, v3, Lelc;->b:Lelm;

    .line 162
    invoke-virtual {v3, v1, v2}, Lelm;->b(IZ)V

    .line 165
    :cond_0
    invoke-virtual {v0}, Ldsu;->l()Ljava/lang/Boolean;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_1

    .line 5015
    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 168
    iget-object v2, p0, Lele;->d:Lelc;

    .line 5035
    iget-object v2, v2, Lelc;->e:Like;

    .line 168
    invoke-virtual {v2, v0}, Like;->a(Z)V

    .line 169
    iget-object v2, p0, Lele;->d:Lelc;

    .line 6035
    iget-object v2, v2, Lelc;->b:Lelm;

    .line 169
    invoke-virtual {v2, v1, v0}, Lelm;->a(IZ)V

    .line 171
    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0, p1}, Lbyp;->a(Ljava/lang/Exception;)V

    .line 180
    iget v0, p0, Lele;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lele;->d:Lelc;

    .line 7035
    iget-object v1, v0, Lelc;->f:Like;

    .line 181
    iget-boolean v0, p0, Lele;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Like;->a(Z)V

    .line 183
    :cond_0
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lele;->d:Lelc;

    .line 1035
    iget-object v0, v0, Lelc;->c:Lbfd;

    .line 143
    iget v1, p0, Lele;->e:I

    iget-boolean v2, p0, Lele;->f:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;IZ)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-static {}, Lele;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lele;->d:Lelc;

    .line 8035
    iget-object v0, v0, Lelc;->context:Lill;

    .line 198
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->ja:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lele;->d:Lelc;

    .line 9035
    iget-object v0, v0, Lelc;->context:Lill;

    .line 201
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->iZ:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ldpv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    const-class v0, Ldpv;

    return-object v0
.end method

.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ldsu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    const-class v0, Ldsu;

    return-object v0
.end method
