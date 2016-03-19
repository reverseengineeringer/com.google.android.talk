.class final Lhjs;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhjq;


# direct methods
.method constructor <init>(Lhjq;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lhjs;->a:Lhjq;

    invoke-direct {p0}, Lhku;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lhkx;)V
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhjs;->a:Lhjq;

    .line 1026
    iget-object v1, v1, Lhjq;->b:Ljava/lang/String;

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lhjs;->a:Lhjq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhjq;->b(Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method

.method public d(Lhkx;)V
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p1}, Lhkx;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "localParticipant"

    .line 237
    :goto_0
    iget-object v1, p0, Lhjs;->a:Lhjq;

    .line 2026
    iput-object v0, v1, Lhjq;->a:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lhjs;->a:Lhjq;

    .line 3026
    iget-object v0, v0, Lhjq;->b:Ljava/lang/String;

    .line 238
    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lhjs;->a:Lhjq;

    iget-object v1, p0, Lhjs;->a:Lhjq;

    .line 4026
    iget-object v1, v1, Lhjq;->a:Ljava/lang/String;

    .line 240
    invoke-virtual {v0, v1}, Lhjq;->c(Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
