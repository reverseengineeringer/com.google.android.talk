.class final Lhkp;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhko;


# direct methods
.method constructor <init>(Lhko;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lhkp;->a:Lhko;

    invoke-direct {p0}, Lhku;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lhkx;)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhkp;->a:Lhko;

    iget-object v1, v1, Lhko;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p1}, Lhkx;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "localParticipant"

    iget-object v1, p0, Lhkp;->a:Lhko;

    iget-object v1, v1, Lhko;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lhkp;->a:Lhko;

    .line 1029
    iget-boolean v0, v0, Lhko;->i:Z

    .line 148
    invoke-virtual {p1}, Lhkx;->e()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Lhkp;->a:Lhko;

    invoke-virtual {p1}, Lhkx;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lhko;->b(Z)V

    .line 150
    iget-object v0, p0, Lhkp;->a:Lhko;

    invoke-virtual {p1}, Lhkx;->e()Z

    move-result v1

    .line 2029
    iput-boolean v1, v0, Lhko;->i:Z

    .line 152
    :cond_1
    return-void
.end method

.method public d(Lhkx;)V
    .locals 2

    .prologue
    .line 156
    const-string v0, "focusedParticipant"

    iget-object v1, p0, Lhkp;->a:Lhko;

    iget-object v1, v1, Lhko;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lhkp;->a:Lhko;

    invoke-virtual {p1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhko;->h:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lhkp;->a:Lhko;

    invoke-virtual {p1}, Lhkx;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lhko;->a(Z)V

    .line 159
    iget-object v0, p0, Lhkp;->a:Lhko;

    invoke-virtual {p1}, Lhkx;->e()Z

    move-result v1

    .line 3029
    iput-boolean v1, v0, Lhko;->i:Z

    .line 160
    iget-object v0, p0, Lhkp;->a:Lhko;

    iget-object v0, v0, Lhko;->f:Lhlh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhkp;->a:Lhko;

    .line 4029
    iget-boolean v0, v0, Lhko;->j:Z

    .line 160
    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lhkp;->a:Lhko;

    iget-object v0, v0, Lhko;->f:Lhlh;

    iget-object v1, p0, Lhkp;->a:Lhko;

    iget-object v1, v1, Lhko;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhlh;->a(Ljava/lang/String;)V

    .line 164
    :cond_0
    return-void
.end method
