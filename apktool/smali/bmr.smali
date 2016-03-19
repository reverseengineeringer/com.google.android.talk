.class final Lbmr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldcl;


# instance fields
.field final synthetic a:Lbmp;


# direct methods
.method constructor <init>(Lbmp;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lbmr;->a:Lbmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldcm;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {p1}, Laal;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmr;->a:Lbmp;

    .line 1061
    iget-object v0, v0, Lbmp;->a:Ljava/util/ArrayList;

    .line 237
    if-eqz v0, :cond_0

    .line 238
    const-string v0, "permission_picker_name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    const/4 v2, -0x1

    .line 240
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lbmr;->a:Lbmp;

    .line 2061
    iget-object v0, v0, Lbmp;->a:Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 241
    iget-object v0, p0, Lbmr;->a:Lbmp;

    .line 3061
    iget-object v0, v0, Lbmp;->a:Ljava/util/ArrayList;

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmt;

    invoke-virtual {v0}, Lbmt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :goto_1
    iget-object v0, p0, Lbmr;->a:Lbmp;

    invoke-virtual {v0, v1}, Lbmp;->b(I)V

    .line 249
    :cond_0
    return-void

    .line 240
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
