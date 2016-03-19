.class public final Lacx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field private final b:Lcom/android/ex/photo/views/PhotoView;

.field private c:F

.field private d:F

.field private e:Z

.field private f:F

.field private g:F

.field private h:F

.field private i:J

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/android/ex/photo/views/PhotoView;)V
    .locals 0

    .prologue
    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1161
    iput-object p1, p0, Lacx;->b:Lcom/android/ex/photo/views/PhotoView;

    .line 1162
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacx;->a:Z

    .line 1192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacx;->j:Z

    .line 1193
    return-void
.end method

.method public a(FFFF)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1168
    iget-boolean v0, p0, Lacx;->a:Z

    if-eqz v0, :cond_0

    .line 1184
    :goto_0
    return v2

    .line 1172
    :cond_0
    iput p3, p0, Lacx;->c:F

    .line 1173
    iput p4, p0, Lacx;->d:F

    .line 1176
    iput p2, p0, Lacx;->f:F

    .line 1177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lacx;->i:J

    .line 1178
    iput p1, p0, Lacx;->g:F

    .line 1179
    iget v0, p0, Lacx;->f:F

    iget v3, p0, Lacx;->g:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lacx;->e:Z

    .line 1180
    iget v0, p0, Lacx;->f:F

    iget v3, p0, Lacx;->g:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v0, v3

    iput v0, p0, Lacx;->h:F

    .line 1181
    iput-boolean v1, p0, Lacx;->a:Z

    .line 1182
    iput-boolean v2, p0, Lacx;->j:Z

    .line 1183
    iget-object v0, p0, Lacx;->b:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0, p0}, Lcom/android/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    move v2, v1

    .line 1184
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1179
    goto :goto_1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1197
    iget-boolean v0, p0, Lacx;->j:Z

    if-eqz v0, :cond_1

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1203
    iget-wide v2, p0, Lacx;->i:J

    sub-long/2addr v0, v2

    .line 1204
    iget v2, p0, Lacx;->g:F

    iget v3, p0, Lacx;->h:F

    long-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 1205
    iget-object v1, p0, Lacx;->b:Lcom/android/ex/photo/views/PhotoView;

    iget v2, p0, Lacx;->c:F

    iget v3, p0, Lacx;->d:F

    .line 2047
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/ex/photo/views/PhotoView;->a(FFF)V

    .line 1208
    iget v1, p0, Lacx;->f:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lacx;->e:Z

    iget v2, p0, Lacx;->f:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-ne v1, v0, :cond_3

    .line 1209
    :cond_2
    iget-object v0, p0, Lacx;->b:Lcom/android/ex/photo/views/PhotoView;

    iget v1, p0, Lacx;->f:F

    iget v2, p0, Lacx;->c:F

    iget v3, p0, Lacx;->d:F

    .line 3047
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ex/photo/views/PhotoView;->a(FFF)V

    .line 1210
    invoke-virtual {p0}, Lacx;->a()V

    .line 1213
    :cond_3
    iget-boolean v0, p0, Lacx;->j:Z

    if-nez v0, :cond_0

    .line 1214
    iget-object v0, p0, Lacx;->b:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0, p0}, Lcom/android/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1208
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
