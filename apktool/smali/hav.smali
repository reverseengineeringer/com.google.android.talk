.class public final Lhav;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lhav;->d:I

    .line 22
    return-void
.end method

.method public constructor <init>(Lhav;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lhav;->d:I

    .line 25
    iget v0, p1, Lhav;->a:I

    iput v0, p0, Lhav;->a:I

    .line 26
    iget v0, p1, Lhav;->b:I

    iput v0, p0, Lhav;->b:I

    .line 27
    iget-boolean v0, p1, Lhav;->c:Z

    iput-boolean v0, p0, Lhav;->c:Z

    .line 28
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lhav;->a:I

    or-int/2addr v0, p1

    iput v0, p0, Lhav;->a:I

    .line 126
    iget v0, p0, Lhav;->b:I

    or-int/2addr v0, p1

    iput v0, p0, Lhav;->b:I

    .line 127
    return-void
.end method


# virtual methods
.method public a()Lhav;
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lhav;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set both app and sync domains"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget v0, p0, Lhav;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lhav;->a:I

    .line 43
    return-object p0
.end method

.method public a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lhav;->a:I

    iget v1, p0, Lhav;->d:I

    invoke-static {p1, v0, p2, p3, v1}, Lidd;->a(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lhav;
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lhav;->a(I)V

    .line 48
    return-object p0
.end method

.method public c()Lhav;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lhav;->a(I)V

    .line 53
    return-object p0
.end method

.method public d()Lhav;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhav;->c:Z

    .line 78
    return-object p0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lhav;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 131
    instance-of v1, p1, Lhav;

    if-eqz v1, :cond_0

    .line 132
    check-cast p1, Lhav;

    .line 133
    iget v1, p0, Lhav;->b:I

    iget v2, p1, Lhav;->b:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lhav;->c:Z

    iget-boolean v2, p1, Lhav;->c:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 135
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lhav;->c:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    .line 141
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lhav;->b:I

    add-int/2addr v0, v1

    .line 142
    return v0

    .line 140
    :cond_0
    const/16 v0, 0x1f

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget v1, v0, Lhav;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "kill_animation "

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lhav;->a:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 149
    const-string v2, "no_overlay "

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lhav;->a:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_2

    .line 150
    const-string v3, "app_domain "

    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lhav;->a:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 151
    const-string v4, "crop "

    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lhav;->a:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_4

    .line 152
    const-string v5, "loose_face_crop "

    :goto_4
    move-object/from16 v0, p0

    iget v6, v0, Lhav;->a:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_5

    .line 153
    const-string v6, "exif "

    :goto_5
    move-object/from16 v0, p0

    iget v7, v0, Lhav;->a:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_6

    .line 154
    const-string v7, "jpeg "

    :goto_6
    move-object/from16 v0, p0

    iget v8, v0, Lhav;->a:I

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_7

    .line 155
    const-string v8, "webp "

    :goto_7
    move-object/from16 v0, p0

    iget v9, v0, Lhav;->a:I

    and-int/lit16 v9, v9, 0x4000

    if-eqz v9, :cond_8

    .line 156
    const-string v9, "webp_animation "

    :goto_8
    move-object/from16 v0, p0

    iget v10, v0, Lhav;->a:I

    const v11, 0x8000

    and-int/2addr v10, v11

    if-eqz v10, :cond_9

    .line 157
    const-string v10, "blur "

    :goto_9
    move-object/from16 v0, p0

    iget v11, v0, Lhav;->a:I

    const/high16 v12, 0x20000

    and-int/2addr v11, v12

    if-eqz v11, :cond_a

    .line 158
    const-string v11, "mp4 "

    :goto_a
    move-object/from16 v0, p0

    iget v12, v0, Lhav;->a:I

    const/high16 v13, 0x10000

    and-int/2addr v12, v13

    if-eqz v12, :cond_b

    .line 159
    const-string v12, "loop "

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lhav;->c:Z

    if-eqz v13, :cond_c

    .line 160
    const-string v13, "custom_size"

    :goto_c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "FifeUrlOptions{ "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 148
    :cond_0
    const-string v1, ""

    goto/16 :goto_0

    .line 149
    :cond_1
    const-string v2, ""

    goto/16 :goto_1

    .line 150
    :cond_2
    const-string v3, ""

    goto/16 :goto_2

    .line 151
    :cond_3
    const-string v4, ""

    goto/16 :goto_3

    .line 152
    :cond_4
    const-string v5, ""

    goto/16 :goto_4

    .line 153
    :cond_5
    const-string v6, ""

    goto/16 :goto_5

    .line 154
    :cond_6
    const-string v7, ""

    goto/16 :goto_6

    .line 155
    :cond_7
    const-string v8, ""

    goto/16 :goto_7

    .line 156
    :cond_8
    const-string v9, ""

    goto/16 :goto_8

    .line 157
    :cond_9
    const-string v10, ""

    goto/16 :goto_9

    .line 158
    :cond_a
    const-string v11, ""

    goto/16 :goto_a

    .line 159
    :cond_b
    const-string v12, ""

    goto/16 :goto_b

    .line 160
    :cond_c
    const-string v13, ""

    goto/16 :goto_c
.end method
