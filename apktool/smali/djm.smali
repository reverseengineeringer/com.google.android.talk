.class public final Ldjm;
.super Lhbw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbw",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcyx;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Ljava/lang/String;

.field private final c:Lbfd;

.field private final e:I

.field private final f:Z

.field private final g:Z

.field private final h:I

.field private final i:J

.field private final j:I

.field private final k:Z

.field private final l:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbfd;Ljava/lang/String;ZII)V
    .locals 11

    .prologue
    .line 43
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Ldjm;-><init>(Landroid/app/Activity;Lbfd;Ljava/lang/String;ZIZIIZZ)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lbfd;Ljava/lang/String;ZIZIIZZ)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lhbw;-><init>()V

    .line 67
    iput-object p1, p0, Ldjm;->a:Landroid/app/Activity;

    .line 68
    iput-object p2, p0, Ldjm;->c:Lbfd;

    .line 69
    iput-object p3, p0, Ldjm;->b:Ljava/lang/String;

    .line 70
    iput-boolean p4, p0, Ldjm;->f:Z

    .line 71
    iput p5, p0, Ldjm;->e:I

    .line 72
    iput-boolean p6, p0, Ldjm;->g:Z

    .line 73
    iput p7, p0, Ldjm;->h:I

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ldjm;->i:J

    .line 75
    iput p8, p0, Ldjm;->j:I

    .line 76
    iput-boolean p9, p0, Ldjm;->k:Z

    .line 77
    iput-boolean p10, p0, Ldjm;->l:Z

    .line 78
    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2082
    new-instance v0, Lbfz;

    iget-object v1, p0, Ldjm;->a:Landroid/app/Activity;

    iget-object v2, p0, Ldjm;->c:Lbfd;

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 2084
    iget-object v1, p0, Ldjm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbfz;->H(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 22
    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 14

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x1

    move-object v1, p1

    .line 22
    check-cast v1, Ljava/util/ArrayList;

    .line 1089
    iget v0, p0, Ldjm;->e:I

    if-ne v0, v4, :cond_2

    move v3, v7

    .line 1095
    :goto_0
    new-instance v0, Lcgu;

    iget-object v2, p0, Ldjm;->c:Lbfd;

    .line 1096
    invoke-virtual {v2}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcgu;-><init>(Ljava/lang/String;I)V

    .line 1097
    invoke-virtual {v0, v3}, Lcgu;->a(I)Lcgu;

    move-result-object v0

    const-string v2, "conversation"

    .line 1098
    invoke-virtual {v0, v2}, Lcgu;->a(Ljava/lang/String;)Lcgu;

    move-result-object v0

    iget-object v2, p0, Ldjm;->b:Ljava/lang/String;

    .line 1099
    invoke-virtual {v0, v2}, Lcgu;->b(Ljava/lang/String;)Lcgu;

    move-result-object v0

    .line 1100
    invoke-virtual {v0}, Lcgu;->a()Lcgs;

    move-result-object v0

    .line 1104
    iget-object v2, p0, Ldjm;->c:Lbfd;

    invoke-virtual {v2}, Lbfd;->b()Lczb;

    move-result-object v6

    .line 1105
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyx;

    .line 1106
    iget-object v9, v2, Lcyx;->b:Lczb;

    invoke-virtual {v9, v6}, Lczb;->a(Lczb;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1111
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1114
    iget-boolean v2, p0, Ldjm;->f:Z

    if-eqz v2, :cond_4

    .line 1115
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1116
    iget-boolean v2, p0, Ldjm;->g:Z

    iget v3, p0, Ldjm;->h:I

    iget-wide v4, p0, Ldjm;->i:J

    iget v6, p0, Ldjm;->j:I

    iget-boolean v7, p0, Ldjm;->k:Z

    iget-boolean v8, p0, Ldjm;->l:Z

    .line 1117
    invoke-static/range {v0 .. v8}, Laal;->a(Lcgs;Ljava/util/ArrayList;ZIJIZZ)Landroid/content/Intent;

    move-result-object v13

    .line 1147
    :goto_2
    if-eqz v13, :cond_1

    .line 1148
    iget-object v0, p0, Ldjm;->a:Landroid/app/Activity;

    invoke-virtual {v0, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 22
    :cond_1
    return-void

    :cond_2
    move v3, v4

    .line 1092
    goto :goto_0

    .line 1128
    :cond_3
    iget-object v0, p0, Ldjm;->a:Landroid/app/Activity;

    iget-object v1, p0, Ldjm;->a:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->bM:I

    .line 1129
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1128
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1130
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1133
    :cond_4
    if-eqz v1, :cond_5

    move v2, v4

    :goto_3
    if-ne v3, v4, :cond_6

    :goto_4
    iget-boolean v5, p0, Ldjm;->g:Z

    iget v6, p0, Ldjm;->h:I

    iget-wide v8, p0, Ldjm;->i:J

    iget v10, p0, Ldjm;->j:I

    iget-boolean v11, p0, Ldjm;->k:Z

    iget-boolean v12, p0, Ldjm;->l:Z

    move-object v1, v13

    move-object v3, v13

    .line 1542
    invoke-static/range {v0 .. v12}, Laal;->a(Lcgs;Ljava/util/ArrayList;ZLcyx;ZZIIJIZZ)Landroid/content/Intent;

    move-result-object v13

    goto :goto_2

    :cond_5
    move v2, v5

    .line 1133
    goto :goto_3

    :cond_6
    move v4, v5

    goto :goto_4

    :cond_7
    move-object v2, v13

    goto :goto_1
.end method
