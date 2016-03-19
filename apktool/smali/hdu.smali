.class public final Lhdu;
.super Lhgc;
.source "SourceFile"


# instance fields
.field private i:I

.field private j:I

.field private k:[F


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 22
    const-string v0, "FrameTransformer"

    invoke-direct {p0, v0}, Lhgc;-><init>(Ljava/lang/String;)V

    .line 17
    iput v2, p0, Lhdu;->i:I

    .line 18
    iput v2, p0, Lhdu;->j:I

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lhdu;->k:[F

    .line 25
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lhdu;->a(IIIZZ)V

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-super {p0}, Lhgc;->a()V

    .line 50
    iget v0, p0, Lhdu;->j:I

    if-eqz v0, :cond_0

    .line 51
    iget v0, p0, Lhdu;->j:I

    invoke-static {v0}, Laal;->s(I)V

    .line 52
    iput v1, p0, Lhdu;->j:I

    .line 54
    :cond_0
    iget v0, p0, Lhdu;->i:I

    if-eqz v0, :cond_1

    .line 55
    iget v0, p0, Lhdu;->i:I

    invoke-static {v0}, Laal;->t(I)V

    .line 56
    iput v1, p0, Lhdu;->i:I

    .line 58
    :cond_1
    return-void
.end method

.method public a(Lhlp;)V
    .locals 11

    .prologue
    .line 84
    iget v1, p0, Lhdu;->a:I

    iget v2, p1, Lhlp;->a:I

    iget v3, p1, Lhlp;->b:I

    iget-boolean v4, p0, Lhdu;->d:Z

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lhdu;->a(IIIZZ)V

    .line 85
    iget v0, p1, Lhlp;->a:I

    iget v1, p1, Lhlp;->b:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lhdu;->a(IIZ)V

    .line 1030
    iget v0, p0, Lhdu;->j:I

    if-nez v0, :cond_0

    .line 1031
    invoke-static {}, Laal;->q()I

    move-result v0

    iput v0, p0, Lhdu;->j:I

    .line 1033
    :cond_0
    iget v0, p0, Lhdu;->i:I

    if-eqz v0, :cond_1

    .line 1034
    iget v0, p0, Lhdu;->i:I

    invoke-static {v0}, Laal;->t(I)V

    .line 1037
    :cond_1
    iget v0, p0, Lhdu;->e:I

    if-eqz v0, :cond_2

    iget v0, p0, Lhdu;->f:I

    if-eqz v0, :cond_2

    .line 1038
    iget v9, p0, Lhdu;->j:I

    iget v3, p0, Lhdu;->e:I

    iget v4, p0, Lhdu;->f:I

    .line 1151
    const-string v0, "vclib"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "generateFrameBuffer tex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-static {}, Lhbs;->c()V

    .line 1154
    const/4 v0, 0x1

    new-array v10, v0, [I

    .line 1155
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v10, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 1157
    const v0, 0x8d40

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1158
    const/16 v0, 0xde1

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1159
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1165
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/16 v2, 0x2601

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1168
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1172
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1173
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1176
    const v0, 0x8d40

    const v1, 0x8ce0

    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v9, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1179
    const-string v0, "generateFrameBuffer"

    invoke-static {v0}, Laal;->B(Ljava/lang/String;)V

    .line 1181
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1183
    const/4 v0, 0x0

    aget v0, v10, v0

    .line 1039
    iput v0, p0, Lhdu;->i:I

    .line 1042
    iget-object v0, p0, Lhdu;->k:[F

    invoke-virtual {p0, v0}, Lhdu;->a([F)Z

    .line 88
    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 6

    .prologue
    .line 79
    iget v1, p0, Lhdu;->a:I

    iget v2, p0, Lhdu;->b:I

    iget v3, p0, Lhdu;->c:I

    const/4 v5, 0x1

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lhdu;->a(IIIZZ)V

    .line 80
    return-void
.end method

.method public a([F)Z
    .locals 4

    .prologue
    const v3, 0x8d40

    const/4 v0, 0x0

    .line 62
    iget v1, p0, Lhdu;->i:I

    if-eqz v1, :cond_0

    iget v1, p0, Lhdu;->e:I

    if-eqz v1, :cond_0

    iget v1, p0, Lhdu;->f:I

    if-eqz v1, :cond_0

    iget v1, p0, Lhdu;->b:I

    if-eqz v1, :cond_0

    iget v1, p0, Lhdu;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, Lhdu;->a:I

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-virtual {p0, p1}, Lhdu;->b([F)V

    .line 69
    iget-object v1, p0, Lhdu;->k:[F

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget v1, p0, Lhdu;->i:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 72
    invoke-super {p0}, Lhgc;->d()Z

    .line 73
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 74
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lhdu;->j:I

    return v0
.end method
