.class final Lcbl;
.super Lhbw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbw",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcbj;


# direct methods
.method constructor <init>(Lcbj;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcbl;->a:Lcbj;

    invoke-direct {p0}, Lhbw;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 3508
    iget-object v1, p0, Lcbl;->a:Lcbj;

    .line 4487
    iget-object v1, v1, Lcbj;->a:Landroid/content/Context;

    .line 3509
    const-string v2, "recentEmoji"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3510
    const-string v2, "recentEmojiKey"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3511
    iget-object v2, p0, Lcbl;->a:Lcbj;

    .line 5487
    iget-object v2, v2, Lcbj;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3511
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 3512
    if-eqz v1, :cond_1

    .line 3513
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3514
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 3515
    const-string v4, "16"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6487
    sget v4, Lcbj;->c:I

    .line 3519
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3520
    iget-object v4, p0, Lcbl;->a:Lcbj;

    .line 7487
    iget-object v4, v4, Lcbj;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3520
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3514
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_1
    return-object v5
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lcbl;->a:Lcbj;

    .line 2487
    iget-object v0, v0, Lcbj;->e:Lcbm;

    .line 1528
    if-eqz v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcbl;->a:Lcbj;

    .line 3487
    iget-object v0, v0, Lcbj;->e:Lcbm;

    .line 1529
    invoke-interface {v0}, Lcbm;->q_()V

    .line 505
    :cond_0
    return-void
.end method
