.class final Ledu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ledt;


# direct methods
.method constructor <init>(Ledt;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Ledu;->a:Ledt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Ledu;->a:Ledt;

    .line 1019
    iget-object v0, v0, Ledt;->a:Lhpu;

    .line 46
    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 1183
    sget-object v1, Ldvp;->h:Ldml;

    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Ledu;->a:Ledt;

    .line 2019
    iget-object v1, v1, Ledt;->c:Leat;

    .line 48
    const/4 v2, 0x1

    sget-object v3, Lebq;->a:Lebq;

    invoke-interface {v1, v0, v2, v3}, Leat;->a(IZLebq;)V

    .line 52
    iget-object v0, p0, Ledu;->a:Ledt;

    .line 3019
    iget-object v0, v0, Ledt;->b:Lbdp;

    .line 52
    const-string v1, "babel_poll_conversation_data_frequency_ms"

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Lbdp;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 55
    iget-object v2, p0, Ledu;->a:Ledt;

    .line 4019
    iget-object v2, v2, Ledt;->d:Ljava/lang/Runnable;

    .line 55
    invoke-static {v2, v0, v1}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 57
    :cond_0
    return-void
.end method
