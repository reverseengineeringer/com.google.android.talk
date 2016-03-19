.class final Lbmf;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lblw;


# direct methods
.method constructor <init>(Lblw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lbmf;->a:Lblw;

    invoke-direct {p0, p2}, Ldgz;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lbmf;->a:Lblw;

    .line 1052
    iget-object v0, v0, Lblw;->a:Landroid/content/Context;

    .line 199
    const-string v1, "babel_stress_message_count"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 202
    iget-object v1, p0, Lbmf;->a:Lblw;

    .line 2052
    iget-object v1, v1, Lblw;->b:Lbfd;

    .line 203
    iget-object v2, p0, Lbmf;->a:Lblw;

    .line 3052
    iget-object v2, v2, Lblw;->c:Lbjb;

    .line 204
    iget-object v2, v2, Lbjb;->a:Ljava/lang/String;

    const/4 v3, 0x0

    .line 202
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;II)V

    .line 207
    return-void
.end method
