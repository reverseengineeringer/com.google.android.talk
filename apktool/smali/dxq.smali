.class final Ldxq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfd;

.field final synthetic b:Ldvx;

.field final synthetic c:Ldvv;

.field final synthetic d:Lba;

.field final synthetic e:Ldxp;


# direct methods
.method constructor <init>(Ldxp;Lbfd;Ldvx;Ldvv;Lba;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Ldxq;->e:Ldxp;

    iput-object p2, p0, Ldxq;->a:Lbfd;

    iput-object p3, p0, Ldxq;->b:Ldvx;

    iput-object p4, p0, Ldxq;->c:Ldvv;

    iput-object p5, p0, Ldxq;->d:Lba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Ldxq;->a:Lbfd;

    invoke-virtual {v0}, Lbfd;->N()I

    move-result v0

    .line 75
    packed-switch v0, :pswitch_data_0

    .line 94
    const-string v0, "Babel"

    const-string v1, "GetVoiceAccountData didn\'t return valid account info"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Ldxq;->b:Ldvx;

    iget-object v1, p0, Ldxq;->c:Ldvv;

    invoke-interface {v0, v1}, Ldvx;->b(Ldvv;)V

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v0, p0, Ldxq;->a:Lbfd;

    iget-object v1, p0, Ldxq;->c:Ldvv;

    invoke-static {v0, v1}, Laal;->a(Lbfd;Ldvv;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    iget-object v1, p0, Ldxq;->d:Lba;

    const/16 v2, 0x13ec

    invoke-virtual {v1, v0, v2}, Lba;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p0, Ldxq;->d:Lba;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->sM:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
