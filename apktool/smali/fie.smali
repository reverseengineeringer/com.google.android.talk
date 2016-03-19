.class final Lfie;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfic;

.field final synthetic b:Lfid;


# direct methods
.method constructor <init>(Lfid;Lfic;)V
    .locals 0

    iput-object p1, p0, Lfie;->b:Lfid;

    iput-object p2, p0, Lfie;->a:Lfic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lfie;->b:Lfid;

    .line 1000
    iget-object v0, v0, Lfid;->a:Lba;

    .line 0
    invoke-virtual {v0}, Lba;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfie;->b:Lfid;

    .line 2000
    iget-object v0, v0, Lfid;->a:Lba;

    .line 0
    invoke-virtual {v0}, Lba;->C_()Lbg;

    move-result-object v0

    invoke-virtual {v0}, Lbg;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfie;->b:Lfid;

    iget-object v1, p0, Lfie;->b:Lfid;

    .line 3000
    iget-object v1, v1, Lfid;->a:Lba;

    .line 0
    invoke-static {v1}, Lfjz;->b(Lba;)Lfjz;

    move-result-object v1

    iget-object v2, p0, Lfie;->a:Lfic;

    .line 4000
    invoke-virtual {v0, v1, v2}, Lfid;->a(Lfjz;Lfic;)V

    goto :goto_0
.end method
