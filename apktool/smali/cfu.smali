.class public final Lcfu;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lcfu;->a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(Ljuk;)V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 64
    const-string v0, "Babel_hangout_overlay"

    invoke-static {v0}, Lezi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcfu;->a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcfu;->a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->setVisibility(I)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p1, Ljuk;->d:[Ljun;

    if-eqz v0, :cond_2

    iget-object v0, p1, Ljuk;->d:[Ljun;

    array-length v0, v0

    if-nez v0, :cond_9

    .line 72
    :cond_2
    const/4 v0, 0x0

    .line 75
    :goto_1
    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcfu;->a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;

    .line 5177
    iget-object v2, v0, Ljun;->k:Ljava/lang/Integer;

    .line 6043
    invoke-static {v2, v8}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 5177
    if-ne v2, v9, :cond_3

    .line 5178
    iput-object v0, v1, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->d:Ljun;

    .line 81
    :cond_3
    iget-object v1, p0, Lcfu;->a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;

    .line 7183
    iget-object v2, v0, Ljun;->k:Ljava/lang/Integer;

    .line 8043
    invoke-static {v2, v8}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 7183
    if-nez v2, :cond_4

    iget-object v2, v0, Ljun;->a:Ljava/lang/Integer;

    .line 9043
    invoke-static {v2, v8}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 7184
    if-ne v2, v9, :cond_4

    .line 7185
    iput-object v0, v1, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->e:Ljun;

    .line 82
    :cond_4
    iget-object v1, p0, Lcfu;->a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;

    .line 10190
    iget-object v2, v0, Ljun;->k:Ljava/lang/Integer;

    .line 11043
    invoke-static {v2, v8}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 10190
    if-ne v2, v10, :cond_5

    iget-object v2, v0, Ljun;->a:Ljava/lang/Integer;

    .line 12043
    invoke-static {v2, v8}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 10191
    if-ne v2, v9, :cond_5

    .line 10192
    iget-object v1, v1, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->f:Landroid/util/SparseArray;

    iget-object v2, v0, Ljun;->l:Ljava/lang/Integer;

    .line 13043
    invoke-static {v2, v8}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 10192
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    :cond_5
    const-string v0, "Babel_hangout_overlay"

    invoke-static {v0, v9}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 85
    iget-object v2, p0, Lcfu;->a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;

    .line 14109
    iget-object v0, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 14110
    iget-object v0, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->f()Lhks;

    move-result-object v1

    .line 14111
    if-eqz v1, :cond_f

    .line 14116
    iget-object v0, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->c:Lhkx;

    if-nez v0, :cond_a

    .line 14117
    iget-object v0, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    const-string v3, "Focus is null, waiting...\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14126
    :goto_2
    invoke-interface {v1}, Lhks;->l()Lhkv;

    move-result-object v0

    .line 14127
    iget-object v3, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    .line 14128
    invoke-virtual {v0}, Lhkv;->e()I

    move-result v0

    if-ne v0, v9, :cond_d

    const-string v0, "P2P "

    .line 14127
    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14130
    iget-object v0, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->d:Ljun;

    if-eqz v0, :cond_6

    .line 14131
    iget-object v0, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    const-string v3, "\nBW: asbw (%d), arbw (%d), txbr (%d), rtxbr (%d)"

    new-array v4, v12, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->d:Ljun;

    iget-object v5, v5, Ljun;->z:Ljava/lang/Integer;

    aput-object v5, v4, v8

    iget-object v5, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->d:Ljun;

    iget-object v5, v5, Ljun;->A:Ljava/lang/Integer;

    aput-object v5, v4, v10

    iget-object v5, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->d:Ljun;

    iget-object v5, v5, Ljun;->B:Ljava/lang/Integer;

    aput-object v5, v4, v9

    iget-object v5, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->d:Ljun;

    iget-object v5, v5, Ljun;->C:Ljava/lang/Integer;

    aput-object v5, v4, v11

    .line 14132
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 14131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14141
    :cond_6
    iget-object v0, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->e:Ljun;

    if-eqz v0, :cond_7

    .line 14142
    iget-object v0, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    const-string v3, "\nLocal (%s): \n%dx%d %dfps IN / %dfps OUT"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->e:Ljun;

    iget-object v5, v5, Ljun;->F:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->e:Ljun;

    iget-object v5, v5, Ljun;->O:Ljava/lang/Integer;

    aput-object v5, v4, v10

    iget-object v5, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->e:Ljun;

    iget-object v5, v5, Ljun;->P:Ljava/lang/Integer;

    aput-object v5, v4, v9

    iget-object v5, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->e:Ljun;

    iget-object v5, v5, Ljun;->p:Ljava/lang/Integer;

    aput-object v5, v4, v11

    iget-object v5, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->e:Ljun;

    iget-object v5, v5, Ljun;->q:Ljava/lang/Integer;

    aput-object v5, v4, v12

    .line 14143
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 14142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14152
    :cond_7
    invoke-interface {v1}, Lhks;->p()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkx;

    .line 14153
    iget-object v1, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lhkx;->q()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljun;

    .line 14154
    if-eqz v1, :cond_8

    .line 14157
    iget-object v4, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14158
    iget-object v4, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    const-string v5, "Remote: %s\n%dx%d %dfps IN / %dfps OUT"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    .line 14161
    invoke-virtual {v0}, Lhkx;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    iget-object v0, v1, Ljun;->O:Ljava/lang/Integer;

    aput-object v0, v6, v10

    iget-object v0, v1, Ljun;->P:Ljava/lang/Integer;

    aput-object v0, v6, v9

    iget-object v0, v1, Ljun;->q:Ljava/lang/Integer;

    aput-object v0, v6, v11

    iget-object v0, v1, Ljun;->r:Ljava/lang/Integer;

    aput-object v0, v6, v12

    .line 14159
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14158
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14166
    iget-object v0, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    const-string v4, " | Renderer: %.2f IN / %.2f OUT"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v1, Ljun;->s:Ljava/lang/Float;

    aput-object v6, v5, v8

    iget-object v1, v1, Ljun;->u:Ljava/lang/Float;

    aput-object v1, v5, v10

    .line 14167
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 14166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 73
    :cond_9
    iget-object v0, p1, Ljuk;->d:[Ljun;

    iget-object v1, p1, Ljuk;->d:[Ljun;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto/16 :goto_1

    .line 14119
    :cond_a
    iget-object v3, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    const-string v4, "Focus is video %s/audio %s\n"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v0, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->c:Lhkx;

    .line 14122
    invoke-virtual {v0}, Lhkx;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "muted"

    :goto_5
    aput-object v0, v5, v8

    iget-object v0, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->c:Lhkx;

    .line 14123
    invoke-virtual {v0}, Lhkx;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "muted"

    :goto_6
    aput-object v0, v5, v10

    .line 14120
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14119
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 14122
    :cond_b
    const-string v0, "on"

    goto :goto_5

    .line 14123
    :cond_c
    const-string v0, "on"

    goto :goto_6

    .line 14128
    :cond_d
    const-string v0, "Cloud "

    goto/16 :goto_3

    .line 14171
    :cond_e
    iget-object v0, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 14173
    iget-object v0, v2, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    .line 88
    :cond_f
    iget-object v0, p0, Lcfu;->a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;

    invoke-virtual {v0, v8}, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcfu;->a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;

    iget-object v3, p0, Lcfu;->a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;

    .line 15109
    iget-object v0, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 15110
    iget-object v0, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->f()Lhks;

    move-result-object v1

    .line 15111
    if-nez v1, :cond_10

    .line 15113
    const-string v0, "Not in a call"

    .line 89
    :goto_7
    invoke-virtual {v2, v0}, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 15116
    :cond_10
    iget-object v0, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->c:Lhkx;

    if-nez v0, :cond_14

    .line 15117
    iget-object v0, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    const-string v4, "Focus is null, waiting...\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15126
    :goto_8
    invoke-interface {v1}, Lhks;->l()Lhkv;

    move-result-object v0

    .line 15127
    iget-object v4, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    .line 15128
    invoke-virtual {v0}, Lhkv;->e()I

    move-result v0

    if-ne v0, v9, :cond_17

    const-string v0, "P2P "

    .line 15127
    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15130
    iget-object v0, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->d:Ljun;

    if-eqz v0, :cond_11

    .line 15131
    iget-object v0, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    const-string v4, "\nBW: asbw (%d), arbw (%d), txbr (%d), rtxbr (%d)"

    new-array v5, v12, [Ljava/lang/Object;

    iget-object v6, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->d:Ljun;

    iget-object v6, v6, Ljun;->z:Ljava/lang/Integer;

    aput-object v6, v5, v8

    iget-object v6, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->d:Ljun;

    iget-object v6, v6, Ljun;->A:Ljava/lang/Integer;

    aput-object v6, v5, v10

    iget-object v6, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->d:Ljun;

    iget-object v6, v6, Ljun;->B:Ljava/lang/Integer;

    aput-object v6, v5, v9

    iget-object v6, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->d:Ljun;

    iget-object v6, v6, Ljun;->C:Ljava/lang/Integer;

    aput-object v6, v5, v11

    .line 15132
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 15131
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15141
    :cond_11
    iget-object v0, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->e:Ljun;

    if-eqz v0, :cond_12

    .line 15142
    iget-object v0, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    const-string v4, "\nLocal (%s): \n%dx%d %dfps IN / %dfps OUT"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->e:Ljun;

    iget-object v6, v6, Ljun;->F:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v6, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->e:Ljun;

    iget-object v6, v6, Ljun;->O:Ljava/lang/Integer;

    aput-object v6, v5, v10

    iget-object v6, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->e:Ljun;

    iget-object v6, v6, Ljun;->P:Ljava/lang/Integer;

    aput-object v6, v5, v9

    iget-object v6, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->e:Ljun;

    iget-object v6, v6, Ljun;->p:Ljava/lang/Integer;

    aput-object v6, v5, v11

    iget-object v6, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->e:Ljun;

    iget-object v6, v6, Ljun;->q:Ljava/lang/Integer;

    aput-object v6, v5, v12

    .line 15143
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 15142
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15152
    :cond_12
    invoke-interface {v1}, Lhks;->p()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkx;

    .line 15153
    iget-object v1, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lhkx;->q()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljun;

    .line 15154
    if-eqz v1, :cond_13

    .line 15157
    iget-object v5, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15158
    iget-object v5, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    const-string v6, "Remote: %s\n%dx%d %dfps IN / %dfps OUT"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 15161
    invoke-virtual {v0}, Lhkx;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    iget-object v0, v1, Ljun;->O:Ljava/lang/Integer;

    aput-object v0, v7, v10

    iget-object v0, v1, Ljun;->P:Ljava/lang/Integer;

    aput-object v0, v7, v9

    iget-object v0, v1, Ljun;->q:Ljava/lang/Integer;

    aput-object v0, v7, v11

    iget-object v0, v1, Ljun;->r:Ljava/lang/Integer;

    aput-object v0, v7, v12

    .line 15159
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15158
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15166
    iget-object v0, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    const-string v5, " | Renderer: %.2f IN / %.2f OUT"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v1, Ljun;->s:Ljava/lang/Float;

    aput-object v7, v6, v8

    iget-object v1, v1, Ljun;->u:Ljava/lang/Float;

    aput-object v1, v6, v10

    .line 15167
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 15166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 15119
    :cond_14
    iget-object v4, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    const-string v5, "Focus is video %s/audio %s\n"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v0, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->c:Lhkx;

    .line 15122
    invoke-virtual {v0}, Lhkx;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "muted"

    :goto_b
    aput-object v0, v6, v8

    iget-object v0, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->c:Lhkx;

    .line 15123
    invoke-virtual {v0}, Lhkx;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "muted"

    :goto_c
    aput-object v0, v6, v10

    .line 15120
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15119
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 15122
    :cond_15
    const-string v0, "on"

    goto :goto_b

    .line 15123
    :cond_16
    const-string v0, "on"

    goto :goto_c

    .line 15128
    :cond_17
    const-string v0, "Cloud "

    goto/16 :goto_9

    .line 15171
    :cond_18
    iget-object v0, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 15172
    const-string v0, "Getting debug stats ..."

    goto/16 :goto_7

    .line 15173
    :cond_19
    iget-object v0, v3, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7
.end method

.method public b(Lhkx;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcfu;->a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;

    .line 4031
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->f:Landroid/util/SparseArray;

    .line 59
    invoke-virtual {p1}, Lhkx;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 60
    return-void
.end method

.method public c(Lhkx;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcfu;->a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;

    .line 2031
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->c:Lhkx;

    .line 52
    invoke-virtual {p1, v0}, Lhkx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcfu;->a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;

    .line 3031
    iput-object p1, v0, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->c:Lhkx;

    .line 55
    :cond_0
    return-void
.end method

.method public d(Lhkx;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcfu;->a:Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;

    .line 1031
    iput-object p1, v0, Lcom/google/android/apps/hangouts/hangout/DebugOverlayTextView;->c:Lhkx;

    .line 48
    return-void
.end method
