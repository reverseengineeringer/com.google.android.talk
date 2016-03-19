.class final Lbou;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lbng;


# direct methods
.method constructor <init>(Lbng;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 6723
    iput-object p1, p0, Lbou;->c:Lbng;

    iput-object p2, p0, Lbou;->a:Ljava/lang/String;

    iput-wide p3, p0, Lbou;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 6726
    if-nez p2, :cond_2

    .line 6727
    iget-object v3, p0, Lbou;->c:Lbng;

    iget-object v0, p0, Lbou;->a:Ljava/lang/String;

    iget-wide v4, p0, Lbou;->b:J

    .line 7688
    invoke-static {v0}, Laal;->f(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    .line 7691
    if-eqz v0, :cond_5

    .line 7692
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 7693
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7694
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 7696
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7697
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v1

    .line 7700
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7703
    const-string v1, "http://"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7704
    :cond_0
    iget-object v1, v3, Lbng;->at:Lbfd;

    .line 7705
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    const-string v3, "UTF-8"

    .line 7707
    invoke-static {v0, v3}, Lenn;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 7704
    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILjava/lang/String;[BJZ)V

    .line 6731
    :cond_1
    :goto_2
    return-void

    .line 6728
    :cond_2
    if-ne p2, v1, :cond_1

    .line 6729
    iget-object v0, p0, Lbou;->c:Lbng;

    iget-wide v2, p0, Lbou;->b:J

    .line 8714
    iget-object v0, v0, Lbng;->at:Lbfd;

    new-array v1, v1, [J

    aput-wide v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;[J)V

    goto :goto_2

    :cond_3
    move-object v0, v2

    move-object v2, v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method
