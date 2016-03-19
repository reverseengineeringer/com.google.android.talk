.class final Lcnd;
.super Lhku;
.source "SourceFile"

# interfaces
.implements Lilu;
.implements Liox;
.implements Lioy;
.implements Lioz;


# instance fields
.field final a:Landroid/content/Context;

.field b:Lcmu;

.field private c:Z

.field private final d:Lcnf;

.field private final e:Lcne;


# direct methods
.method constructor <init>(Landroid/content/Context;Liog;)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    .line 142
    iput-object p1, p0, Lcnd;->a:Landroid/content/Context;

    .line 143
    new-instance v0, Lcnf;

    .line 1033
    invoke-direct {v0, p0}, Lcnf;-><init>(Lcnd;)V

    .line 143
    iput-object v0, p0, Lcnd;->d:Lcnf;

    .line 144
    new-instance v0, Lcne;

    .line 1102
    invoke-direct {v0, p0}, Lcne;-><init>(Lcnd;)V

    .line 144
    iput-object v0, p0, Lcnd;->e:Lcne;

    .line 145
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 146
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->f()Lhks;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcnd;->c:Z

    if-nez v0, :cond_0

    .line 151
    invoke-interface {v1}, Lhks;->q()Lhbo;

    move-result-object v0

    const-class v2, Lhbh;

    .line 152
    invoke-virtual {v0, v2}, Lhbo;->a(Ljava/lang/Class;)Lhbm;

    move-result-object v0

    check-cast v0, Lhbh;

    iget-object v2, p0, Lcnd;->d:Lcnf;

    .line 153
    invoke-interface {v0, v2}, Lhbh;->a(Lhbn;)V

    .line 154
    invoke-interface {v1}, Lhks;->q()Lhbo;

    move-result-object v0

    const-class v1, Lhbj;

    .line 155
    invoke-virtual {v0, v1}, Lhbo;->a(Ljava/lang/Class;)Lhbm;

    move-result-object v0

    check-cast v0, Lhbj;

    iget-object v1, p0, Lcnd;->e:Lcne;

    .line 156
    invoke-interface {v0, v1}, Lhbj;->a(Lhbn;)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcnd;->c:Z

    .line 159
    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 162
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->f()Lhks;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v1}, Lhks;->q()Lhbo;

    move-result-object v0

    const-class v2, Lhbh;

    .line 165
    invoke-virtual {v0, v2}, Lhbo;->a(Ljava/lang/Class;)Lhbm;

    move-result-object v0

    check-cast v0, Lhbh;

    iget-object v2, p0, Lcnd;->d:Lcnf;

    .line 166
    invoke-interface {v0, v2}, Lhbh;->b(Lhbn;)V

    .line 167
    invoke-interface {v1}, Lhks;->q()Lhbo;

    move-result-object v0

    const-class v1, Lhbj;

    .line 168
    invoke-virtual {v0, v1}, Lhbo;->a(Ljava/lang/Class;)Lhbm;

    move-result-object v0

    check-cast v0, Lhbj;

    iget-object v1, p0, Lcnd;->e:Lcne;

    .line 169
    invoke-interface {v0, v1}, Lhbj;->b(Lhbn;)V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcnd;->c:Z

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcnd;->b:Lcmu;

    iget-object v1, p0, Lcnd;->a:Landroid/content/Context;

    .line 2051
    new-instance v2, Lcmt;

    invoke-direct {v2}, Lcmt;-><init>()V

    .line 2052
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->cE:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcmt;->a(Ljava/lang/String;)Lcmt;

    move-result-object v1

    const/4 v2, 0x0

    .line 2053
    invoke-virtual {v1, v2}, Lcmt;->a(I)Lcmt;

    move-result-object v1

    .line 2054
    invoke-virtual {v1}, Lcmt;->b()Lcms;

    move-result-object v1

    .line 200
    invoke-interface {v0, v1}, Lcmu;->a(Lcms;)V

    .line 201
    invoke-direct {p0}, Lcnd;->k()V

    .line 202
    return-void
.end method

.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 176
    const-class v0, Lcmu;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmu;

    iput-object v0, p0, Lcnd;->b:Lcmu;

    .line 177
    return-void
.end method

.method public a(Lhkw;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcnd;->j()V

    .line 196
    return-void
.end method

.method public s_()V
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p0}, Lcfc;->a(Lhku;)V

    .line 183
    invoke-direct {p0}, Lcnd;->j()V

    .line 184
    return-void
.end method

.method public t_()V
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p0}, Lcfc;->b(Lhku;)V

    .line 190
    invoke-direct {p0}, Lcnd;->k()V

    .line 191
    return-void
.end method
