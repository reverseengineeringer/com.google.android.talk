.class final Ldfx;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldfq;


# direct methods
.method constructor <init>(Ldfq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Ldfx;->a:Ldfq;

    invoke-direct {p0, p2}, Ldgz;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 328
    iget-object v1, p0, Ldfx;->a:Ldfq;

    .line 1055
    iget v1, v1, Ldfq;->c:I

    .line 329
    const-string v2, "sms_no_full_sync_till_millis"

    .line 327
    invoke-static {v0, v1, v2}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 331
    iget-object v0, p0, Ldfx;->a:Ldfq;

    .line 2055
    iget-object v0, v0, Ldfq;->b:Lbfd;

    .line 331
    invoke-static {v0}, Leny;->a(Lbfd;)V

    .line 332
    iget-object v0, p0, Ldfx;->a:Ldfq;

    .line 3055
    iget-object v0, v0, Ldfq;->b:Lbfd;

    .line 332
    invoke-static {v0}, Leny;->c(Lbfd;)V

    .line 333
    return-void
.end method
