.class final Lcmn;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcml;


# direct methods
.method constructor <init>(Lcml;)V
    .locals 1

    .prologue
    .line 170
    iput-object p1, p0, Lcmn;->a:Lcml;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcmn;->a:Lcml;

    .line 5033
    iput-object v2, v0, Lcml;->g:Lkhf;

    .line 180
    iget-object v0, p0, Lcmn;->a:Lcml;

    sget-object v1, Lclq;->e:Lclq;

    .line 6033
    iput-object v1, v0, Lcml;->e:Lclq;

    .line 181
    iget-object v0, p0, Lcmn;->a:Lcml;

    .line 7033
    iget-object v0, v0, Lcml;->f:Lhbf;

    .line 181
    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcmn;->a:Lcml;

    .line 8033
    iget-object v0, v0, Lcml;->f:Lhbf;

    .line 182
    iget-object v1, p0, Lcmn;->a:Lcml;

    .line 9033
    iget-object v1, v1, Lcml;->c:Lcmo;

    .line 182
    invoke-interface {v0, v1}, Lhbf;->b(Lhbn;)V

    .line 183
    iget-object v0, p0, Lcmn;->a:Lcml;

    .line 10033
    iput-object v2, v0, Lcml;->f:Lhbf;

    .line 185
    :cond_0
    return-void
.end method

.method public a(Lhkw;)V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcmn;->a:Lcml;

    iget-object v0, p0, Lcmn;->a:Lcml;

    .line 1033
    iget-object v0, v0, Lcml;->b:Lcfc;

    .line 173
    invoke-virtual {v0}, Lcfc;->o()Lhbo;

    move-result-object v0

    const-class v2, Lhbf;

    invoke-virtual {v0, v2}, Lhbo;->a(Ljava/lang/Class;)Lhbm;

    move-result-object v0

    check-cast v0, Lhbf;

    .line 2033
    iput-object v0, v1, Lcml;->f:Lhbf;

    .line 174
    iget-object v0, p0, Lcmn;->a:Lcml;

    .line 3033
    iget-object v0, v0, Lcml;->f:Lhbf;

    .line 174
    iget-object v1, p0, Lcmn;->a:Lcml;

    .line 4033
    iget-object v1, v1, Lcml;->c:Lcmo;

    .line 174
    invoke-interface {v0, v1}, Lhbf;->a(Lhbn;)V

    .line 175
    return-void
.end method
