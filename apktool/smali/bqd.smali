.class final Lbqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lbjb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbpz;


# direct methods
.method constructor <init>(Lbpz;)V
    .locals 0

    .prologue
    .line 1311
    iput-object p1, p0, Lbqd;->a:Lbpz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1311
    check-cast p1, Lbjb;

    check-cast p2, Lbjb;

    .line 2314
    iget-object v2, p1, Lbjb;->h:Lcyx;

    .line 2315
    iget-object v3, p2, Lbjb;->h:Lcyx;

    .line 2316
    invoke-virtual {v2}, Lcyx;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcyx;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2331
    :cond_0
    :goto_0
    return v0

    .line 2318
    :cond_1
    invoke-virtual {v2}, Lcyx;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcyx;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 2319
    goto :goto_0

    .line 2320
    :cond_2
    iget-object v2, p1, Lbjb;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p2, Lbjb;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2323
    iget-object v2, p1, Lbjb;->i:Lbgd;

    .line 2324
    iget-object v3, p2, Lbjb;->i:Lbgd;

    .line 2326
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    move v0, v1

    .line 2327
    goto :goto_0

    .line 2328
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_0

    .line 2331
    :cond_4
    iget-object v0, p1, Lbjb;->e:Ljava/lang/String;

    iget-object v1, p2, Lbjb;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2333
    :cond_5
    const/4 v0, 0x0

    .line 1311
    goto :goto_0
.end method
