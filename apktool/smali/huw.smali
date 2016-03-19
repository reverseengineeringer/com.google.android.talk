.class public final Lhuw;
.super Lhuo;
.source "SourceFile"


# instance fields
.field private d:Lav;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbg;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lhuo;-><init>(Landroid/content/Context;Lbg;)V

    .line 54
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lhuw;->b:Lbg;

    const-string v1, "bg_task_progress_dialog"

    invoke-virtual {v0, v1}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    check-cast v0, Lau;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lau;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "arg_task_tag"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0}, Lau;->a()V

    .line 91
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lhuw;->b:Lbg;

    const-string v1, "bg_task_progress_dialog"

    .line 59
    invoke-virtual {v0, v1}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    check-cast v0, Lau;

    .line 60
    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 1074
    iget-object v1, p0, Lhuw;->d:Lav;

    invoke-static {p1, v0, v1}, Likv;->a(Ljava/lang/String;Ljava/lang/String;Lav;)Likv;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lau;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "arg_task_tag"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lau;->b(Z)V

    .line 64
    iget-object v1, p0, Lhuw;->b:Lbg;

    const-string v2, "bg_task_progress_dialog"

    invoke-virtual {v0, v1, v2}, Lau;->a(Lbg;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public a(Lhus;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-static {p1}, Lhus;->a(Lhus;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lhus;->b()Ljava/lang/Exception;

    .line 1143
    iget-object v0, p0, Lhuw;->a:Landroid/content/Context;

    const-class v3, Lhwt;

    .line 1144
    invoke-static {v0, v3}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhwt;

    .line 1146
    invoke-interface {v0}, Lhwt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    iput-boolean v2, p0, Lhuw;->c:Z

    move v0, v1

    .line 104
    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    .line 2121
    :goto_1
    return v0

    :cond_1
    move v0, v2

    .line 1151
    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lhuw;->a:Landroid/content/Context;

    .line 2118
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lhus;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2119
    iput-boolean v2, p0, Lhuw;->c:Z

    .line 2120
    invoke-virtual {p1}, Lhus;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 2121
    goto :goto_1

    :cond_3
    move v0, v2

    .line 107
    goto :goto_1
.end method
