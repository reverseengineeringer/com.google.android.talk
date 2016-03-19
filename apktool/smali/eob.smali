.class final Leob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfd;


# direct methods
.method constructor <init>(Lbfd;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Leob;->a:Lbfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 828
    iget-object v1, p0, Leob;->a:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    const-string v2, "sms_last_sync_time_millis"

    invoke-static {v0, v1, v2}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 830
    iget-object v1, p0, Leob;->a:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    const-string v2, "sms_last_full_sync_time_millis"

    invoke-static {v0, v1, v2}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 3036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 832
    iget-object v1, p0, Leob;->a:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    const-string v2, "sms_no_full_sync_till_millis"

    invoke-static {v0, v1, v2}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 834
    new-instance v0, Lbfz;

    .line 4036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 835
    iget-object v2, p0, Leob;->a:Lbfd;

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 834
    invoke-static {v0}, Lbft;->a(Lbfz;)V

    .line 836
    return-void
.end method
