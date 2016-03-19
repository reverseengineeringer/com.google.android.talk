.class public final Ldwm;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:[J


# direct methods
.method public constructor <init>(Lbfd;[J)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 21
    iput-object p2, p0, Ldwm;->a:[J

    .line 22
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 19

    .prologue
    .line 26
    new-instance v8, Lbfz;

    .line 1036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 1123
    move-object/from16 v0, p0

    iget-object v3, v0, Ldyx;->b:Ldvb;

    iget v3, v3, Ldvb;->a:I

    .line 26
    invoke-direct {v8, v2, v3}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 27
    invoke-virtual {v8}, Lbfz;->a()V

    .line 30
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Ldwm;->a:[J

    array-length v10, v9

    const/4 v2, 0x0

    move v7, v2

    :goto_0
    if-ge v7, v10, :cond_c

    aget-wide v12, v9, v7

    .line 31
    invoke-virtual {v8, v12, v13}, Lbfz;->b(J)Lbgo;

    move-result-object v11

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v11, :cond_0

    .line 39
    iget-object v3, v11, Lbgo;->b:Ljava/lang/String;

    .line 40
    iget v2, v11, Lbgo;->x:I

    invoke-static {v2}, Laal;->e(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 41
    iget v2, v11, Lbgo;->z:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_5

    .line 42
    const-class v2, Lebz;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 47
    :goto_1
    const/4 v6, 0x1

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    .line 61
    :cond_0
    :goto_2
    if-eqz v6, :cond_1

    .line 63
    invoke-virtual {v8, v2, v12, v13}, Lbfz;->f(Ljava/lang/String;J)V

    .line 64
    invoke-static {}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->k()Landroid/content/Intent;

    move-result-object v6

    .line 65
    const-string v14, "cancel_class"

    invoke-virtual {v6, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v3, "cancel_request"

    iget-object v11, v11, Lbgo;->a:Ljava/lang/String;

    .line 3127
    move-object/from16 v0, p0

    iget-object v14, v0, Ldyx;->b:Ldvb;

    iget-object v14, v14, Ldvb;->b:Lbfd;

    .line 69
    invoke-virtual {v14}, Lbfd;->a()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x17

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "|"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "|"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "|"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 66
    invoke-virtual {v6, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4036
    sget-object v3, Laal;->oJ:Landroid/content/Context;

    .line 72
    invoke-virtual {v3, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    :cond_1
    if-eqz v5, :cond_2

    .line 75
    invoke-virtual {v8}, Lbfz;->C()V

    .line 77
    :cond_2
    if-eqz v4, :cond_3

    .line 79
    invoke-static {v8, v12, v13}, Lbft;->a(Lbfz;J)V

    .line 82
    :cond_3
    if-eqz v2, :cond_4

    .line 83
    invoke-static {v8, v2}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    .line 30
    :cond_4
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_0

    .line 44
    :cond_5
    const-class v2, Lecd;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 2123
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Ldyx;->b:Ldvb;

    iget v2, v2, Ldvb;->a:I

    .line 2163
    sget-object v4, Ldvp;->f:Ldml;

    invoke-virtual {v4, v2}, Ldml;->b(I)Z

    move-result v2

    .line 49
    if-eqz v2, :cond_8

    .line 50
    const-class v2, Lebv;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 54
    :goto_3
    iget-object v2, v11, Lbgo;->f:Lemc;

    sget-object v5, Lemc;->b:Lemc;

    if-eq v2, v5, :cond_7

    iget-object v2, v11, Lbgo;->f:Lemc;

    sget-object v5, Lemc;->c:Lemc;

    if-ne v2, v5, :cond_9

    :cond_7
    const/4 v6, 0x1

    .line 56
    :goto_4
    iget-object v2, v11, Lbgo;->f:Lemc;

    sget-object v5, Lemc;->e:Lemc;

    if-ne v2, v5, :cond_a

    const/4 v5, 0x1

    .line 57
    :goto_5
    if-nez v6, :cond_b

    if-nez v5, :cond_b

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v18, v3

    move-object v3, v4

    move v4, v2

    move-object/from16 v2, v18

    goto/16 :goto_2

    .line 52
    :cond_8
    const-class v2, Ldpo;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 54
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 56
    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    .line 57
    :cond_b
    const/4 v2, 0x0

    goto :goto_6

    .line 87
    :cond_c
    invoke-virtual {v8}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {v8}, Lbfz;->c()V

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v2

    invoke-virtual {v8}, Lbfz;->c()V

    throw v2
.end method
