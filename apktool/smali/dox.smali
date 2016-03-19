.class public abstract Ldox;
.super Ldor;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0, p1}, Ldor;-><init>(Ljava/lang/String;)V

    .line 656
    iput-object p2, p0, Ldox;->j:Ljava/lang/String;

    .line 657
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    const-string v0, "event_queue"

    return-object v0
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 6

    .prologue
    .line 1205
    sget-boolean v0, Ldoo;->e:Z

    .line 661
    if-eqz v0, :cond_0

    .line 662
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldox;->c:Ljava/lang/String;

    iget-object v2, p0, Ldox;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onFailed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :cond_0
    invoke-super {p0, p1, p2}, Ldor;->a(Lbfd;Ldvn;)V

    .line 666
    iget-boolean v0, p0, Ldox;->d:Z

    if-nez v0, :cond_1

    .line 667
    iget-object v1, p0, Ldox;->c:Ljava/lang/String;

    iget-object v2, p0, Ldox;->j:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 671
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    .line 667
    :goto_0
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;I)I

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 672
    const-class v1, Lcyh;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyh;

    .line 673
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcyh;->c(I)V

    .line 675
    :cond_1
    return-void

    .line 671
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 686
    invoke-super {p0, p1, p2}, Ldor;->a(Lcwk;Ldvn;)Z

    move-result v0

    .line 687
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_0

    .line 688
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_2

    .line 689
    :cond_0
    const-string v0, "Babel_RequestWriter"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    const-string v0, "Babel_RequestWriter"

    const-string v2, "Do not retry for EventRequest if network is not available."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 694
    :cond_2
    return v0
.end method
